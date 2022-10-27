puts "test commit"


#hash
colors = { 'red' => 'ff0000', 'green' => '00ff00'}
same_colors = {red: 'ff0000', green: '00ff00'}

puts colors['red'] #ff0000

# 지역 변수 -> 선언 된 스코프 내에서만 사용 가능
foo = 'foo in top level'
#전역 변수 -> 어느 곳에서나 불러 올 수 있음.
$foo = 'foo in whole'
# 인스턴스 변수 -> 클래스 내의 인스턴스 끼리 공유하는 변수.
@foo = 'foo in instance'
# 클래스 변수 -> 클래스 내에 어디서든 불러올 수 있음.
@@foo = 'foo in class'


num = 2
# if elsif else end
if num%2 == 0
    puts "even"
else
    puts "odd"
end

# unless else end
num = 2
unless num% 2 != 1
    puts "odd"
else
    puts "even"
end


# while end
num = 0
while num <= 100
    if num%2 == 0
        puts num
    end
    num += 1

end

# for 변수 in 범위(배열) end
for i in 0..10  # "앞숫자..뒷숫자"로 범위 설정 가능.  ...은 뒷숫자를 포함하지 않음
    puts i

end

for number in [1, 2, 3, 4, 5]
    puts number
end



# method
def peel_banana(banana)
    yummy_banana = banana.peel
    return yummy_banana
end


