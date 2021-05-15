# Minecraft Arc Mode For minecraft 1.17
English Description Below.

## 마인크래프트 아크 데이터
### 요약
서바이벌 모드 무기 체계 개편 / 모험요소 대폭 추가 / 거래시스템 대폭 개편 / 광물 종류 대폭 추가 / 월드 레벨, 개인 레벨 개념 추가

## 1. 무기 체계 대폭 개편
### AP / AD 개념 생성
AP 데미지는 마법류 데미지이다, 방어력을 관통하는 데미지류이고, 최대체력 증가로 저항한다.
AD 데미지는 일반적인 근접류 데미지. 방어력에 의해 감쇠되는 데미지류이고, 방어력 증가로 저항한다.
예를들어 최대체력만 높은 경우 높은 양의 근접 데미지는 견딜 수 없고,
방어력만 높은 경우, 방어력을 관통하는 마법류 데미지에 취약하다.

### 근접 무기군 
* 계수값은 검은 1이며, 각각의 의미는 검이 1일때, 검과 비례해서 어느정도의 데미지인지를 산출할 때 사용된다.
ex) 계수가 1.5인 무기가 있을때, 이와 같은 티어의 검 아이템의 데미지가 6일때, 이 아이템의 데미지는 6*1.5 = 9로 결정됨.

#### 검(Sword)
일반적인 무기. 기존 검계열 무기보다 공격속도가 버프되었다. 공격속도는 최소 1.6부터 2.0까지이다. 그러나 기존 검과는 다르게 광역 데미지 기능은 사라졌다. (실제 아이템은 괭이로 대체)

#### 대검류(GreatSword & Katana) 2.75
주 손에 들었을 시 속도감소 -20(+n)%
데미지가 가장 높고 공격속도는 0.6보다 높을 수 없다. 휘몰아치는 칼날 3레벨 자동적용 // 참고 : Attack_Damage × (Sweeping_Edge_Level / (Sweeping_Edge_Level + 1))

#### 도끼 (Battleaxe) 1.4
기존 도끼계열 무기는 데미지는 준수하였으나 속도가 느렸지만, 이번에 속도가 일반적인 수준으로 향상되었다. 다만 데미지는 많이 너프 당하였으나 검보다는 높고, 속도도 검보다는 느린 정도. 공격 속도는 최소 1.0부터 1.2까지다.

특징으로는 '워 크라이'가 있다.  F를 눌러 마나를 소모하여(마나 200) 광폭화 모드가 되면, 10초 동안 저항1, 흡수1, 성급함2 버프를 얻게된다. (구체적인 버프 강도,종류,지속시간은 무기에 따라 달라진다.)

#### 낫 (Scythe) 2.0
낫의 경우 근접 공격을 한 후 마법데미지 후속타가 들어온다. // 개발할때 무조건 AD딜링 데미지와 AP 딜링 데미지를 거의 절반 수준으로 만들어둘것.
속도는 해머보다 더 느린 0.6~0.8 사이이다.

#### 해머 (Warhammer) 1.3
해머는 광역기 '지면강타'를 이용해 주변 광역 딜링에 특화된 무기이다. F 를 눌러 지면 강타가 가능하고, 이때 주변에 존재하는 자신을 제외한 모든 엔티티는 스킬데미지를 입게된다.
광역 데미지는 4~10데미지. (커스텀 데미지시스템 이용)

기본 공격력은 소검과 비슷한 데미지이다. 속도는 0.8~1.0 사이이다.
스킬 사용시 : 0.3초간 이속3버프를 받게되고, 0.3초후에 주변으로 충격파를 날린다. 이후 1초간 이속-2에 걸린다. 충격파데미지는 2~12(엔드) 이다(클라우드울프의 커스텀 데미지 참고)

### 원거리 무기군
* 원거리 무기군은 기본적으로 주 데미지가 AP 데미지로 이루어져있다. 각 아이템별로 데미지가 별개로 설정되어 있다.

#### 활(Bow)
일반적인 활이다. 충전식으로 발사한다. 각 아이템마다 고유의 화살과 고유의 투사체(들)을 발사할 수 있다.

#### 석궁(Crossbow)
석궁으로 쏜 화살은 중력의 영향을 받지않고, 투사체 속도가 빠르다. (총과 거의 비슷하다고 보면 된다.)
장전속도는 느리고, 한번 장전해서 여러번 투사체를 발사할 수도 있다.

#### 투척형 단검(ThrowingKnife)
투척형 단검은 속도가 무한으로 빠르고 낮은 근접 데미지를 갖고 있는 투척형 원거리 무기이다.

#### 소환석(SummonStone)
소환석으로 고유한 소환수를 소환할 수 있다. 특수무기군(제작할 수 없는)에 속한다.

#### 스태프(Staff)
스태프는 스태프만의 고유마법을 발사하는 발사 촉매이다. 특수무기군에 속한다.


## 어드벤처 무기군
아래 링크를 참고
* [월드레벨 1 획득가능 무기군](https://github.com/blu3fishez/Arc_Mode_ver1.17/Adventure.md)


## What is Arc Mode?
Arc mode is datapack for survival players which feels tired about boring minecraft original survival contents.

## How Can I install it?
First, Download this file as zip.
Second, Unzip the file named '§9blu3fishez Arc Survival+ (version).zip'

As you know, apply the resourcepack in your resourcepack folder.

Apply Resource pack & datapack.
