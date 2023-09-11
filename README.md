# ✨ CliQ - 여성을 위한 성교육 퀴즈 어플리케이션

### 1.  개발 목표

+ 성에 관해 폐쇄적인 사회분위기 속 잘못된 성지식을 습득하거나 부끄러워하는 1020에게<br>
  쉽게 다가갈 수 있는 퀴즈 형식의 성교육 어플을 통해 올바른 성 지식과 행복을 알려주자.
+ Swift Front-end 개발 실력 향상
+ 다른 팀원과의 협업
+ 최종적으로 애플 AppStore 출시

<br>

### 2. IDE/Language
+ Xcode - Swift 

<br>

### 3.  최적화 디바이스
+ iPhone XR/XS Max/11/11 Pro Max

<br>

### 4.  주요 기능

+ 인트로 - slide 스크롤뷰
+ 플레이화면 - 사용자 퀴즈레벨에 따라 문제 출력
+ 플레이화면 - 레벨에 따라 정답을 포함한 랜덤 글자 배치
+ 플레이화면 - 글자 선택시 정답인지 확인
+ 플레이화면 - 힌트 버튼 클릭시 정답을 제외한 글자 랜덤하게 삭제
+ 전체 문제 정답&설명 확인 (= 정보 모아보기)

<br>

### 5.  스크린샷

