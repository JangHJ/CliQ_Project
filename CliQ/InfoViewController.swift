//
//  InfoViewController.swift
//  CliQ
//
//  Created by SWUCOMPUTER on 2020/05/21.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var infoScrollView: UIScrollView!
    @IBOutlet var infoPageControl: UIPageControl!
    
    var number = 0// 나중에 합치면 지우기
    
    let nameList = ["유두", "음모", "음경", "포궁", "자위", "콘돔", "젠더", "음핵", "정혈", "완경",
                    "절정", "정혈컵", "사후피임약", "경구피임약", "커닐링구스", "냉", "소음순", "핑거돔",
                    "질막", "페미돔", "피임패치", "임플라논"]
    
    let textList = [
        ["젖꼭지라고도 불리며, 수컷에서는 흔적적이지만 \n암컷의 성체에서는 잘 발달되어 있다.\n유두 주위의 갈색의 둘러싸고 있는 부분을 유륜이라고 \n하며 유두는 양쪽 유륜의 정중앙에 위치해 있다.\n 여성의 유두는 약 10mm 정도로 돌출되어 있고,\n임신과 수유로 유두 크기가 증가하며 \n특히 임신 때 유두가 진하게 착색된다.\n","유두에서 흰색의 액체가 분비되는 경우 \n호르몬 불균형으로 인한 분비일 가능성이 많고,\n 맑은 물이나 갈색을 띄면 유방 내부의 병변을 \n의심해 볼 수 있다.\n", "출처 : 두산백과, 서울아산병원 인체정보\n"],
        ["사람의 골반 부위와 다리 사이, 항문 주위에 분포하는\n 털이다. 사춘기 전에 존재하던 솜털이 억센 털로 변하게 \n되어 눈에 띄게 자라 난다.\n 대개 눈썹과 비슷한 색깔이며 사람마다 다양하고, \n성기를 외부 충격으로부터 보호하는 역할을 한다.\n털이 자라나는 위치는 성별에 따라 차이가 있으며 \n전체적으로 개인차가 크다.\n", "출처 : 서울대학교병원 신체기관정보\n"],
        [ "소변과 정액을 배설하는 요도를 감싸고 있는 \n남성의 생식기관으로, 원통형의 긴 기둥과 \n확장된 말단부인 귀두로 구성되어 있다.\n발생적으로는 여성 외생식기의 음핵에 해당하며 \n구조적으로도 유사하다.\n 주된 기능은 발기를 통한 정자의 방출과\n 소변을 배출하는 것으로, 발기는 성적 흥분이 \n일어나면 조직에 동맥으로부터 온 혈액이 가득\n 채워짐에 따라 압력이 증가하여 나타나는 현상이다.\n", "출처 : 두산백과, 동물학백과, \n서울대학교병원 신체기관정보\n"],
        ["의학적 용어로는 '자궁'으로, 아들 자:子를 아이를 \n대표하는 보통명사로 사용했으며 '아이가 자라는 집'\n이라는 뜻이다. \n사전적 의미는 이러하지만 아들을 의미하는 한자로 인해 남아 선호 사상이 있다는 비판을 받고 있다. \n언어에 반영된 성 고정관념은 개인의 무의식과 통념의 \n기반이 되어 의식하지 않은 상황에 성차별과 고정관념을 강화하게 된다. \n이젠 자궁이 아닌 성중립적 대안언어로 \n아들:子 대신 세포:胞를 사용한 '포궁'이라고 말해야 한다.", "출처 :루나컵 '[월경_이야기] 자궁? 포궁? 어떤게 맞는 거지?' 포스트 참고\n"],
        ["자위는 스스로 自(자) 자에 위로할 慰(위) 자를 쓰는, \n자신의 마음을 스스로 위안한다는 뜻으로,\n수음(手淫)을 다르게 이르는 말이다. \n손이나 다른 물건으로 자신의 성기를 자극하여 \n성적(性的) 쾌감을 얻는 행위이다.\n", "출처 :  '우선순위성교육'/이충민\n"],
        ["성교시 피임이나 성병예방의 목적으로 \n남성의 음경에 씌워 사용하는 고무제품\n\n사용하는 과정에서 찢어지는 경우도 있으니 \n사용 후 물을 채워 새는지 확인하는 것이 좋다.\n일반형 콘돔은 성인용품으로 분류되어 있지 않아서 \n청소년도 구매할 수 있다.\n", "출처 : 여의사가 알려주는 기분 좋은 섹스/송미현\n"],
        ["인간을 생물학적 차이로 구분되는 것을 \n성, 즉 섹스(Sex)라고 부른다. \n반면에, 사회문화적 차이로 구분되는 것을 \n성별, 젠더(Gender)라고 한다. \n섹스는 여성, 남성, 간성으로 이루어져있다.\n 젠더는 시대에 따른 성역할, 본인의 가치관에 의해\n 정해진다. 여기서 성역할이란 성별에 따라 적절하다고 \n기대되는 또는 규정된 행위와 문화적 기대치이다. \n세계적으로 젠더로 성을 구분하는 추세이지만, \n인간을 구분하는 방식에 있어서 어떤 방식이 \n옳은 것인지에 대해서는 논란이 있다.\n", " 출처 : 청소년동반자보수교육 청소년과 sexuality\n"],
        ["음핵은 클리토리스라고도 불린다. \n약 8000개의 신경 말단을 가진 장기로서, \n몸에서 쾌락만을 위해 존재하는 유일한 기관이다. \n음핵의 자극만으로도 오르가즘에 도달하는데, \n클리토리스의 크기와 성감은 무관하다.\n 쾌락만을 위한 기관이기에,\n 대부분의 여성들이 음핵의 자극으로 자위를 시작한다.\n", "출처 : 서울대학교병원 신체기관 정보\n"],
        ["생리, 월경, 달거리라고도 불린다. \n정혈은 자궁내막이 호르몬의 분비 주기에 반응하여 \n저절로 탈락하여 배출되는 현상이다. \n정혈은 숨기거나 부끄러워해야 하는 일이 아닌\n 자연스러운 몸의 현상이다.\n", "출처 : 서울대학교병원 의학정보\n"],
        ["완경은 ‘폐경’이라고 불리며, \n여성에서 난소의 기능이 쇠퇴하여 정상적인 월경이 \n중지되는 현상 또는 시점이다.\n보통 ‘폐경’이라고도 하는데, 이는 폐경기 여성에게 \n우울감을 증대시킬 수 있는 단어로 폐경보다는 \n‘완경’이라고 표현하는 추세이다.\n","가임기에서 폐경기로 이행되는 시기를 \n갱년기라고 일컫는데, 갱년기 및 완경기의 증상으로는 \n안면 홍조, 비뇨 생식기계 증상, 성욕감퇴 및 무기력증, \n정신 및 인지기능 장애, 골다공증, 관절통과 같은 \n근 골격계 증상, 자궁 탈출증이 있다.\n", "출처 : 대학산부인과학회\n"],
        [" 남성과 여성이 성적 흥분기에 이어 \n최절정(climax)감을 느끼는 상태로, 여성의 오르가즘에 이르는 과정은 4단계로 나누어진다.\n\n흥분기\n : 질 속이 습윤해져 미끈미끈해지고 유방의 유두가 일어나는 등 생리적인 변화가 시작되는 단계\n\n고조기\n : 숨이 가빠지고 근육의 긴장이 강해지면서 질 주위의 조직이 부풀어 오르고, 클리토리스도 딱딱하게 일어나는 등 신체 생리적인 변화가 나타나는 단계\n", "절정기(오르가즘기)\n : 질의 근육이 강하게 수축하면서 페니스를 꽉 죄며 성적인 쾌감이 절정에 달하는 극치감을 경험하는 단계\n\n해소기\n : 몸 전체가 다시 오르가즘 전 단계로 회복되는 단계\n", "출처 : 性의 과학사전/오영근\n"] ,
        ["주로 의료용 실리콘으로 만들어진 종 모양의 작은 컵으로, \n질 내에 삽입하여 정혈을 받아내는 방식의 정혈용품.\n", "출처 : 루나컵 ‘월경컵 입문자를 위한 월경컵 TMI’\n"],
        ["응급 피임약이라고도 하며 배란기에 피임이 제대로 \n되지 않았을 시 알약을 구강 복용하는 피임법. \n최대한 빨리 복용할수록 효력이 높아진다. \n전문 의약품으로 의사의 처방을 받아 약국에서 \n구매한다. (응급실에서도 처방이 가능하다)\n 투여되는 호르몬 양이 지나치게 많아져 부작용이 많다.\n\n노레보원정\n관계 후 72시간(3일) 내에 1회 1알 복용\n\n엘라원정\n120시간(5일)내에 1회 1알 복용\n"],
        ["생리주기를 조정하거나 피임목적으로 복용하는 알약.\n\n사용법\n21일간 1일 1정 복용 후 배란기 7일간 휴약한다.\n"],
        ["입술, 혀, 입 등 구강기관으로 여성의 성기를 애무하는 \n행위 / 구강성교( Oral sex )의 일종이다.\n여성의 오르가즘을 위한 방법 중 가장 효과적인 방법으로 ‘커닐링구스’를 꼽을 수 있다.\n음부는 자칫하면 쉽게 다칠 수 있는 예민한 부위로 \n너무 강한 자극은 좋지 않다.\n","여성의 질액을 쉽게 잘 분비시킬 수 있는\n 전희 단계이며 여성이 오르가즘에 도달할 수 있는 \n가장 효과적인 방법이기 때문에 피스톤 삽입보다 \n더욱 더 큰 만족감을 느낄 수 있다.\n모든 성접촉은 성병 감염의 위험이 있고 커닐링구스 또한 이에 포함되므로, 청결과 보호가 필수이다.\n", "출처 : 저작권 2002 Sinclair Intimacy Institute\n"],
        ["질이나 자궁경부의 염증, 혹은 비감염성 원인에 의해 \n생기는 질 분비물.\n냉은 여성에게 나타나는 정상적인 생리적 현상이며,\n 개인에 따라 다르게 나타난다.\n질 분비물 증상만으로는 어떠한 질병인지 \n진단하기 힘들다.\n","질이나 자궁경부에 염증이 있는 경우에 많이 생기고,\n세균에 의한 질염의 경우 질 분비물은 누런 색이나 \n회색을 띠고 생선 냄새가 나는 경우가 많다.\n냉(질분비물)의 색이 누렇게 변하거나 \n가려움증이 동반되거나 기분 나쁜 냄새가 나는 경우에는 \n세균 감염이나 성병의 증상일 수 있으므로 \n의사를 방문하여 진단을 받고, 원인 질환에 맞는 치료를 받을 필요가 있다.\n", "출처 : 서울대학교병원 의학정보\n"],
        ["여성외부생식기의 양측 대음순 사이에 있는 \n한 쌍의 피부 조직.\n소음순은 대음순의 안쪽에 있으며 음핵에서 회음부까지 요도와 질 구멍을 보호하는 역할을 한다.\n 수많은 작은 혈관과 신경을 포함하고 있어 \n여성의 성감대 중 하나이다\n.","\n소음의 모양, 크기, 색깔 등은 여성에 따라 \n다르게 나타난다.\n사람에 따라 색깔이나 모양, 크기는 제각각이며,\n 성기의 색깔은 멜라닌 색소 세포의 양, 호르몬의 변화에 따라 결정되기 떄문에 성관계의 횟수에 따라 \n색깔과 크기가 다르다는 추측은 잘못된 성지식이다.\n", "출처 : 서울대학교병원 신체기관정보\n"],
        ["여성의 질에 손가락을 삽입할 때(애무 시) \n손가락에 끼워 사용하는 콘돔과 비슷한 도구\n\n사용 이유\n : 질 내부 점막은 윤활액이 분비되지 않아 건조해져\n 마찰력이 증가하고, 날카로운 손톱이나 손톱 밑의 \n지저분한 위생 상태에 노출되면 상처나 감염에 \n취약해지기 때문에 사용한다.\n", "출처 : 문화일보 ‘여성외음부 애무시 손가락에 콘돔을’\n미스러브여성비뇨기과원장\n"],
        ["질막이란 질입구 둘레 조직의 명칭으로, 질의 아래에 있는 주름 또는 막 모양의 탄력성 있는 조직이다. \n여성 외부 성기의 일부로 소음순보다 안쪽에 있다. \n소음순을 바깥쪽으로 젖히면 요도와 질 입구가 보이는데, 그 질 입구를 부분적으로 막고 있는 것이 질막이다.\n", "의학적 용어로는 '처녀막'이라고 하지만, \n'처녀막'은 처녀성과 무관함에도 성경험 여부를 감별하여\n여성을 이분화하려는 남성집단의 욕망이 들어간 \n인권침해 여지가 많은 단어이기에, 현재에는\n생물학적으로 직관적이고 남성중심적 가치 판단을\n배제한 용어인 '질막(질둘레막)'이라고 칭한다.\n", "출처 : 여성신문 [처녀막? NO! 여성 억압 용어 거부한다]\n월경컵 정보 블로그 '테라' 포스트 참고\n"],
        ["성교시 피임이나 성병예방의 목적으로 \n여성의 질에 삽입하여 사용하는 제품.\n\n국내에서 쉽게 구하기 힘들어 \n해외 직구를 이용하는 경우가 많다. \n", "출처 : 스무 살 전에 알아야 할 이야기\n저자 앤 마를레네 헤닝, 티나 브레머 올제브스키\n" ],
        ["아랫배나 팔, 엉덩이 등에 붙이는 피임용 패치.\n ","가슴에는 절대 붙여선 안된다. \n처음 일주일 정도는 다른 피임법도 병행해야 한다.\n2일 내에 떨어졌다면 쓰던 걸 다시 붙여도 되지만,\n 떨어진 채로 2일이 지났다면 새 패치를 붙이고 \n새 패치를 붙인 요일마다 매주 패치를 교체한다.\n\n구매처 : 처방 후 약국", "출처 : 바디 액츄얼리 1/온스타일 바디 액츄얼리 제작팀\n"],
        ["팔 상완(어깨에서 팔꿈치까지의 부분) 피부 안쪽에\n 길이 4cm정도의 임플라논 막대를 삽입하는 피임법. \n","산부인과 진료 후 시술하고,\n생리시작 1일에서 5일 사이에 시행한다.\n과체중이거나 특정 약물 복용 시 시술이 불가능할 수 \n있다. 성병 예방에 효과가 없다.\n", "출처 : 블로그 똑디\n"]
    ]
    
    
    override func viewWillDisappear(_ animated: Bool) {
        //카운트 증가
        var temp = UserDefaults.standard.integer(forKey: "InfoLevel")
        temp += 1
        UserDefaults.standard.setValue(temp, forKey: "InfoLevel")
        
        if UserDefaults.standard.integer(forKey: "InfoLevel") >= 22{
            UserDefaults.standard.set(0, forKey : "InfoLevel")
        }
    }
    override func viewDidLoad() {
        
        self.navigationController?.isNavigationBarHidden=false
        super.viewDidLoad()
        
        //UserDefaults.standard.setValue(10, forKey: "temp2")
        
        //var num = UserDefaults.standard.integer(forKey: "temp2")
        
        number = UserDefaults.standard.integer(forKey: "InfoLevel")
        
        var q_num = number
        var q_name = nameList[q_num] // 퀴즈단어이름
        var q_text = textList[q_num]// 퀴즈단어설명
        
        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "navi_Home"),
                                                                style: UIBarButtonItem.Style.plain,
                                                                target: self, action: #selector(backHome))//네비게이션 바 왼쪽 버튼 아이콘
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "navi_Info"),
                                                                 style: UIBarButtonItem.Style.plain,
                                                                 target: self, action: #selector(moveList))//네비게이션 바 오른쪽 버튼 아이콘
        // Do any additional setup after loading the view.
        infoScrollView.delegate = self
        
        if q_text.count == 1 {
            let slides:[InfoView]=createSlides1(q_name: q_name, q_text: q_text)
            setupSlideScrollView(slides: slides)
            infoPageControl.numberOfPages=slides.count
            infoPageControl.currentPage=0
        }
        else if q_text.count == 2{
            let slides:[InfoView]=createSlides2(q_name: q_name, q_text: q_text)
            
            setupSlideScrollView(slides: slides)
            infoPageControl.numberOfPages=slides.count
            infoPageControl.currentPage=0
        }
        else {
            let slides:[InfoView]=createSlides3(q_name: q_name, q_text: q_text)
            
            setupSlideScrollView(slides: slides)
            infoPageControl.numberOfPages=slides.count
            infoPageControl.currentPage=0
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
    func createSlides1(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
        
        let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide1.infoViewTitle.text=q_name
        slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide1.infoViewLabel.numberOfLines = 14
        slide1.infoViewLabel.text=q_text[0] as? String
        
        
        return [slide1]
        
    }
    
    func createSlides2(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
        
        let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide1.infoViewTitle.text=q_name
        slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide1.infoViewLabel.numberOfLines = 14
        slide1.infoViewLabel.text=q_text[0] as? String
        
        let slide2: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide2.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide2.infoViewTitle.text=q_name
        slide2.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide2.infoViewLabel.numberOfLines = 14
        slide2.infoViewLabel.text=q_text[1] as? String
        let attributedString = NSMutableAttributedString(string:slide2.infoViewLabel.text!)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1), range:NSMakeRange(0, attributedString.length))
        slide2.infoViewLabel.attributedText = attributedString
        
        return [slide1, slide2]
        
    }
    
    func createSlides3(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
        
        let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        
        
        slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        
        slide1.infoViewTitle.text=q_name
        slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide1.infoViewLabel.numberOfLines = 0
        slide1.infoViewLabel.text=q_text[0] as? String
        
        
        
        let slide2: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide2.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide2.infoViewTitle.text=q_name
        slide2.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide2.infoViewLabel.numberOfLines = 0
        slide2.infoViewLabel.text=q_text[1] as? String
        
        let slide3: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide3.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide3.infoViewTitle.text=q_name
        slide3.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide3.infoViewLabel.numberOfLines = 0
        slide3.infoViewLabel.text=q_text[2] as? String
        // 출처 : 회색으로 표시
        let attributedString2 = NSMutableAttributedString(string:slide3.infoViewLabel.text!)
        attributedString2.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1), range:NSMakeRange(0, attributedString2.length))
        slide3.infoViewLabel.attributedText = attributedString2
        
        
        return [slide1, slide2, slide3]
        
    }
    
    
    func setupSlideScrollView(slides : [InfoView]) {//슬라이드 스크롤뷰 설정함수, 페이지컨트롤 넘기는 동작 인식 함수
        infoScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        infoScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count
            ), height: view.frame.height)
        infoScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            infoScrollView.addSubview(slides[i])
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {//페이지 컨트롤 관련, 세로 스크롤 막는 함수
        let pageIndex=round(scrollView.contentOffset.x/view.frame.width)
        infoPageControl.currentPage=Int(pageIndex)
        if scrollView.contentOffset.y>0 || scrollView.contentOffset.y<0{
            scrollView.contentOffset.y=0
        }
    }
    
    @IBAction func backToQuiz(_ sender: UIButton) {//확인버튼
        let ViewControllerQuiz = self.storyboard?.instantiateViewController(withIdentifier: "Quiz")
        let ViewControllerList = self.storyboard?.instantiateViewController(withIdentifier: "List")
        if UserDefaults.standard.integer(forKey: "InfoLevel") >= 22{
            self.navigationController?.pushViewController(ViewControllerList!, animated: true)
        }
        else{
            self.navigationController?.pushViewController(ViewControllerQuiz!, animated: true)
        }
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
