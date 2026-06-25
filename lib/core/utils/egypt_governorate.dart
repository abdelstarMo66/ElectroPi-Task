class EgyptGovernorate {
  final String nameEn;
  final String nameAr;
  final List<EgyptCity> cities;

  const EgyptGovernorate({
    required this.nameEn,
    required this.nameAr,
    required this.cities,
  });
}

class EgyptCity {
  final String nameEn;
  final String nameAr;

  const EgyptCity({required this.nameEn, required this.nameAr});
}

class EgyptData {
  static const List<EgyptGovernorate> governorates = [
    EgyptGovernorate(
      nameEn: 'Cairo',
      nameAr: 'القاهرة',
      cities: [
        EgyptCity(nameEn: 'Nasr City', nameAr: 'مدينة نصر'),
        EgyptCity(nameEn: 'Maadi', nameAr: 'المعادي'),
        EgyptCity(nameEn: 'New Cairo', nameAr: 'القاهرة الجديدة'),
        EgyptCity(nameEn: 'Heliopolis', nameAr: 'مصر الجديدة'),
        EgyptCity(nameEn: 'Zamalek', nameAr: 'الزمالك'),
        EgyptCity(nameEn: 'Shoubra', nameAr: 'شبرا'),
        EgyptCity(nameEn: 'Ain Shams', nameAr: 'عين شمس'),
        EgyptCity(nameEn: 'Helwan', nameAr: 'حلوان'),
        EgyptCity(nameEn: 'El Basatin', nameAr: 'البساتين'),
        EgyptCity(nameEn: 'Mataria', nameAr: 'المطرية'),
        EgyptCity(nameEn: 'Shubra El Kheima', nameAr: 'شبرا الخيمة'),
        EgyptCity(nameEn: 'El Nozha', nameAr: 'النزهة'),
        EgyptCity(nameEn: 'El Salam', nameAr: 'السلام'),
        EgyptCity(nameEn: 'Dar El Salam', nameAr: 'دار السلام'),
        EgyptCity(nameEn: 'El Fustat', nameAr: 'الفسطاط'),
        EgyptCity(nameEn: 'El Khalifa', nameAr: 'الخليفة'),
        EgyptCity(nameEn: 'El Marg', nameAr: 'المرج'),
        EgyptCity(nameEn: 'El Zawya El Hamra', nameAr: 'الزاوية الحمراء'),
        EgyptCity(nameEn: 'Masr El Kadima', nameAr: 'مصر القديمة'),
        EgyptCity(nameEn: 'El Waily', nameAr: 'الوايلي'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Giza',
      nameAr: 'الجيزة',
      cities: [
        EgyptCity(nameEn: '6th of October', nameAr: 'السادس من أكتوبر'),
        EgyptCity(nameEn: 'Sheikh Zayed', nameAr: 'الشيخ زايد'),
        EgyptCity(nameEn: 'Haram', nameAr: 'الهرم'),
        EgyptCity(nameEn: 'Dokki', nameAr: 'الدقي'),
        EgyptCity(nameEn: 'Mohandessin', nameAr: 'المهندسين'),
        EgyptCity(nameEn: 'Agouza', nameAr: 'العجوزة'),
        EgyptCity(nameEn: 'Imbaba', nameAr: 'إمبابة'),
        EgyptCity(nameEn: 'Boulaq El Dakrour', nameAr: 'بولاق الدكرور'),
        EgyptCity(nameEn: 'El Wahat', nameAr: 'الواحات'),
        EgyptCity(nameEn: 'Badrasheen', nameAr: 'البدرشين'),
        EgyptCity(nameEn: 'Atfih', nameAr: 'أطفيح'),
        EgyptCity(nameEn: 'El Ayat', nameAr: 'العياط'),
        EgyptCity(nameEn: 'El Saff', nameAr: 'الصف'),
        EgyptCity(nameEn: 'Ossim', nameAr: 'أوسيم'),
        EgyptCity(nameEn: 'Kerdasa', nameAr: 'كرداسة'),
        EgyptCity(nameEn: 'Abu El Nomros', nameAr: 'أبو النمرس'),
        EgyptCity(nameEn: 'Kafr Ghati', nameAr: 'كفر غطاطي'),
        EgyptCity(nameEn: 'Manshiyat El Qanater', nameAr: 'منشأة القناطر'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Alexandria',
      nameAr: 'الإسكندرية',
      cities: [
        EgyptCity(nameEn: 'Sidi Gaber', nameAr: 'سيدي جابر'),
        EgyptCity(nameEn: 'Smouha', nameAr: 'سموحة'),
        EgyptCity(nameEn: 'Miami', nameAr: 'ميامي'),
        EgyptCity(nameEn: 'Montaza', nameAr: 'المنتزه'),
        EgyptCity(nameEn: 'Agami', nameAr: 'العجمي'),
        EgyptCity(nameEn: 'El Raml', nameAr: 'الرمل'),
        EgyptCity(nameEn: 'El Mansheya', nameAr: 'المنشية'),
        EgyptCity(nameEn: 'El Anfushi', nameAr: 'الأنفوشي'),
        EgyptCity(nameEn: 'El Attarin', nameAr: 'العطارين'),
        EgyptCity(nameEn: 'El Asafra', nameAr: 'العصافرة'),
        EgyptCity(nameEn: 'El Amreya', nameAr: 'الأمرية'),
        EgyptCity(nameEn: 'El Dekhila', nameAr: 'الدخيلة'),
        EgyptCity(nameEn: 'Borg El Arab', nameAr: 'برج العرب'),
        EgyptCity(nameEn: 'Sidi Bishr', nameAr: 'سيدي بشر'),
        EgyptCity(nameEn: 'Stanley', nameAr: 'ستانلي'),
        EgyptCity(nameEn: 'El Ibrahimiya', nameAr: 'الإبراهيمية'),
        EgyptCity(nameEn: 'El Hadara', nameAr: 'الحضرة'),
        EgyptCity(nameEn: 'El Wardian', nameAr: 'الورديان'),
        EgyptCity(nameEn: 'El Gomrok', nameAr: 'الجمرك'),
        EgyptCity(nameEn: 'El Maamoura', nameAr: 'المعمورة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Dakahlia',
      nameAr: 'الدقهلية',
      cities: [
        EgyptCity(nameEn: 'Mansoura', nameAr: 'المنصورة'),
        EgyptCity(nameEn: 'Talkha', nameAr: 'طلخا'),
        EgyptCity(nameEn: 'Mit Ghamr', nameAr: 'ميت غمر'),
        EgyptCity(nameEn: 'Aga', nameAr: 'أجا'),
        EgyptCity(nameEn: 'El Senbellawein', nameAr: 'السنبلاوين'),
        EgyptCity(nameEn: 'Shirbin', nameAr: 'شربين'),
        EgyptCity(nameEn: 'Belqas', nameAr: 'بلقاس'),
        EgyptCity(nameEn: 'Manzala', nameAr: 'منزلة'),
        EgyptCity(nameEn: 'El Matariya', nameAr: 'المطرية'),
        EgyptCity(nameEn: 'Gamasa', nameAr: 'جمصة'),
        EgyptCity(nameEn: 'Nabaroh', nameAr: 'نبروه'),
        EgyptCity(nameEn: 'Minyet El Nasr', nameAr: 'منية النصر'),
        EgyptCity(nameEn: 'Dekernes', nameAr: 'دكرنس'),
        EgyptCity(nameEn: 'Bani Obeid', nameAr: 'بني عبيد'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Sharqia',
      nameAr: 'الشرقية',
      cities: [
        EgyptCity(nameEn: 'Zagazig', nameAr: 'الزقازيق'),
        EgyptCity(nameEn: '10th of Ramadan', nameAr: 'العاشر من رمضان'),
        EgyptCity(nameEn: 'Belbeis', nameAr: 'بلبيس'),
        EgyptCity(nameEn: 'Minya El Qamh', nameAr: 'منيا القمح'),
        EgyptCity(nameEn: 'Hihya', nameAr: 'ههيا'),
        EgyptCity(nameEn: 'Abu Kebir', nameAr: 'أبو كبير'),
        EgyptCity(nameEn: 'El Husseiniya', nameAr: 'الحسينية'),
        EgyptCity(nameEn: 'El Ibrahimiya', nameAr: 'الإبراهيمية'),
        EgyptCity(nameEn: 'Faqous', nameAr: 'فاقوس'),
        EgyptCity(nameEn: 'Kafr Saqr', nameAr: 'كفر صقر'),
        EgyptCity(nameEn: 'Mashtoul El Souk', nameAr: 'مشتول السوق'),
        EgyptCity(nameEn: 'Salhiya El Gedida', nameAr: 'الصالحية الجديدة'),
        EgyptCity(nameEn: 'San El Hajar', nameAr: 'صان الحجر'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Gharbia',
      nameAr: 'الغربية',
      cities: [
        EgyptCity(nameEn: 'Tanta', nameAr: 'طنطا'),
        EgyptCity(nameEn: 'Mahalla El Kubra', nameAr: 'المحلة الكبرى'),
        EgyptCity(nameEn: 'Kafr El Zayat', nameAr: 'كفر الزيات'),
        EgyptCity(nameEn: 'Zefta', nameAr: 'زفتى'),
        EgyptCity(nameEn: 'El Santa', nameAr: 'السنطة'),
        EgyptCity(nameEn: 'Basyoun', nameAr: 'بسيون'),
        EgyptCity(nameEn: 'Samannoud', nameAr: 'سمنود'),
        EgyptCity(nameEn: 'Qutour', nameAr: 'قطور'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Monufia',
      nameAr: 'المنوفية',
      cities: [
        EgyptCity(nameEn: 'Shibin El Kom', nameAr: 'شبين الكوم'),
        EgyptCity(nameEn: 'Sadat City', nameAr: 'مدينة السادات'),
        EgyptCity(nameEn: 'Menouf', nameAr: 'منوف'),
        EgyptCity(nameEn: 'Ashmoun', nameAr: 'أشمون'),
        EgyptCity(nameEn: 'El Bagour', nameAr: 'الباجور'),
        EgyptCity(nameEn: 'Quesna', nameAr: 'قويسنا'),
        EgyptCity(nameEn: 'Birket El Sab', nameAr: 'بركة السبع'),
        EgyptCity(nameEn: 'Tala', nameAr: 'تلا'),
        EgyptCity(nameEn: 'Sers El Lyian', nameAr: 'سرس الليان'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Qalyubia',
      nameAr: 'القليوبية',
      cities: [
        EgyptCity(nameEn: 'Banha', nameAr: 'بنها'),
        EgyptCity(nameEn: 'Qalyub', nameAr: 'قليوب'),
        EgyptCity(nameEn: 'Shubra El Kheima', nameAr: 'شبرا الخيمة'),
        EgyptCity(nameEn: 'El Khanka', nameAr: 'الخانكة'),
        EgyptCity(nameEn: 'El Qanater El Khayriya', nameAr: 'القناطر الخيرية'),
        EgyptCity(nameEn: 'Kafr Shukr', nameAr: 'كفر شكر'),
        EgyptCity(nameEn: 'Tukh', nameAr: 'طوخ'),
        EgyptCity(nameEn: 'El Obour', nameAr: 'العبور'),
        EgyptCity(nameEn: 'Shibin El Qanater', nameAr: 'شبين القناطر'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Kafr El Sheikh',
      nameAr: 'كفر الشيخ',
      cities: [
        EgyptCity(nameEn: 'Kafr El Sheikh', nameAr: 'كفر الشيخ'),
        EgyptCity(nameEn: 'Desouk', nameAr: 'دسوق'),
        EgyptCity(nameEn: 'Fuwwah', nameAr: 'فوه'),
        EgyptCity(nameEn: 'El Hamoul', nameAr: 'الحامول'),
        EgyptCity(nameEn: 'Metoubes', nameAr: 'مطوبس'),
        EgyptCity(nameEn: 'Sidi Salem', nameAr: 'سيدي سالم'),
        EgyptCity(nameEn: 'Baltim', nameAr: 'بلطيم'),
        EgyptCity(nameEn: 'Biyala', nameAr: 'بيلا'),
        EgyptCity(nameEn: 'El Riyad', nameAr: 'الرياض'),
        EgyptCity(nameEn: 'Qellen', nameAr: 'قلين'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Beheira',
      nameAr: 'البحيرة',
      cities: [
        EgyptCity(nameEn: 'Damanhour', nameAr: 'دمنهور'),
        EgyptCity(nameEn: 'Kafr El Dawwar', nameAr: 'كفر الدوار'),
        EgyptCity(nameEn: 'Rashid', nameAr: 'رشيد'),
        EgyptCity(nameEn: 'Edku', nameAr: 'إدكو'),
        EgyptCity(nameEn: 'Abu El Matamir', nameAr: 'أبو المطامير'),
        EgyptCity(nameEn: 'El Mahmoudiya', nameAr: 'المحمودية'),
        EgyptCity(nameEn: 'Housh Issa', nameAr: 'حوش عيسى'),
        EgyptCity(nameEn: 'Shubrakhit', nameAr: 'شبراخيت'),
        EgyptCity(nameEn: 'El Rahmaniya', nameAr: 'الرحمانية'),
        EgyptCity(nameEn: 'Itay El Baroud', nameAr: 'إيتاي البارود'),
        EgyptCity(nameEn: 'Abu Hummus', nameAr: 'أبو حمص'),
        EgyptCity(nameEn: 'Delengat', nameAr: 'دلنجات'),
        EgyptCity(nameEn: 'Badr', nameAr: 'بدر'),
        EgyptCity(nameEn: 'Wadi El Natrun', nameAr: 'وادي النطرون'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Damietta',
      nameAr: 'دمياط',
      cities: [
        EgyptCity(nameEn: 'Damietta', nameAr: 'دمياط'),
        EgyptCity(nameEn: 'New Damietta', nameAr: 'دمياط الجديدة'),
        EgyptCity(nameEn: 'Faraskour', nameAr: 'فارسكور'),
        EgyptCity(nameEn: 'Kafr El Batikh', nameAr: 'كفر البطيخ'),
        EgyptCity(nameEn: 'El Zarqa', nameAr: 'الزرقا'),
        EgyptCity(nameEn: 'El Senbellawein', nameAr: 'السنبلاوين'),
        EgyptCity(nameEn: 'Ras El Bar', nameAr: 'رأس البر'),
        EgyptCity(nameEn: 'El Rawda', nameAr: 'الروضة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Port Said',
      nameAr: 'بورسعيد',
      cities: [
        EgyptCity(nameEn: 'Port Said City', nameAr: 'مدينة بورسعيد'),
        EgyptCity(nameEn: 'Port Fouad', nameAr: 'بور فؤاد'),
        EgyptCity(nameEn: 'El Manakh', nameAr: 'المناخ'),
        EgyptCity(nameEn: 'El Arab', nameAr: 'العرب'),
        EgyptCity(nameEn: 'El Dawahi', nameAr: 'الضواحي'),
        EgyptCity(nameEn: 'El Sharq', nameAr: 'الشرق'),
        EgyptCity(nameEn: 'El Zohour', nameAr: 'الزهور'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Ismailia',
      nameAr: 'الإسماعيلية',
      cities: [
        EgyptCity(nameEn: 'Ismailia', nameAr: 'الإسماعيلية'),
        EgyptCity(nameEn: 'Fayed', nameAr: 'فايد'),
        EgyptCity(nameEn: 'Qantara East', nameAr: 'القنطرة شرق'),
        EgyptCity(nameEn: 'Qantara West', nameAr: 'القنطرة غرب'),
        EgyptCity(nameEn: 'El Tal El Kebir', nameAr: 'التل الكبير'),
        EgyptCity(nameEn: 'Abu Soweer', nameAr: 'أبو صوير'),
        EgyptCity(nameEn: 'El Kassassin', nameAr: 'القصاصين'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Suez',
      nameAr: 'السويس',
      cities: [
        EgyptCity(nameEn: 'Suez City', nameAr: 'مدينة السويس'),
        EgyptCity(nameEn: 'Ataka', nameAr: 'عتاقة'),
        EgyptCity(nameEn: 'El Ganayen', nameAr: 'الجناين'),
        EgyptCity(nameEn: 'Arbaeen', nameAr: 'الأربعين'),
        EgyptCity(nameEn: 'Ain Sokhna', nameAr: 'عين السخنة'),
        EgyptCity(nameEn: 'Faisal', nameAr: 'فيصل'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'North Sinai',
      nameAr: 'شمال سيناء',
      cities: [
        EgyptCity(nameEn: 'Arish', nameAr: 'العريش'),
        EgyptCity(nameEn: 'Rafah', nameAr: 'رفح'),
        EgyptCity(nameEn: 'Sheikh Zuweid', nameAr: 'الشيخ زويد'),
        EgyptCity(nameEn: 'Bir El Abd', nameAr: 'بئر العبد'),
        EgyptCity(nameEn: 'Hasna', nameAr: 'حسنة'),
        EgyptCity(nameEn: 'El Qusaima', nameAr: 'القصيمة'),
        EgyptCity(nameEn: 'Nakhl', nameAr: 'نخل'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'South Sinai',
      nameAr: 'جنوب سيناء',
      cities: [
        EgyptCity(nameEn: 'Sharm El Sheikh', nameAr: 'شرم الشيخ'),
        EgyptCity(nameEn: 'Dahab', nameAr: 'دهب'),
        EgyptCity(nameEn: 'Nuweiba', nameAr: 'نويبع'),
        EgyptCity(nameEn: 'Taba', nameAr: 'طابا'),
        EgyptCity(nameEn: 'El Tor', nameAr: 'الطور'),
        EgyptCity(nameEn: 'Abu Rudeis', nameAr: 'أبو رديس'),
        EgyptCity(nameEn: 'Saint Catherine', nameAr: 'سانت كاترين'),
        EgyptCity(nameEn: 'Ras Sidr', nameAr: 'رأس سدر'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Red Sea',
      nameAr: 'البحر الأحمر',
      cities: [
        EgyptCity(nameEn: 'Hurghada', nameAr: 'الغردقة'),
        EgyptCity(nameEn: 'Safaga', nameAr: 'سفاجا'),
        EgyptCity(nameEn: 'Quseer', nameAr: 'القصير'),
        EgyptCity(nameEn: 'Marsa Alam', nameAr: 'مرسى علم'),
        EgyptCity(nameEn: 'El Shalatin', nameAr: 'الشلاتين'),
        EgyptCity(nameEn: 'Ras Gharib', nameAr: 'رأس غارب'),
        EgyptCity(nameEn: 'El Gouna', nameAr: 'الجونة'),
        EgyptCity(nameEn: 'Makadi Bay', nameAr: 'مكادي باي'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Matrouh',
      nameAr: 'مطروح',
      cities: [
        EgyptCity(nameEn: 'Mersa Matrouh', nameAr: 'مرسى مطروح'),
        EgyptCity(nameEn: 'Sallum', nameAr: 'السلوم'),
        EgyptCity(nameEn: 'El Dabaa', nameAr: 'الضبعة'),
        EgyptCity(nameEn: 'Sidi Barrani', nameAr: 'سيدي براني'),
        EgyptCity(nameEn: 'Siwa', nameAr: 'سيوة'),
        EgyptCity(nameEn: 'El Hamam', nameAr: 'الحمام'),
        EgyptCity(nameEn: 'Maraki', nameAr: 'مراقي'),
        EgyptCity(nameEn: 'El Alamein', nameAr: 'العلمين'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Alexandria Desert Road',
      nameAr: 'الساحل الشمالي',
      cities: [
        EgyptCity(nameEn: 'Marina', nameAr: 'مارينا'),
        EgyptCity(nameEn: 'Hacienda Bay', nameAr: 'هاسيندا باي'),
        EgyptCity(nameEn: 'Sidi Abd El Rahman', nameAr: 'سيدي عبد الرحمن'),
        EgyptCity(nameEn: 'Marassi', nameAr: 'مراسي'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Minya',
      nameAr: 'المنيا',
      cities: [
        EgyptCity(nameEn: 'Minya City', nameAr: 'مدينة المنيا'),
        EgyptCity(nameEn: 'Mallawi', nameAr: 'ملوي'),
        EgyptCity(nameEn: 'Beni Mazar', nameAr: 'بني مزار'),
        EgyptCity(nameEn: 'Matay', nameAr: 'مطاي'),
        EgyptCity(nameEn: 'Samalut', nameAr: 'سمالوط'),
        EgyptCity(nameEn: 'Maghagha', nameAr: 'مغاغة'),
        EgyptCity(nameEn: 'El Idwa', nameAr: 'العدوة'),
        EgyptCity(nameEn: 'Abu Qurqas', nameAr: 'أبو قرقاص'),
        EgyptCity(nameEn: 'Deir Mawas', nameAr: 'دير مواس'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Beni Suef',
      nameAr: 'بني سويف',
      cities: [
        EgyptCity(nameEn: 'Beni Suef City', nameAr: 'مدينة بني سويف'),
        EgyptCity(nameEn: 'El Wasta', nameAr: 'الواسطى'),
        EgyptCity(nameEn: 'Nasser', nameAr: 'ناصر'),
        EgyptCity(nameEn: 'Ihnasya', nameAr: 'إهناسيا'),
        EgyptCity(nameEn: 'Biba', nameAr: 'ببا'),
        EgyptCity(nameEn: 'Fashn', nameAr: 'الفشن'),
        EgyptCity(nameEn: 'Sumusta', nameAr: 'سموسطا'),
        EgyptCity(nameEn: 'New Beni Suef', nameAr: 'بني سويف الجديدة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Faiyum',
      nameAr: 'الفيوم',
      cities: [
        EgyptCity(nameEn: 'Faiyum City', nameAr: 'مدينة الفيوم'),
        EgyptCity(nameEn: 'Sinnuris', nameAr: 'سنورس'),
        EgyptCity(nameEn: 'Ibshaway', nameAr: 'إبشواي'),
        EgyptCity(nameEn: 'Yusuf El Seddik', nameAr: 'يوسف الصديق'),
        EgyptCity(nameEn: 'Tamiya', nameAr: 'طامية'),
        EgyptCity(nameEn: 'El Aghleen', nameAr: 'الأغاليين'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Assiut',
      nameAr: 'أسيوط',
      cities: [
        EgyptCity(nameEn: 'Assiut City', nameAr: 'مدينة أسيوط'),
        EgyptCity(nameEn: 'Dairut', nameAr: 'ديروط'),
        EgyptCity(nameEn: 'Manfalut', nameAr: 'منفلوط'),
        EgyptCity(nameEn: 'Qusiya', nameAr: 'القوصية'),
        EgyptCity(nameEn: 'Abnoub', nameAr: 'أبنوب'),
        EgyptCity(nameEn: 'Abu Tig', nameAr: 'أبو تيج'),
        EgyptCity(nameEn: 'El Ghanaim', nameAr: 'الغنايم'),
        EgyptCity(nameEn: 'Sahel Selim', nameAr: 'ساحل سليم'),
        EgyptCity(nameEn: 'El Badari', nameAr: 'البداري'),
        EgyptCity(nameEn: 'Sidfa', nameAr: 'صدفا'),
        EgyptCity(nameEn: 'New Assiut', nameAr: 'أسيوط الجديدة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Sohag',
      nameAr: 'سوهاج',
      cities: [
        EgyptCity(nameEn: 'Sohag City', nameAr: 'مدينة سوهاج'),
        EgyptCity(nameEn: 'Akhmim', nameAr: 'أخميم'),
        EgyptCity(nameEn: 'Girga', nameAr: 'جرجا'),
        EgyptCity(nameEn: 'Tahta', nameAr: 'طهطا'),
        EgyptCity(nameEn: 'El Balyana', nameAr: 'البلينا'),
        EgyptCity(nameEn: 'Dar El Salam', nameAr: 'دار السلام'),
        EgyptCity(nameEn: 'El Maragha', nameAr: 'المراغة'),
        EgyptCity(nameEn: 'El Monshah', nameAr: 'المنشأة'),
        EgyptCity(nameEn: 'Juhayna', nameAr: 'جهينة'),
        EgyptCity(nameEn: 'Sakolta', nameAr: 'ساقلتة'),
        EgyptCity(nameEn: 'New Sohag', nameAr: 'سوهاج الجديدة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Qena',
      nameAr: 'قنا',
      cities: [
        EgyptCity(nameEn: 'Qena City', nameAr: 'مدينة قنا'),
        EgyptCity(nameEn: 'Luxor', nameAr: 'الأقصر'),
        EgyptCity(nameEn: 'Nag Hammadi', nameAr: 'نجع حمادي'),
        EgyptCity(nameEn: 'Deshna', nameAr: 'دشنا'),
        EgyptCity(nameEn: 'Esna', nameAr: 'إسنا'),
        EgyptCity(nameEn: 'Qift', nameAr: 'قفط'),
        EgyptCity(nameEn: 'Qous', nameAr: 'قوص'),
        EgyptCity(nameEn: 'Farshout', nameAr: 'فرشوط'),
        EgyptCity(nameEn: 'Abnoud', nameAr: 'أبنود'),
        EgyptCity(nameEn: 'El Waqf', nameAr: 'الوقف'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Luxor',
      nameAr: 'الأقصر',
      cities: [
        EgyptCity(nameEn: 'Luxor City', nameAr: 'مدينة الأقصر'),
        EgyptCity(nameEn: 'Karnak', nameAr: 'الكرنك'),
        EgyptCity(nameEn: 'New Touriya', nameAr: 'التوريه الجديدة'),
        EgyptCity(nameEn: 'Esna', nameAr: 'إسنا'),
        EgyptCity(nameEn: 'El Tod', nameAr: 'الطود'),
        EgyptCity(nameEn: 'Armant', nameAr: 'أرمنت'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'Aswan',
      nameAr: 'أسوان',
      cities: [
        EgyptCity(nameEn: 'Aswan City', nameAr: 'مدينة أسوان'),
        EgyptCity(nameEn: 'Kom Ombo', nameAr: 'كوم أمبو'),
        EgyptCity(nameEn: 'Edfu', nameAr: 'إدفو'),
        EgyptCity(nameEn: 'Daraw', nameAr: 'دراو'),
        EgyptCity(nameEn: 'Nasr El Nuba', nameAr: 'نصر النوبة'),
        EgyptCity(nameEn: 'Abu Simbel', nameAr: 'أبو سمبل'),
        EgyptCity(nameEn: 'El Seboua', nameAr: 'السبوع'),
        EgyptCity(nameEn: 'Kalabsha', nameAr: 'كلابشة'),
        EgyptCity(nameEn: 'New Aswan', nameAr: 'أسوان الجديدة'),
      ],
    ),
    EgyptGovernorate(
      nameEn: 'New Valley',
      nameAr: 'الوادي الجديد',
      cities: [
        EgyptCity(nameEn: 'Kharga', nameAr: 'الخارجة'),
        EgyptCity(nameEn: 'Dakhla', nameAr: 'الداخلة'),
        EgyptCity(nameEn: 'Farafra', nameAr: 'الفرافرة'),
        EgyptCity(nameEn: 'Baris', nameAr: 'باريس'),
        EgyptCity(nameEn: 'Balat', nameAr: 'بلاط'),
      ],
    ),
  ];

  static List<String> get governorateNamesEn =>
      governorates.map((g) => g.nameEn).toList();

  static List<String> get governorateNamesAr =>
      governorates.map((g) => g.nameAr).toList();

  static List<EgyptCity> getCitiesForGovernorateEn(String governorateNameEn) {
    return governorates
        .firstWhere(
          (g) => g.nameEn == governorateNameEn,
          orElse: () =>
              const EgyptGovernorate(nameEn: '', nameAr: '', cities: []),
        )
        .cities;
  }

  static List<EgyptCity> getCitiesForGovernorateAr(String governorateNameAr) {
    return governorates
        .firstWhere(
          (g) => g.nameAr == governorateNameAr,
          orElse: () =>
              const EgyptGovernorate(nameEn: '', nameAr: '', cities: []),
        )
        .cities;
  }
}