![image](https://github.com/JangHJ/CliQ_Project/assets/13388283/ebaebe6e-3a7a-4396-8fb6-85b422f27e8d)

<br>

### 6.  개발 사항 (개인)

  1. UserDefaults에 진행된 level 있는지 확인
  2. level 확인 후 해당 레벨 문제 출제
  3. 특정 level에 따라 레벨 이미지 animate 출력 
  4. level Count에 따라 버튼 글자 랜덤, 정답 바꾸기
     
```Swift
        var num = UserDefaults.standard.integer(forKey: "temp")
        if num == 10{
            quizCount = UserDefaults.standard.integer(forKey: "Level")
        }
        
        if quizCount <= 6{
            if quizCount == 1{
                stageImg.isHidden = false
                stageImg.image = UIImage(named: stageImg_3x[0])
                stageImg.center.y = (self.view.frame.height)/2 + 30
                stageImg.alpha = 0
                UserDefaults.standard.set(1, forKey: "Level")
                UIView.animate(withDuration: 1.0, delay: 0.4,
                               options: UIView.AnimationOptions.curveEaseOut, animations: ({
                                self.stageImg.center.y =  self.view_Illust.center.y
                                self.stageImg.alpha = 1;
                               }),completion: nil)
                UIView.animate(withDuration: 1.0, delay: 1.0, animations: ({
                    self.stageImg.alpha = 0;
                }))
            }
            switch quizCount{
            case 1:
                illustView.image = UIImage(named: illustArr_3x[0])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "유두"
            case 2:
                illustView.image = UIImage(named: illustArr_3x[1])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "음모"
            case 3:
                illustView.image = UIImage(named: illustArr_3x[2])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "음경"
            case 4:
                illustView.image = UIImage(named: illustArr_3x[3])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "포궁"
            case 5:
                illustView.image = UIImage(named: illustArr_3x[4])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "자위"
            case 6:
                illustView.image = UIImage(named: illustArr_3x[5])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "콘돔"
            default:
                break
            }
            
            level1_arr.shuffle()
            for i in 0..<btnChar.count{
                btnChar[i].setTitle("\(level1_arr[i])", for:.normal)
            }
        }
        else if quizCount <= 12{
            
            if quizCount == 7{
                stageImg.isHidden = false
                stageImg.image = UIImage(named: stageImg_3x[1])
                stageImg.center.y = (self.view.frame.height)/2 + 30
                stageImg.alpha = 0
                UIView.animate(withDuration: 1.0, delay: 0.4,
                               options: UIView.AnimationOptions.curveEaseOut, animations: ({
                                self.stageImg.center.y =  self.view_Illust.center.y
                                self.stageImg.alpha = 1;
                               }),completion: nil)
                UIView.animate(withDuration: 1.0, delay: 1.0, animations: ({
                    self.stageImg.alpha = 0;
                }))
            }
            switch quizCount{
            case 7:
                illustView.image = UIImage(named: illustArr_3x[6])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "젠더"
            case 8:
                illustView.image = UIImage(named: illustArr_3x[7])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "음핵"
            case 9:
                illustView.image = UIImage(named: illustArr_3x[8])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "정혈"
            case 10:
                illustView.image = UIImage(named: illustArr_3x[9])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "완경"
            case 11:
                illustView.image = UIImage(named: illustArr_3x[10])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "절정"
            case 12:
                illustView.image = UIImage(named: illustArr_3x[11])
                answer3_1.isHidden = false
                answer3_2.isHidden = false
                answer3_3.isHidden = false
                ansImg3.isHidden = false
                correctAnswer = "정혈컵"
            default:
                break
            }
            level2_arr.shuffle()
            for i in 0..<btnChar.count{
                btnChar[i].setTitle("\(level2_arr[i])", for:.normal)
            }
        }
        else if quizCount <= 14{
            switch quizCount{
            case 13:
                illustView.image = UIImage(named: illustArr_3x[12])
                answer5_1.isHidden = false
                answer5_2.isHidden = false
                answer5_3.isHidden = false
                answer5_4.isHidden = false
                answer5_5.isHidden = false
                ansImg5.isHidden = false
                correctAnswer = "사후피임약"
            case 14:
                illustView.image = UIImage(named: illustArr_3x[13])
                answer5_1.isHidden = false
                answer5_2.isHidden = false
                answer5_3.isHidden = false
                answer5_4.isHidden = false
                answer5_5.isHidden = false
                ansImg5.isHidden = false
                correctAnswer = "경구피임약"
            default:
                break
            }
            level2_2_arr.shuffle()
            for i in 0..<btnChar.count{
                btnChar[i].setTitle("\(level2_2_arr[i])", for:.normal)
            }
        }
        else if quizCount <= 18{
            if quizCount == 15{
                stageImg.isHidden = false
                stageImg.image = UIImage(named: stageImg_3x[2])
                stageImg.center.y = (self.view.frame.height)/2 + 30
                stageImg.alpha = 0
                UIView.animate(withDuration: 1.0, delay: 0.4,
                               options: UIView.AnimationOptions.curveEaseOut, animations: ({
                                self.stageImg.center.y =  self.view_Illust.center.y
                                self.stageImg.alpha = 1;
                               }),completion: nil)
                UIView.animate(withDuration: 1.0, delay: 1.0, animations: ({
                    self.stageImg.alpha = 0;
                }))
            }
            switch quizCount{
            case 15:
                illustView.image = UIImage(named: illustArr_3x[14])
                answer5_1.isHidden = false
                answer5_2.isHidden = false
                answer5_3.isHidden = false
                answer5_4.isHidden = false
                answer5_5.isHidden = false
                ansImg5.isHidden = false
                correctAnswer = "커닐링구스"
            case 16:
                illustView.image = UIImage(named: illustArr_3x[15])
                answer1_1.isHidden = false
                ansImg1.isHidden = false
                correctAnswer = "냉"
            case 17:
                illustView.image = UIImage(named: illustArr_3x[16])
                answer3_1.isHidden = false
                answer3_2.isHidden = false
                answer3_3.isHidden = false
                ansImg3.isHidden = false
                correctAnswer = "소음순"
            case 18:
                illustView.image = UIImage(named: illustArr_3x[17])
                answer3_1.isHidden = false
                answer3_2.isHidden = false
                answer3_3.isHidden = false
                ansImg3.isHidden = false
                correctAnswer = "핑거돔"
            default:
                break
            }
            level3_arr.shuffle()
            for i in 0..<btnChar.count{
                btnChar[i].setTitle("\(level3_arr[i])", for:.normal)
            }
        }
        else{
            switch quizCount{
            case 19:
                illustView.image = UIImage(named: illustArr_3x[18])
                answer2_1.isHidden = false
                answer2_2.isHidden = false
                ansImg2.isHidden = false
                correctAnswer = "질막"
                
            case 20:
                illustView.image = UIImage(named: illustArr_3x[19])
                answer3_1.isHidden = false
                answer3_2.isHidden = false
                answer3_3.isHidden = false
                ansImg3.isHidden = false
                correctAnswer = "페미돔"
            case 21:
                illustView.image = UIImage(named: illustArr_3x[20])
                answer4_1.isHidden = false
                answer4_2.isHidden = false
                answer4_3.isHidden = false
                answer4_4.isHidden = false
                ansImg4.isHidden = false
                correctAnswer = "피임패치"
            case 22:
                illustView.image = UIImage(named: illustArr_3x[21])
                answer4_1.isHidden = false
                answer4_2.isHidden = false
                answer4_3.isHidden = false
                answer4_4.isHidden = false
                ansImg4.isHidden = false
                correctAnswer = "임플라논"
            default:
                break
            }
            level3_2_arr.shuffle()
            for i in 0..<btnChar.count{
                btnChar[i].setTitle("\(level3_2_arr[i])", for:.normal)
            }
        }
        
        super.viewDidLoad()
    }
```
<br>

  1. 정답을 맞출 경우 level count+
  2. 이에 따른 userDefaults 업데이트
  3. 정답 틀릴 경우 오답이미지 animate 출력

```Swift
if quizCount == 16 {
            if isFirstSelected == false {
                answer1_1.text = sender.titleLabel?.text
                isFirstSelected = true
                clickedAnswerLabel.text =  answer1_1.text!
                if clickedAnswerLabel.text == correctAnswer{
                    correctAnswerImage.isHidden = false
                    let ViewControllerInfo = self.storyboard?.instantiateViewController(withIdentifier: "Info")
                    var temp = UserDefaults.standard.integer(forKey: "Level")
                    temp += 1
                    UserDefaults.standard.setValue(temp, forKey: "Level")
                    UserDefaults.standard.setValue(10, forKey: "temp")
                    self.navigationController?.pushViewController(ViewControllerInfo!, animated: true)
                }
                else {
                    wrongAnswerImage.isHidden = false
                    UIView.animate(withDuration: 0.8, delay: 0.1,
                                   options: UIView.AnimationOptions.curveEaseOut, animations: ({
                                    self.wrongAnswerImage.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                                    self.wrongAnswerImage.alpha = 1;
                                   }),completion: nil)
                    UIView.animate(withDuration: 0.8, delay: 0.5, animations: ({
                        self.wrongAnswerImage.alpha = 0;
                    }))
                    isFirstSelected = false
                    clickedAnswerLabel.text = ""
                    //sleep(1)
                    answer1_1.text = ""
                    for i in 0...11{
                        btnChar[i].isUserInteractionEnabled = true
                        btnChar[i].setTitleColor(.black, for: .normal)
                    }
                }
            }
        }
```
<br>

### 7.  App store 등록 기간
+ 2020.6.5 ~ 2021.6.5

![image](https://github.com/JangHJ/CliQ_Project/assets/13388283/c193b8f3-af08-4859-972f-ccfadca50c7e)
![image](https://github.com/JangHJ/CliQ_Project/assets/13388283/f750faae-732b-4f80-846d-3b712b159ffa)


