#include "../include/family.h"
void Member::AddParent(const std::shared_ptr<Member>& parent) { parents.push_back(parent); }
void Member::AddSpouse(const std::shared_ptr<Member>& spouse) {
    std::cout << "배우자 추가" << std::endl;
    this->spouse.push_back(spouse);  // 우선 배우자지정
    std::cout << "배우자 추가" << std::endl;
    spouse->spouse.push_back(shared_from_this());  // 배우자도 나를 배우자로 지정

    std::cout << "배우자 자식 데려오기" << std::endl;
    for (auto c : spouse->children) {  // 배우자 자식 데려오기
        std::cout << "내 자식추가" << std::endl;
        children.push_back(c);
        std::cout << "자식 부모추가" << std::endl;
        c->AddParent(shared_from_this());  // 자식마다 새 부모
    }
    std::cout << "배우자 자식 모두 삭제" << std::endl;
    spouse->children.clear();

    std::cout << "내 자식 보내기" << std::endl;
    for (auto c : this->children) {  // 내 자식 보내기
        std::cout << "배우자 자식추가" << std::endl;
        spouse->children.push_back(c);
        std::cout << "자식 부모추가" << std::endl;
        c->AddParent(spouse);  // 자식마다 새 부모
    }
}
void Member::AddChild(const std::shared_ptr<Member>& child) {
    std::cout << "내 자식추가" << std::endl;
    this->children.push_back(child);  // 내 자식으로 추가
    std::cout << "자식 부모추가" << std::endl;
    child->AddParent(shared_from_this());  // 자식도 자신을 부모로 추가.
    for (auto ws : this->spouse) {         // 배우자쪽도 자식으로 추가. 다부다처제인듯.
        std::shared_ptr<Member> s = ws.lock();
        if (s) {
            std::cout << "배우자 자식추가" << std::endl;
            s->children.push_back(child);
            std::cout << "자식 부모추가" << std::endl;
            child->AddParent(s);  // 자식도 배우자들을 부모로 추가.
        }
    }
}
Member::Member() { std::cout << "생성" << std::endl; }
Member::~Member() { std::cout << "소멸" << std::endl; }

int FamilyTree::CalculateChon(Member* mem1, Member* mem2) {
    // mem1쪽에서 배우자, 부모, 자식순으로 뻗어나가야한다.
    // 배우자는 0촌관계이다.
    // 부모, 자식 간은 1촌이다.
    // 체크한 멤버는 제외해야한다.
    // mem 2를 찾으면 지금까지의 거리를 더해가며 리턴
    // mem 2를 못찾았다면 ? 거리를 더해가면 리턴하면 안된다.

    // 배우자 탐색
    for (auto ws : mem1->spouse) {
        std::shared_ptr<Member> s = ws.lock();
        if (s) {
            if (checked_member.find(s) != checked_member.end()) break;  // 이미 체크한 멤버이면
            if (s.get() == mem2) {
                // 발견
            }
        }
    }
}
void FamilyTree::AddMember(std::shared_ptr<Member> mem) { entire_family.push_back(mem); }