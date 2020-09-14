//
//  QuizViewController.swift
//  CliQ
//
//  Created by SWUCOMPUTER on 2020/05/21.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var illustView: UIImageView!
    @IBOutlet var answer1_1: UILabel!
    @IBOutlet var answer2_1: UILabel!
    @IBOutlet var answer2_2: UILabel!
    @IBOutlet var answer3_1: UILabel!
    @IBOutlet var answer3_2: UILabel!
    @IBOutlet var answer3_3: UILabel!
    @IBOutlet var answer4_1: UILabel!
    @IBOutlet var answer4_2: UILabel!
    @IBOutlet var answer4_3: UILabel!
    @IBOutlet var answer4_4: UILabel!
    @IBOutlet var answer5_1: UILabel!
    @IBOutlet var answer5_2: UILabel!
    @IBOutlet var answer5_3: UILabel!
    @IBOutlet var answer5_4: UILabel!
    @IBOutlet var answer5_5: UILabel!
    
    @IBOutlet var btn_Char1: UIButton!
    @IBOutlet var btn_Char2: UIButton!
    @IBOutlet var btn_Char3: UIButton!
    @IBOutlet var btn_Char4: UIButton!
    @IBOutlet var btn_Char5: UIButton!
    @IBOutlet var btn_Char6: UIButton!
    @IBOutlet var btn_Char7: UIButton!
    @IBOutlet var btn_Char8: UIButton!
    @IBOutlet var btn_Char9: UIButton!
    @IBOutlet var btn_Char10: UIButton!
    @IBOutlet var btn_Char11: UIButton!
    @IBOutlet var btn_Char12: UIButton!
    
    @IBOutlet var stageImg: UIImageView!
    @IBOutlet var view_Illust : UIImageView!
    
    var correctAnswer: String!
    var stageCount = 1
    var quizCount = 1
    var isCorrectString = false
    var clickedNumber: Int = 0 //힌트를 두 번만 주기 위한 변수
    
    var isFirstSelected: Bool = false
    var isSecondSelected: Bool = false
    var isThirdSelected: Bool = false
    var isFourthSelected: Bool = false
    var isFifthSelected: Bool = false
    
    
    var stageImg_1x:Array = ["Level1@1x", "Level2@1x", "Level3@1x"]
    var stageImg_2x:Array = ["Level1@2x", "Level2@2x", "Level3@2x"]
    var stageImg_3x:Array = ["Level1@3x", "Level2@3x", "Level3@3x"]
    
    //정답 레이블 밑에 있는 이미지
    @IBOutlet var ansImg1: UIImageView!
    @IBOutlet var ansImg2: UIImageView!
    @IBOutlet var ansImg3: UIImageView!
    @IBOutlet var ansImg4: UIImageView!
    @IBOutlet var ansImg5: UIImageView!
    @IBOutlet var clickedAnswerLabel: UILabel!
    
    @IBOutlet var btn_Hint: UIButton!
    @IBOutlet var correctAnswerImage: UIImageView!
    @IBOutlet var wrongAnswerImage: UIImageView!
    
    
    var illustArr_1x:Array = ["유두@1x.png","음모@1x.png","음경@1x.png","포궁@1x.png","자위@1x.png","콘돔@1x.png","젠더@1x.png","음핵@1x.png","정혈@1x.png","완경@1x.png","절정@1x.png","정혈컵@1x.png","사후피임약@1x.png","경구피임약@1x.png","커닐링구스@1x.png","냉@1x.png","소음순@1x.png","핑거돔@1x.png","질막@1x.png","페미돔@1x.png","피임패치@1x.png","임플라논@1x.png"]
    var illustArr_2x:Array = ["유두@2x.png","음모@2x.png","음경@2x.png","포궁@2x.png","자위@2x.png","콘돔@2x.png","젠더@2x.png","음핵@2x.png","정혈@2x.png","완경@2x.png","절정@2x.png","정혈컵@2x.png","사후피임약@2x.png","경구피임약@2x.png","커닐링구스@2x.png","냉@2x.png","소음순@2x.png","핑거돔@2x.png","질막@2x.png","페미돔@2x.png","피임패치@2x.png","임플라논@2x.png"]
    var illustArr_3x:Array = ["유두@3x.png","음모@3x.png","음경@3x.png","포궁@3x.png","자위@3x.png","콘돔@3x.png","젠더@3x.png","음핵@3x.png","정혈@3x.png","완경@3x.png","절정@3x.png","정혈컵@3x.png","사후피임약@3x.png","경구피임약@3x.png","커닐링구스@3x.png","냉@3x.png","소음순@3x.png","핑거돔@3x.png","질막@3x.png","페미돔@3x.png","피임패치@3x.png","임플라논@3x.png"]
    
    var level1_arr:Array<String> = ["유", "두","음","모","경","포","궁","자", "위", "콘", "돔", "질"] //레벨1 전부 1~6
    var level2_arr:Array<String> = ["젠","더","음","핵","정","혈","완","경","절","콘","돔","컵"] //젠더부터 정혈컵까지 7~12
    var level2_2_arr:Array<String> = ["사","후","피","임","약","경","구","정","혈","콘","돔","질"] //경구피임약,사후피임약 13~14
    var level3_arr:Array<String> = ["커","닐","링","구","스","냉","소","음","순","핑","거","돔"] //커닐링구스부터 핑거돔까지 15~18
    var level3_2_arr:Array<String> = ["질","막","페","미","돔","피","임","패","치","플","라","논"] //질막부터 임플라논까지 19~22
    
    var hideArrayHint: Array<UIButton> = [] //첫 힌트 클릭시 숨기기
    var hideArrayHint2: Array<UIButton> = [] //두 번째 힌트 클릭시 숨기기
    var btnChar:Array<UIButton> = []
    var isAddNotCorrectAnswer = Array(repeating: 0, count: 12)
    //let randNum:UInt32 = arc4random_uniform(12)+1
    
    override func viewWillDisappear(_ animated: Bool) {
        if UserDefaults.standard.integer(forKey: "Level") >= 23{
            UserDefaults.standard.set(1, forKey : "Level")
            UserDefaults.standard.set(1, forKey : "Temp")
        }
    }
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        let image = UIImage(named: "logo_Purple")
        correctAnswerImage.image = UIImage(named: "correct@1x.png")
        wrongAnswerImage.image = UIImage(named: "wrong@1x.png")
        
        answer1_1.text = ""
        answer2_1.text = ""
        answer2_2.text = ""
        answer3_1.text = ""
        answer3_2.text = ""
        answer3_3.text = ""
        answer4_1.text = ""
        answer4_2.text = ""
        answer4_3.text = ""
        answer4_4.text = ""
        answer5_1.text = ""
        answer5_2.text = ""
        answer5_3.text = ""
        answer5_4.text = ""
        answer5_5.text = ""
        
        clickedNumber = 0
        
        clickedAnswerLabel.isHidden = true
        btnChar = []
        correctAnswerImage.isHidden = true
        wrongAnswerImage.isHidden = true
        if correctAnswerImage.isHidden == false || wrongAnswerImage.isHidden == false{
            
            isFirstSelected = false
            isSecondSelected = false
            isThirdSelected = false
            isFourthSelected = false
            isFifthSelected = false
            clickedAnswerLabel.text = ""
            
        }
        navigationItem.titleView = UIImageView(image: image)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "navi_Home"),
                                                                style: UIBarButtonItem.Style.plain,
                                                                target: self, action: #selector(backHome))//네비게이션 바 왼쪽 버튼 아이콘
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "navi_Info"),
                                                                 style: UIBarButtonItem.Style.plain,
                                                                 target: self, action: #selector(moveList))//네비게이션 바 오른쪽 버튼 아이콘
        
        //자간 띄우기
        // let attributedString2 = NSMutableAttributedString(string: "--")
        //attributedString2.addAttribute(NSAttributedString.Key.kern, value: 42, range: NSMakeRange(0, 1))
        //answer2Label.attributedText = attributedString2
        btnChar.append(btn_Char1)
        btnChar.append(btn_Char2)
        btnChar.append(btn_Char3)
        btnChar.append(btn_Char4)
        btnChar.append(btn_Char5)
        btnChar.append(btn_Char6)
        btnChar.append(btn_Char7)
        btnChar.append(btn_Char8)
        btnChar.append(btn_Char9)
        btnChar.append(btn_Char10)
        btnChar.append(btn_Char11)
        btnChar.append(btn_Char12)
        
        for i in 0...11{
            btnChar[i].isUserInteractionEnabled = true
            btnChar[i].setTitleColor(.black, for: .normal)
        }
        
        //정답 버튼 일단 다 감춰놓기
        
        
        answer1_1.isHidden = true
        answer2_1.isHidden = true
        answer2_2.isHidden = true
        answer3_1.isHidden = true
        answer3_2.isHidden = true
        answer3_3.isHidden = true
        answer4_1.isHidden = true
        answer4_2.isHidden = true
        answer4_3.isHidden = true
        answer4_4.isHidden = true
        answer5_1.isHidden = true
        answer5_2.isHidden = true
        answer5_3.isHidden = true
        answer5_4.isHidden = true
        answer5_5.isHidden = true
        ansImg1.isHidden = true
        ansImg2.isHidden = true
        ansImg3.isHidden = true
        ansImg4.isHidden = true
        ansImg5.isHidden = true
        
        stageImg.isHidden = true
        
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
    
    @IBAction func fillAnswer(_ sender: UIButton) {
        correctAnswerImage.isHidden = true
        wrongAnswerImage.isHidden = true
        sender.isUserInteractionEnabled = false
        sender.setTitleColor(.lightGray, for: .normal)
        
        
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
        else if quizCount == 1 || quizCount == 2 || quizCount == 3 || quizCount == 4 || quizCount == 5 || quizCount == 6 || quizCount == 7 || quizCount == 8 || quizCount == 9 || quizCount == 10 || quizCount == 11 || quizCount == 19 {
            if isFirstSelected == false && isSecondSelected == false {
                answer2_1.text = sender.titleLabel?.text
                isFirstSelected = true
                clickedAnswerLabel.text = answer2_1.text
            }
            else if isFirstSelected == true && isSecondSelected == false{
                answer2_2.text = sender.titleLabel?.text
                isSecondSelected = true
                clickedAnswerLabel.text =  answer2_1.text! + answer2_2.text!
                if clickedAnswerLabel.text == correctAnswer{
                    UserDefaults.standard.setValue(10, forKey: "temp")
                    correctAnswerImage.isHidden = false
                    let ViewControllerInfo = self.storyboard?.instantiateViewController(withIdentifier: "Info")
                    var temp = UserDefaults.standard.integer(forKey: "Level")
                    temp += 1
                    UserDefaults.standard.setValue(temp, forKey: "Level")
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
                    self.wrongAnswerImage.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                    isFirstSelected = false
                    isSecondSelected = false
                    clickedAnswerLabel.text = ""
                    //sleep(2) //이부분 왜 두번째 글자가 안보이고 바로 초기화 되는지.. 만약 수정이 안된다면 그냥 원래 그런걸로 하자...^^
                    answer2_1.text = ""
                    answer2_2.text = ""
                    for i in 0...11{
                        btnChar[i].isUserInteractionEnabled = true
                        btnChar[i].setTitleColor(.black, for: .normal)
                    }
                }
            }
        }
        else if quizCount == 12 || quizCount == 17 || quizCount == 18 || quizCount == 20{
            if isFirstSelected == false && isSecondSelected == false {
                answer3_1.text = sender.titleLabel?.text
                isFirstSelected = true
                clickedAnswerLabel.text =  answer3_1.text!
            }
            else if isFirstSelected == true && isSecondSelected == false{
                answer3_2.text = sender.titleLabel?.text
                isSecondSelected = true
                clickedAnswerLabel.text =  answer3_1.text! + answer5_2.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == false {
                answer3_3.text = sender.titleLabel?.text
                isThirdSelected = true
                clickedAnswerLabel.text =  answer3_1.text! + answer3_2.text! + answer3_3.text!
                
                if clickedAnswerLabel.text == correctAnswer{
                    correctAnswerImage.isHidden = false
                    let ViewControllerInfo = self.storyboard?.instantiateViewController(withIdentifier: "Info")
                    var temp = UserDefaults.standard.integer(forKey: "Level")
                    temp += 1
                    UserDefaults.standard.setValue(temp, forKey: "Level")
                    //UserDefaults.standard.setValue(10, forKey: "temp")
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
                    isSecondSelected = false
                    isThirdSelected = false
                    clickedAnswerLabel.text = ""
                    //sleep(2)
                    answer3_1.text = ""
                    answer3_2.text = ""
                    answer3_3.text = ""
                    for i in 0...11{
                        btnChar[i].isUserInteractionEnabled = true
                        btnChar[i].setTitleColor(.black, for: .normal)
                    }
                }
            }
        }
        else if quizCount == 21 || quizCount == 22{
            if isFirstSelected == false && isSecondSelected == false {
                answer4_1.text = sender.titleLabel?.text
                isFirstSelected = true
                clickedAnswerLabel.text =  answer4_1.text!
            }
            else if isFirstSelected == true && isSecondSelected == false{
                answer4_2.text = sender.titleLabel?.text
                isSecondSelected = true
                clickedAnswerLabel.text =  answer4_1.text! + answer4_2.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == false {
                answer4_3.text = sender.titleLabel?.text
                isThirdSelected = true
                clickedAnswerLabel.text =  answer4_1.text! + answer4_2.text! + answer4_3.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == true && isFourthSelected == false {
                answer4_4.text = sender.titleLabel?.text
                isFourthSelected = true
                clickedAnswerLabel.text =  answer4_1.text! + answer4_2.text! + answer4_3.text! + answer4_4.text!
                
                if clickedAnswerLabel.text == correctAnswer{
                    correctAnswerImage.isHidden = false
                    let ViewControllerInfo = self.storyboard?.instantiateViewController(withIdentifier: "Info")
                    var temp = UserDefaults.standard.integer(forKey: "Level")
                    temp += 1
                    UserDefaults.standard.setValue(temp, forKey: "Level")
                    //UserDefaults.standard.setValue(10, forKey: "temp")
                    //sleep(5)
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
                    isSecondSelected = false
                    isThirdSelected = false
                    isFourthSelected = false
                    clickedAnswerLabel.text = ""
                    answer4_1.text = ""
                    answer4_2.text = ""
                    answer4_3.text = ""
                    answer4_4.text = ""
                    for i in 0...11{
                        btnChar[i].isUserInteractionEnabled = true
                        btnChar[i].setTitleColor(.black, for: .normal)
                    }
                }
            }
        }
        else if quizCount == 13 || quizCount == 14 || quizCount == 15 {
            if isFirstSelected == false && isSecondSelected == false {
                answer5_1.text = sender.titleLabel?.text
                isFirstSelected = true
                clickedAnswerLabel.text =  answer5_1.text!
            }
            else if isFirstSelected == true && isSecondSelected == false{
                answer5_2.text = sender.titleLabel?.text
                isSecondSelected = true
                clickedAnswerLabel.text =  answer5_1.text! + answer5_2.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == false {
                answer5_3.text = sender.titleLabel?.text
                isThirdSelected = true
                clickedAnswerLabel.text =  answer5_1.text! + answer5_2.text! + answer5_3.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == true && isFourthSelected == false {
                answer5_4.text = sender.titleLabel?.text
                isFourthSelected = true
                clickedAnswerLabel.text =  answer5_1.text! + answer5_2.text! + answer5_3.text! + answer5_4.text!
            }
            else if isFirstSelected == true && isSecondSelected == true && isThirdSelected == true && isFourthSelected == true && isFifthSelected == false {
                answer5_5.text = sender.titleLabel?.text
                isFifthSelected = true
                clickedAnswerLabel.text =  answer5_1.text! + answer5_2.text! + answer5_3.text! + answer5_4.text! + answer5_5.text!
                
                if clickedAnswerLabel.text == correctAnswer{
                    correctAnswerImage.isHidden = false
                    //sleep(2)
                    let ViewControllerInfo = self.storyboard?.instantiateViewController(withIdentifier: "Info")
                    var temp = UserDefaults.standard.integer(forKey: "Level")
                    temp += 1
                    UserDefaults.standard.setValue(temp, forKey: "Level")
                    //UserDefaults.standard.setValue(10, forKey: "temp")
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
                    isSecondSelected = false
                    isThirdSelected = false
                    isFourthSelected = false
                    isFifthSelected = false
                    clickedAnswerLabel.text = ""
                    //sleep(2)
                    answer5_1.text = ""
                    answer5_2.text = ""
                    answer5_3.text = ""
                    answer5_4.text = ""
                    answer5_5.text = ""
                    for i in 0...11{
                        btnChar[i].isUserInteractionEnabled = true
                        btnChar[i].setTitleColor(.black, for: .normal)
                    }
                }
            }
        }
    }
    @IBAction func hintClicked(_ sender: UIButton){
        clickedNumber += 1
        if clickedNumber != 2{
            var spilitCorrectAnswer: Array<Character> =  []
            
            spilitCorrectAnswer = Array(correctAnswer)
            print(spilitCorrectAnswer)
            
            for i in 0..<correctAnswer.count{
                for j in 0..<btnChar.count{
                    print("1")
                    if btnChar[j].titleLabel?.text == "\(spilitCorrectAnswer[i])" {
                    }
                    else{
                        isAddNotCorrectAnswer[j] += 1
                    }
                }
            }
            for j in 0..<btnChar.count{
                if isAddNotCorrectAnswer[j] == correctAnswer.count{
                    print("add")
                    hideArrayHint.append(btnChar[j])
                }
                else{}
            }
                hideArrayHint.shuffle()
                hideArrayHint[0].isHidden = true
                hideArrayHint[1].isHidden = true
                hideArrayHint[2].isHidden = true
        }
        else {
            sender.setImage(UIImage(named: "Gbtn_Hint.png"), for: .normal)
            sender.isUserInteractionEnabled = false
            for i in 0..<hideArrayHint.count{
                if hideArrayHint[i].isHidden == false {
                    hideArrayHint2.append(hideArrayHint[i])
                }
                else{}
            }
            hideArrayHint2.shuffle()
            hideArrayHint2[0].isHidden = true
            hideArrayHint2[1].isHidden = true
            hideArrayHint2[2].isHidden = true
        }
    }
    @objc func backHome(sender: UIBarButtonItem) {//홈으로 이동
        let ViewControllerHome = self.storyboard?.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(ViewControllerHome!, animated: true)
        //self.navigationController?.popViewController(animated: true)
    }
    @objc func moveList(sender: UIBarButtonItem) {//정보 모아보기로 이동
        let newViewController = storyboard!.instantiateViewController(withIdentifier: "List")
        self.present(newViewController, animated: true, completion: nil)
    }
}
