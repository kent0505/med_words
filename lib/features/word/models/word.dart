import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Word {
  @HiveField(0)
  final String en;
  @HiveField(1)
  final String uz;
  @HiveField(2)
  final String enDef;
  @HiveField(3)
  final String uzDef;
  @HiveField(4)
  final String transcript;
  @HiveField(5)
  bool favorite;

  Word({
    required this.en,
    required this.uz,
    required this.enDef,
    required this.uzDef,
    required this.transcript,
    required this.favorite,
  });
}

class WordAdapter extends TypeAdapter<Word> {
  @override
  final typeId = 0;

  @override
  Word read(BinaryReader reader) {
    return Word(
      en: reader.read(),
      uz: reader.read(),
      enDef: reader.read(),
      uzDef: reader.read(),
      transcript: reader.read(),
      favorite: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Word obj) {
    writer.write(obj.en);
    writer.write(obj.uz);
    writer.write(obj.enDef);
    writer.write(obj.uzDef);
    writer.write(obj.transcript);
    writer.write(obj.favorite);
  }
}

List<Word> wordsList = [
  Word(
    en: 'Abdomen (n)',
    uz: 'Qorin',
    enDef: 'The part of the body between the chest and pelvis.',
    uzDef: 'Tananing ko\'krak va tos suyagi orasidagi qismi.',
    transcript: '[ə\'bænd(ə)n]',
    favorite: false,
  ),
  Word(
    en: 'Abortion (n)',
    uz: 'Abort',
    enDef:
        'Abortion is a procedure done to end pregnancy.\n\n2. Spontaneous abortion is a naturally occurring abortion.',
    uzDef:
        'Abort - bu homiladorlikni tugatish uchun qilingan protsedura. 2. Spontan abort - bu tabiiy ravishda sodir bo\'lgan homilani to`xtatish',
    transcript: '[ ə\'bɔ:ʃən]',
    favorite: false,
  ),
  Word(
    en: 'Abrasion (n)',
    uz: 'Shilingan joy',
    enDef:
        'A wound caused by scraping the skin. A “skinned knee” is a common example.',
    uzDef:
        'Terini yirtilishi natijasida paydo bo\'lgan yara. Misol uchun "teri o\'ralgan tizza"',
    transcript: '[ əˈbreɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Abstinence (n)',
    uz: 'O‘zini tiyish yoki tortish',
    enDef:
        'To hold back or restrain. For example, to refrain from the use of drugs or alcohol, or from having sexual…',
    uzDef:
        'O`zini saqlash. Masalan, giyohvand moddalar yoki spirtli ichimliklarni iste\'mol qilish yoki jinsiy aloqada bo\'lishdan saqlanish',
    transcript: '[ˈæbstɪnəns]',
    favorite: false,
  ),
  Word(
    en: 'Acclimation (n)',
    uz: 'Moslashish',
    enDef: 'The process of getting used to a new climate or altitude.',
    uzDef: 'Yangi iqlim yoki balandlikka ko\'nikish jarayoni.',
    transcript: '[ æk.lɪˈmeɪ.ʃən]',
    favorite: false,
  ),
  Word(
    en: 'Abscess(n)',
    uz: 'Yiringlagan joy',
    enDef: 'A swollen, inflamed area where pus gathers.',
    uzDef: 'Yiring to\'plangan shishgan, yallig\'langan joy.',
    transcript: '[ ˈæb.ses]',
    favorite: false,
  ),
  Word(
    en: 'Absorption (n)',
    uz: 'Singish',
    enDef: 'To take in substances through the skin or mucous membranes.',
    uzDef: 'Teri yoki shilliq pardalar orqali moddalarni qabul qilish.',
    transcript: '[ əbˈzɔːp.ʃən]',
    favorite: false,
  ),
  Word(
    en: "Achilles' tendon (n)",
    uz: 'Axilles tendoni',
    enDef:
        'The strong tendon at the back of the ankle that attaches the calf muscle to the heel.',
    uzDef:
        'To\'piqning orqa qismidagi kuchli tendon, buzoq mushaklarini tovonga bog\'laydi.',
    transcript: '[ əˌkɪl.iːzˈtendən]',
    favorite: false,
  ),
  Word(
    en: 'Acidosis (n)',
    uz: 'Atsidoz',
    enDef:
        'An abnormal condition in the body in which excessive acid lowers the pH of the blood and body tissues.',
    uzDef:
        'Ortiqcha kislota qon va tana to\'qimalarining pH darajasini pasaytiradigan tanadagi g\'ayritabiiy holat.',
    transcript: '[ asɪˈdəʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Acne (n)',
    uz: 'husnbuzar, bo\'jama',
    enDef: 'A skin disorder usually found in adolescents and young adults.',
    uzDef: 'Teri kasalligi odatda o\'smirlar va yoshlarda uchraydi.',
    transcript: '[ \'akni ]',
    favorite: false,
  ),
  Word(
    en: 'Acoustic (adj)',
    uz: 'Akustik',
    enDef: 'Having to do with sound and hearing.',
    uzDef: 'Ovoz va eshitish bilan bog\'liq',
    transcript: '[ əˈkuː.stɪk]',
    favorite: false,
  ),
  Word(
    en: 'Acromegaly (adj)',
    uz: 'Akromegali',
    enDef:
        'A condition that occurs when the pituitary gland produces too much growth hormone.',
    uzDef:
        'Gipofiz bezi juda ko\'p o\'sish gormoni ishlab chiqarganda yuzaga keladigan holat.',
    transcript: '[ akrə(ʊ)ˈmeɡəlɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Actinic keratosis (n)',
    uz: 'aktinik keratoz',
    enDef:
        'Scaly, pink, gray or tan patches or bumps on the face or scalp, or on the back of the hands…',
    uzDef:
        'Yuz yoki bosh terisi yoki qo\'llarning orqa tomonida qoraygan, pushti, kulrang yoki sarg\'ish dog\'lar yoki shishlar ...',
    transcript: '[ aktinik keratosis]',
    favorite: false,
  ),
  Word(
    en: 'Acupuncture (n)',
    uz: 'Ignaterapiya, igna bilan davolash',
    enDef:
        'An ancient Chinese method to relieve pain or treat disease by inserting needles into various parts of the body.',
    uzDef:
        'Tananing turli qismlariga igna kiritish orqali og\'riqni yo\'qotish yoki kasallikni davolash uchun qadimgi Xitoy usuli.',
    transcript: '[ ˈakjʊˌpʌŋ(k)tʃə ]',
    favorite: false,
  ),
  Word(
    en: 'Acute (adj)',
    uz: 'O\'tkir',
    enDef:
        '1. Of short course. 2. Severe, but of a short duration. Not chronic.',
    uzDef: '1. Albatta qisqa. 2. Og\'ir, ammo qisqa muddatli. Surunkali emas.',
    transcript: '[ əˈkjuːt]',
    favorite: false,
  ),
  Word(
    en: 'Addiction (n)',
    uz: 'Giyohvandlik',
    enDef:
        'Strong dependence or habitual use of a substance or practice, despite the negative consequences of its use.',
    uzDef:
        'Kuchli qaramlik yoki uni qo\'llashning salbiy oqibatlariga qaramay, modda yoki amaliyotdan odatiy foydalanish.',
    transcript: '[ əˈdɪk.ʃən]',
    favorite: false,
  ),
  Word(
    en: 'Addison\'s disease (n)',
    uz: 'Addison kasalligi',
    enDef:
        'An ailment characterized by underfunctioning of the adrenal glands. Characterized by anemia, weakness, low blood pressure and brownish discoloration of…',
    uzDef:
        'Buyrak usti bezlarining noto\'g\'ri ishlashi bilan tavsiflangan kasallik. Anemiya, zaiflik, past qon bosimi va jigarrang rang o\'zgarishi bilan tavsiflanadi ...',
    transcript: '[ adɪsənz dɪˈziːz]',
    favorite: false,
  ),
  Word(
    en: 'Adenitis (n)',
    uz: 'adenit',
    enDef: 'Swelling of a gland.',
    uzDef: 'Bezning shishishi.',
    transcript: '[ ædəˈnaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Adenoids (n)',
    uz: 'adenoidlar',
    enDef:
        'Glandular tissue in the back of the throat that may swell, especially during childhood, obstruct breathing and speaking, and lead…',
    uzDef:
        'Tomoqning orqa qismidagi bez to\'qimalari, ayniqsa bolalik davrida shishishi, nafas olish va gapirishga to\'sqinlik qilishi va ...',
    transcript: '[ ædənɔɪdz]',
    favorite: false,
  ),
  Word(
    en: 'Adenoma (n)',
    uz: 'adenoma',
    enDef: 'A noncancerous tumor of glandular tissue.',
    uzDef: 'Glandular to\'qimalarning saratonsiz o\'smasi.',
    transcript: '[ ædɪˈnəʊmə]',
    favorite: false,
  ),
  Word(
    en: 'Adenovirus (n)',
    uz: 'adenovirus',
    enDef: 'One of the viruses that cause the common cold.',
    uzDef: 'Umumiy sovuqni keltirib chiqaradigan viruslardan biri.',
    transcript: '[ ædɪ.nəʊvaɪərəs]',
    favorite: false,
  ),
  Word(
    en: 'ADH (n)',
    uz: 'ADH',
    enDef:
        'Antidiuretic hormone. One of the hormones produced by the pituitary gland. A shortage of this hormone causes increased loss of…',
    uzDef:
        'Antidiuretik gormon. Gipofiz bezi tomonidan ishlab chiqarilgan gormonlardan biri. Ushbu gormonning etishmasligi ko\'proq yo\'qotishga olib keladi ...',
    transcript: '[ antee·daiuhretik hɔːməʊn]',
    favorite: false,
  ),
  Word(
    en: 'Adhesion (n)',
    uz: 'yopishqoqlik',
    enDef:
        'The sticking of one surface to another. This can occur when scar tissue causes organs or loops of intestine to…',
    uzDef:
        'Bir yuzaning boshqasiga yopishishi. Bu chandiq to\'qimasi a\'zolar yoki ichak qovuzloqlarini ...',
    transcript: '[ ədˈhiːʒən]',
    favorite: false,
  ),
  Word(
    en: 'Adipose fatty cells (n)',
    uz: 'yog\'li yog \'hujayralari',
    enDef:
        'Special cells in which fat is stored when a person’s caloric intake is greater than that required by one’s…',
    uzDef:
        'Odamning kaloriya iste\'moli o\'zi uchun zarur bo\'lganidan ko\'proq bo\'lsa, yog\'lar saqlanadigan maxsus hujayralar ...',
    transcript: '[ ˈædɪpəʊs fæti selz]',
    favorite: false,
  ),
  Word(
    en: 'Adrenal glands (n)',
    uz: 'buyrak usti bezlari',
    enDef:
        'Located on top of the kidneys, these glands produce hormones helpful in regulating the body’s metabolism.',
    uzDef:
        'Buyraklar tepasida joylashgan bu bezlar organizmdagi metabolizmni tartibga solishda yordam beradigan gormonlar ishlab chiqaradi.',
    transcript: '[ əˈdriːnəl ɡlændz]',
    favorite: false,
  ),
  Word(
    en: 'Adrenaline (n)',
    uz: 'adrenalin',
    enDef:
        'Epinephrine. One of several hormones produced by the adrenal glands.',
    uzDef:
        'Epinefrin. Buyrak usti bezlari tomonidan ishlab chiqarilgan bir nechta gormonlardan biri.',
    transcript: '[ əˈdrɛnəlɪn]',
    favorite: false,
  ),
  Word(
    en: 'Aerobic (adj)',
    uz: 'aerobik',
    enDef:
        'Requiring the use of oxygen. Exercise that conditions the heart and lungs by increasing the efficiency of oxygen intake by…',
    uzDef:
        'Kisloroddan foydalanishni talab qilish. Kislorodni iste\'mol qilish samaradorligini oshirish orqali yurak va o\'pkalarni tartibga soluvchi mashqlar ...',
    transcript: '[ ɛˈroʊbɪk]',
    favorite: false,
  ),
  Word(
    en: 'Afterbirth (n)',
    uz: 'tug\'ilgandan keyin',
    enDef:
        'The placenta, which is attached to the fetus by the umbilical cord and must be delivered after the baby.',
    uzDef:
        'Xomilaga kindik orqali bog\'langan va boladan keyin tug\'ilishi kerak bo\'lgan platsenta.',
    transcript: '[ æftərbɜrθ]',
    favorite: false,
  ),
  Word(
    en: 'AIDS (n)',
    uz: 'OITS',
    enDef:
        'Acquired immunodeficiency syndrome. A disease of the immune system caused by the HIV virus.',
    uzDef:
        'Orttirilgan immunitet tanqisligi sindromi. OIV virusi keltirib chiqaradigan immunitet tizimining kasalligi.',
    transcript: '[ eɪdz]',
    favorite: false,
  ),
  Word(
    en: 'Airway (n)',
    uz: 'havo yo\'li',
    enDef: 'The passage by which air enters and exits the lungs.',
    uzDef: 'Havoning o\'pkaga kirish va chiqish yo\'li.',
    transcript: '[ ˈɛrweɪ]',
    favorite: false,
  ),
  Word(
    en: 'Albinism (n)',
    uz: 'albinizm',
    enDef:
        'The absence of all normal body pigmentation at birth, a condition that can occur in all races.',
    uzDef:
        'Tug\'ilganda barcha normal tana pigmentatsiyasining yo\'qligi, barcha irqlarda paydo bo\'lishi mumkin bo\'lgan holat.',
    transcript: '[ ˈælbɪnɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Albino (n)',
    uz: 'albinos',
    enDef: 'A person with albinism.',
    uzDef: 'Albinizm bilan kasallangan odam.',
    transcript: '[ ælˈbiːnoʊ]',
    favorite: false,
  ),
  Word(
    en: 'Albumin (n)',
    uz: 'albumin',
    enDef:
        'A water-soluble protein found in milk, egg, muscle, blood and many vegetable tissues and fluids.',
    uzDef:
        'Sut, tuxum, mushak, qon va ko\'plab o\'simlik to\'qimalari va suyuqliklarida mavjud suvda eriydigan oqsil.',
    transcript: '[ ælbjʊmɪn]',
    favorite: false,
  ),
  Word(
    en: 'Aldosteronism (n)',
    uz: 'aldosteronizm',
    enDef:
        'A condition resulting when the adrenal glands produce too much of the hormone aldosterone, which regulates fluids and salt in…',
    uzDef:
        'Buyrak usti bezlari suyuqlik va tuzni tartibga soluvchi aldosteron gormonini juda ko\'p ishlab chiqarishi natijasida yuzaga keladigan holat ...',
    transcript: '[ ælˈdɒstərənɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Alimentary (adj)',
    uz: 'ovqat hazm qilish',
    enDef:
        'Having to do with food or nutrition. The alimentary tract is the digestive tract.',
    uzDef:
        'Oziq-ovqat yoki ovqatlanish bilan bog\'liq. Ovqat hazm qilish trakti ovqat hazm qilish traktidir.',
    transcript: '[ ælɪˈmɛntəri]',
    favorite: false,
  ),
  Word(
    en: 'Allergen (n)',
    uz: 'allergen',
    enDef: 'A substance capable of producing an allergic reaction.',
    uzDef: 'Allergiya reaktsiyasini keltirib chiqarishga qodir modda.',
    transcript: '[ ˈælərdʒən]',
    favorite: false,
  ),
  Word(
    en: 'Allergy (n)',
    uz: 'allergiya',
    enDef: 'An exaggerated immune response to substances in the environment.',
    uzDef: 'Atrof-muhitdagi moddalarga bo\'rttirilgan immunitet reaktsiyasi.',
    transcript: '[ ælərdʒi]',
    favorite: false,
  ),
  Word(
    en: 'Alopecia (n)',
    uz: 'alopesiya',
    enDef: 'Hair loss, especially of the head.',
    uzDef: 'Soch to\'kilishi, ayniqsa boshning.',
    transcript: '[ æləˈpiːʃiə]',
    favorite: false,
  ),
  Word(
    en: 'Alpha1-antitrypsin deficiency (n)',
    uz: 'alfa1-antitripsin yetishmovchiligi',
    enDef:
        'Congenital lack of an enzyme that leads to cirrhosis of the liver and obstructive lung disease.',
    uzDef:
        'Jigar sirrozi va obstruktiv o\'pka kasalligiga olib keladigan fermentning konjenital yetishmasligi.',
    transcript: '[ ˈælfəwʌn æntiˌtraɪpsɪn dɪˈfɪʃənsi]',
    favorite: false,
  ),
  Word(
    en: 'Altitude sickness (n)',
    uz: 'balandlik kasalligi',
    enDef:
        'A potentially fatal illness caused by being at altitudes high enough to reduce the amount of oxygen available to the…',
    uzDef:
        'O\'limga olib kelishi mumkin bo\'lgan kasallik, etarlicha balandlikda bo\'lish tufayli kislorod miqdorini kamaytiradi ...',
    transcript: '[ æltɪtjuːd ˈsɪknəs]',
    favorite: false,
  ),
  Word(
    en: 'Alveoli (n)',
    uz: 'alveolalar',
    enDef:
        'The sacs in the lungs at the ends of the smallest airways where oxygen is exchanged for carbon dioxide in…',
    uzDef:
        'O\'pkada kislorod karbonat angidridga almashinadigan eng kichik havo yo\'llarining uchlarida joylashgan qoplar ...',
    transcript: '[ ælˈviːəlaɪ]',
    favorite: false,
  ),
  Word(
    en: 'Amblyopia (n)',
    uz: 'ambliyopiya',
    enDef: 'Impaired vision without an apparent cause.',
    uzDef: 'Aniq sababsiz ko\'rishning buzilishi.',
    transcript: '[ æmblɪˈoʊpiə]',
    favorite: false,
  ),
  Word(
    en: 'Ambulatory (adj)',
    uz: 'ambulatoriya',
    enDef: 'Able to walk. Not confined to bed.',
    uzDef: 'Yurishga qodir. To\'shak bilan chegaralanmagan.',
    transcript: '[ æmˈbjʊlətɔri]',
    favorite: false,
  ),
  Word(
    en: 'Amenorrhea (n)',
    uz: 'amenoreya',
    enDef: 'Absence of menstrual periods.',
    uzDef: 'Menstrüel davrlarning yo\'qligi.',
    transcript: '[ eɪˌmɛnəˈriːə]',
    favorite: false,
  ),
  Word(
    en: 'Amnesia (n)',
    uz: 'amneziya',
    enDef:
        'Partial or total loss of memory, usually as the result of psychological trauma or stress, or physical damage to the…',
    uzDef:
        'Xotiraning qisman yoki to\'liq yo\'qolishi, odatda psixologik travma yoki stress yoki jismoniy shikastlanish natijasida ...',
    transcript: '[ æmˈniʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Amnion (n)',
    uz: 'amnion',
    enDef:
        'The membrane enclosing a developing fetus; it’s filled with a protective liquid called amniotic fluid.',
    uzDef:
        'Rivojlanayotgan homilani o\'rab turgan membrana; u amniotik suyuqlik deb ataladigan himoya suyuqlik bilan to\'ldirilgan.',
    transcript: '[ æmnɪən]',
    favorite: false,
  ),
  Word(
    en: 'Amputation (n)',
    uz: 'amputatsiya',
    enDef:
        'The surgical removal of a limb or other appendage because of damage by trauma or as a treatment for a…',
    uzDef:
        'Shikastlanish natijasida shikastlangan a\'zo yoki boshqa qo\'shimchani jarrohlik yo\'li bilan olib tashlash yoki...',
    transcript: '[ ˌæmpjʊˈteɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Anaerobic exercise (n)',
    uz: 'anaerob mashqlar',
    enDef:
        'Brief, intense exercise that leads to an oxygen debt in a certain area of tissue. Weight lifting is an…',
    uzDef:
        'To\'qimalarning ma\'lum bir hududida kislorod qarziga olib keladigan qisqa, intensiv mashqlar. Og\'irlikni ko\'tarish - bu…',
    transcript: '[ ænærˈoʊbɪk ˈɛksərsaɪz]',
    favorite: false,
  ),
  Word(
    en: 'Anaphylaxis (n)',
    uz: 'anafilaksi',
    enDef:
        'The most severe form of allergy, in which the person’s heart and lungs are unable to keep working, and death…',
    uzDef:
        'Allergiyaning eng og\'ir shakli, bunda odamning yuragi va o\'pkasi ishlay olmaydi va o\'lim ...',
    transcript: '[ ˌænəfɪˈlæksɪs]',
    favorite: false,
  ),
  Word(
    en: 'Androgen (n)',
    uz: 'androgen',
    enDef:
        'Any substance that produces male characteristics. Testosterone and androsterone are natural androgens.',
    uzDef:
        'Erkak xususiyatlarini ishlab chiqaradigan har qanday modda. Testosteron va androsteron tabiiy androgenlardir.',
    transcript: '[ ændroʊdʒən]',
    favorite: false,
  ),
  Word(
    en: 'Anemia (n)',
    uz: 'anemiya',
    enDef:
        'A decreased ability of the blood to carry oxygen because of a reduction in either the number or quality of…',
    uzDef:
        'Qonning kislorodni tashish qobiliyatining pasayishi, chunki ularning soni yoki sifati ...',
    transcript: '[ əˈniːmiə]',
    favorite: false,
  ),
  Word(
    en: 'Anesthesia (n)',
    uz: 'behushlik',
    enDef: 'Drug-induced loss of feeling or sensation.',
    uzDef: 'Giyohvand moddalar bilan bog\'liq his-tuyg\'ularni yo\'qotish.',
    transcript: '[ ænəsˈθiʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Anesthetic (n)',
    uz: 'anestetik',
    enDef: 'An agent used to produce anesthesia.',
    uzDef: 'Anesteziya ishlab chiqarish uchun ishlatiladigan vosita.',
    transcript: '[ ænəsˈθɛtɪk]',
    favorite: false,
  ),
  Word(
    en: 'Aneurysm (n)',
    uz: 'anevrizma',
    enDef:
        'A thin sac caused by a weakened area in the walls of blood vessels or the heart. As an aneurysm…',
    uzDef:
        'Qon tomirlari yoki yurak devorlarining zaiflashgan joyidan kelib chiqqan yupqa xalta. Anevrizma sifatida ...',
    transcript: '[ ˈænjərɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Angina pectoris (n)',
    uz: 'angina pektoris',
    enDef:
        'Chest pain caused by decreased oxygen delivery to the heart muscle.',
    uzDef:
        'Ko\'krak og\'rig\'i yurak mushaklariga kislorod etkazib berishning kamayishi natijasida yuzaga keladi.',
    transcript: '[ ˈændʒaɪnə pɛkˈtɔrɪs]',
    favorite: false,
  ),
  Word(
    en: 'Angioma (n)',
    uz: 'angioma',
    enDef: 'A noncancerous tumor made up of many blood vessels.',
    uzDef: 'Ko\'p qon tomirlaridan tashkil topgan saratonsiz o\'simta.',
    transcript: '[ ændʒiˈoʊmə]',
    favorite: false,
  ),
  Word(
    en: 'Anhidrosis (n)',
    uz: 'anhidroz',
    enDef:
        'Absence of sweating. An inability to sweat greatly interferes with the body’s ability to control its internal temperature.',
    uzDef:
        'Terlashning yo\'qligi. Terlashning mumkin emasligi tananing ichki haroratini nazorat qilish qobiliyatiga katta xalaqit beradi.',
    transcript: '[ ænhaɪˈdroʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Ankylosis (n)',
    uz: 'ankiloz',
    enDef: 'Abnormal stiffening of a joint.',
    uzDef: 'Qo\'shimchaning g\'ayritabiiy qattiqlashishi.',
    transcript: '[ æŋkəˈloʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Anomaly (n)',
    uz: 'anomaliya',
    enDef: 'Deviation from normal.',
    uzDef: 'Oddiydan chetga chiqish.',
    transcript: '[ əˈnɒməli]',
    favorite: false,
  ),
  Word(
    en: 'Anaphylaxis (n)',
    uz: 'anorxizm',
    enDef: 'Congenital absence of both testes.',
    uzDef: 'Ikkala moyakning tug\'ma yo\'qligi.',
    transcript: '[ ænˈɔrkɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Anorexia nervosa (n)',
    uz: 'anoreksiya nervoza',
    enDef:
        'An eating disorder manifested primarily by a loss of desire or willingness to eat for a variety of psychological…',
    uzDef:
        'Ovqatlanish buzilishi, birinchi navbatda, turli xil psixologik sabablarga ko\'ra ovqatlanish istagi yoki istagi yo\'qolishi bilan namoyon bo\'ladi ...',
    transcript: '[ ˌænərɛksiə nərˈvoʊsə]',
    favorite: false,
  ),
  Word(
    en: 'Anosmia (n)',
    uz: 'anosmiya',
    enDef: 'Loss of the sense of smell.',
    uzDef: 'Hid hissini yo\'qotish.',
    transcript: '[ ænˈɒzmiə]',
    favorite: false,
  ),
  Word(
    en: 'Antepartum (adj)',
    uz: 'antepartum',
    enDef: 'Occurring before delivery of a baby.',
    uzDef: 'Bola tug\'ilishidan oldin sodir bo\'ladi.',
    transcript: '[ æntiˈpɑrtəm]',
    favorite: false,
  ),
  Word(
    en: 'Antibody (n)',
    uz: 'antikor',
    enDef:
        'A protein produced by the body to neutralize an invading foreign agent or antigen, such as a virus.',
    uzDef:
        'Virus kabi bosqinchi begona agentni yoki antijenni zararsizlantirish uchun tana tomonidan ishlab chiqarilgan oqsil.',
    transcript: '[ æntibɒdi]',
    favorite: false,
  ),
  Word(
    en: 'Antidote (n)',
    uz: 'antidot',
    enDef: 'An agent used to counteract a poison.',
    uzDef: 'Zaharga qarshi kurashda ishlatiladigan vosita.',
    transcript: '[ ˈæntidot]',
    favorite: false,
  ),
  Word(
    en: 'Antigen (n)',
    uz: 'antigen',
    enDef:
        'A foreign agent capable of starting an immune response or causing the body to produce antibodies.',
    uzDef:
        'Immunitet reaktsiyasini boshlash yoki tanada antikorlar ishlab chiqarishga qodir bo\'lgan xorijiy agent.',
    transcript: '[ ˈæntidʒən]',
    favorite: false,
  ),
  Word(
    en: 'Antiserum (n)',
    uz: 'antiserum',
    enDef:
        'A serum that contains antibodies. Serum from a person or animal with immunity to a certain disease can, in some…',
    uzDef:
        'Antikorlarni o\'z ichiga olgan sarum. Muayyan kasallikka qarshi immunitetga ega bo\'lgan odam yoki hayvonlardan olingan sarum, ba\'zilarida ...',
    transcript: '[ ˌæntiˈsɪrəm]',
    favorite: false,
  ),
  Word(
    en: 'Anus (n)',
    uz: 'anus',
    enDef: 'The opening of the rectum.',
    uzDef: 'To\'g\'ri ichakning ochilishi.',
    transcript: '[ ˈeɪnəs]',
    favorite: false,
  ),
  Word(
    en: 'Anxiety (n)',
    uz: 'tashvish',
    enDef: 'A feeling of nervousness, uneasiness, apprehension or dread.',
    uzDef: 'Asabiylashish, bezovtalik, qo\'rquv yoki qo\'rquv hissi.',
    transcript: '[ æŋˈzaɪəti]',
    favorite: false,
  ),
  Word(
    en: 'Aorta (n)',
    uz: 'aorta',
    enDef:
        'The large artery that carries blood from the heart to the rest of the body.',
    uzDef:
        'Qonni yurakdan tananing qolgan qismiga olib boradigan katta arteriya.',
    transcript: '[ eɪˈɔrtə]',
    favorite: false,
  ),
  Word(
    en: 'Apathy (n)',
    uz: 'befarqlik',
    enDef: 'Lack of emotions.',
    uzDef: 'Hissiyotlarning etishmasligi.',
    transcript: '[ ˈæpəθi]',
    favorite: false,
  ),
  Word(
    en: 'Apgar score (n)',
    uz: 'Apgar ball',
    enDef:
        'A scoring method from zero to 10 for describing the health of an infant at birth, based on heart rate,…',
    uzDef:
        'Yurak urishi tezligiga qarab tug\'ilgan chaqaloqning sog\'lig\'ini tavsiflash uchun noldan 10 gacha ball usuli, ...',
    transcript: '[ æpgɑr skɔr]',
    favorite: false,
  ),
  Word(
    en: 'Aphagia (n)',
    uz: 'afagiya',
    enDef: 'Inability to swallow.',
    uzDef: 'Yuta olmaslik.',
    transcript: '[ əˈfeɪdʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Aphasia (n)',
    uz: 'afazi',
    enDef: 'A partial or total loss of the power to use or understand words.',
    uzDef:
        'So\'zlarni ishlatish yoki tushunish qobiliyatining qisman yoki to\'liq yo\'qolishi.',
    transcript: '[ əˈfeɪʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Aphthous ulcers (n)',
    uz: 'aft yaralari',
    enDef: 'A painful sore in the mouth. Also called a canker sore.',
    uzDef: 'Og\'izda og\'riqli yara. Bundan tashqari, saraton yarasi deyiladi.',
    transcript: '[ ˈæfθəs ˈʌlsərz]',
    favorite: false,
  ),
  Word(
    en: 'Apnea (n)',
    uz: 'apnea',
    enDef: 'Temporary pause in breathing.',
    uzDef: 'Nafas olishda vaqtinchalik pauza.',
    transcript: '[ æpˈniə]',
    favorite: false,
  ),
  Word(
    en: 'appendectomy antibody (n)',
    uz: 'appendektomiya antikor antikorantikor',
    enDef: 'Surgical removal of the appendix.',
    uzDef: 'Yo\'g\'on ochishning jarrohlik olib tashlanishi.',
    transcript: '[ ˌæpɛndɛkˈtɔmi æn.tiˌbɒd.i ]',
    favorite: false,
  ),
  Word(
    en: 'Appendix (n)',
    uz: 'ilova',
    enDef:
        'A finger-like appendage near the junction of the large intestine and the small intestine.',
    uzDef:
        'Yo\'g\'on ichak va ingichka ichakning tutashgan joyiga yaqin joylashgan barmoqsimon qo\'shimcha.',
    transcript: '[ əˈpɛndɪks]',
    favorite: false,
  ),
  Word(
    en: 'Areola (n)',
    uz: 'areola',
    enDef: 'The dark area of the breast surrounding the nipple.',
    uzDef: 'Ko\'krakning nipelni o\'rab turgan qorong\'u maydoni.',
    transcript: '[ əriːˈoʊlə]',
    favorite: false,
  ),
  Word(
    en: 'Arteriosclerosis (n)',
    uz: 'ateroskleroz',
    enDef:
        'Commonly called “hardening of the arteries.” An abnormal thickening and loss of elasticity of the wall of the arteries.',
    uzDef:
        'Odatda "tomirlarning qattiqlashishi" deb ataladi. Arteriyalar devorining g\'ayritabiiy qalinlashishi va elastikligini yo\'qotishi.',
    transcript: '[ ɑrti:ri:ouskle\'rousis]',
    favorite: false,
  ),
  Word(
    en: 'Arteriovenous malformation (n)',
    uz: 'arteriovenoz malformatsiya',
    enDef:
        'Abnormal group of dilated blood vessels, most often occurring in the brain.',
    uzDef:
        'Kengaygan qon tomirlarining g\'ayritabiiy guruhi, ko\'pincha miyada paydo bo\'ladi.',
    transcript: '[ a:rtiriouvenous ma:l\'fou:meysh\'n]',
    favorite: false,
  ),
  Word(
    en: 'Artery (n)',
    uz: 'arteriya',
    enDef:
        'A vessel that carries blood away from the heart to various parts of the body.',
    uzDef: 'Qonni yurakdan tananing turli qismlariga olib boradigan tomir.',
    transcript: '[ \'a:rtiri: ]',
    favorite: false,
  ),
  Word(
    en: 'Arthralgia (n)',
    uz: 'artralgiya',
    enDef: 'Pain in a joint.',
    uzDef: 'Qo\'shimchadagi og\'riq.',
    transcript: '[ ɑːˈθɹæl.dʒi.ə]',
    favorite: false,
  ),
  Word(
    en: 'Arthritis (n)',
    uz: 'artrit',
    enDef: 'Inflammation of a joint.',
    uzDef: 'Qo\'shimchaning yallig\'lanishi.',
    transcript: '[ ɑːˈθraɪ.tɪs]',
    favorite: false,
  ),
  Word(
    en: 'Asbestos (n)',
    uz: 'asbest',
    enDef:
        'A fibrous material used to make fireproof materials, electrical insulation, roofing and filters. Asbestos has been linked to a type…',
    uzDef:
        'Yong\'inga chidamli materiallar, elektr izolyatsiyasi, tom yopish va filtrlar tayyorlash uchun ishlatiladigan tolali material. Asbest bir turga bog\'langan ...',
    transcript: '[ æsˈbes.tɒs]',
    favorite: false,
  ),
  Word(
    en: 'Ascites (n)',
    uz: 'astsitlar',
    enDef: 'Abnormal buildup of fluid in the abdomen that causes distention.',
    uzDef:
        'Qorin bo\'shlig\'ida g\'ayritabiiy suyuqlik to\'planishi, bu esa distansiyani keltirib chiqaradi.',
    transcript: '[ əˈsaɪtiːz]',
    favorite: false,
  ),
  Word(
    en: 'Ascorbic acid (n)',
    uz: 'askorbin kislotasi',
    enDef: 'Vitamin C.',
    uzDef: 'S vitamini.',
    transcript: '[ əˌskɔː.bɪk ˈæs.ɪd]',
    favorite: false,
  ),
  Word(
    en: 'Asthma (n)',
    uz: 'astma',
    enDef:
        'A chronic disorder characterized by shortness of breath, wheezing, coughing and tightness of the chest.',
    uzDef:
        'Nafas qisilishi, xirillash, yo\'tal va ko\'krak qafasining siqilishi bilan tavsiflangan surunkali kasallik.',
    transcript: '[ ˈæs.mə]',
    favorite: false,
  ),
  Word(
    en: 'Astigmatism (n)',
    uz: 'astigmatizm',
    enDef:
        'An irregularity in the curvature of the lens of the eye, resulting in a blurry or distorted image.',
    uzDef:
        'Ko\'zning linzalari egriligidagi tartibsizlik, natijada loyqa yoki buzilgan tasvir.',
    transcript: '[ əˈstɪg.mə.tɪ.zəm]',
    favorite: false,
  ),
  Word(
    en: 'Atelectasis (n)',
    uz: 'atelektaz',
    enDef:
        'Collapsed lung. May occur following surgery or after a rib fracture.',
    uzDef:
        'Yiqilgan o\'pka. Jarrohlikdan keyin yoki qovurg\'a singanidan keyin paydo bo\'lishi mumkin.',
    transcript: '[ ætɪˈlɛktəsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Atherosclerosis (n)',
    uz: 'ateroskleroz',
    enDef:
        'A form of arteriosclerosis caused by fatty deposits in the arteries.',
    uzDef:
        'Arteriyalardagi yog\' birikmalaridan kelib chiqqan aterosklerozning bir shakli.',
    transcript: '[ ˌæθɚoʊskləˈɹoʊsəs]',
    favorite: false,
  ),
  Word(
    en: 'Athlete\'s foot (n)',
    uz: 'sportchi oyog\'i',
    enDef: 'A fungal infection of the skin of the feet.',
    uzDef: 'Oyoq terisining qo\'ziqorin infektsiyasi.',
    transcript: '[ ˌæθ.liːts ˈfʊt]',
    favorite: false,
  ),
  Word(
    en: 'Atopy (n)',
    uz: 'atopiya',
    enDef:
        'A predisposition to allergy that’s inherited from parents. Included disorders are asthma, hay fever and eczema.',
    uzDef:
        'Ota-onadan meros bo\'lib qolgan allergiyaga moyillik. Bularga astma, pichan isitmasi va ekzema kiradi.',
    transcript: '[ ˈætəpi]',
    favorite: false,
  ),
  Word(
    en: 'Atria (n)',
    uz: 'atriya',
    enDef:
        'The upper chambers of the heart that receive blood from the veins and pass it to the lower chambers of the heart.',
    uzDef:
        'Yurakning yuqori bo\'limlari tomirlardan qon qabul qilib, uni pastki bo\'limlarga o\'tkazadi ...',
    transcript: '[ ˈɑtriɑ]',
    favorite: false,
  ),
  Word(
    en: 'Atrophy (n)',
    uz: 'atrofiya',
    enDef: 'A decrease in the normal size of an organ. Wasting away.',
    uzDef: 'Organning normal hajmining pasayishi. Isrof qilish.',
    transcript: '[ ˈæt.ɹə.fi]',
    favorite: false,
  ),
  Word(
    en: 'Aura (n)',
    uz: 'aura',
    enDef:
        'A peculiar sensation that occurs before other symptoms. An example is the sensation of flashing lights before a migraine...',
    uzDef:
        'Boshqa alomatlardan oldin paydo bo\'ladigan o\'ziga xos tuyg\'u. Masalan, migrendan oldin miltillovchi chiroqlar hissi ...',
    transcript: '[ ˈɔː.rə]',
    favorite: false,
  ),
  Word(
    en: 'Autoimmune disease (n)',
    uz: 'otoimmün kasallik',
    enDef: 'A condition in which antibodies form against one’s own cells.',
    uzDef: 'O\'z hujayralariga qarshi antikorlar paydo bo\'ladigan holat.',
    transcript: '[ ɔː.təʊ.ɪˈmjuːn dɪˌziːz]',
    favorite: false,
  ),
  Word(
    en: 'Autotransfusion (n)',
    uz: 'avtotransfüzyon',
    enDef: 'A transfusion using the patient’s own blood.',
    uzDef: 'Bemorning o\'z qoni yordamida qon quyish.',
    transcript: '[ ˈɔː.təʊ trænsˈfjuː.ʒən]',
    favorite: false,
  ),
  Word(
    en: 'Axilla (n)',
    uz: 'aksilla',
    enDef: 'The armpit.',
    uzDef: 'Qo\'ltiq.',
    transcript: '[ ækˈsɪl.ə]',
    favorite: false,
  ),
  Word(
    en: 'Bacteremia (n)',
    uz: 'bakteriemiya',
    enDef: 'The presence of bacteria in the blood.',
    uzDef: 'Qonda bakteriyalar mavjudligi.',
    transcript: '[ bæk təˈ rimiə]',
    favorite: false,
  ),
  Word(
    en: 'Bacteria (n)',
    uz: 'bakteriyalar',
    enDef:
        'Single-celled microorganisms with one of three basic shapes: rod-like (bacilli), spherical (cocci) and spiral (spirilla).',
    uzDef:
        'Bir hujayrali mikroorganizmlar uchta asosiy shakldan biriga ega: tayoqsimon (batsillalar), sharsimon (kokklar) va spiral (spirilla).',
    transcript: '[ bækˈtɪə.ri.ə]',
    favorite: false,
  ),
  Word(
    en: 'Bacteriuria (n)',
    uz: 'bakteriuriya',
    enDef: 'The presence of bacteria in the urine.',
    uzDef: 'Siydikda bakteriyalar mavjudligi.',
    transcript: '[ bak tuh roor ee-uh]',
    favorite: false,
  ),
  Word(
    en: 'Baker\'s cyst (n)',
    uz: 'Baker kistasi',
    enDef:
        'A swelling of the knee caused by an escape of fluid from a sac behind the knee.',
    uzDef:
        'Tiz orqasidagi qopdan suyuqlik chiqishi natijasida paydo bo\'lgan tizzaning shishishi.',
    transcript: '[ ˌbeɪ.kəz  sɪst]',
    favorite: false,
  ),
  Word(
    en: 'Ballism (n)',
    uz: 'ballizm',
    enDef: 'Quick, jerking movements that occur in people with chorea.',
    uzDef: 'Xoreya bilan og\'rigan odamlarda tez, chayqaladigan harakatlar.',
    transcript: '[ bal iz-uh m]',
    favorite: false,
  ),
  Word(
    en: 'Barium (n)',
    uz: 'bariy',
    enDef:
        'A chalky substance used in x-ray studies of the digestive tract to highlight abnormalities.',
    uzDef:
        'Ovqat hazm qilish traktining rentgenologik tekshiruvlarida anormalliklarni aniqlash uchun ishlatiladigan bo\'rli modda.',
    transcript: '[ ˈbeə.ri.əm]',
    favorite: false,
  ),
  Word(
    en: 'Barotrauma (n)',
    uz: 'barotravma',
    enDef:
        'Injury caused by pressure differences between the atmosphere and the air-filled spaces in the body.',
    uzDef:
        'Atmosfera va tanadagi havo bilan to\'ldirilgan bo\'shliqlar o\'rtasidagi bosim farqlari natijasida kelib chiqqan shikastlanish.',
    transcript: '[ bəˈrɒ ˈtrɔː.mə]',
    favorite: false,
  ),
  Word(
    en: 'Bartholin cyst (n)',
    uz: 'Bartolin kistasi',
    enDef: 'A cyst caused by an infection of the glands on the vaginal wall.',
    uzDef:
        'Vaginal devordagi bezlarning infektsiyasi natijasida paydo bo\'lgan kist.',
    transcript: '[ ˈbɑrθəlɪn  sɪst]',
    favorite: false,
  ),
  Word(
    en: 'BCG (bacille Calmette-Guerin) vaccine (n)',
    uz: 'BCG (Bacille Calmette-Guerin) vaktsinasi',
    enDef:
        'A vaccine that offers some protection against tuberculosis. It’s now rarely used in the U.S. because it doesn’t give total...',
    uzDef:
        'Sil kasalligidan himoya qiluvchi vaktsina. Hozirda u AQShda kamdan-kam qo\'llaniladi, chunki u umumiy miqdorni bermaydi ...',
    transcript: '[ bəˌsɪl ˌkælˈmɛt ɡɛrˌɛn vak-seen]',
    favorite: false,
  ),
  Word(
    en: 'Bedsore (n)',
    uz: 'yotoq og\'rig\'i',
    enDef:
        'An ulcer caused by chafing or by the pressure of the body against the bed.',
    uzDef: 'Ishqalanish yoki tananing yotoqqa bosimidan kelib chiqqan yara.',
    transcript: '[ bed.sɔːr]',
    favorite: false,
  ),
  Word(
    en: 'Bell\'s palsy (n)',
    uz: 'Bell falaj',
    enDef:
        'A usually temporary loss of feeling or movement of the face, usually on one side, causing an inability to close...',
    uzDef:
        'Odatda yuzning bir tomonida his-tuyg\'u yoki harakatning vaqtincha yo\'qolishi, bu esa yopilmasligiga olib keladi ...',
    transcript: '[ ˌbelz ˈpɔːl.zi]',
    favorite: false,
  ),
  Word(
    en: 'Bends (n)',
    uz: 'egiladilar',
    enDef:
        'A condition that results from rapidly decreasing atmospheric pressure on the body. Symptoms include joint pain, chest pain, shortness of...',
    uzDef:
        'Tanadagi atmosfera bosimining tez pasayishi natijasida yuzaga keladigan holat. Alomatlar orasida bo\'g\'imlardagi og\'riqlar, ko\'krak qafasidagi og\'riqlar, qisqarish ...',
    transcript: '[ bendz]',
    favorite: false,
  ),
  Word(
    en: 'Benign (adj)',
    uz: 'yaxshi xulqli',
    enDef: 'A nonlife-threatening condition. Not malignant. Not cancerous.',
    uzDef: 'Hayot uchun xavfli bo\'lmagan holat. Xatarli emas. Saraton emas.',
    transcript: '[ bɪˈnaɪn]',
    favorite: false,
  ),
  Word(
    en: 'Benign familial tremor (n)',
    uz: 'yaxshi oilaviy tremor',
    enDef:
        'An inherited disorder that causes a slow tremor in the hands, head and voice. It may affect only one side...',
    uzDef:
        'Qo\'llar, bosh va ovozda sekin tremorga olib keladigan irsiy kasallik. Bu faqat bir tomonga ta\'sir qilishi mumkin ...',
    transcript: '[ bɪˈnaɪn  fəˈmɪl.i.əl  ˈtrem.ər ]',
    favorite: false,
  ),
  Word(
    en: 'Beriberi (n)',
    uz: 'beriberi',
    enDef:
        'A deficiency disease caused by dietary insufficiency of vitamin B1 (thiamine). Symptoms include general weakness and painful rigidity.',
    uzDef:
        'B1 vitamini (tiamin) ning parhez etishmasligidan kelib chiqadigan tanqislik kasalligi. Alomatlar umumiy zaiflik va og\'riqli qattiqlikni o\'z ichiga oladi.',
    transcript: '[ ˌber.ɪˈber.i]',
    favorite: false,
  ),
  Word(
    en: 'Biceps (n)',
    uz: 'biceps',
    enDef:
        'A muscle having two heads. The most familiar is the large muscle in the front of the upper arm responsible...',
    uzDef:
        'Ikki boshli mushak. Eng tanishi - bu qo\'lning yuqori qismidagi katta mushakdir ...',
    transcript: '[ baɪ.seps]',
    favorite: false,
  ),
  Word(
    en: 'Bicuspid (n)',
    uz: 'ikki tomonlama',
    enDef: 'A tooth named for the two-pointed projections on the crown.',
    uzDef: 'Tojdagi ikki burchakli proektsiyalar uchun nomlangan tish.',
    transcript: '[ baɪˈkʌs.pɪd]',
    favorite: false,
  ),
  Word(
    en: 'Bifocals (n)',
    uz: 'bifokallar',
    enDef:
        'Eyeglasses with divided lenses. The two parts of each lens have different strengths, allowing the wearer to focus the eye...',
    uzDef:
        'Bo\'lingan linzali ko\'zoynaklar. Har bir linzaning ikkita qismi har xil kuchli tomonlarga ega bo\'lib, foydalanuvchiga ko\'zni diqqatini qaratishga imkon beradi ...',
    transcript: '[ baɪˈfəʊ.kəlz]',
    favorite: false,
  ),
  Word(
    en: 'Bile (n)',
    uz: 'safro',
    enDef:
        'A clear yellow fluid produced by the liver and stored in the gallbladder. Aids in digestion.',
    uzDef:
        'Jigar tomonidan ishlab chiqariladigan va o\'t pufagida saqlanadigan shaffof sariq suyuqlik. Ovqat hazm qilishda yordam beradi.',
    transcript: '[ baɪl]',
    favorite: false,
  ),
  Word(
    en: 'Bilirubin (n)',
    uz: 'bilirubin',
    enDef:
        'A pigment produced in the liver by the breakdown of hemoglobin from old red blood cells. Bilirubin is normally eliminated…',
    uzDef:
        'Qadimgi qizil qon hujayralaridan gemoglobin parchalanishi natijasida jigarda hosil bo\'lgan pigment. Bilirubin odatda chiqariladi ...',
    transcript: '[ bɪl.ɪˈruː.bɪn]',
    favorite: false,
  ),
  Word(
    en: 'Binocular vision (n)',
    uz: 'binokulyar ko\'rish',
    enDef:
        'Using both eyes at the same time. Binocular vision is the most important element of depth perception.',
    uzDef:
        'Ikkala ko\'zni bir vaqtning o\'zida ishlatish. Binokulyar ko\'rish chuqur idrok etishning eng muhim elementidir.',
    transcript: '[ bɪˈnɒk.jə.lər ˈvɪʒ.ən]',
    favorite: false,
  ),
  Word(
    en: 'Biopsy (n)',
    uz: 'biopsiya',
    enDef:
        'Removal and exam of a tissue sample taken from a living body. This procedure helps determine if the tissue is…',
    uzDef:
        'Tirik tanadan olingan to\'qima namunasini olib tashlash va tekshirish. Ushbu protsedura to\'qimalarning mavjudligini aniqlashga yordam beradi ...',
    transcript: '[ baɪ.ɒp.si]',
    favorite: false,
  ),
  Word(
    en: 'Bipolar affective disorder (n)',
    uz: 'bipolyar affektiv buzilish',
    enDef:
        'A psychiatric disorder in which the affected person has both depressed and happy, energetic (manic) episodes. This is a newer…',
    uzDef:
        'Ta\'sirlangan odamda ruhiy tushkunlik, ham baxtli, baquvvat (manik) epizodlar bo\'lgan psixiatrik kasallik. Bu yangiroq…',
    transcript: '[ baɪˌpəʊ.lər əˈfek.tɪv dɪˌsɔː.dər]',
    favorite: false,
  ),
  Word(
    en: 'Blackhead (n)',
    uz: 'qora nuqta',
    enDef:
        'A dark-topped plug of fatty material in the opening of a hair follicle. The color is the result of exposure…',
    uzDef:
        'Soch follikulasining teshigidagi yog\'li materialning quyuq tepasidagi tiqin. Rang ta\'sir qilish natijasidir ...',
    transcript: '[ ˈblæk.hed]',
    favorite: false,
  ),
  Word(
    en: 'Blackout (n)',
    uz: 'qorayish',
    enDef:
        '1. Short-term loss of vision and consciousness. 2. In an alcoholic person, loss of memory for a period of…',
    uzDef:
        '1. Ko\'rish va ongni qisqa muddatli yo\'qotish. 2. Spirtli ichimliklarni iste\'mol qilgan odamda xotirani bir muddat yo\'qotish ...',
    transcript: '[ ˈblæk.aʊt]',
    favorite: false,
  ),
  Word(
    en: 'Bladder (n)',
    uz: 'siydik pufagi',
    enDef:
        'The organ that temporarily stores a substance. Commonly used in reference to the urinary bladder, which holds urine until it’s…',
    uzDef:
        'Moddani vaqtincha saqlaydigan organ. Odatda siydik pufagiga nisbatan qo\'llaniladi, u siydikni u qadar ushlab turadi ...',
    transcript: '[ ˈblæd.ər]',
    favorite: false,
  ),
  Word(
    en: 'Blepharitis (n)',
    uz: 'blefarit',
    enDef: 'Inflammation of the eyelid.',
    uzDef: 'Ko\'z qovog\'ining yallig\'lanishi.',
    transcript: '[ blɛfəɹˈaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Bronchi (n)',
    uz: 'bronxlar',
    enDef:
        'The tubular passages, also called bronchial tubes, that carry air into the lungs.',
    uzDef:
        'Naychali yo\'llar, shuningdek, bronxial naychalar deb ataladi, ular havoni o\'pkaga olib boradi.',
    transcript: '[ ˈbɹɒŋkaɪ]',
    favorite: false,
  ),
  Word(
    en: 'Bronchiolitis (n)',
    uz: 'bronxiolit',
    enDef: 'An infection of the bronchioles, the tiny air tubes in the lungs.',
    uzDef:
        'Bronxiolalarning, o\'pkadagi mayda havo naychalarining infektsiyasi.',
    transcript: '[ ˈbrɒŋ.ki.əʊli tɪs]',
    favorite: false,
  ),
  Word(
    en: 'Bronchitis (n)',
    uz: 'bronxit',
    enDef: 'Inflammation of the bronchi.',
    uzDef: 'Bronxlarning yallig\'lanishi.',
    transcript: '[ brɒŋˈkaɪ.tɪs]',
    favorite: false,
  ),
  Word(
    en: 'Bronchospasm (n)',
    uz: 'bronxospazm',
    enDef: 'Contraction of the muscle in the walls of the bronchi.',
    uzDef: 'Bronxlar devoridagi mushakning qisqarishi.',
    transcript: '[ ˈbrɔn.xɔ ˈspæz.əm]',
    favorite: false,
  ),
  Word(
    en: 'Bronze diabetes (n)',
    uz: 'bronza diabet',
    enDef:
        'A disorder of iron metabolism resulting in iron pigment deposits in the skin and other body tissues that causes a…',
    uzDef:
        'Teri va boshqa tana to\'qimalarida temir pigmenti to\'planishiga olib keladigan temir metabolizmining buzilishi ...',
    transcript: '[ brɒnz daɪəˈbiːtiːz]',
    favorite: false,
  ),
  Word(
    en: 'Brucellosis (n)',
    uz: 'brutsellyoz',
    enDef:
        'An infection characterized by fluctuating fever, headache, anemia and vague physical discomfort that’s transmitted to humans from domesticated goats, pigs…',
    uzDef:
        'O\'zgaruvchan isitma, bosh og\'rig\'i, kamqonlik va noaniq jismoniy noqulaylik bilan tavsiflangan infektsiya, uy echkilari, cho\'chqalar orqali odamlarga yuqadi ...',
    transcript: '[ bruːsəˈloʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Bruise (n)',
    uz: 'Tishlarni yaratish.',
    enDef:
        'Discoloration of the skin due to a buildup of blood in the underlying soft tissues. Also called a contusion.',
    uzDef:
        'Pastki yumshoq to\'qimalarda qon to\'planishi tufayli terining rangi o\'zgarishi. Bundan tashqari, kontuziya deb ataladi.',
    transcript: '[ bruz]',
    favorite: false,
  ),
  Word(
    en: 'Bruxism (n)',
    uz: 'bruksizm',
    enDef: 'Grinding of the teeth.',
    uzDef: 'Tishlarni silliqlash.',
    transcript: '[ ˈbrʌksɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Bubo (n)',
    uz: 'bubo',
    enDef:
        'A swollen, infected lymph node (especially in the groin). The node may enlarge enough that it begins to drain through.',
    uzDef:
        'Shishgan, infektsiyalangan limfa tugunlari (ayniqsa, kasıkta). Tugun yetarlicha kattalashishi mumkinki, u orqali oqib chiqa boshlaydi...',
    transcript: '[ ˈbjuːboʊ]',
    favorite: false,
  ),
  Word(
    en: 'Buerger\'s disease (n)',
    uz: 'Buerger kasalligi',
    enDef:
        'Blockage of medium-sized blood vessels in the hands and feet by clotting and inflammation. This process causes severe pain and…',
    uzDef:
        'Qo\'l va oyoqlarda o\'rta kattalikdagi qon tomirlarining ivishi va yallig\'lanishi bilan bloklanishi. Bu jarayon kuchli og\'riq va ...',
    transcript: '[ ˈbɜrɡərz dɪˈziːz]',
    favorite: false,
  ),
  Word(
    en: 'Bulimia (n)',
    uz: 'bulimiya',
    enDef:
        'An eating disorder characterized by binge eating followed by vomiting or use of laxatives. Usually caused by a variety of…',
    uzDef:
        'Ovqatlanishning buzilishi, ko\'p ovqatlanish, keyin qusish yoki laksatiflarni qo\'llash bilan tavsiflanadi. Odatda turli sabablarga ko\'ra yuzaga keladi ...',
    transcript: '[ bjuːˈliːmiə]',
    favorite: false,
  ),
  Word(
    en: 'Bunion (n)',
    uz: 'bunyon',
    enDef: 'Localized swelling of the big toe at its joint with the foot.',
    uzDef: 'Bosh barmog\'ining oyoq bilan qo\'shilishida lokalize shishishi.',
    transcript: '[ ˈbʌnjən]',
    favorite: false,
  ),
  Word(
    en: 'Bursa (n)',
    uz: 'bursa',
    enDef:
        'A small, fluid-filled sac that allows one part of a joint to move freely over another part.',
    uzDef:
        'Bo\'g\'imning bir qismini boshqa qismi ustidan erkin harakatlanishini ta\'minlaydigan suyuqlik bilan to\'ldirilgan kichik sumka.',
    transcript: '[ ˈbɜrsə]',
    favorite: false,
  ),
  Word(
    en: 'Bursitis (n)',
    uz: 'bursit',
    enDef: 'Inflammation of a bursa.',
    uzDef: 'Bursaning yallig\'lanishi.',
    transcript: '[ bɜrˈsaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Cachexia (n)',
    uz: 'kaxeksiya',
    enDef: 'A generally weakened, emaciated condition of the body.',
    uzDef: 'Tananing umuman zaiflashgan, zaiflashgan holati.',
    transcript: '[ kəˈkɛksiə]',
    favorite: false,
  ),
  Word(
    en: 'Caffeine (n)',
    uz: 'kofein',
    enDef:
        'A bitter-tasting, water-soluble compound that acts as a central nervous system stimulant and has a mild diuretic (increasing urination)…',
    uzDef:
        'Achchiq ta\'mga ega, suvda eruvchan birikma, markaziy asab tizimini stimulyator sifatida ishlaydi va engil diuretik (siydik chiqarishni oshiradi) ...',
    transcript: '[ ˈkæfiːn]',
    favorite: false,
  ),
  Word(
    en: 'Calciferol (n)',
    uz: 'kalsiferol',
    enDef: 'Vitamin D.',
    uzDef: 'D vitamini.',
    transcript: '[ kælˈsɪfərɒl]',
    favorite: false,
  ),
  Word(
    en: 'Calcification (n)',
    uz: 'kalsifikatsiya',
    enDef: 'Calcium salt deposits in soft tissues.',
    uzDef: 'Yumshoq to\'qimalarda kaltsiy tuzining to\'planishi.',
    transcript: '[ kælsɪfɪˈkeɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Calculus (n)',
    uz: 'hisob',
    enDef:
        'A small, hard mass or stone formed in the body, as in a kidney or gallbladder, or a hard coating…',
    uzDef:
        'Buyrak yoki o\'t pufagidagi kabi tanada hosil bo\'lgan kichik, qattiq massa yoki tosh yoki qattiq qoplama ...',
    transcript: '[ ˈkælkjʊləs]',
    favorite: false,
  ),
  Word(
    en: 'Callus (n)',
    uz: 'kallus',
    enDef:
        '1. Localized thickening of the skin. 2. A fibrous band formed around the site of a fracture that seals the…',
    uzDef:
        '1. Terining lokalize qalinlashishi. 2. Singan joyi atrofida hosil bo\'lgan tolali tasma ...',
    transcript: '[ ˈkæləs]',
    favorite: false,
  ),
  Word(
    en: 'Calorie (n)',
    uz: 'kaloriya',
    enDef:
        'The amount of energy needed to raise the temperature of one kilogram of water one degree. Commonly used to express…',
    uzDef:
        'Bir kilogramm suv haroratini bir darajaga ko\'tarish uchun zarur bo\'lgan energiya miqdori. Odatda ifodalash uchun ishlatiladi ...',
    transcript: '[ ˈkæləri]',
    favorite: false,
  ),
  Word(
    en: 'Carrier (n)',
    uz: 'tashuvchi',
    enDef:
        'Someone who’s capable of transmitting a disease (especially an infectious or genetic disorder) to another person but who usually has…',
    uzDef:
        'Kasallikni (ayniqsa yuqumli yoki genetik kasallikni) boshqa odamga yuqtirishga qodir bo\'lgan, lekin odatda ...',
    transcript: '[ ˈkærɪər]',
    favorite: false,
  ),
  Word(
    en: 'Cartilage (n)',
    uz: 'xaftaga',
    enDef:
        'Elastic connective tissue on the joint surfaces of bone and some parts of the skeleton, including the nose and…',
    uzDef:
        'Suyakning bo\'g\'im yuzalarida va skeletning ba\'zi qismlarida elastik biriktiruvchi to\'qima, shu jumladan burun va ...',
    transcript: '[ ˈkɑrtəlɪdʒ]',
    favorite: false,
  ),
  Word(
    en: 'Castor oil (n)',
    uz: 'kastor yog\'i',
    enDef:
        'An oil extracted from the castor bean plant that’s irritating to the intestine and promotes bowel movements.',
    uzDef:
        'Ichakni tirnash xususiyati beruvchi va ichak harakatini rag\'batlantiradigan kastor loviya o\'simlikidan olingan yog\'.',
    transcript: '[ ˈkæstər ɔɪl]',
    favorite: false,
  ),
  Word(
    en: 'Castration (n)',
    uz: 'kastratsiya',
    enDef:
        'To remove the gonads, such as the testicles, making the male unable to have children.',
    uzDef:
        'Moyak kabi erkakning farzand ko\'rishiga qodir qiluvchi jinsiy bezlarni olib tashlash.',
    transcript: '[ kæˈstreɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'cat-scratch fever (n)',
    uz: 'mushuk tirnalgan isitmasi',
    enDef:
        'A bacterial infection acquired through the scratch of a cat or other animal.',
    uzDef:
        'Mushuk yoki boshqa hayvonni tirnash orqali olingan bakterial infektsiya.',
    transcript: '[kæt-skrætʃ ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Catalepsy (n)',
    uz: 'katalepsiya',
    enDef:
        'A condition in which the body and limbs stay in the position in which they’re placed.',
    uzDef:
        'Tana va oyoq-qo\'llar o\'zlari joylashtirilgan holatda qoladigan holat.',
    transcript: '[ˈkætəˌlɛpsi]',
    favorite: false,
  ),
  Word(
    en: 'Cataract (n)',
    uz: 'katarakt',
    enDef: 'An opaque area in the lens of the eye.',
    uzDef: 'Ko\'zning linzalaridagi shaffof bo\'lmagan joy.',
    transcript: '[ˈkætəˌrækt]',
    favorite: false,
  ),
  Word(
    en: 'Catheter (n)',
    uz: 'kateter',
    enDef: 'A tube used to drain or inject fluids.',
    uzDef: 'Suyuqlikni to\'kish yoki quyish uchun ishlatiladigan naycha.',
    transcript: '[ˈkæθətər]',
    favorite: false,
  ),
  Word(
    en: 'Cauliflower ear (n)',
    uz: 'gulkaram qulog\'i',
    enDef:
        'A trauma-induced deformity of the ear caused by repeated cartilage and soft-tissue injury.',
    uzDef:
        'Qayta-qayta xaftaga va yumshoq to\'qimalarning shikastlanishi natijasida kelib chiqqan quloqning travmadan kelib chiqqan deformatsiyasi.',
    transcript: '[kɔlɪˌflaʊər ɪr]',
    favorite: false,
  ),
  Word(
    en: 'Caustic (adj)',
    uz: 'kaustik',
    enDef: 'A chemical that can cause burns.',
    uzDef: 'Kuyishga olib kelishi mumkin bo\'lgan kimyoviy.',
    transcript: '[ ˈkɔstɪk]',
    favorite: false,
  ),
  Word(
    en: 'Cauterize (v)',
    uz: 'kuydirmoq',
    enDef:
        'To purposely burn with a hot instrument or caustic substance to destroy tissue, such as a wart.',
    uzDef:
        'To\'qimalarni, masalan, siğilni yo\'q qilish uchun issiq asbob yoki kaustik modda bilan ataylab yoqmoq.',
    transcript: '[ ˈkɔtəˌraɪz]',
    favorite: false,
  ),
  Word(
    en: 'Cavity (n)',
    uz: 'bo\'shliq',
    enDef: 'A hollow place or hole within the body.',
    uzDef: 'Tana ichidagi bo\'sh joy yoki teshik.',
    transcript: '[ ˈkævəti]',
    favorite: false,
  ),
  Word(
    en: 'CBC (n)',
    uz: 'CBC',
    enDef: 'Complete blood cell count.',
    uzDef: 'To\'liq qon hujayralari soni.',
    transcript: '[ kəmˈpliːt blʌd kaʊnt]',
    favorite: false,
  ),
  Word(
    en: 'Cecum (n)',
    uz: 'ko\'r ichak',
    enDef:
        'The first part of the large intestine just below the small intestine or ileum.',
    uzDef:
        'Ingichka ichak yoki yonbosh ichakning biroz ostida bo’lgan yo\'g\'on ichakning birinchi qismi.',
    transcript: '[ ˈsiːkəm]',
    favorite: false,
  ),
  Word(
    en: 'Celiac (adj)',
    uz: 'çölyak',
    enDef: 'Having to do with the abdomen.',
    uzDef: 'Qorin bo\'shlig\'i bilan bog\'liq.',
    transcript: '[ ˈsiːliæk]',
    favorite: false,
  ),
  Word(
    en: 'Cell (n)',
    uz: 'hujayra',
    enDef: 'The basic unit of organization of all living organisms.',
    uzDef: 'Barcha tirik organizmlarni tashkil qilishning asosiy birligi.',
    transcript: '[ sɛl]',
    favorite: false,
  ),
  Word(
    en: 'Cellulitis (n)',
    uz: 'selülit',
    enDef: 'Infection of the skin.',
    uzDef: 'Terining infektsiyasi.',
    transcript: '[ ˌsɛljuˈlaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Cellulose (n)',
    uz: 'tsellyuloza',
    enDef:
        'A complex carbohydrate. Cellulose is a source of dietary fiber because it can’t be digested.',
    uzDef:
        'Murakkab uglevod. Tsellyuloza xun tolasi manbai hisoblanadi, chunki uni hazm qilish mumkin emas.',
    transcript: '[ ˈsɛljʊloʊs]',
    favorite: false,
  ),
  Word(
    en: 'Cephalalgia (n)',
    uz: 'sefalhalgiya',
    enDef: 'Headache.',
    uzDef: 'Bosh og\'rig\'i.',
    transcript: '[ sɛfəˈlældʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Cerebellum (n)',
    uz: 'serebellum',
    enDef: 'The part of the brain that coordinates muscular movements.',
    uzDef: 'Miyaning mushak harakatlarini muvofiqlashtiruvchi qismi.',
    transcript: '[ ˌsɛrəˈbɛləm]',
    favorite: false,
  ),
  Word(
    en: 'Cerebrum (n)',
    uz: 'bosh miya',
    enDef: 'The main part of the brain.',
    uzDef: 'Miyaning asosiy qismi.',
    transcript: '[ səˈribrəm]',
    favorite: false,
  ),
  Word(
    en: 'Chickenpox (n)',
    uz: 'suvchechak',
    enDef:
        'A viral disease that usually begins with fever and cough, followed by a rash that progresses from red bumps to...',
    uzDef:
        'Odatda isitma va yo\'tal bilan boshlanadigan virusli kasallik, so\'ngra toshma paydo bo\'lib, qizil dog\'lardan ...',
    transcript: '[ ˈtʃɪkənˌpɑks]',
    favorite: false,
  ),
  Word(
    en: 'Chilblain (n)',
    uz: 'chilparchin',
    enDef:
        'Painful redness of the fingers, toes or ears caused by exposure to cold.',
    uzDef:
        'Sovuq ta\'siridan kelib chiqqan barmoqlar, oyoq barmoqlari yoki quloqlarning og\'riqli qizarishi.',
    transcript: '[ ˈtʃɪlbleɪn]',
    favorite: false,
  ),
  Word(
    en: 'Childbed fever (n)',
    uz: 'bolalar isitmasi',
    enDef:
        'This is a severe illness marked by fever that’s caused by an infection in mothers after giving birth.',
    uzDef:
        'Bu tug\'ruqdan keyin onalar infektsiyasidan kelib chiqadigan isitma bilan tavsiflangan og\'ir kasallik.',
    transcript: '[ ˈtʃaɪldbɛd ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Chill (n)',
    uz: 'sovuq',
    enDef:
        'A cold sensation with shivering that sometimes occurs before a fever.',
    uzDef:
        'Ba\'zida isitmadan oldin paydo bo\'ladigan titroq bilan sovuq tuyg\'u.',
    transcript: '[ tʃɪl]',
    favorite: false,
  ),
  Word(
    en: 'Chiropractic (n)',
    uz: 'chiropraktika',
    enDef:
        'An approach to health care based on the assumption that most diseases are caused by pressure on the nerves.',
    uzDef:
        'Ko\'pgina kasalliklar nervlarga bosim tufayli yuzaga keladi degan taxminga asoslangan sog\'liqni saqlashga yondashuv.',
    transcript: '[ kaɪrəˈpræktɪk]',
    favorite: false,
  ),
  Word(
    en: 'Chlamydia (n)',
    uz: 'xlamidiya',
    enDef:
        'A microorganism, Chlamydia trachomatis, that’s a frequent cause of sexually transmitted disease.',
    uzDef:
        'Chlamydia trachomatis mikroorganizmi jinsiy yo\'l bilan yuqadigan kasallikning tez-tez sababidir.',
    transcript: '[ kləˈmɪdiə]',
    favorite: false,
  ),
  Word(
    en: 'Chloasma (n)',
    uz: 'xloazma',
    enDef:
        'Dark coloring of the skin often seen during pregnancy and at menopause. Also occurs in Addison’s disease.',
    uzDef:
        'Ko\'pincha homiladorlik paytida va menopauzada terining quyuq rangi kuzatiladi. Addison kasalligida ham uchraydi.',
    transcript: '[ kloʊˈæzmə]',
    favorite: false,
  ),
  Word(
    en: 'Chlorination (n)',
    uz: 'xlorlash',
    enDef:
        'The addition of chlorine to kill harmful microorganisms in water or sewage.',
    uzDef:
        'Suv yoki kanalizatsiyada zararli mikroorganizmlarni o\'ldirish uchun xlor qo\'shilishi.',
    transcript: '[ klɔrɪˈneɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Cholecystitis (n)',
    uz: 'xoletsistit',
    enDef: 'Inflammation of the gallbladder.',
    uzDef: 'O\'t pufagining yallig\'lanishi.',
    transcript: '[ koʊlɪsɪsˈtaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Cholera (n)',
    uz: 'vabo',
    enDef:
        'Watery diarrhea caused by drinking water or eating food that’s contaminated with Vibrio cholera.',
    uzDef:
        'Suvli diareya ichimlik suvi yoki Vibrio cholere bilan ifloslangan ovqatni iste\'mol qilish natijasida yuzaga keladi.',
    transcript: '[ ˈkɒlərə]',
    favorite: false,
  ),
  Word(
    en: 'Cholesteatoma (n)',
    uz: 'xolesteatoma',
    enDef:
        'A tumor-like mass that sometimes forms as a result of a chronic middle ear infection.',
    uzDef:
        'Ba\'zida surunkali o\'rta quloq infektsiyasi natijasida hosil bo\'ladigan o\'simtaga o\'xshash massa.',
    transcript: '[ koʊləsˌtiːəˈtoʊmə]',
    favorite: false,
  ),
  Word(
    en: 'Cholesterol (n)',
    uz: 'xolesterin',
    enDef:
        'A fat-like substance that, if present in the blood in large amounts, is associated with the development of heart disease.',
    uzDef:
        'Yog\'ga o\'xshash modda, agar qonda ko\'p miqdorda bo\'lsa, yurak kasalliklarining rivojlanishiga bog\'liq.',
    transcript: '[ kəˈlɛstərɔl]',
    favorite: false,
  ),
  Word(
    en: 'Cocaine (n)',
    uz: 'kokain',
    enDef:
        'A drug that is made from coca leaves. It can be used by a doctor as a topical anesthetic.',
    uzDef:
        'Koka barglaridan tayyorlangan dori. U shifokor tomonidan topikal anestezik sifatida ishlatilishi mumkin.',
    transcript: '[ koʊˈkeɪn]',
    favorite: false,
  ),
  Word(
    en: 'Coccyx (n)',
    uz: 'koksiks',
    enDef: 'The tailbone.',
    uzDef: 'Dum suyagi.',
    transcript: '[ ˈkɒksiks]',
    favorite: false,
  ),
  Word(
    en: 'Cochlea (n)',
    uz: 'koklea',
    enDef: 'The portion of the inner ear that senses sound.',
    uzDef: 'Ichki quloqning tovushni sezadigan qismi.',
    transcript: '[ ˈkɒklɪə]',
    favorite: false,
  ),
  Word(
    en: 'Coitus (n)',
    uz: 'jinsiy aloqa',
    enDef: 'Sexual intercourse.',
    uzDef: 'Jinsiy aloqa.',
    transcript: '[ ˈkoʊɪtəs]',
    favorite: false,
  ),
  Word(
    en: 'Cold (n)',
    uz: 'shamollash',
    enDef: 'An upper respiratory infection.',
    uzDef: 'Yuqori nafas yo\'llarining infektsiyasi.',
    transcript: '[ koʊld]',
    favorite: false,
  ),
  Word(
    en: 'Cold sore (n)',
    uz: 'sovuq yara',
    enDef: 'Herpes simplex infection of the lip.',
    uzDef: 'Labdagi herpes simplex infektsiyasi.',
    transcript: '[ koʊld sɔr]',
    favorite: false,
  ),
  Word(
    en: 'Colic (n)',
    uz: 'kolik',
    enDef:
        '1. A sudden, spasmodic abdominal pain. 2. In infants, a pattern of excessive crying, apparent abdominal pain and irritability.',
    uzDef:
        '1. Qorinning to\'satdan spazmatik og\'rig\'i. 2. Chaqaloqlarda ko\'p yig\'lash, aniq qorin og\'rig\'i va asabiylashish namunasi.',
    transcript: '[ ˈkɒlɪk]',
    favorite: false,
  ),
  Word(
    en: 'Collagen (n)',
    uz: 'kollagen',
    enDef: 'A protein formed in the connective tissue of the body.',
    uzDef: 'Tananing biriktiruvchi to\'qimasida hosil bo\'lgan oqsil.',
    transcript: '[ ˈkɒlədʒən]',
    favorite: false,
  ),
  Word(
    en: 'Colon (n)',
    uz: 'yo\'g\'on ichak',
    enDef: 'The large intestine.',
    uzDef: 'Katta ichak.',
    transcript: '[ ˈkoʊlən]',
    favorite: false,
  ),
  Word(
    en: 'Colorado tick fever (n)',
    uz: 'Kolorado Shomil isitmasi',
    enDef:
        'A viral illness spread by ticks. Characterized by headache, backache and fever that begins to break and then returns midway...',
    uzDef:
        'Shomil orqali yuqadigan virusli kasallik. Bosh og\'rig\'i, bel og\'rig\'i va tana haroratining ko\'tarilishi bilan tavsiflanadi, ular buzilib, keyin o\'rtada qaytib keladi ...',
    transcript: '[ ˌkɒləˈrædoʊ tɪk ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Colostomy (n)',
    uz: 'kolostoma',
    enDef:
        'Surgery that makes an opening to the intestine through the surface of the abdomen. The opening empties the bowels.',
    uzDef:
        'Qorin bo\'shlig\'i yuzasi orqali ichakka ochiladigan operatsiya. Teshik ichaklarni bo\'shatadi.',
    transcript: '[ kəˈlɒstəmi]',
    favorite: false,
  ),
  Word(
    en: 'Colostrum (n)',
    uz: 'og\'iz suti',
    enDef:
        'An antibody-rich fluid released by the breasts for a short time after the birth of a baby, before the true...',
    uzDef:
        'Chaqaloq tug\'ilgandan keyin qisqa vaqt ichida ko\'krak bezlari tomonidan chiqarilgan antikorga boy suyuqlik, haqiqiy ...',
    transcript: '[ kəˈlɒstrəm]',
    favorite: false,
  ),
  Word(
    en: 'Comedo (n)',
    uz: 'comedo',
    enDef:
        'A dark-topped plug of fatty material in the opening of a hair follicle. The color is the result of exposure...',
    uzDef:
        'Soch follikulasining teshigidagi yog\'li materialning quyuq tepasidagi tiqin. Rang ta\'sir qilish natijasidir ...',
    transcript: '[ kəˈmiːdoʊ]',
    favorite: false,
  ),
  Word(
    en: 'Communicable disease (n)',
    uz: 'yuqumli kasallik',
    enDef:
        'A disease spread through direct contact with an infected person or substance.',
    uzDef:
        'Yuqtirilgan odam yoki modda bilan bevosita aloqada bo\'lgan kasallik.',
    transcript: '[ kəˈmjuːnɪkəbəl dɪˈziz]',
    favorite: false,
  ),
  Word(
    en: 'Compress (n)',
    uz: 'mato',
    enDef:
        'A dressing used to apply pressure or medicine to an area. Useful in applying heat or cold.',
    uzDef:
        'Bir hududga bosim yoki dori qo\'llash uchun ishlatiladigan kiyim. Issiqlik yoki sovuqni qo\'llashda foydalidir.',
    transcript: '[ kəmˈprɛs]',
    favorite: false,
  ),
  Word(
    en: 'Compulsion (n)',
    uz: 'majburlash',
    enDef:
        'An overwhelming urge to perform an act. Often used to describe ritual or repetitive behaviors.',
    uzDef:
        'Harakatni bajarish uchun haddan tashqari istak. Ko\'pincha marosim yoki takrorlanuvchi xatti-harakatlarni tasvirlash uchun ishlatiladi.',
    transcript: '[ kəmˈpʌlʃən]',
    favorite: false,
  ),
  Word(
    en: 'Conception (n)',
    uz: 'kontseptsiya',
    enDef: 'Fertilization. The union of sperm and egg.',
    uzDef: 'Urug\'lantirish. Sperma va tuxumning birlashishi.',
    transcript: '[ kənˈsɛpʃən]',
    favorite: false,
  ),
  Word(
    en: 'Concussion (n)',
    uz: 'miya chayqalishi',
    enDef: 'A loss of consciousness because of a head injury.',
    uzDef: 'Bosh jarohati tufayli ongni yo\'qotish.',
    transcript: '[ kənˈkʌʃən]',
    favorite: false,
  ),
  Word(
    en: 'Condom (n)',
    uz: 'prezervativ',
    enDef:
        'A sheath worn over the penis or inside the vagina (female condom) during intercourse to protect against pregnancy and...',
    uzDef:
        'Jinsiy aloqa paytida jinsiy olatni yoki qin ichida kiyiladigan niqob (ayollar prezervativi) homiladorlikdan va...',
    transcript: '[ ˈkɒndəm]',
    favorite: false,
  ),
  Word(
    en: 'Cone (n)',
    uz: 'konus',
    enDef:
        'The light-sensing structure on the retina of the eye capable of detecting color.',
    uzDef:
        'Ko\'zning to\'r pardasidagi yorug\'likni sezuvchi tuzilma rangni aniqlashga qodir.',
    transcript: '[ koʊn]',
    favorite: false,
  ),
  Word(
    en: 'Congenital (adj)',
    uz: 'tug\'ma',
    enDef: 'Present at birth.',
    uzDef: 'Tug\'ilganda mavjud.',
    transcript: '[ kənˈdʒɛnɪtl]',
    favorite: false,
  ),
  Word(
    en: 'Cramp (n)',
    uz: 'kramp',
    enDef: 'A painful muscle spasm.',
    uzDef: 'Mushaklarning og\'riqli spazmi.',
    transcript: '[ kræmp]',
    favorite: false,
  ),
  Word(
    en: 'Craniotomy (n)',
    uz: 'kraniotomiya',
    enDef: 'A surgical opening of the skull.',
    uzDef: 'Bosh suyagining jarrohlik ochilishi.',
    transcript: '[ kræniˈɒtəmi]',
    favorite: false,
  ),
  Word(
    en: 'Cranium (n)',
    uz: 'bosh suyagi',
    enDef: 'The skull or bony structure of the head that protects the brain.',
    uzDef: 'Bosh suyagi yoki boshning suyak tuzilishi, miyani himoya qiladi.',
    transcript: '[ ˈkreɪniəm]',
    favorite: false,
  ),
  Word(
    en: 'Creatinine (n)',
    uz: 'kreatinin',
    enDef:
        'A substance formed from the making of creatine, an important nitrogen compound made in the body. Common in blood, urine…',
    uzDef:
        'Organizmda hosil bo\'lgan muhim azot birikmasi bo\'lgan kreatinning hosil bo\'lishidan hosil bo\'lgan modda. Ko\'pincha qonda, siydikda ...',
    transcript: '[ krɪˈætənɪn]',
    favorite: false,
  ),
  Word(
    en: 'Cretinism (n)',
    uz: 'kretinizm',
    enDef:
        'Physical and mental retardation due to congenital lack of thyroid hormone.',
    uzDef:
        'Qalqonsimon bez gormonining konjenital yetishmasligi tufayli jismoniy va aqliy zaiflik.',
    transcript: '[ ˈkritn̩ˌzəm]',
    favorite: false,
  ),
  Word(
    en: 'Crohn\'s disease (n)',
    uz: 'Crohn kasalligi',
    enDef:
        'Chronic inflammation of the digestive tract, especially of the lower small intestine and colon.',
    uzDef:
        'Ovqat hazm qilish traktining surunkali yallig\'lanishi, ayniqsa pastki ingichka ichak va yo\'g\'on ichak.',
    transcript: '[ kroʊnz dɪˈziz]',
    favorite: false,
  ),
  Word(
    en: 'Croup (n)',
    uz: 'krup',
    enDef:
        'Obstruction of the upper respiratory tract at or below the larynx (voice box), resulting in a hoarse, barking cough.',
    uzDef:
        'Yuqori nafas yo\'llarining hiqildoq yoki uning ostidagi obstruktsiyasi (ovoz qutisi), natijada bo\'g\'iq, qichqiruvchi yo\'tal.',
    transcript: '[ kruːp]',
    favorite: false,
  ),
  Word(
    en: 'Crowning (n)',
    uz: 'toj kiyish',
    enDef: 'The first appearance of a baby’s scalp during the birth process.',
    uzDef:
        'Tug\'ilish jarayonida chaqaloqning bosh terisining birinchi ko\'rishishi.',
    transcript: '[ ˈkraʊnɪŋ]',
    favorite: false,
  ),
  Word(
    en: 'Cryosurgery (n)',
    uz: 'kriojarrohlik',
    enDef:
        'Destruction of tissue using extreme cold. A procedure used to treat skin lesions.',
    uzDef:
        'Haddan tashqari sovuq yordamida to\'qimalarni yo\'q qilish. Teri lezyonlarini davolash uchun ishlatiladigan protsedura.',
    transcript: '[ kraɪoʊ ˈsɜrdʒəri]',
    favorite: false,
  ),
  Word(
    en: 'CT (n)',
    uz: 'KT',
    enDef: 'Computed tomographic scan.',
    uzDef: 'Kompyuter tomografiyasi.',
    transcript: '[ si ti]',
    favorite: false,
  ),
  Word(
    en: 'Culdocentesis (n)',
    uz: 'kuldosentez',
    enDef:
        'A procedure to remove pus or blood from the abdomen through the vagina.',
    uzDef:
        'Qorin bo\'shlig\'idan qin yoki qonni olib tashlash uchun protsedura.',
    transcript: '[ kʌlkɵdʌn\'ti:si:s]',
    favorite: false,
  ),
  Word(
    en: 'Cushing\'s syndrome (n)',
    uz: 'Kushing sindromi',
    enDef: 'A disorder caused by overactivity of the pituitary gland.',
    uzDef:
        'Gipofiz bezining haddan tashqari faolligidan kelib chiqadigan buzilish.',
    transcript: '[ \'ku:ʃiŋz \'sindrɵum]',
    favorite: false,
  ),
  Word(
    en: 'Cuspid (n)',
    uz: 'tiniq',
    enDef: 'A tooth with one point, or “canine” tooth.',
    uzDef: 'Bir nuqtali tish yoki "it" tish.',
    transcript: '[ kʌspid]',
    favorite: false,
  ),
  Word(
    en: 'Cutaneous (adj)',
    uz: 'teriga xos',
    enDef: 'Having to do with the skin.',
    uzDef: 'Teri bilan bog\'liq.',
    transcript: '[ kju:\'teini:әs]',
    favorite: false,
  ),
  Word(
    en: 'Cyanosis (n)',
    uz: 'siyanoz',
    enDef:
        'Bluish discoloration of the skin caused by lack of oxygen in the blood.',
    uzDef:
        'Qonda kislorod etishmasligi tufayli terining mavimsi rangi o\'zgarishi.',
    transcript: '[ saIә\'nәusIs]',
    favorite: false,
  ),
  Word(
    en: 'Cyst (n)',
    uz: 'kist',
    enDef:
        'A sac or pocket in the body containing fluid or semisolid material.',
    uzDef:
        'Suyuq yoki yarim qattiq moddasi bo\'lgan tanadagi sumka yoki cho\'ntak.',
    transcript: '[ sist]',
    favorite: false,
  ),
  Word(
    en: 'Cystitis (n)',
    uz: 'sistit',
    enDef: 'Inflammation of the bladder.',
    uzDef: 'Quviqning yallig\'lanishi.',
    transcript: '[ sI\'staItIs]',
    favorite: false,
  ),
  Word(
    en: 'Cytology (n)',
    uz: 'sitologiya',
    enDef: 'The study of cells.',
    uzDef: 'Hujayralarni o\'rganish.',
    transcript: '[ saI\'tɒlədʒi]',
    favorite: false,
  ),
  Word(
    en: 'Cytomegalovirus (n)',
    uz: 'sitomegalovirus',
    enDef:
        'A virus that infects cells and causes them to become enlarged. Babies infected with the virus develop mental and sensory…',
    uzDef:
        'Hujayralarni yuqtirgan va ularning kattalashishiga olib keladigan virus. Virus bilan kasallangan chaqaloqlar aqliy va hissiy jihatdan rivojlanadi ...',
    transcript: '[ saɪˌtoʊˈmɛɡəloʊˌvaɪrəs]',
    favorite: false,
  ),
  Word(
    en: 'D and C (n)',
    uz: 'D va C',
    enDef:
        'Dilatation and curettage. A surgical procedure in which the uterine lining is removed by scraping.',
    uzDef:
        'Dilatatsiya va kuretaj. Bachadon shilliq qavati qirib tashlash orqali olib tashlanadigan jarrohlik amaliyoti.',
    transcript: '[ di: әnd si:]',
    favorite: false,
  ),
  Word(
    en: 'Dacryocystitis (n)',
    uz: 'dacryocystitis',
    enDef:
        'Inflammation of the sac that collects tears for drainage from the eye.',
    uzDef:
        'Ko\'zdan drenajlash uchun ko\'z yoshlarini to\'playdigan qopning yallig\'lanishi.',
    transcript: '[ dækri:ou\'sɪstaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Devascularization (n)',
    uz: 'devaskulyarizatsiya',
    enDef: 'Interruption of blood circulation to part of the body.',
    uzDef: 'Tananing bir qismiga qon aylanishining uzilishi.',
    transcript: '[ diːˌvæskjʊləraɪˈzeɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Dextrose (n)',
    uz: 'dekstroz',
    enDef: 'A simple sugar. Glucose.',
    uzDef: 'Oddiy shakar. Glyukoza.',
    transcript: '[ dekstrəʊs]',
    favorite: false,
  ),
  Word(
    en: 'Diabetes insipidus (n)',
    uz: 'diabet insipidus',
    enDef:
        'Loss of water through the kidneys as a result of decreased production of the pituitary hormone vasopressin (an antidiuretic…',
    uzDef:
        'Gipofiz gormoni vazopressin (antidiuretik) ishlab chiqarilishining pasayishi natijasida buyraklar orqali suv yo\'qotilishi.',
    transcript: '[ daɪəˈbiːtiːz ɪnˈsɪpɪdəs]',
    favorite: false,
  ),
  Word(
    en: 'Diabetes mellitus (n)',
    uz: 'qandli diabet',
    enDef:
        'A disorder of carbohydrate metabolism resulting from insulin deficiency. Characterized by high blood sugar levels that result in weakness, frequent…',
    uzDef:
        'Insulin etishmovchiligi natijasida uglevod almashinuvining buzilishi. Qon shakarining yuqori darajasi bilan tavsiflanadi, bu esa zaiflikka olib keladi, tez-tez ...',
    transcript: '[ daɪəˈbiːtiːz mɛˈlaɪtəs]',
    favorite: false,
  ),
  Word(
    en: 'Diagnose (v)',
    uz: 'tashxis qo\'ymoq',
    enDef: 'To identify a disease.',
    uzDef: 'Kasallikni aniqlamoq.',
    transcript: '[ \'daɪəgnəʊz]',
    favorite: false,
  ),
  Word(
    en: 'Diagnosis (n)',
    uz: 'tashxis',
    enDef: 'The process of identifying a disease or medical condition.',
    uzDef: 'Kasallik yoki tibbiy holatni aniqlash jarayoni.',
    transcript: '[ daɪəgˈnəʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Dialysis (n)',
    uz: 'dializ',
    enDef:
        'A treatment to remove certain molecules from the blood, particularly in people with kidney failure.',
    uzDef:
        'Ayniqsa, buyrak etishmovchiligi bo\'lgan odamlarda qondan ma\'lum molekulalarni olib tashlash uchun davolash.',
    transcript: '[ daɪˈælɪsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Diaphoresis (n)',
    uz: 'diaforez',
    enDef: 'Excessive sweating.',
    uzDef: 'Haddan tashqari terlash.',
    transcript: '[ daɪəfəˈriːsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Diaphragm (n)',
    uz: 'diafragma',
    enDef:
        'The dome-shaped respiratory muscle separating the chest from the abdomen. A barrier contraceptive device molded to fit over…',
    uzDef:
        'Ko\'krakni qorin bo\'shlig\'idan ajratib turuvchi gumbazsimon nafas olish mushaklari. To\'siqli kontratseptiv moslamasi...',
    transcript: '[ \'daɪəfrәm]',
    favorite: false,
  ),
  Word(
    en: 'Diarrhea (n)',
    uz: 'diareya',
    enDef:
        'Production of feces in increased volume and with greater fluidity than normal.',
    uzDef:
        'Najasni odatdagidan ko\'ra ko\'proq hajmda va suyuqlik bilan ishlab chiqarish.',
    transcript: '[ daɪəˈriːə]',
    favorite: false,
  ),
  Word(
    en: 'Diastole (n)',
    uz: 'diastola',
    enDef: 'The relaxation phase of the heartbeat.',
    uzDef: 'Yurak urishining gevşeme bosqichi.',
    transcript: '[ daɪˈæstəʊl]',
    favorite: false,
  ),
  Word(
    en: 'Diastolic (adj)',
    uz: 'diastolik',
    enDef:
        'Diastolic blood pressure is the pressure when your heart relaxing between beats and filling with blood.',
    uzDef:
        'Diastolik qon bosimi yurak urishi va qon bilan to\'lishi o\'rtasida bo\'shashganda bosimdir.',
    transcript: '[ daɪəˈstɒlɪk]',
    favorite: false,
  ),
  Word(
    en: 'Diet (n)',
    uz: 'parhez',
    enDef:
        'The total food consumed by an individual. A therapeutic diet is a prescription of required or restricted foods.',
    uzDef:
        'Bir kishi tomonidan iste\'mol qilinadigan umumiy oziq-ovqat. Terapevtik dieta - bu zarur yoki cheklangan ovqatlarning retsepti',
    transcript: '[ daɪət]',
    favorite: false,
  ),
  Word(
    en: 'Dietitian (n)',
    uz: 'dietolog',
    enDef:
        'An expert who is trained in the use of diet and nutrition to maintain or restore health.',
    uzDef:
        'Sog\'likni saqlash yoki tiklash uchun parhez va ovqatlanishdan foydalanish bo\'yicha o\'qitilgan mutaxassis.',
    transcript: '[ daɪəˈtɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Digestion (n)',
    uz: 'ovqat hazm qilish',
    enDef:
        'The mechanical and chemical conversion of food into simpler compounds that can be absorbed by the body.',
    uzDef:
        'Oziq-ovqatning organizm tomonidan so\'rilishi mumkin bo\'lgan oddiyroq birikmalarga mexanik va kimyoviy aylanishi.',
    transcript: '[ daɪˈdʒɛstʃən]',
    favorite: false,
  ),
  Word(
    en: 'Digit (n)',
    uz: 'raqam',
    enDef: 'A finger or toe.',
    uzDef: 'Barmoq yoki oyoq barmog\'i.',
    transcript: '[ ˈdɪdʒɪt]',
    favorite: false,
  ),
  Word(
    en: 'Dilation (n)',
    uz: 'kengayishi',
    enDef: 'The process of expanding or enlarging.',
    uzDef: 'Kengayish yoki kattalashtirish jarayoni.',
    transcript: '[ daɪˈleɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'Diphtheria (n)',
    uz: 'difteriya',
    enDef:
        'An infectious disease of childhood characterized by fever, sore throat and the presence of “dirty” (white, gray, brown) membranes in…',
    uzDef:
        'Isitma, tomoq og\'rig\'i va "iflos" (oq, kulrang, jigarrang) membranalar mavjudligi bilan tavsiflangan bolalikdagi yuqumli kasallik ...',
    transcript: '[ ˈdɪfˈθɪriə]',
    favorite: false,
  ),
  Word(
    en: 'Diplopia (n)',
    uz: 'diplopiya',
    enDef: 'Double vision.',
    uzDef: 'Ikki tomonlama ko’rish',
    transcript: '[ daɪˈpləʊpɪə]',
    favorite: false,
  ),
  Word(
    en: 'Discoid lupus erythematosus (n)',
    uz: 'diskoid qizil yuguruk',
    enDef:
        'A round, red, scaling rash on the nose, forehead, cheeks, scalp or other areas of the body. It may be…',
    uzDef:
        'Burun, peshona, yonoq, bosh terisi yoki tananing boshqa joylarida dumaloq, qizil, ko\'pikli toshmalar. Bu bo\'lishi mumkin…',
    transcript: '[ ˈdɪsˌkɔɪd ˈluːpəs ˌɛrɪˌθiːməˈtoʊsəs]',
    favorite: false,
  ),
  Word(
    en: 'Disinfectant (n)',
    uz: 'dezinfektsiyalovchi',
    enDef:
        'A chemical agent used to destroy microorganisms on inanimate objects.',
    uzDef:
        'Jonsiz narsalardagi mikroorganizmlarni yo\'q qilish uchun ishlatiladigan kimyoviy vosita.',
    transcript: '[ dɪsɪnˈfɛktənt]',
    favorite: false,
  ),
  Word(
    en: 'Dysmenorrhea (n)',
    uz: 'dismenoreya',
    enDef: 'Painful menstruation.',
    uzDef: 'Og\'riqli hayz ko\'rish',
    transcript: '[ dɪsmɛnəˈriə]',
    favorite: false,
  ),
  Word(
    en: 'Dyspepsia (n)',
    uz: 'dispepsiya',
    enDef: 'Indigestion.',
    uzDef: 'Ovqat hazm qilish buzilishi.',
    transcript: '[ dɪsˈpɛpsiə]',
    favorite: false,
  ),
  Word(
    en: 'Dysphagia (n)',
    uz: 'disfagiya',
    enDef: 'Difficulty swallowing.',
    uzDef: 'Yutish qiyinligi',
    transcript: '[ dɪsˈfeɪdʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Dyspnea (n)',
    uz: 'disfagiya',
    enDef: 'Labored breathing.',
    uzDef: 'Qiyin nafas olish',
    transcript: '[ dɪspˈniə]',
    favorite: false,
  ),
  Word(
    en: 'Eardrum (n)',
    uz: 'quloq pardasi',
    enDef:
        'The tympanic membrane that’s visible in the ear. It vibrates in response to sound waves.',
    uzDef:
        'Quloqda ko\'rinadigan timpanik membrana. Ovoz to\'lqinlariga javoban tebranadi.',
    transcript: '[ ˈɪə.drʌm]',
    favorite: false,
  ),
  Word(
    en: 'Ecchymosis (n)',
    uz: 'ekximoz',
    enDef:
        'A collection of blood in the tissues causing a black and blue, or yellow, area.',
    uzDef:
        'Qora va ko\'k yoki sariq maydonni keltirib chiqaradigan to\'qimalarda qon to\'planishi.',
    transcript: '[ ɪˈkkaɪˈmoʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'ECG (n)',
    uz: 'EKG',
    enDef: 'Electrocardiogram.',
    uzDef: 'Elektrokardiogramma',
    transcript: '[ ˌiːsiːˈdʒi]',
    favorite: false,
  ),
  Word(
    en: 'Eclampsia (n)',
    uz: 'eklampsiya',
    enDef:
        'An attack of convulsions. Particularly used to describe toxemia (toxins in the blood) of pregnancy.',
    uzDef:
        'Konvulsiyalar hujumi. Ayniqsa, homiladorlikning toksikozini (qondagi toksinlar) tasvirlash uchun ishlatiladi.',
    transcript: '[ ɪˈklæmpsiə]',
    favorite: false,
  ),
  Word(
    en: 'Ectopic pregnancy (n)',
    uz: 'ektopik homiladorlik',
    enDef:
        'When the fertilized egg is implanted and develops outside of the uterus.',
    uzDef:
        'Urug\'langan tuxum qo\'yilganda va bachadondan tashqarida rivojlanadi.',
    transcript: '[ ɛktəpɪk ˈprɛgnənsi]',
    favorite: false,
  ),
  Word(
    en: 'Ectropion (n)',
    uz: 'ektropion',
    enDef: 'An outward turning of the eyelid.',
    uzDef: 'Ko\'z qovog\'ining tashqi tomonga burilishi.',
    transcript: '[ ˈɛktrəpiən]',
    favorite: false,
  ),
  Word(
    en: 'Eczema (n)',
    uz: 'ekzema',
    enDef:
        'A rash characterized by itching, scaling, swelling and oozing. A common allergic reaction.',
    uzDef:
        'Qichishish, qichishish, shishish va oqish bilan tavsiflangan toshma. Umumiy allergik reaktsiya.',
    transcript: '[ ˈɛksəmə]',
    favorite: false,
  ),
  Word(
    en: 'Edema (n)',
    uz: 'shish',
    enDef: 'Buildup of excessive fluid around the cells in the body.',
    uzDef: 'Tanadagi hujayralar atrofida ortiqcha suyuqlik to\'planishi.',
    transcript: '[ ɪˈdiːmə]',
    favorite: false,
  ),
  Word(
    en: 'EEG (n)',
    uz: 'EAG',
    enDef: 'Electroencephalogram.',
    uzDef: 'Elektroansefalogramma',
    transcript: '[ ˌiːiːˈdʒiː]',
    favorite: false,
  ),
  Word(
    en: 'Effacement (n)',
    uz: 'qisqarish',
    enDef: 'Thinning of the cervix during labor.',
    uzDef: 'Tug\'ilish paytida bachadon bo\'yni ingichka bo\'lishi',
    transcript: '[ ɪˈfesmənt]',
    favorite: false,
  ),
  Word(
    en: 'Effusion (n)',
    uz: 'sizib chiqish',
    enDef: 'Buildup of fluid in a part of the body, particularly a joint.',
    uzDef:
        'Tananing bir qismida, xususan, bo\'g\'imlarda suyuqlik to\'planishi.',
    transcript: '[ ɪˈfjuʒən]',
    favorite: false,
  ),
  Word(
    en: 'Ejaculation (n)',
    uz: 'eyakulyatsiya',
    enDef: 'The sudden ejection of semen from the male body. Climax.',
    uzDef: 'Erkak tanasidan spermani to\'satdan chiqarib yuborish. Klimaks.',
    transcript: '[ iˌdʒækjʊˈleɪʃən]',
    favorite: false,
  ),
  Word(
    en: 'EKG (n)',
    uz: 'EKG',
    enDef: 'Electrocardiogram.',
    uzDef: 'Elektrokardiogramma',
    transcript: '[ ˌiːkeɪˈdʒiː]',
    favorite: false,
  ),
  Word(
    en: 'Electroconvulsive (adj)',
    uz: 'elektrokonvulsiv',
    enDef:
        'A type of therapy used to treat severe, unresponsive depression by passing electrical current through the brain.',
    uzDef:
        'Miya orqali elektr tokini o\'tkazish orqali og\'ir, javobsiz depressiyani davolash uchun ishlatiladigan terapiya turi.',
    transcript: '[ ɪlɛktrəʊkənˈvʌlsɪv]',
    favorite: false,
  ),
  Word(
    en: 'Electrolysis (n)',
    uz: 'elektroliz',
    enDef:
        'Destruction of tissue through the use of electricity; often used to permanently remove unwanted hair from the body.',
    uzDef:
        'Elektr energiyasidan foydalanish orqali to\'qimalarni yo\'q qilish; ko\'pincha tanadan kiruvchi sochlarni doimiy ravishda olib tashlash uchun ishlatiladi.',
    transcript: '[ ɪlɛkˈtrɒləsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Electrolytes (n)',
    uz: 'elektrolitlar',
    enDef:
        'Compounds that separate into charged particles in water. The main electrolytes in the human body are sodium, potassium, bicarbonate, chloride,…',
    uzDef:
        'Suvda zaryadlangan zarrachalarga ajraladigan birikmalar. Inson organizmidagi asosiy elektrolitlar natriy, kaliy, bikarbonat, xlorid...',
    transcript: '[ ɪlɛktrəlaɪts]',
    favorite: false,
  ),
  Word(
    en: 'Elephantiasis (n)',
    uz: 'fil kasalligi',
    enDef:
        'A chronic disease characterized by the enlargement of certain parts of the body and by the hardening and ulceration of…',
    uzDef:
        'Surunkali kasallik, tananing ayrim qismlarining kattalashishi va qattiqlashishi va yarasi bilan tavsiflanadi ...',
    transcript: '[ ˌɛlɪfənˈtaɪəsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Epistaxis (n)',
    uz: 'epistaksiz',
    enDef: 'Nosebleed.',
    uzDef: 'Burundan qon ketish',
    transcript: '[ ˌɛpɪsˈtæksɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Epithelium (n)',
    uz: 'epiteliy',
    enDef:
        'The layer of cells covering internal and external surfaces of the body.',
    uzDef:
        'Tananing ichki va tashqi yuzalarini qoplaydigan hujayralar qatlami.',
    transcript: '[ ˌɛpɪˈθiliəm]',
    favorite: false,
  ),
  Word(
    en: 'Erysipelas (n)',
    uz: 'qizilcha',
    enDef:
        'A febrile (fever-associated) skin infection caused by a group A hemolytic streptococci.',
    uzDef:
        'A guruhi gemolitik streptokokklar keltirib chiqaradigan febril (isitma bilan bog\'liq) teri infektsiyasi.',
    transcript: '[ ˌɛrəsɪˈpiːləs]',
    favorite: false,
  ),
  Word(
    en: 'Erythema (n)',
    uz: 'eritema',
    enDef: 'Redness of the skin.',
    uzDef: 'Terining qizarishi.',
    transcript: '[ ˌɛrəˈθiːmə]',
    favorite: false,
  ),
  Word(
    en: 'Erythema infectiosum (n)',
    uz: 'infektsiyali eritema',
    enDef:
        'A viral infection most common in children that begins with a red, warm rash on the face, along with some...',
    uzDef:
        'Bolalarda eng ko\'p uchraydigan virusli infektsiya yuzida qizil, issiq toshma bilan boshlanadi, ba\'zilari bilan birga ...',
    transcript: '[ ˌɛrəθiːmə ˌɪnfɛkʃiˈoʊsəm]',
    favorite: false,
  ),
  Word(
    en: 'Erythema multiforme (n)',
    uz: 'ko\'p shaklli eritema',
    enDef:
        'An eruption of flat or raised spots of skin as a result of hypersensitivity to certain drugs or allergies.',
    uzDef:
        'Ba\'zi dorilarga yoki allergiyaga yuqori sezuvchanlik natijasida terining tekis yoki ko\'tarilgan dog\'larining chiqishi.',
    transcript: '[ ˌɛrəθiːmə ˌmʌltiˈfɔrm]',
    favorite: false,
  ),
  Word(
    en: 'Erythema nodosum (n)',
    uz: 'eritema nodosum',
    enDef:
        'The sudden appearance of tender raised nodes on the lower limbs as a result of an infection, hypersensitivity to certain...',
    uzDef:
        'Infektsion natijasida pastki oyoq-qo\'llarda yumshoq ko\'tarilgan tugunlarning to\'satdan paydo bo\'lishi, ma\'lum ...',
    transcript: '[ ɛrəθiːmə ˌnoʊdəsʌm]',
    favorite: false,
  ),
  Word(
    en: 'Erythrocyte (n)',
    uz: 'eritrotsitlar',
    enDef: 'Red blood cell.',
    uzDef: 'Qizil qon hujayralari.',
    transcript: '[ ɪˈrɪθrəsaɪt]',
    favorite: false,
  ),
  Word(
    en: 'Escherichia coli (n)',
    uz: 'Escherichia koli',
    enDef:
        'A type of common bacteria normally found in the colon. Some strains that cause diarrhea are acquired during travel.',
    uzDef:
        'Odatda yo\'g\'on ichakda joylashgan oddiy bakteriyalar turi. Diareyaga olib keladigan ba\'zi shtammlar sayohat paytida olinadi.',
    transcript: '[ ɪskɪrakiɪ ˈkoʊlaɪ]',
    favorite: false,
  ),
  Word(
    en: 'Esophagitis (n)',
    uz: 'ezofagit',
    enDef:
        'Inflammation of the esophagus, often caused from a reflux of acid from the stomach.',
    uzDef:
        'Qizilo\'ngachning yallig\'lanishi, ko\'pincha oshqozondan kislotaning qaytarilishidan kelib chiqadi.',
    transcript: '[ ɪsɪfɪˈdʒaɪtaɪs]',
    favorite: false,
  ),
  Word(
    en: 'Esophagus (n)',
    uz: 'qizilo\'ngach',
    enDef:
        'The tube through which food passes from the pharynx to the stomach.',
    uzDef: 'Ovqat farenksdan oshqozonga o\'tadigan naycha.',
    transcript: '[ ɪˈsɪfəɡəs]',
    favorite: false,
  ),
  Word(
    en: 'Estrogen (n)',
    uz: 'estrogen',
    enDef: 'Female sex hormone.',
    uzDef: 'Ayol jinsiy gormoni.',
    transcript: '[ ˈɛstrədʒən]',
    favorite: false,
  ),
  Word(
    en: 'Eustachian tube (n)',
    uz: 'evstaki naychasi',
    enDef:
        'The narrow tube connecting the nose and middle ear to allow air pressure in the middle ear to equalize with...',
    uzDef:
        'Burun va o\'rta quloqni bog\'laydigan tor quvur o\'rta quloqdagi havo bosimini tenglashtirishga imkon beradi ...',
    transcript: '[ juːˈsteɪʃ(ə)n tjuːb]',
    favorite: false,
  ),
  Word(
    en: 'Exacerbate (v)',
    uz: 'kuchaytirmoq',
    enDef:
        'Cause something to increase in severity. To make more intense, irritate.',
    uzDef:
        'Biror narsaning kuchayishiga sabab bo\'lmoq. Ko\'proq qizg\'in qilmoq, bezovta qilmoq.',
    transcript: '[ɪɡˈzæsərˌbeɪt]',
    favorite: false,
  ),
  Word(
    en: 'Exanthema (n)',
    uz: 'ekzantem',
    enDef: 'Skin rash.',
    uzDef: 'Teri toshmasi.',
    transcript: '[ˌɛksәnˈθәm]',
    favorite: false,
  ),
  Word(
    en: 'Excise (v)',
    uz: 'olib tashlamoq',
    enDef: 'To remove by cutting.',
    uzDef: 'Kesish orqali olib tashlamoq.',
    transcript: '[ɪkˈsaɪz]',
    favorite: false,
  ),
  Word(
    en: 'Exocrine glands (n)',
    uz: 'ekzokrin bezlar',
    enDef:
        'Glands that secrete chemicals externally, either through a tube or duct.',
    uzDef:
        'Naycha yoki kanal orqali kimyoviy moddalarni tashqaridan chiqaradigan bezlar.',
    transcript: '[ˈek.sə.krɪn glændz]',
    favorite: false,
  ),
  Word(
    en: 'Expectorant (n)',
    uz: 'ekspektoran',
    enDef:
        'A substance that loosens mucus so it’s more easily cleared from the respiratory passages.',
    uzDef:
        'Balg\'amni bo\'shashtiradigan modda, natijada balg\'am nafas olish yo\'llaridan osonroq tozalanadi.',
    transcript: '[ɪkˈspektərənt]',
    favorite: false,
  ),
  Word(
    en: 'Fascia (n)',
    uz: 'fasya',
    enDef: 'Fibrous sheets of tissue connecting or covering the muscles.',
    uzDef:
        'Mushaklarni bog\'laydigan yoki qoplaydigan to\'qimalarning tolali varaqlari.',
    transcript: '[ˈfaʃ(ē)ə]',
    favorite: false,
  ),
  Word(
    en: 'Fat (n)',
    uz: 'yog’',
    enDef:
        'A major energy source for animals and humans. Fat contains nine calories per gram.',
    uzDef:
        'Hayvonlar va odamlar uchun asosiy energiya manbai. Yog \'har bir grammda to\'qqiz kaloriya bor.',
    transcript: '[fæt]',
    favorite: false,
  ),
  Word(
    en: 'Fatigue (n)',
    uz: 'charchoq',
    enDef: 'Physical or mental exhaustion. Weariness.',
    uzDef: 'Jismoniy yoki ruhiy charchoq. Charchoqlik.',
    transcript: '[fəˈtiːɡ]',
    favorite: false,
  ),
  Word(
    en: 'Feces (n)',
    uz: 'najaz',
    enDef:
        'Body waste expelled from the rectum. Also called bowel movement or stool.',
    uzDef:
        'To\'g\'ri ichakdan tana chiqindilari chiqariladi. Ichak harakati yoki axlat deb ham ataladi.',
    transcript: '[ˈfiːsiːz]',
    favorite: false,
  ),
  Word(
    en: 'Femoral (adj)',
    uz: 'femoral',
    enDef: 'Having to do with the femur.',
    uzDef: 'Femur bilan bog\'liq.',
    transcript: '[ˈfem(ə)rəl]',
    favorite: false,
  ),
  Word(
    en: 'Femur (n)',
    uz: 'son suyagi',
    enDef: 'The thigh bone.',
    uzDef: 'Son suyagi.',
    transcript: '[ˈfiːmər]',
    favorite: false,
  ),
  Word(
    en: 'Fertility (n)',
    uz: 'unumdorlik',
    enDef: 'The ability to have children.',
    uzDef: 'Farzandli bo\'lish qobiliyati.',
    transcript: '[fərˈtɪlɪti]',
    favorite: false,
  ),
  Word(
    en: 'Fertilization (n)',
    uz: 'urug\'lantirish',
    enDef:
        'The process of joining the male’s sperm and the female’s ovum (egg).',
    uzDef:
        'Erkakning spermatozoidlari va ayolning tuxum hujayrasining (tuxum) qo\'shilish jarayoni.',
    transcript: '[ˌfɜrdləˈzeɪʃ(ə)n]',
    favorite: false,
  ),
  Word(
    en: 'Fetal (adj)',
    uz: 'homila',
    enDef: 'Having to do with the fetus.',
    uzDef: 'Homila bilan bog\'liq.',
    transcript: '[ˈfiːtl]',
    favorite: false,
  ),
  Word(
    en: 'Fetus (n)',
    uz: 'homila',
    enDef:
        'The unborn baby from the end of the eighth week after fertilization of the egg to birth.',
    uzDef:
        'Tuxumni urug\'lantirilgandan keyin sakkizinchi haftaning oxiridan boshlab tug\'ilmagan chaqaloq.',
    transcript: '[ˈfiːdəs]',
    favorite: false,
  ),
  Word(
    en: 'Fever (n)',
    uz: 'isitma',
    enDef: 'Abnormally high body temperature.',
    uzDef: 'Anormal yuqori tana harorati.',
    transcript: '[ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Fiber (n)',
    uz: 'tola',
    enDef:
        '1. A slender, thread-like structure of organ tissue.  2. In the diet, strands of complex carbohydrates (cellulose) that aren’t...',
    uzDef:
        '1. Organ to‘qimalarining ipsimon, ingichka tuzilishi.  2. Ratsionda murakkab uglevodlar (tsellyuloza) bo\'lmagan zanjirlar ...',
    transcript: '[ˈfaɪbər]',
    favorite: false,
  ),
  Word(
    en: 'Fibrillation (n)',
    uz: 'fibrilatsiya',
    enDef:
        'A rapid, uncoordinated series of contractions of some part of the heart muscle causing irregular heartbeats. Atrial fibrillation is the…',
    uzDef:
        'Yurak mushaklarining bir qismining tez, muvofiqlashtirilmagan qisqarishi, yurak urishining buzilishiga olib keladi.  Atriyal fibrilatsiya - bu ...',
    transcript: '[ˌfaɪbrəˈleɪʃ(ə)n]',
    favorite: false,
  ),
  Word(
    en: 'Fibrin (n)',
    uz: 'fibrin',
    enDef:
        '1. A slender, thread-like structure of organ tissue  2. . 2. In the diet, strands of complex carbohydrates (cellulose) that aren’t…',
    uzDef: 'Qon ivish jarayoni uchun zarur bo\'lgan sarum oqsili.',
    transcript: '[ˈfaɪbrɪn]',
    favorite: false,
  ),
  Word(
    en: 'Fibroid (n)',
    uz: 'mioma',
    enDef:
        'A noncancerous tumor of the uterus composed of muscle fibers. Also called uterine myoma.',
    uzDef:
        'Mushak tolalaridan tashkil topgan bachadonning saratonsiz o\'sma.  Bachadon miomasi ham deyiladi.',
    transcript: '[ˈfaɪˌbrɔɪd]',
    favorite: false,
  ),
  Word(
    en: 'Fibromyalgia (n)',
    uz: 'fibromiyaljiya',
    enDef:
        'A painful condition with multiple sensitive areas, called “tender points,” affecting fibrous tissues, muscles, tendons and ligaments.',
    uzDef:
        'Tolali to\'qimalarga, mushaklarga, tendonlarga va ligamentlarga ta\'sir qiluvchi "teng nuqtalari" deb ataladigan bir nechta sezgir joylar bilan og\'riqli holat.',
    transcript: '[ˌfaɪbroʊmaɪˈældʒiə]',
    favorite: false,
  ),
  Word(
    en: 'Fibrositis (n)',
    uz: 'fibrozit',
    enDef: 'Inflammation of fibrous tissues.',
    uzDef: 'Fibroz to\'qimalarning yallig\'lanishi.',
    transcript: '[ˌfaɪbrəˈsaɪdəs]',
    favorite: false,
  ),
  Word(
    en: 'Fibula (n)',
    uz: 'fibula',
    enDef: 'The long, thin, outer bone of the lower leg.',
    uzDef: 'Pastki oyoqning uzun, ingichka, tashqi suyagi.',
    transcript: '[ˈfɪbjələ]',
    favorite: false,
  ),
  Word(
    en: 'Fissure (n)',
    uz: 'yoriq',
    enDef: 'A narrow slit.',
    uzDef: 'Tor tirqish.',
    transcript: '[ˈfɪʃər]',
    favorite: false,
  ),
  Word(
    en: 'Fistula (n)',
    uz: 'oqma',
    enDef:
        'An abnormal passage from an abscess, cavity or hollow organ to the skin or another abscess.',
    uzDef:
        'Xo\'ppoz, bo\'shliq yoki ichi bo\'sh organdan teriga yoki boshqa xo\'ppozga g\'ayritabiiy o\'tish.',
    transcript: '[ˈfɪsCH(ə)lə]',
    favorite: false,
  ),
  Word(
    en: 'Flaccid (adj)',
    uz: 'bo\'shashgan',
    enDef:
        'Soft and flabby. Often used to describe complete paralysis (loss of movement) without muscle spasm.',
    uzDef:
        'Yumshoq va yumshoq.  Ko\'pincha mushaklarning spazmisiz to\'liq falajni (harakatni yo\'qotish) tasvirlash uchun ishlatiladi.',
    transcript: '[ˈflæksɪd]',
    favorite: false,
  ),
  Word(
    en: 'Flatfoot (n)',
    uz: 'tekis oyoq',
    enDef: 'A condition in which the normal arch of the foot is absent.',
    uzDef: 'Oyoqning oddiy yoyi yo\'q bo\'lgan holat.',
    transcript: '[ˈflætˌfʊt]',
    favorite: false,
  ),
  Word(
    en: 'Flatulence (n)',
    uz: 'meteorizm',
    enDef: 'Excessive production of gas in the intestines or stomach.',
    uzDef: 'Ichaklarda yoki oshqozonda ortiqcha gaz hosil bo\'lishi.',
    transcript: '[ˈflætjʊləns]',
    favorite: false,
  ),
  Word(
    en: 'Fluorescein (n)',
    uz: 'floressein',
    enDef:
        'A compound used as a diagnostic aid to show injuries of the cornea or retina of the eye.',
    uzDef:
        'Ko\'zning shox pardasi yoki to\'r pardasining shikastlanishlarini ko\'rsatish uchun diagnostik yordam sifatida ishlatiladigan birikma.',
    transcript: '[ˌflʊəˈrɛsiːən]',
    favorite: false,
  ),
  Word(
    en: 'Folic acid (n)',
    uz: 'foliy kislotasi',
    enDef:
        'Folacin. One of the B-group vitamins essential for forming red blood cells.',
    uzDef:
        'Folatsin.  Qizil qon hujayralarini shakllantirish uchun zarur bo\'lgan B guruhi vitaminlaridan biri.',
    transcript: '[ˌfoʊlɪk ˈæsɪd]',
    favorite: false,
  ),
  Word(
    en: 'Folliculitis (n)',
    uz: 'follikulit',
    enDef: 'Inflammation of the hair follicles.',
    uzDef: 'Soch follikulalarining yallig\'lanishi.',
    transcript: '[fəˌlɪkjəˈlaɪdəs]',
    favorite: false,
  ),
  Word(
    en: 'Fontanelle (n)',
    uz: 'fontanel',
    enDef:
        'A soft spot in the skull of an infant formed by the normal separation between the bony plates of the...',
    uzDef:
        'Kichkintoyning bosh suyagidagi yumshoq nuqta, suyak plitalari orasidagi normal ajralish natijasida...',
    transcript: '[ˌfɑːntəˈnɛl]',
    favorite: false,
  ),
  Word(
    en: 'Foreskin (n)',
    uz: 'sunnat terisi',
    enDef: 'A loose fold of skin covering the tip of the penis.',
    uzDef: 'Jinsiy olatni uchini qoplaydigan bo\'shashgan teri burmasi.',
    transcript: '[ˈfɔːrˌskɪn]',
    favorite: false,
  ),
  Word(
    en: 'Fracture (n)',
    uz: 'sinish',
    enDef: 'Broken, especially a broken bone.',
    uzDef: 'Buzilgan, ayniqsa singan suyak.',
    transcript: '[ˈfræk(t)ʃər]',
    favorite: false,
  ),
  Word(
    en: 'Fraternal twins (n)',
    uz: 'birodar egizaklar',
    enDef:
        'Twins formed from two separate eggs that were fertilized at the same time. They may be the same or different…',
    uzDef:
        'Egizaklar bir vaqtning o\'zida urug\'lantirilgan ikkita alohida tuxumdan hosil bo\'lgan. Ular bir xil yoki boshqacha bo\'lishi mumkin...',
    transcript: '[frəˈtɜːrnəl twɪnz]',
    favorite: false,
  ),
  Word(
    en: 'Frenulum (n)',
    uz: 'frenulum',
    enDef:
        'A fold of skin or mucous membrane that limits the movement of a body part. For example, the frenulum linguae...',
    uzDef:
        'Tana qismining harakatini cheklaydigan teri yoki shilliq qavatning burmasi. Masalan, frenulum linguae...',
    transcript: '[ˈfrɛnjʊləm]',
    favorite: false,
  ),
  Word(
    en: 'Frigidity (n)',
    uz: 'sovuqlik',
    enDef: 'An inability to be sexually aroused.',
    uzDef: 'Jinsiy qo\'zg\'alishning mumkin emasligi.',
    transcript: '[frɪˈdʒɪdɪti]',
    favorite: false,
  ),
  Word(
    en: 'Fructose (n)',
    uz: 'fruktoza',
    enDef: 'Fruit sugar.',
    uzDef: 'Meva shakar.',
    transcript: '[ˈfrəktoʊs]',
    favorite: false,
  ),
  Word(
    en: 'Fungus (n)',
    uz: 'qo\'ziqorin',
    enDef: 'A group of organisms that includes yeasts, molds and mushrooms.',
    uzDef:
        'Xamirturushlar, mog\'orlar va qo\'ziqorinlarni o\'z ichiga olgan organizmlar guruhi.',
    transcript: '[ˈfʌŋɡəs]',
    favorite: false,
  ),
  Word(
    en: 'Galactorrhea (n)',
    uz: 'galaktoreya',
    enDef: 'Excessive production of breast milk.',
    uzDef: 'Ko\'krak sutini ortiqcha ishlab chiqarish.',
    transcript: '[ˌɡælæktoʊˈriə]',
    favorite: false,
  ),
  Word(
    en: 'Galactosemia (n)',
    uz: 'galaktozemiya',
    enDef:
        'A disease present at birth caused by a genetic lack of an enzyme needed to metabolize galactose into glucose. May...',
    uzDef:
        'Galaktozani glyukozaga aylantirish uchun zarur bo\'lgan fermentning genetik etishmasligi tufayli tug\'ilishda mavjud bo\'lgan kasallik. May...',
    transcript: '[ˌɡælæktoʊˈsiːmiə]',
    favorite: false,
  ),
  Word(
    en: 'Gall (n)',
    uz: 'o\'t',
    enDef: 'The bile produced in the liver and stored in the gallbladder.',
    uzDef: 'Safro jigarda ishlab chiqariladi va o\'t pufagida saqlanadi.',
    transcript: '[ɡɔːl]',
    favorite: false,
  ),
  Word(
    en: 'Gallbladder (n)',
    uz: 'o\'t pufagi',
    enDef: 'The storage sac for bile, located below the liver.',
    uzDef: 'Jigar ostida joylashgan o\'t ni saqlash xaltasi.',
    transcript: '[ˈɡɔːlˌblædər]',
    favorite: false,
  ),
  Word(
    en: 'Gallstone (n)',
    uz: "o't pufagidagi tosh",
    enDef: 'A stone-like mass that forms in the gallbladder.',
    uzDef: "O't pufagida hosil bo'ladigan toshga o'xshash massa.",
    transcript: '[ˈɡɔːlˌstōn]',
    favorite: false,
  ),
  Word(
    en: 'Gamma globulin (n)',
    uz: 'gamma globulin',
    enDef:
        'Blood protein that contains most antibodies. Used in the temporary prevention of hepatitis and as treatment for disorders with antibody...',
    uzDef:
        'Ko\'pgina antikorlarni o\'z ichiga olgan qon oqsili. Gepatitning vaqtincha oldini olishda va antikorlar bilan buzilishlarni davolashda ishlatiladi...',
    transcript: '[ˌɡæmə ˈɡlɑːbjəlɪn]',
    favorite: false,
  ),
  Word(
    en: 'Ganglion cyst (n)',
    uz: 'ganglion kistasi',
    enDef: 'A benign, knot-like, cystic tumor on a tendon sheath.',
    uzDef: 'Tendon pardasidagi yaxshi xulqli, tugunsimon, pufaksimon o\'sma.',
    transcript: '[ˈɡaŋɡlɪən sɪst]',
    favorite: false,
  ),
  Word(
    en: 'Gangrene (n)',
    uz: 'gangrena',
    enDef:
        'The decay of body tissue in a part of the body where the blood supply is obstructed by injury or...',
    uzDef:
        'Qon ta\'minoti shikastlanish yoki... tufayli to\'sqinlik qiladigan tananing bir qismida tana to\'qimalarining parchalanishi.',
    transcript: '[ˈɡaŋɡriːn]',
    favorite: false,
  ),
  Word(
    en: 'Gastric (adj)',
    uz: 'oshqozon',
    enDef: 'Having to do with the stomach.',
    uzDef: 'Oshqozon bilan bog\'liq.',
    transcript: '[ˈɡastrɪk]',
    favorite: false,
  ),
  Word(
    en: 'Gastritis (n)',
    uz: 'gastrit',
    enDef: 'Inflammation of the stomach lining.',
    uzDef: 'Oshqozon shilliq qavatining yallig\'lanishi.',
    transcript: '[ɡəˈstraɪdɪs]',
    favorite: false,
  ),
  Word(
    en: 'Gastroenteritis (n)',
    uz: 'gastroenterit',
    enDef:
        'Inflammation of the stomach and the intestines, usually producing symptoms of nausea, vomiting and diarrhea.',
    uzDef:
        'Oshqozon va ichakning yallig\'lanishi, odatda ko\'ngil aynishi, qusish va diareya belgilarini keltirib chiqaradi.',
    transcript: '[ˌɡæstrōˌɛntəˈraɪdɪs]',
    favorite: false,
  ),
  Word(
    en: 'Gastrointestinal (adj)',
    uz: 'oshqozon-ichak',
    enDef: 'Having to do with the stomach and intestines.',
    uzDef: 'Oshqozon va ichak bilan bog\'liq.',
    transcript: '[ˌɡæstrōɪnˈtɛstɪnl]',
    favorite: false,
  ),
  Word(
    en: 'Gene (n)',
    uz: 'gen',
    enDef: 'A unit of heredity located on a chromosome.',
    uzDef: 'Xromosomada joylashgan irsiyat birligi.',
    transcript: '[dʒiːn]',
    favorite: false,
  ),
  Word(
    en: 'Generic (adj)',
    uz: 'umumiy',
    enDef: 'General; typical; not specific.',
    uzDef: 'Umumiy; tipik; aniq emas.',
    transcript: '[dʒəˈnɛrɪk]',
    favorite: false,
  ),
  Word(
    en: 'Genetic (adj)',
    uz: 'genetik',
    enDef: 'Hereditary. Having to do with the genes.',
    uzDef: 'Irsiy. Genlar bilan bog\'liq.',
    transcript: '[dʒəˈnɛtɪk]',
    favorite: false,
  ),
  Word(
    en: 'Genitalia (n)',
    uz: 'jinsiy a\'zolar',
    enDef: 'The reproductive organs.',
    uzDef: 'Reproduktiv organlar.',
    transcript: '[ˌdʒɛnɪˈteɪlɪə]',
    favorite: false,
  ),
  Word(
    en: 'Genitourinary system (n)',
    uz: 'genitouriya tizimi',
    enDef: 'The genitals and urinary organs.',
    uzDef: 'Jinsiy organlar va siydik chiqarish organlari.',
    transcript: '[ˌdʒɛ-nə-tō-ˈyu̇r-ə-ˌner-ē ˈsɪstəm]',
    favorite: false,
  ),
  Word(
    en: 'Geriatrics (n)',
    uz: 'geriatriya',
    enDef: 'The branch of medicine devoted to the elderly.',
    uzDef: 'Tibbiyotning keksalarga bag\'ishlangan bo\'limi.',
    transcript: '[ˌdʒɛriˈætrɪks]',
    favorite: false,
  ),
  Word(
    en: 'Germ (n)',
    uz: 'mikrob',
    enDef: 'A disease-causing microorganism.',
    uzDef: 'Kasallik qo\'zg\'atuvchi mikroorganizm.',
    transcript: '[dʒərm]',
    favorite: false,
  ),
  Word(
    en: 'German measles (n)',
    uz: 'nemis qizamiq',
    enDef:
        'A mild childhood disease that causes fever and rash. Although rubella is mild in childhood, it’s dangerous to pregnant women…',
    uzDef:
        'Isitma va toshmalar keltirib chiqaradigan engil bolalik kasalligi. Qizilcha bolalik davrida engil kechsa-da, homilador ayollar uchun xavfli...',
    transcript: '[ˈˌdʒɜrmən ˈmiːzəlz]',
    favorite: false,
  ),
  Word(
    en: 'Gestation (n)',
    uz: 'homiladorlik',
    enDef:
        'The period of development within the uterus from conception to birth.',
    uzDef:
        'Kontseptsiyadan tug\'ilishgacha bo\'lgan bachadon ichidagi rivojlanish davri.',
    transcript: '[dʒɛˈsteɪʃ(ə)n]',
    favorite: false,
  ),
  Word(
    en: 'Giantism (n)',
    uz: 'gigantizm',
    enDef:
        'Abnormal growth of the body due to an excessive amount of growth hormone produced by the pituitary gland.',
    uzDef:
        "Gipofiz bezi tomonidan ishlab chiqarilgan o'sish gormonining ortiqcha miqdori tufayli tananing anormal o'sishi.",
    transcript: '[ˈdʒaɪənˌtɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Giardiasis (n)',
    uz: 'lyamblioz',
    enDef:
        'A diarrheal illness caused by infection with Giardia lamblia, a parasitic protozoan.',
    uzDef:
        'Giardia lamblia, parazit protozoya infektsiyasi natijasida kelib chiqqan diareya kasalligi.',
    transcript: '[ˌdʒiːɑrˈdaɪəsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Gingiva (n)',
    uz: 'gingiva',
    enDef: 'The gums.',
    uzDef: "Tish go'shti.",
    transcript: '[dʒɪnˈdʒaɪvə]',
    favorite: false,
  ),
  Word(
    en: 'Gingivitis (n)',
    uz: 'gingivit',
    enDef: 'Inflammation of the gums.',
    uzDef: "Tish go'shtining yallig'lanishi.",
    transcript: '[ˌdʒɪndʒəˈvaɪdəs]',
    favorite: false,
  ),
  Word(
    en: 'Gland (n)',
    uz: 'bez',
    enDef:
        'An organ that releases a chemical. Endocrine glands are ductless and secrete hormones directly into the bloodstream. Exocrine glands secrete…',
    uzDef:
        'Kimyoviy moddalarni chiqaradigan organ. Endokrin bezlar kanalsiz bo\'lib, gormonlarni bevosita qon oqimiga chiqaradi. Tashqi sekretsiya bezlari…',
    transcript: '[ɡlænd] [noun]',
    favorite: false,
  ),
  Word(
    en: 'Glaucoma (n)',
    uz: 'glaukoma',
    enDef:
        'An eye disease, characterized by increased pressure within the eye, that can result in blindness if not treated.',
    uzDef:
        "Ko'z ichidagi bosimning oshishi bilan tavsiflangan ko'z kasalligi, agar davolanmasa, ko'rlikka olib kelishi mumkin.",
    transcript: '[ɡlɔˈkoʊmə]',
    favorite: false,
  ),
  Word(
    en: 'Glomerulonephritis (n)',
    uz: 'glomerulonefrit',
    enDef:
        'When the filtering units in the kidneys, called the glomeruli, are damaged, the kidneys don’t function properly and waste and…',
    uzDef:
        'Buyraklardagi glomeruli deb ataladigan filtrlash bo\'linmalari shikastlanganda, buyraklar to\'g\'ri ishlamaydi va ishlamay qoladi va ...',
    transcript: '[ɡlɑˌmɛrjəloʊnəˈfraɪdəs]',
    favorite: false,
  ),
  Word(
    en: 'Glossitis (n)',
    uz: 'glossit',
    enDef: 'Inflammation of the tongue.',
    uzDef: "Tilning yallig'lanishi",
    transcript: '[ɡlɑˈsaɪdɪs]',
    favorite: false,
  ),
  Word(
    en: 'Glucose (n)',
    uz: 'glyukoza',
    enDef:
        'Dextrose. A simple six-carbon sugar naturally found in fruits, honey and blood.',
    uzDef:
        'Dekstroz. Oddiy olti uglerodli shakar tabiiy ravishda mevalar, asal va qonda mavjud.',
    transcript: '[ˈɡluːkoʊs]',
    favorite: false,
  ),
  Word(
    en: 'Goiter (n)',
    uz: "bo'qoq",
    enDef: 'Enlargement of the thyroid gland.',
    uzDef: "Qalqonsimon bezning kengayishi.",
    transcript: '[ˈɡɔɪtər]',
    favorite: false,
  ),
  Word(
    en: 'Gonad (n)',
    uz: 'jinsiy bez',
    enDef: 'A sex gland (ovary or testis).',
    uzDef: "Jinsiy bez (tuxumdon yoki moyak).",
    transcript: '[ˈɡoʊnæd]',
    favorite: false,
  ),
  Word(
    en: 'Gonorrhea (n)',
    uz: 'gonoreya',
    enDef:
        'A highly contagious, sexually transmitted bacterial disease of the genital/urinary system.',
    uzDef:
        "Genital/siydik chiqarish tizimining o'ta yuqumli, jinsiy yo'l bilan yuqadigan bakterial kasalligi.",
    transcript: '[ˌɡɑnəˈriə]',
    favorite: false,
  ),
  Word(
    en: 'Gout (n)',
    uz: 'podagra',
    enDef:
        'A form of arthritis caused by deposits of uric acid crystals in the joints, usually the feet, hands and, especially, ...',
    uzDef:
        "Bo'g'imlarda, odatda oyoqlarda, qo'llarda va ayniqsa, siydik kislotasi kristallarining to'planishi natijasida yuzaga keladigan artritning bir shakli ...",
    transcript: '[ɡaʊt]',
    favorite: false,
  ),
  Word(
    en: 'Graft',
    uz: "payvand qilish",
    enDef: 'A piece of skin or other tissue used as a transplant.',
    uzDef:
        "Transplantatsiya sifatida ishlatiladigan teri yoki boshqa to'qimalarning bir qismi.",
    transcript: '[ɡræft]',
    favorite: false,
  ),
  Word(
    en: 'Gram\'s stain (n)',
    uz: "Gram dog'i",
    enDef: 'A stain used as the first step in identifying bacteria.',
    uzDef:
        "Bakteriyalarni aniqlashda birinchi qadam sifatida ishlatiladigan dog 'i.",
    transcript: '[ˈɡræmzsteɪn]',
    favorite: false,
  ),
  Word(
    en: 'grand mal',
    uz: 'grand mal',
    enDef:
        'A major epileptic seizure characterized by convulsions, unconsciousness and sometimes loss of urinary or bowel continence. Usually followed by a…',
    uzDef:
        "Konvulsiyalar, hushidan ketish va ba'zida siydik yoki ichak tutilishining yo'qolishi bilan tavsiflangan yirik epileptik tutilish.  Odatda keyin...",
    transcript: '[ˌɡrænd ˈmæl]',
    favorite: false,
  ),
  Word(
    en: 'Graves\' disease (n)',
    uz: 'Graves kasalligi',
    enDef:
        'Overactive thyroid gland function (hyperthyroidism). Sometimes associated with protrusion of the eyes.',
    uzDef:
        "Qalqonsimon bezning haddan tashqari faol ishlashi (hipertiroidizm).  Ba'zida ko'zning protrusioni bilan bog'liq.",
    transcript: '[ˈɡreɪvz dɪˌziːz]',
    favorite: false,
  ),
  Word(
    en: 'Groin (n)',
    uz: 'chanoq',
    enDef: 'The region of the body where the thigh and lower abdomen meet.',
    uzDef: "Tananing son va qorinning pastki qismi uchrashadigan hududi.",
    transcript: '[ɡrɔɪn]',
    favorite: false,
  ),
  Word(
    en: 'Guillain-Barre syndrome (n)',
    uz: 'Guillain-Barre sindromi',
    enDef:
        'A rare but reversible reaction to a viral illness or immunization that causes partial to complete loss of movement of…',
    uzDef:
        "Virusli kasallik yoki immunizatsiyaga kamdan-kam uchraydigan, ammo qaytariladigan reaktsiya, bu harakatning qisman to'liq yo'qolishiga olib keladi ...",
    transcript: '[ˌɡē-ˌlan-ˌbä-ˈrā ˈsin-ˌdrōm]',
    favorite: false,
  ),
  Word(
    en: 'Gynecology (n)',
    uz: 'ginekologiya',
    enDef:
        'The branch of medicine that deals with the study and treatment of reproductive diseases in women.',
    uzDef:
        'Ayollarning reproduktiv kasalliklarini o\'rganish va davolash bilan shug\'ullanadigan tibbiyot sohasi.',
    transcript: '[ˌɡaɪnəˈkɑlədʒi]',
    favorite: false,
  ),
  Word(
    en: 'Gynecomastia (n)',
    uz: 'jinekomastiya',
    enDef:
        'Overdevelopment of male breast tissue. Usually benign and temporary.',
    uzDef:
        "Erkak ko'krak to'qimalarining haddan tashqari rivojlanishi. Odatda yaxshi va vaqtinchalik.",
    transcript: '[ˌɡaɪnəˌkoʊˈmæstiə]',
    favorite: false,
  ),
  Word(
    en: 'Halitosis (n)',
    uz: 'halitoz',
    enDef: 'Bad breath.',
    uzDef: 'Yomon nafas.',
    transcript: '[ˌhæləˈtoʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Hallucination (n)',
    uz: 'gallyutsinatsiya',
    enDef:
        'The sensory perception of sights, sounds or objects that don’t really exist.',
    uzDef:
        "Haqiqatan ham mavjud bo'lmagan diqqatga sazovor joylar, tovushlar yoki narsalarni hissiy idrok etish.",
    transcript: '[həˌluːsəˈneɪʃ(ə)n]',
    favorite: false,
  ),
  Word(
    en: 'Hammer (n)',
    uz: 'bolg\'a',
    enDef: 'The malleus, a hammer-shaped bone in the middle ear.',
    uzDef: "Malleus, o'rta quloqdagi bolg'a shaklidagi suyak.",
    transcript: '[ˈhæmər]',
    favorite: false,
  ),
  Word(
    en: 'Hamstring (n)',
    uz: 'son mushaklari',
    enDef: 'The tendon located in the back of the knee and lower thigh.',
    uzDef:
        "Tendon tizzaning orqa qismida va sonning pastki qismida joylashgan.",
    transcript: '[ˈhæmˌstrɪŋ]',
    favorite: false,
  ),
  Word(
    en: 'Hand-foot-and-mouth disease (n)',
    uz: 'qo\'l-oyoq-og\'iz kasalligi',
    enDef:
        'A viral infection characterized by a blister-like rash of the hands, feet and mouth.',
    uzDef:
        "Qo'llar, oyoqlar va og'izda pufakchali toshmalar bilan tavsiflangan virusli infektsiya.",
    transcript: '[ˌhænd ˈfʊt ənd ˈmaʊθ dɪˈziz]',
    favorite: false,
  ),
  Word(
    en: 'hangnail',
    uz: 'tirnoq',
    enDef: 'A loose piece of skin at one side of a fingernail.',
    uzDef: "Tirnoqning bir tomonida terining bo'shashgan qismi.",
    transcript: '[ˈhæŋˌneɪl]',
    favorite: false,
  ),
  Word(
    en: 'Hansen\'s disease (n)',
    uz: 'Hansen kasalligi',
    enDef: 'Leprosy.',
    uzDef: 'Moxov.',
    transcript: '[ˈhænsənz dɪˌziːz]',
    favorite: false,
  ),
  Word(
    en: 'harelip',
    uz: 'harelip',
    enDef: 'Cleft lip or palate.',
    uzDef: "Yoriq lab yoki tanglay.",
    transcript: '[ˈherˌlɪp]',
    favorite: false,
  ),
  Word(
    en: 'Hashimoto\'s thyroiditis (n)',
    uz: 'Hashimoto tiroiditi',
    enDef:
        'A degenerative autoimmune disease of the thyroid gland that ultimately results in a marked reduction in the amount of thyroid…',
    uzDef:
        "Qalqonsimon bezning degenerativ otoimmün kasalligi, natijada qalqonsimon bez miqdori sezilarli darajada kamayishiga olib keladi ...",
    transcript: '[həˈʃɪməˌtoʊz ˌθaɪrəˈdaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Hay fever (n)',
    uz: 'gul changiga allergiya',
    enDef:
        'Allergic sensitivity to certain mold spores and pollens. Allergic reaction includes sneezing, itchy eyes, sore throat and runny nose.',
    uzDef:
        "Ba'zi mog'or sporalari va gulchanglariga allergik sezuvchanlik. Allergik reaktsiya hapşırma, qichishish ko'zlari, tomoq og'rig'i va burun oqishi kiradi.",
    transcript: '[ˌheɪ ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Heart (n)',
    uz: 'yurak',
    enDef:
        'The hollow, muscular organ responsible for pumping blood through the circulatory system.',
    uzDef:
        'Qon aylanish tizimi orqali qonni haydash uchun mas\'ul bo\'lgan ichi bo\'sh, mushak organi.',
    transcript: '[hɑrt]',
    favorite: false,
  ),
  Word(
    en: 'Heart block (n)',
    uz: 'yurak bloki',
    enDef:
        'A condition in which electrical impulses aren’t properly transmitted from the heart’s upper to the lower chambers.',
    uzDef:
        "Elektr impulslari yurakning yuqori qismidan pastki kameralariga to'g'ri o'tkazilmaydigan holat.",
    transcript: '[ˈhɑrt ˈblɑk]',
    favorite: false,
  ),
  Word(
    en: 'Heart failure (n)',
    uz: 'yurak etishmovchiligi',
    enDef: 'Inability of the heart to adequately pump blood.',
    uzDef: 'Yurakning qonni etarli darajada pompalamasligi.',
    transcript: '[härt ˈfālyər]',
    favorite: false,
  ),
  Word(
    en: 'Heartburn (n)',
    uz: 'yurak urishi',
    enDef:
        'Indigestion. A burning sensation in the chest caused by a reflux of acid into the esophagus or too much acid…',
    uzDef:
        "Ovqat hazm qilish buzilishi. Qizilo'ngachga kislota oqimi yoki juda ko'p kislota tufayli ko'krak qafasidagi yonish hissi ...",
    transcript: '[ˈhärtˌbərn]',
    favorite: false,
  ),
  Word(
    en: 'Heat exhaustion (n)',
    uz: 'issiqlik charchoq',
    enDef:
        'Headache, profuse sweating, weakness, muscle cramps, nausea and vomiting caused by excessive exposure to heat.',
    uzDef:
        "Haddan tashqari issiqlik ta'sirida bosh og'rig'i, kuchli terlash, zaiflik, mushaklarning kramplari, ko'ngil aynishi va qayt qilish.",
    transcript: '[ˈhēt ig-ˈzȯs-chən]',
    favorite: false,
  ),
  Word(
    en: 'Heat stroke (n)',
    uz: 'issiqlik urishi',
    enDef:
        'A serious failure of the body’s heat-regulating mechanism resulting from excessive exposure to intense heat. Also called sunstroke.',
    uzDef:
        "Kuchli issiqlikning haddan tashqari ta'siridan kelib chiqadigan tananing issiqlikni tartibga solish mexanizmining jiddiy buzilishi. Quyosh urishi ham deyiladi.",
    transcript: '[ˈhēt-ˌstrōk]',
    favorite: false,
  ),
  Word(
    en: 'Hemangioma (n)',
    uz: 'gemangioma',
    enDef: 'A tumor or swelling that’s composed of blood vessels.',
    uzDef: "Qon tomirlaridan tashkil topgan shish yoki shish.",
    transcript: '[ˌhēmənˌjēˈōmə]',
    favorite: false,
  ),
  Word(
    en: 'Hematemesis (n)',
    uz: 'gematemez',
    enDef: 'The vomiting of blood.',
    uzDef: 'Qon qusish.',
    transcript: '[ˌhēməˈteməsəs]',
    favorite: false,
  ),
  Word(
    en: 'Hematology (n)',
    uz: 'gematologiya',
    enDef:
        'The branch of medicine that pertains to blood and the organs involved in forming blood.',
    uzDef:
        "Tibbiyotning qon va qon hosil bo'lishida ishtirok etuvchi organlarga tegishli bo'limi.",
    transcript: '[ˌhēməˈtälədʒē]',
    favorite: false,
  ),
  Word(
    en: 'Hematoma (n)',
    uz: 'gematoma',
    enDef:
        'A tumor-like mass of coagulated blood in the soft tissues. A contusion or bruise.',
    uzDef:
        "Yumshoq to'qimalarda koagulyatsiyalangan qonning o'simtaga o'xshash massasi. Kontuziya yoki ko'karish.",
    transcript: '[ˌhēməˈtōmə]',
    favorite: false,
  ),
  Word(
    en: 'Hematuria (n)',
    uz: 'gematuriya',
    enDef: 'The presence of blood in the urine.',
    uzDef: 'Siydikda qon mavjudligi.',
    transcript: '[ˌhēməˈt(y)o͝orēə]',
    favorite: false,
  ),
  Word(
    en: 'Hemiplegia (n)',
    uz: 'hemipleji',
    enDef: 'Paralysis (loss of feeling or movement) of one side of the body.',
    uzDef: "Tananing bir tomonida falaj (his yoki harakatni yo'qotish).",
    transcript: '[ˌheməˈplēj(ē)ə]',
    favorite: false,
  ),
  Word(
    en: 'Hemochromatosis (n)',
    uz: 'gemokromatoz',
    enDef:
        'A disorder of iron metabolism characterized by excessive amounts of iron in the skin, liver and other tissues.',
    uzDef:
        "Teri, jigar va boshqa to'qimalarda temirning ortiqcha miqdori bilan tavsiflangan temir almashinuvining buzilishi",
    transcript: '[ˌhēməˌkrōməˈtōsis]',
    favorite: false,
  ),
  Word(
    en: 'Hemoglobin (n)',
    uz: 'gemoglobin',
    enDef: 'The oxygen-carrying molecule in red blood cells.',
    uzDef: 'Qizil qon hujayralarida kislorod tashuvchi molekula.',
    transcript: '[ˈhēməˌɡlōbən]',
    favorite: false,
  ),
  Word(
    en: 'Hemolysis (n)',
    uz: 'gemoliz',
    enDef: 'The destruction of red blood cells.',
    uzDef: "Qizil qon hujayralarini yo'q qilish.",
    transcript: '[hēˈmäləsəs]',
    favorite: false,
  ),
  Word(
    en: 'Hemophilia (n)',
    uz: 'gemofiliya',
    enDef:
        'An inherited disorder, nearly always in males, in which one of the normal blood-clotting factors is deficient.',
    uzDef:
        "Deyarli har doim erkaklarda uchraydigan irsiy kasallik bo'lib, unda qon ivishining oddiy omillaridan biri etishmaydi.",
    transcript: '[ˌhēməˈfilēə]',
    favorite: false,
  ),
  Word(
    en: 'Hemoptysis (n)',
    uz: 'gemoptiz',
    enDef: 'A cough that produces blood.',
    uzDef: 'Qon hosil qiluvchi yo\'tal.',
    transcript: '[hēˈmäptəsəs]',
    favorite: false,
  ),
  Word(
    en: 'Hemorrhage (n)',
    uz: 'qon ketishi',
    enDef: 'Severe bleeding, usually from damage to a blood vessel.',
    uzDef: "Kuchli qon ketishi, odatda qon tomirining shikastlanishidan.",
    transcript: '[ˈhɛmərɪdʒ]',
    favorite: false,
  ),
  Word(
    en: 'Hemorrhoid (n)',
    uz: 'gemoroy',
    enDef: 'An enlarged vein inside or just outside the rectum.',
    uzDef: "Rektumning ichkarisida yoki tashqarisida kattalashgan vena.",
    transcript: '[ˈhem(ə)ˌroid]',
    favorite: false,
  ),
  Word(
    en: 'Hemostasis (n)',
    uz: 'gemostaz',
    enDef: 'Control of bleeding.',
    uzDef: 'Qon ketishini nazorat qilish.',
    transcript: '[ˌhiːmə(ʊ)ˈsteɪsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Hepatic (adj)',
    uz: 'to’plangan',
    enDef: 'Having to do with the liver.',
    uzDef: 'Jigar bilan bog\'liq.',
    transcript: '[hɪˈpatɪk]',
    favorite: false,
  ),
  Word(
    en: 'Hepatitis (n)',
    uz: 'gepatit',
    enDef: 'Inflammation or infection of the liver.',
    uzDef: 'Jigarning yallig\'lanishi yoki infektsiyasi.',
    transcript: '[ˌhepəˈtaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Heredity (n)',
    uz: 'o’liklik',
    enDef: 'Transmission of genetic traits from parents to children.',
    uzDef: 'Genetik xususiyatlarni ota-onalardan bolalarga etkazish.',
    transcript: '[hɪˈrɛdɪti]',
    favorite: false,
  ),
  Word(
    en: 'Hermaphrodite (n)',
    uz: 'germafrodit',
    enDef: 'A person with both male and female sex organs.',
    uzDef: 'Ham erkak, ham ayol jinsiy a\'zolari bo\'lgan odam.',
    transcript: '[hɜːˈmæfrədæɪt]',
    favorite: false,
  ),
  Word(
    en: 'Hernia (n)',
    uz: 'churra',
    enDef:
        'An abnormal protrusion of part of an organ through an abnormal opening.',
    uzDef:
        'G\'ayritabiiy ochilish orqali organning bir qismini g\'ayritabiiy chiqarib tashlanishi.',
    transcript: '[ˈhɜːnɪə]',
    favorite: false,
  ),
  Word(
    en: 'Herpes (n)',
    uz: 'herpes',
    enDef:
        'A recurring viral skin infection characterized by clusters of small blisters. Typically, sores are located near the mouth (fever blisters…',
    uzDef:
        'Kichik blisterlar to\'plamlari bilan tavsiflanadigan takroriy virusli teri infektsiyasi. Odatda, yaralar og\'izning yaqinida joylashgan (isitma shishi ...',
    transcript: '[ˈhɜːpiːz]',
    favorite: false,
  ),
  Word(
    en: 'Heterosexual (adj)',
    uz: 'geteroseksual',
    enDef: 'Having to do with the opposite sex.',
    uzDef: 'Qarama-qarshi jins bilan bog\'liq.',
    transcript: '[het(ə)rə(ʊ)ˈsekʃʊəl]',
    favorite: false,
  ),
  Word(
    en: 'Hexachlorophene (n)',
    uz: 'geksaxlorofen',
    enDef: 'A detergent that kills germs.',
    uzDef: 'Mikroblarni o\'ldiradigan detarjen.',
    transcript: '[heksəˈklôrəfēn]',
    favorite: false,
  ),
  Word(
    en: 'Hiccup (n)',
    uz: 'hiqchoq',
    enDef:
        'A sudden, involuntary spasm of the diaphragm. The sound of hiccups is caused by the sudden intake of air.',
    uzDef:
        'Diafragmaning birdaniga, bebosh spazmi. Hiqichoqlar tovushi havoning to\'satdan iste\'mol qilinishi natijasida yuzaga keladi.',
    transcript: '[ˈhɪkʌp]',
    favorite: false,
  ),
  Word(
    en: 'Hidradenitis (n)',
    uz: 'hidradenit',
    enDef: 'Inflammation of the sweat glands.',
    uzDef: 'Ter bezlari yallig\'lanishi.',
    transcript: '[hidrəˈdɛnɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Hip (n)',
    uz: 'bel',
    enDef:
        'The part of the body surrounding the joint between the femur and pelvic bones.',
    uzDef:
        'Tananing femur va tos suyaklari orasidagi bo\'g\'inni o\'rab turgan qismi.',
    transcript: '[hɪp]',
    favorite: false,
  ),
  Word(
    en: 'Hirsutism (n)',
    uz: 'hirsutizm',
    enDef:
        'Excessive hair growth, usually on the face and chest. Often caused by an imbalance in hormones.',
    uzDef:
        'Sochlarning haddan tashqari o\'sishi, odatda yuz va ko\'krak qafasida. Ko\'pincha gormonlardagi muvozanat tufayli yuzaga keladi.',
    transcript: '[ˈhɜːsjuːtɪz(ə)m]',
    favorite: false,
  ),
  Word(
    en: 'Histamine (n)',
    uz: 'gistamin',
    enDef:
        'A substance released from certain cells in response to allergens, associated with the development of allergic symptoms, including itchy eyes,…',
    uzDef:
        'Allergik alomatlar, shu jumladan qichishqoq ko\'zlar rivojlanishi bilan bog\'liq allergenlarga javoban ayrim hujayralardan chiqarilgan modda.',
    transcript: '[ˈhɪstəmiːn]',
    favorite: false,
  ),
  Word(
    en: 'Histoplasmosis (n)',
    uz: 'histoplazmoz',
    enDef:
        'A fungal disease caused by inhaling the spores of Histoplasma capsulatum.',
    uzDef:
        'Histoplazma kapsulatumining sporalarini nafas olish natijasida yuzaga keladigan qo\'ziqorin kasalligi.',
    transcript: '[histōplazˈmōsis]',
    favorite: false,
  ),
  Word(
    en: 'HIV (n)',
    uz: 'OIV',
    enDef:
        'Human immunodeficiency virus. A virus that slowly destroys the immune system. The virus that causes AIDS.',
    uzDef:
        'Inson immunodefitsit virusi. Immun tizimini sekin-asta yo\'q qiluvchi virus. SPIDni keltirib chiqaradigan virus.',
    transcript: '[eɪtʃ aɪ vi]',
    favorite: false,
  ),
  Word(
    en: 'Hives (n)',
    uz: 'uyalar',
    enDef: 'A skin reaction characterized by swelling, itching and burning.',
    uzDef:
        'Shishish, qinish va yonish bilan xarakterlanadigan teri reaktsiyasi.',
    transcript: '[ haɪvz ]',
    favorite: false,
  ),
  Word(
    en: "Hodgkin's disease (n.phrase)",
    uz: 'Xodgkin kasalligi',
    enDef:
        'A progressive form of lymphoma usually characterized by weakness, swollen lymph nodes, sweating, fever and weight loss.',
    uzDef:
        'Limfomaning progressiv shakli odatda zaiflik, shishgan limfa tugunlari, terlash, isitma va vazn yo\'qotish bilan tavsiflanadi.',
    transcript: '[ hɒdʒkɪnz dɪˌziːz ]',
    favorite: false,
  ),
  Word(
    en: "Homeopathy (n)",
    uz: 'homeopatiya',
    enDef:
        'Medical treatment based on the theory that certain diseases can be cured by giving very small doses of substances that,…',
    uzDef:
        'Ba\'zi kasalliklarni juda kichik dozadagi moddalarni berish orqali davolash mumkin degan nazariyaga asoslangan tibbiy davolash.',
    transcript: '[ ˌhəʊmɪˈɒpəθɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Homogenize (v)',
    uz: 'homogenlash',
    enDef: 'To make more uniform in quality or consistency.',
    uzDef: 'Sifat yoki mustahkamlik bo\'yicha bir xillik qilish.',
    transcript: '[ həˈmɒdʒənaɪz ]',
    favorite: false,
  ),
  Word(
    en: 'Hordeolum (n)',
    uz: 'hordeolum',
    enDef: 'Inflammation of a gland on the eyelid. Also called a stye.',
    uzDef:
        'Ko’z qovog’ining yallig’lnishi. Shuningdek, arpabodiyon deb ataladi.',
    transcript: '[ hɔːrˈdiːələm ]',
    favorite: false,
  ),
  Word(
    en: 'Hormone (n)',
    uz: 'gormon',
    enDef:
        'A substance formed in an organ of the body and carried by body fluids to another organ or tissue, where…',
    uzDef:
        'Tana a\'zolarida hosil bo\'lgan va tana suyuqliklari orqali boshqa organ yoki to\'qimalarga o\'tkaziladigan modda.',
    transcript: '[ ˈhɔːməʊn ]',
    favorite: false,
  ),
  Word(
    en: 'Host (n)',
    uz: 'mezbon',
    enDef:
        'An organism that harbors and provides sustenance for another organism.',
    uzDef:
        'Boshqa organizmni o’z ichiga olgan va oziq-ovqat bilan ta\'minlaydigan organizm.',
    transcript: '[ həʊst ]',
    favorite: false,
  ),
  Word(
    en: "housemaid's knee (n)",
    uz: 'uy xizmatkorining tizzasi',
    enDef:
        'Swelling just below the kneecap, caused by the buildup of fluid in response to the constant pressure of kneeling.',
    uzDef:
        'Tiz cho\'kishning doimiy bosimiga javoban suyuqlikning to\'planishi natijasida paydo bo\'ladigan tizza qopqog\'i ostidagi shish.',
    transcript: '[ ˈhaʊsmeɪd`s niː ]',
    favorite: false,
  ),
  Word(
    en: "Humerus (n)",
    uz: 'humerus',
    enDef: 'The bone in the upper arm.',
    uzDef: 'Qo\'lning yuqori qismidagi suyak.',
    transcript: '[ ˈhjuːm(ə)rəs ]',
    favorite: false,
  ),
  Word(
    en: 'Humidifier (n)',
    uz: 'namlagich',
    enDef: 'A device for adding moisture to the air.',
    uzDef: 'Havoga namlik qo\'shish uchun qurilma.',
    transcript: '[ hjʊˈmɪdɪfaɪə ]',
    favorite: false,
  ),
  Word(
    en: "Huntington's chorea (n)",
    uz: 'Xantington xoreasi',
    enDef:
        'A hereditary form of chorea (sudden, jerky motions of the arms or other parts of the body) that usually affects…',
    uzDef:
        'Xoreaning irsiy shakli (qo\'llarning yoki tananing boshqa qismlarining to\'satdan, tebranish harakatlari) odatda ta\'sir qiladi.',
    transcript: '[ kɒˈrɪə ]',
    favorite: false,
  ),
  Word(
    en: "Hydatid (n)",
    uz: 'hidatid',
    enDef:
        'A cyst containing watery fluid and the larvae of certain tapeworms.',
    uzDef:
        'Suvli suyuqlik va ma\'lum tasmasimon chuvalchanglarning lichinkalarini o\'z ichiga olgan kista.',
    transcript: '[ ˈhīdədəd ]',
    favorite: false,
  ),
  Word(
    en: 'hydatid disease (n)',
    uz: 'hidatid kasalligi',
    enDef: 'Infection with the larvae (cysts) of certain tapeworms.',
    uzDef:
        'Ba\'zi tasmasimon qurtlarning lichinkalari (kistalari) bilan infektsiya.',
    transcript: '[ ˈhīdədəd dɪˈziːz ]',
    favorite: false,
  ),
  Word(
    en: 'hydatidiform mole (n)',
    uz: 'hidatidiform mol',
    enDef:
        'A cystic tumor of the placental tissues of an abnormal pregnancy. Complications of this disorder include bleeding and infection.',
    uzDef:
        'Anormal homiladorlikning platsenta to\'qimalarining kistli shishi. Ushbu buzuqlikning asoratlari qon ketish va infektsiyani o\'z ichiga oladi.',
    transcript: '[ ˌhīdəˈtidəfôrm ˌmōl ]',
    favorite: false,
  ),
  Word(
    en: 'Hydrocele (n)',
    uz: 'gidrosele',
    enDef:
        'A painless swelling of the scrotum caused by the buildup of fluid in the outer covering of the testes.',
    uzDef:
        'Moyaklarning tashqi qoplamida suyuqlik to\'planishi natijasida yuzaga keladigan skrotumning og\'riqsiz shishishi.',
    transcript: '[ ˈhīdrəˌsēl ]',
    favorite: false,
  ),
  Word(
    en: 'Hydrocephalus (n)',
    uz: 'gidrosefali',
    enDef:
        'An enlargement of the head caused by the buildup of fluid within the ventricles of the brain. Also called “water’’.',
    uzDef:
        'Miya qorinchalarida suyuqlik to\'planishi natijasida yuzaga keladigan boshning kengayishi. Shuningdek suv deb ham ataladi.',
    transcript: '[ ˌhaɪdrəˈsef(ə)ləs ]',
    favorite: false,
  ),
  Word(
    en: 'Hygiene (n)',
    uz: 'gigiena',
    enDef: 'The science of health and its maintenance.',
    uzDef: 'Salomatlik va uni saqlash haqidagi fan.',
    transcript: '[ ˈhaɪdʒiːn ]',
    favorite: false,
  ),
  Word(
    en: 'Hymen (n)',
    uz: 'qizlik pardasi',
    enDef:
        'The membrane partly or completely closing the opening to the vagina.',
    uzDef: 'Qin teshigini qisman yoki to\'liq yopuvchi membrana.',
    transcript: '[ ˈhaɪmən ]',
    favorite: false,
  ),
  Word(
    en: 'Hyperbaric (n)',
    uz: 'giperbarik',
    enDef:
        'Characterized by greater-than-normal pressure. Hyperbaric oxygen is a therapeutic treatment designed to increase blood oxygen by delivering oxygen in a…',
    uzDef:
        'Normaldan yuqori bosim bilan tavsiflanadi. Giperbarik kislorod - bu kislorodni kislorod bilan ta\'minlash orqali qon kislorodini ko\'paytirish uchun mo\'ljallangan terapevtik davolash.',
    transcript: '[ ˌhæɪpəˈbærɪk ]',
    favorite: false,
  ),
  Word(
    en: 'hyperemesis gravidarum (n)',
    uz: 'giperemezis gravidarum',
    enDef: 'Excessive morning sickness.',
    uzDef:
        'Haddan tashqari ertalab kasallik; homiladorlik paytida ko\'p qusish.',
    transcript: '[ haɪpərˈɛməsɪs ˌɡrævɪˈdɑːrəm ]',
    favorite: false,
  ),
  Word(
    en: 'Hyperglycemic (n)',
    uz: 'giperglikemik',
    enDef: 'High blood sugar.',
    uzDef: 'Yuqori qon shakar.',
    transcript: '[ haɪpəˈglisimik ]',
    favorite: false,
  ),
  Word(
    en: 'Hyperparathyroidism (n)',
    uz: 'giperparatiroidizm',
    enDef:
        'A condition caused by the overexcretion of parathyroid hormone resulting in changes in the bone and an elevated level of…',
    uzDef:
        'Paratiroid gormonining haddan tashqari ajralishi natijasida kelib chiqadigan holat, natijada suyak o\'zgarishi va uning darajasi ko\'tariladi ...',
    transcript: '[ haipərperədīroidizəm ]',
    favorite: false,
  ),
  Word(
    en: 'Hypertension (n)',
    uz: 'gipertoniya',
    enDef: 'Abnormally high blood pressure.',
    uzDef: 'Anormal yuqori qon bosimi.',
    transcript: '[ haɪpəˈtenʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Hyperthyroidism (n)',
    uz: 'gipertiroidizm',
    enDef: 'Overproduction of thyroid hormone.',
    uzDef: 'Qalqonsimon bez gormonining ortiqcha ishlab chiqarilishi.',
    transcript: '[ haɪpəˈθaɪrɔɪdɪz(ə)m ]',
    favorite: false,
  ),
  Word(
    en: 'Hyperventilation (n)',
    uz: 'giperventiliya',
    enDef:
        'Rapid or deep breathing producing faintness, numbness, chest pain, apprehension and tingling, and spasms of the extremities.',
    uzDef:
        'Tez yoki chuqur nafas olish hushidan ketish, uyqusizlik, ko\'krak og\'rig\'i, qo\'rquv va karıncalanma, ekstremitalarning spazmlarini keltirib chiqaradi.',
    transcript: '[ haɪpəˌventɪˈleɪʃən ]',
    favorite: false,
  ),
  Word(
    en: 'Hypnosis (n)',
    uz: 'gipnoz',
    enDef: 'A sleep-like state induced by the suggestions of a hypnotist.',
    uzDef:
        'Gipnozchining tavsiyalari bilan yuzaga kelgan uyquga o\'xshash holat.',
    transcript: '[ hɪpˈnəʊsɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Hypnotic (adj)',
    uz: 'gipnozga oid',
    enDef: '1. Having to do with hypnosis. 2. Causing sleep.',
    uzDef: '1. Gipnoz bilan bog\'liq bo\'lish. 2. Uyquga sabab bo\'lish.',
    transcript: '[ hɪpˈnɒtɪk ]',
    favorite: false,
  ),
  Word(
    en: 'Hypochondriac (n)',
    uz: 'gipoxondriya',
    enDef:
        'Abnormal anxiety about one’s health, often to the point of believing one is suffering from a serious disease.',
    uzDef:
        'Biror kishining sog\'lig\'i haqida g\'ayritabiiy tashvish, ko\'pincha jiddiy kasallikdan aziyat chekayotganiga ishonish darajasiga qadar.',
    transcript: '[ haɪpə(ʊ)ˈkɒndrɪak ]',
    favorite: false,
  ),
  Word(
    en: 'Hypodermic (adj)',
    uz: 'gipodermik',
    enDef: 'Beneath the skin.',
    uzDef: 'Teri ostiga aloqador.',
    transcript: '[ haɪpə(ʊ)ˈdɜːmɪk ]',
    favorite: false,
  ),
  Word(
    en: 'Hypoglycemia (n)',
    uz: 'gipoglikemiya',
    enDef: 'Low blood sugar.',
    uzDef: 'Past qon shakar.',
    transcript: '[ ˌhaɪpoʊɡlaɪˈsiːmiə ]',
    favorite: false,
  ),
  Word(
    en: 'Hypoparathyroidism (n)',
    uz: 'gipoparatireoz',
    enDef:
        'Parathyroid hormone insufficiency due to lack of secretion of the parathyroid gland.',
    uzDef:
        'Paratiroid bezining sekretsiyasi yo\'qligi sababli paratiroid gormoni etishmovchiligi.',
    transcript: '[ haɪpəʊˌparəˈθaɪrɔɪdɪz(ə)m ]',
    favorite: false,
  ),
  Word(
    en: 'Hypopituitarism (n)',
    uz: 'gipopituitarizm',
    enDef:
        'Deficient activity of the pituitary gland causing slowed growth in children, fatigue and decreased appetite in adults, and cessation of…',
    uzDef:
        'Gipofiz bezining kam faoliyati bolalarda o\'sishning sekinlashishiga, kattalarda charchoq va ishtahaning pasayishi.',
    transcript: '[ haɪpəʊpɪˈtjuːɪt(ə)rɪz(ə)m ]',
    favorite: false,
  ),
  Word(
    en: 'Hyposensitization (n)',
    uz: 'giposensibilizatsiya',
    enDef:
        'To treat with frequent, small injections of an antigen to decrease the symptoms of an allergy to that antigen.',
    uzDef:
        'Ushbu antigenga allergiya alomatlarini kamaytirish uchun tez-tez, kichik antigen in\'ektsiyalari bilan davolash.',
    transcript: '[ ˈhaɪpəʊˈsensɪtaɪzeɪʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Hypospadias (n)',
    uz: 'gipospadias',
    enDef:
        'An abnormal opening of the urethra on the underside of the penis or into the vagina.',
    uzDef:
        'Jinsiy olatni pastki qismida yoki qinga uretraning g\'ayritabiiy ochilishi.',
    transcript: '[ ˈhaɪpəʊspadyas ]',
    favorite: false,
  ),
  Word(
    en: 'Hypothalamus (n)',
    uz: 'gipotalamus',
    enDef:
        'The portion of the brain responsible for temperature regulation and control of the pituitary gland.',
    uzDef:
        'Miyaning haroratni tartibga solish va gipofiz bezini boshqarish uchun mas\'ul bo\'lgan qismi.',
    transcript: '[ hæɪpə(ʊ)ˈθæləməs ]',
    favorite: false,
  ),
  Word(
    en: 'Hypothermia (n)',
    uz: 'gipotermiya',
    enDef: 'Low body temperature.',
    uzDef: 'Past tana harorati.',
    transcript: '[ haɪpə(ʊ)ˈθɜːmɪə ]',
    favorite: false,
  ),
  Word(
    en: 'hypothyroidism (n)',
    uz: 'gipotiroidizm',
    enDef:
        'A condition of low thyroid hormone production resulting in weight gain, hair loss, sluggishness and thickening of the skin.',
    uzDef:
        'Og\'irlik, soch to\'kilishi, terining sustligi va qalinlashishiga olib keladigan kam qalqonsimon gormon ishlab chiqarish holati.',
    transcript: '[ haɪpəʊˈθaɪrɔɪdɪz(ə)m ]',
    favorite: false,
  ),
  Word(
    en: 'Hypoxia (n)',
    uz: 'gipoksiya',
    enDef:
        'An abnormal condition resulting from decreased availability of oxygen in the body tissues.',
    uzDef:
        'Tana to\'qimalarida kislorod etishmasligidan kelib chiqadigan g\'ayritabiiy holat.',
    transcript: '[ haɪˈpɒksɪə ]',
    favorite: false,
  ),
  Word(
    en: 'Hysterectomy (n)',
    uz: 'histerektomiya',
    enDef: 'Surgical removal of all or part of the uterus.',
    uzDef:
        'Bachadonning to\'liq yoki bir qismini jarrohlik yo\'li bilan olib tashlash.',
    transcript: '[ ˌhɪstəˈrektəmɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Hysteria (n)',
    uz: 'isteriya',
    enDef:
        '1. Wild, uncontrolled excitement or other feelings. 2. A disorder in which anxiety is converted into physical symptoms that have…',
    uzDef:
        '1. Yovvoyi, nazoratsiz hayajon yoki boshqa his-tuyg\'ular. 2. Anksiyete jismoniy alomatlarga aylanadigan kasallik ...',
    transcript: '[ hɪˈstɪərɪə ]',
    favorite: false,
  ),
  Word(
    en: 'Iatrogenic (adj)',
    uz: 'yatrogenik',
    enDef: 'Resulting from medical treatment.',
    uzDef: 'Tibbiy davolanish natijasida.',
    transcript: '[ aɪˌatrə(ʊ)ˈdʒenɪk ]',
    favorite: false,
  ),
  Word(
    en: 'Ichthyosis (n)',
    uz: 'ixtyoz',
    enDef: 'An inherited skin disorder that produces dry, rough, scaly skin.',
    uzDef: 'Quruq, dag\'al, qoraygan teri hosil qiluvchi irsiy teri kasalligi.',
    transcript: '[ ˌɪkθɪˈəʊsɪs ]',
    favorite: false,
  ),
  Word(
    en: 'identical twins (n)',
    uz: 'ayni bir xil egizaklar',
    enDef:
        'Twins formed from a single egg. They are of the same gender and have the same genetic makeup.',
    uzDef:
        'Egizaklar bitta tuxumdan hosil bo\'lgan. Ular bir xil jinsga ega va bir xil genetik tarkibga ega.',
    transcript: '[ aɪˈdentɪk(ə)l twɪnz ]',
    favorite: false,
  ),
  Word(
    en: 'Idiopathic (adj)',
    uz: 'idyopatik',
    enDef: 'Without a known cause.',
    uzDef: 'Ma\'lum sababsiz.',
    transcript: '[ ˌɪdɪə(ʊ)ˈpaθɪk ]',
    favorite: false,
  ),
  Word(
    en: 'Ileitis (n)',
    uz: 'ileitis',
    enDef: 'Inflammation of the lower part of the small intestine.',
    uzDef: 'Ingichka ichakning pastki qismining yallig\'lanishi.',
    transcript: '[ ˌɪlɪˈaɪtɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Ileum (n)',
    uz: 'yonbosh ichak',
    enDef: 'The lower part of the small intestine.',
    uzDef: 'Ingichka ichakning pastki qismi.',
    transcript: '[ ˈɪlɪəm ]',
    favorite: false,
  ),
  Word(
    en: 'Ileus (n)',
    uz: 'ileus',
    enDef:
        'Lack of movement of digested food and juices through the gastrointestinal tract. May be due to a blockage of the…',
    uzDef:
        'Oshqozon-ichak trakti orqali hazm qilingan oziq-ovqat va sharbatlarning harakatlanishining etishmasligi. Tiqilib qolganligi sababli bo\'lishi mumkin.',
    transcript: '[ ˈɪlɪəs ]',
    favorite: false,
  ),
  Word(
    en: 'Ilium (n)',
    uz: 'ilium',
    enDef: 'The flared portion of the pelvis. The hip bone.',
    uzDef: 'Tos suyagining kengaygan qismi. Son suyagi.',
    transcript: '[ ˈɪlɪəm ]',
    favorite: false,
  ),
  Word(
    en: 'IM (adj)',
    uz: 'IM',
    enDef: 'Intramuscular.',
    uzDef: 'Mushak ichiga oid.',
    transcript: '[ ai em ]',
    favorite: false,
  ),
  Word(
    en: 'Immune (adj)',
    uz: 'immunitetga oid',
    enDef: 'Resistant to a particular disease.',
    uzDef: 'Muayyan kasallikka chidamli.',
    transcript: '[ ɪˈmjuːn ]',
    favorite: false,
  ),
  Word(
    en: 'Immunity (n)',
    uz: 'immunitet',
    enDef: 'Resistance of the body to infection.',
    uzDef: 'Tananing infektsiyaga chidamliligi.',
    transcript: '[ ɪˈmjuːnɪtɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Immunization (n)',
    uz: 'immunizatsiya',
    enDef:
        'The process of making an individual immune by vaccination or inoculation.',
    uzDef:
        'Emlash yoki emlash orqali individual immunitet hosil qilish jarayoni.',
    transcript: '[ ɪmjʊnaɪˈzeɪʃn ]',
    favorite: false,
  ),
  Word(
    en: 'Immunoglobulin (n)',
    uz: 'immunoglobulin',
    enDef: 'A serum protein involved in immunity. An antibody.',
    uzDef: 'Immunitetda ishtirok etadigan sarum oqsili. Antikor.',
    transcript: '[ ɪmjʊnəʊˈɡlɒbjʊlɪn ]',
    favorite: false,
  ),
  Word(
    en: 'Impetigo (n)',
    uz: 'impetigo',
    enDef:
        'Skin infection characterized by erupting sores. Caused by staphylococcus or streptococcus bacteria.',
    uzDef:
        'Yaralar paydo bo\'lishi bilan tavsiflangan teri infektsiyasi. Stafilokokk yoki streptokokk bakteriyalari sabab bo\'ladi.',
    transcript: '[ ɪmpɪˈtaɪɡəʊ ]',
    favorite: false,
  ),
  Word(
    en: 'Impotence (n)',
    uz: 'ojizlik',
    enDef: 'Inability of a male to achieve erection and orgasm.',
    uzDef: 'Erkakning erektsiya va orgazmga erisha olmasligi.',
    transcript: '[ ɪmpət(ə)ns ]',
    favorite: false,
  ),
  Word(
    en: 'in situ (n)',
    uz: 'joyida (Saratonni ham anglatadi)',
    enDef:
        'In its original place. Carcinoma in situ means cancer that hasn’t spread to other locations.',
    uzDef:
        'Asl joyida. In situ karsinoma boshqa joylarga tarqalmagan saratonni anglatadi.',
    transcript: '[ ]',
    favorite: false,
  ),
  Word(
    en: 'Incision (n)',
    uz: 'kesma',
    enDef: 'A cut.',
    uzDef: 'Kesish.',
    transcript: '[ ɪnˈsɪʒ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Incisor (n)',
    uz: 'kesuvchi',
    enDef: 'Any of the front four teeth on either the upper or lower jaw.',
    uzDef:
        'Tish yuqori yoki pastki jag\'dagi oldingi to\'rtta tishning har qanday qismi.',
    transcript: '[ ɪnˈsaɪzə ]',
    favorite: false,
  ),
  Word(
    en: 'Incompetent (adj)',
    uz: 'qobiliyatsiz',
    enDef: '1. Unable to make rational decisions. 2. Not functioning properly.',
    uzDef:
        '1. Oqilona qarorlar qabul qila olmaydigan. 2. To\'g\'ri ishlamaydi.',
    transcript: '[ ɪnˈkɒmpɪt(ə)nt ]',
    favorite: false,
  ),
  Word(
    en: 'Incontinence (n)',
    uz: 'inkontinans',
    enDef: 'Inability to hold urine or feces.',
    uzDef: 'Siydik yoki najasni ushlab turolmaslik.',
    transcript: '[ ɪnˈkɒntɪnəns ]',
    favorite: false,
  ),
  Word(
    en: 'Incubate (v)',
    uz: 'inkubatsiya qilish',
    enDef: 'To provide the proper conditions for growth.',
    uzDef: 'O\'sish uchun qulay sharoitlarni ta\'minlash.',
    transcript: '[ ˈɪŋkjʊbeɪt ]',
    favorite: false,
  ),
  Word(
    en: 'Indigestion (n)',
    uz: 'ovqat hazm qilish buzilishi',
    enDef:
        'Upper abdominal discomfort usually experienced after a meal due to incomplete digestion.',
    uzDef:
        'Qorinning yuqori qismidagi noqulaylik odatda ovqat hazm qilishning to\'liq bo\'lmaganligi sababli ovqatdan keyin paydo bo\'ladi.',
    transcript: '[ ɪndɪˈdʒestʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Induration (n)',
    uz: 'chidamlilik',
    enDef: 'The process of hardening. An abnormally hard spot.',
    uzDef: 'Qattiqlashuv jarayoni. Anormal darajada qattiq nuqta.',
    transcript: '[ ˌɪndjʊəˈreɪʃən ]',
    favorite: false,
  ),
  Word(
    en: 'Infarct (n)',
    uz: 'infarkt',
    enDef:
        'An area of dead or dying tissue produced by lack of blood flow to or from that area.',
    uzDef:
        'O\'lik yoki o\'layotgan to\'qimalarning maydoni, bu hududga yoki undan qon oqimining etishmasligi natijasida hosil bo\'ladi.',
    transcript: '[ ˈɪnfɑːkt ]',
    favorite: false,
  ),
  Word(
    en: 'Infection (n)',
    uz: 'infektsiya',
    enDef:
        'Causing disease, especially by the presence of foreign microorganisms in the body, including bacteria, viruses or parasites.',
    uzDef:
        'Ayniqsa, organizmda begona mikroorganizmlar, shu jumladan bakteriyalar, viruslar yoki parazitlar mavjudligi sababli kasallikni keltirib chiqaradi.',
    transcript: '[ ɪnˈfekʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'infectious disease (n)',
    uz: 'yuqumli kasallik',
    enDef: 'A disease that can be spread from one person to another.',
    uzDef: 'Bir odamdan boshqasiga yuqadigan kasallik.',
    transcript: '[ ɪnˈfekʃəs dɪˈziːz ]',
    favorite: false,
  ),
  Word(
    en: 'Infertility (n)',
    uz: 'bepushtlik',
    enDef: 'Inability to produce children.',
    uzDef: 'Bolalarni tug\'dira olmaslik.',
    transcript: '[ ˌɪnfɜːˈtɪlətɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Inflammation (n)',
    uz: 'yallig\'lanish',
    enDef:
        'Swelling, redness, warmth and pain. A body tissue’s protective response to injury.',
    uzDef:
        'Shishish, qizarish, issiqlik va og\'riq. Tana to\'qimalarining shikastlanishga himoya reaktsiyasi.',
    transcript: '[ ɪnfləˈmeɪʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Influenza (n)',
    uz: 'gripp',
    enDef:
        'A contagious and infectious respiratory illness usually occurring in the winter.',
    uzDef:
        'Yuqumli va yuqumli respirator kasallik odatda qishda sodir bo\'ladi.',
    transcript: '[ ɪnflʊˈenzə ]',
    favorite: false,
  ),
  Word(
    en: 'ingrown nail (n)',
    uz: 'o\'sgan tirnoq',
    enDef:
        'Edges of the nail become trapped under the skin, causing inflammation and, sometimes, infection.',
    uzDef:
        'Tirnoqning qirralari teri ostiga tushib, yallig\'lanishni va ba\'zan infektsiyani keltirib chiqaradi.',
    transcript: '[ ˈɪnɡrəʊn neɪl ]',
    favorite: false,
  ),
  Word(
    en: 'Injection (n)',
    uz: 'in\'ektsiya',
    enDef: 'A fluid introduced into the body by a syringe and needle.',
    uzDef: 'Shprits va igna bilan tanaga kiritilgan suyuqlik.',
    transcript: '[ ɪnˈdʒekʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Innate (adj)',
    uz: 'tug\'ma',
    enDef: 'Inborn, hereditary.',
    uzDef: 'Tug\'ma, irsiy.',
    transcript: '[ ɪˈneɪt ]',
    favorite: false,
  ),
  Word(
    en: 'Inoculation (n)',
    uz: 'emlash',
    enDef:
        'The injection of a disease agent into the body to cause a mild form of the disease and build immunity.',
    uzDef:
        'Kasallikning engil shaklini keltirib chiqarish va qurish uchun tanaga kasallik agentini yuborish.',
    transcript: '[ ɪˌnɒkjʊˈleɪʃn ]',
    favorite: false,
  ),
  Word(
    en: 'Inoperable (adj)',
    uz: 'ish bermaydigan',
    enDef: 'Not curable through surgery.',
    uzDef: 'Jarrohlik yo\'li bilan davolash mumkin emas.',
    transcript: '[ ɪnˈɒp(ə)rəb(ə)l ]',
    favorite: false,
  ),
  Word(
    en: 'Insanity (n)',
    uz: 'aqldan ozish',
    enDef:
        'Any form or degree of mental disturbance or unsoundness of mind, permanent or temporary, that makes a person incapable of...',
    uzDef:
        'Doimiy yoki vaqtinchalik ruhiy buzilishning har qanday shakli yoki darajasi, odamni qobiliyatsiz qiladigan...',
    transcript: '[ ɪnˈsænətɪ ]',
    favorite: false,
  ),
  Word(
    en: 'Insemination (n)',
    uz: 'urug\'lantirish',
    enDef: 'To deposit sperm in the vagina.',
    uzDef: 'Vaginaga spermani joylashtiris.',
    transcript: '[ ɪnsemɪˈneɪʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Insomnia (n)',
    uz: 'uyqusizlik',
    enDef: 'An inability to fall asleep or to remain asleep.',
    uzDef: 'Uxlab qolmaslik yoki uxlab qolmaslik.',
    transcript: '[ ɪnˈsɒmnɪə ]',
    favorite: false,
  ),
  Word(
    en: 'Insulin (n)',
    uz: 'insulin',
    enDef:
        'The hormone produced by the pancreas for regulating carbohydrate metabolism. Used in the treatment of diabetes mellitus.',
    uzDef:
        'Ug\'ovod almashinuvini tartibga solish uchun oshqozon osti bezi tomonidan ishlab chiqariladigan gormon. Qandli diabetni davolashda ishlatiladi.',
    transcript: '[ ˈɪnsjʊlɪn ]',
    favorite: false,
  ),
  Word(
    en: 'Integument (n)',
    uz: 'integument',
    enDef: 'Skin.',
    uzDef: 'Teri.',
    transcript: '[ ɪnˈteɡjʊmənt ]',
    favorite: false,
  ),
  Word(
    en: 'Intercourse (n)',
    uz: 'jinsiy aloqa',
    enDef:
        'The exchange of communication between individuals. Sexual intercourse is the sexual joining of two people; coitus.',
    uzDef:
        'Shaxslar o\'rtasidagi aloqa almashinuvi. Jinsiy aloqa - ikki kishining jinsiy qo\'shilishi; jinsiy aloqa.',
    transcript: '[ ˈɪntəkɔːs ]',
    favorite: false,
  ),
  Word(
    en: 'Intestine (n)',
    uz: 'ichak',
    enDef:
        'The tube involved in digestion and extending from the stomach to the anus. Consists of the small intestine and the...',
    uzDef:
        'Ovqat hazm qilishda ishtirok etadigan va oshqozondan anusgacha cho\'zilgan naycha.',
    transcript: '[ ɪnˈtestɪn ]',
    favorite: false,
  ),
  Word(
    en: 'Intoxication (n)',
    uz: 'zaharlanish',
    enDef:
        'Poisoning, or the state of being affected by a poisonous substance. Often used to describe drunkenness.',
    uzDef:
        'Zaharlanish yoki zaharli moddadan ta\'sirlanish holati. Ko\'pincha mastlikni tasvirlash uchun ishlatiladi.',
    transcript: '[ ɪnˌtɒksɪˈkeɪʃn ]',
    favorite: false,
  ),
  Word(
    en: 'Intracellular (adj)',
    uz: 'hujayra ichidagi',
    enDef: 'Within a cell.',
    uzDef: 'Hujayra ichida.',
    transcript: '[ ˌɪntrəˈseljʊlə ]',
    favorite: false,
  ),
  Word(
    en: 'Intradermal (adj)',
    uz: 'intradermal',
    enDef: 'Within the skin.',
    uzDef: 'Teri ichida.',
    transcript: '[ ˌɪntrəˈdɜːm(ə)l ]',
    favorite: false,
  ),
  Word(
    en: 'Intramuscular (adj)',
    uz: 'mushak ichiga',
    enDef: 'Within the muscle.',
    uzDef: 'Mushak ichida.',
    transcript: '[ ˌɪntrəˈmʌskjʊlə ]',
    favorite: false,
  ),
  Word(
    en: 'Intrauterine (adj)',
    uz: 'Intrauterine',
    enDef: 'Within the womb.',
    uzDef: 'Bachadon ichida.',
    transcript: '[ ˌɪntrəˈjuːtəraɪn ]',
    favorite: false,
  ),
  Word(
    en: 'Intravenous (adj)',
    uz: 'vena ichiga',
    enDef:
        'Within a vein. Intravenous infusion means to direct fluids through a needle or catheter directly into a vein.',
    uzDef:
        'Vena ichiga infuzion suyuqlikni igna yoki kateter orqali to\'g\'ridan-to\'g\'ri tomir ichiga yuborishni anglatadi.',
    transcript: '[ ˌɪntrəˈviːnəs ]',
    favorite: false,
  ),
  Word(
    en: 'Intussusception (n)',
    uz: 'invajinatsiya',
    enDef: 'Telescoping a section of the intestine into an adjoining section.',
    uzDef: 'Ichakning bir qismini qo\'shni bo\'limga teleskoplash.',
    transcript: '[ ˌɪntəsəˈsepʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Iris (n)',
    uz: 'iris',
    enDef:
        'The colored portion of the eye. It’s a muscle that controls the amount of light entering the pupil.',
    uzDef:
        'Ko\'zning rangli qismi. Bu o\'quvchiga kiradigan yorug\'lik miqdorini boshqaradigan mushak.',
    transcript: '[ ˈaɪərɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Iritis (n)',
    uz: 'iritis',
    enDef: 'Inflammation of the iris.',
    uzDef: 'Irisning yallig\'lanishi.',
    transcript: '[ aɪˈraɪtɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Irrigation (n)',
    uz: 'sug\'orish',
    enDef: 'Washing of a body cavity or wound with a stream of water.',
    uzDef: 'Tana bo\'shlig\'ini yoki yarani suv oqimi bilan yuvish.',
    transcript: '[ ɪrɪˈɡeɪʃ(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Ischemia (n)',
    uz: 'ishemiya',
    enDef: 'A lack of blood supply to a body part.',
    uzDef: 'Tananing bir qismiga qon ta\'minoti etishmasligi.',
    transcript: '[ ˌɪˈskemɪə ]',
    favorite: false,
  ),
  Word(
    en: 'IUD (n)',
    uz: 'IUD',
    enDef: 'Intrauterine device. Used for contraception.',
    uzDef: 'Intrauterin vosita. Kontratseptsiya uchun ishlatiladi.',
    transcript: '[ai yu di]',
    favorite: false,
  ),
  Word(
    en: 'IV (n)',
    uz: 'IV',
    enDef: 'Intravenous.',
    uzDef: 'Vena ichiga yuborish.',
    transcript: '[ai vi]',
    favorite: false,
  ),
  Word(
    en: 'IVP (n)',
    uz: 'IVP',
    enDef: 'Intravenous pyelography.',
    uzDef: 'Vena ichiga pyelografiya.',
    transcript: '[ai vi pi]',
    favorite: false,
  ),
  Word(
    en: 'Jaundice (n)',
    uz: 'sariqlik',
    enDef:
        'Yellow discoloration of the skin and eyes caused by the buildup of bile in the blood.',
    uzDef: 'Qonda safro to\'planishi natijasida teri va ko\'zning sariq rangi.',
    transcript: '[ ˈdʒɔːndɪs ]',
    favorite: false,
  ),
  Word(
    en: 'Jejunum (n)',
    uz: 'jejunum',
    enDef:
        'The middle part of the small intestine, located between the duodenum and ileum.',
    uzDef:
        'Ingichka ichakning o\'rta qismi, o\'n ikki barmoqli ichak va yonbosh ichak o\'rtasida joylashgan.',
    transcript: '[ dʒɪˈdʒuːnəm ]',
    favorite: false,
  ),
  Word(
    en: 'Joint (n)',
    uz: 'qo\'shma(bo’g’im)',
    enDef:
        'The joining of two or more bones. In general, joints allow flexibility and mobility.',
    uzDef:
        'Ikki yoki undan ortiq suyaklarning birlashishi. Umuman olganda, bo\'g\'inlar moslashuvchanlik va harakatchanlikni ta\'minlaydi.',
    transcript: '[ dʒɔɪnt ]',
    favorite: false,
  ),
  Word(
    en: 'Jugular (n)',
    uz: 'bo\'yinbog\'',
    enDef: 'Of the neck or throat, as in jugular veins.',
    uzDef: 'Bo\'yin tomirlarida bo\'lgani kabi bo\'yin yoki tomoqning.',
    transcript: '[ ˈdʒʌɡjʊlə ]',
    favorite: false,
  ),
  Word(
    en: "Kaposi's sarcoma (n)",
    uz: 'Kaposi sarkomasi',
    enDef:
        'Bluish nodules of the skin that often bleed. These frequently occur in people who have AIDS.',
    uzDef:
        'Ko’pincha qon ketadigan terining mavimsi-binafsha nodullari. Bular ko’pincha OITS bilan kasallangan odamlarda uchraydi.',
    transcript: '[ Keposis særkœma ]',
    favorite: false,
  ),
  Word(
    en: "Keloid (n)",
    uz: 'keloid',
    enDef: 'Excessive growth of scar tissue on the skin.',
    uzDef: 'Terida chandiq to’qimalarining haddan tashqari o’sishi.',
    transcript: '[ ˈkēloid ]',
    favorite: false,
  ),
  Word(
    en: 'Keratin (n)',
    uz: 'keratin',
    enDef: 'The main protein of skin, hair and nails.',
    uzDef: 'Teri, soch va tirnoqlarning  asosiy oqsili.',
    transcript: '[ ˈkerədən ]',
    favorite: false,
  ),
  Word(
    en: 'Keratitis (n)',
    uz: 'keratit',
    enDef: 'Inflammation of the cornea of the eye.',
    uzDef: 'Ko’zning shox pardasining yallig’lanishi.',
    transcript: '[ keratıtis ]',
    favorite: false,
  ),
  Word(
    en: 'Keratoconus (n)',
    uz: 'keratokonus',
    enDef:
        'A deformity of the cornea in which the cornea resembles the end of a football.',
    uzDef:
        'Shox pardasining deformatsiyasi, bunda shox parda fudbol uchiga o’xshaydi.',
    transcript: '[ kerotokounus ]',
    favorite: false,
  ),
  Word(
    en: 'Ketones (n)',
    uz: 'ketonlar',
    enDef:
        'The initial breakdown products of fatty acid metabolism. Unavailability of carbohydrates from starvation or uncontrolled diabetes mellitus increases the production…',
    uzDef:
        'Yog’ kislotalari almashinuvining dastlabki parchalanish mahsulotlari. Ochlikdan yoki nazoratsiz diabetdan uglevodlarning yetishmasligi ishlab chiqarishni oshiradi…',
    transcript: '[ ketones ]',
    favorite: false,
  ),
  Word(
    en: 'Kidney (n)',
    uz: 'buyrak',
    enDef:
        'A pair of organs in the upper abdominal cavity that separate the body’s water and waste products from the blood…',
    uzDef:
        'Qorin bo’shlig’ining yuqori  qismida tanadagi suv va chiqindilarni  qondan ajratib turqdigan bir juft organ…',
    transcript: '[ kidne ]',
    favorite: false,
  ),
  Word(
    en: 'Knee (n)',
    uz: 'tizza',
    enDef:
        'The complex hinge joint of the upper and lower leg involving the femur, tibia and patella.',
    uzDef:
        'Femur tibia va patella o’z ichiga  olgab yuqori va pastaki  oyoqning murakkab menteșe qo’shimchasi.',
    transcript: '[ ni ]',
    favorite: false,
  ),
  Word(
    en: 'Knock-knee (n)',
    uz: 'tizza taqillatish',
    enDef:
        'A deformity in which the knees rub together or touch each other in walking.',
    uzDef:
        'Yurishda tizzalar bir-biriga ishqalanadigan yoki bir-biriga tegib turqdigan deformatsiya.',
    transcript: '[ nok-ni ]',
    favorite: false,
  ),
  Word(
    en: 'Labia (n)',
    uz: 'labiga',
    enDef:
        'Lip-shaped structures; often used to describe the outer folds of the female genitalia.',
    uzDef:
        'Dudak shaklidagi tuzilmalar; ko’pincha ayol jinsiy azolarining tashqi burmalarini  tasvirlash uchun ishlatiladi.',
    transcript: '[ ˈlābēə ]',
    favorite: false,
  ),
  Word(
    en: 'Labyrinth (n)',
    uz: 'labirint',
    enDef:
        'The system of interconnecting canals and cavities in the inner ear. Plays an important role in hearing and in…',
    uzDef:
        'Ichki quloqdagi kanallar va bo’shliqlarni o’zaro bog’lash tizimi. Eshitishda muhim rol o’ynaydi.',
    transcript: '[ ˈlab(ə)ˌrinTH ]',
    favorite: false,
  ),
  Word(
    en: 'Laceration (n)',
    uz: 'laseratsiya',
    enDef:
        'A wound caused by a cut from a sharp instrument or the tearing of body tissue.',
    uzDef:
        'O’tkir asbobning kesilishi yoki tana to’qimalarining yirtilishi natijasida hosil bo’lgan yara.',
    transcript: '[ lesereșn ]',
    favorite: false,
  ),
  Word(
    en: 'Lacrimation (n)',
    uz: 'lakrematsiya',
    enDef: 'Discharge of tears. “Watering” eyes.',
    uzDef: 'Ko’z yoshlari oqishi. Sug’orish ko’zlari.',
    transcript: '[ lakrimeshn ]',
    favorite: false,
  ),
  Word(
    en: 'Lactase (n)',
    uz: 'laktaza',
    enDef:
        'An enzyme that converts the milk sugar lactose into glucose and galactose.',
    uzDef:
        'Sut shakar laktozasini glyukoza va galaktozaga aylantiruvchi ferment.',
    transcript: '[ ˈlaktās ]',
    favorite: false,
  ),
  Word(
    en: 'Lactation (n)',
    uz: 'laktatsiya',
    enDef: 'Secretion of milk by the breasts.',
    uzDef: 'Ko’krak orqali sut sekretsiyasi.',
    transcript: '[ lakteşn ]',
    favorite: false,
  ),
  Word(
    en: 'Lactose (n)',
    uz: 'laktoza',
    enDef: 'Milk sugar.',
    uzDef: 'Sut shakar.',
    transcript: '[ ˈlakˌtōs ]',
    favorite: false,
  ),
  Word(
    en: 'Laryngitis (n)',
    uz: 'laringit',
    enDef:
        'Inflammation of the larynx, resulting in a temporary loss of voice.',
    uzDef: 'Tarmoqning yallig’lanishi, natijada ovozning vaqtincha yo’qilishi.',
    transcript: '[ leringits ]',
    favorite: false,
  ),
  Word(
    en: 'Larynx (n)',
    uz: 'halqum',
    enDef: 'The voice box.',
    uzDef: 'Ovoz qutisi.',
    transcript: '[ leriniks ]',
    favorite: false,
  ),
  Word(
    en: 'Lateral (adj)',
    uz: 'lateral',
    enDef: 'Toward the side, sideways.',
    uzDef: 'Yon tomonga.',
    transcript: '[ ˈladərəl ]',
    favorite: false,
  ),
  Word(
    en: 'Lavage (n)',
    uz: 'yuvish',
    enDef: 'Washing out of an organ, especially the stomach.',
    uzDef: 'Organni ayniqsa osbqozonni yuvish.',
    transcript: '[ ləˈväZH ]',
    favorite: false,
  ),
  Word(
    en: 'Legg-Calve-Perthes disease (n)',
    uz: 'Legg-Calve Perthes kasalligi',
    enDef:
        'A disease in which the blood supply to the femur is reduced, causing the bone to collapse.',
    uzDef:
        'Parthes kasalligi. Femurning qon bilan ta’minpanishi susayadigan kasallik, bu suyakning yiqilishiga olib keladi.',
    transcript: '[ leg-selv pertsz desiz ]',
    favorite: false,
  ),
  Word(
    en: 'Lens (n)',
    uz: 'obyektiv',
    enDef:
        '1. A curved glass used to bring together or spread rays of light. 2. The transparent organ lying behind the…',
    uzDef:
        '1. Yorug’lik nurlarini birlashtirish yoki tarqatish uchun ishlatiladigan kavsli shisha. 2, orqasida yotgan shaffof organ.',
    transcript: '[ lenz ]',
    favorite: false,
  ),
  Word(
    en: 'Leprosy (n)',
    uz: 'moxov',
    enDef:
        'A progressive infectious disease that attacks the skin, flesh and nerves; characterized by nodules, ulcers, scaly scabs, deformities and the…',
    uzDef:
        'Teri, tana go’shti va nervlarga hujum qiladigan progressiv yuqumli kasallik; tugunlar, yaralar, qora qo’tirlar, deformatsiyalar va…',
    transcript: '[ ˈleprəsē ]',
    favorite: false,
  ),
  Word(
    en: 'Lesion (n)',
    uz: 'lezyon',
    enDef:
        'Any damage to a tissue. Marks, spots, moles or other problems of the skin.',
    uzDef:
        'To’qimalarning har qanday shikastlanishi. Belgilar, dog’lar, mollar yoki terining boshqa muammolari.',
    transcript: '[ ˈlēZHən ]',
    favorite: false,
  ),
  Word(
    en: 'Lethargy (n)',
    uz: 'letargiya',
    enDef: 'A lack of energy; sluggishness, dullness or apathy.',
    uzDef: 'Energiya yetishmasligi; sustlik, xiralik yoki befarqlik.',
    transcript: '[ ˈleTHərjē ]',
    favorite: false,
  ),
  Word(
    en: 'Leukemia (n)',
    uz: 'leykemiya',
    enDef: 'Cancer of the tissues in the bone marrow, spleen and lymph nodes.',
    uzDef: 'Suyak iligi, taloq va limfa tugunlaridagi to’qimalarning saratoni.',
    transcript: '[ leykemia ]',
    favorite: false,
  ),
  Word(
    en: 'Leukocytes (n)',
    uz: 'leykositlar',
    enDef:
        'White blood cells, the blood cells responsible for fighting infection.',
    uzDef:
        'Oq qon hujayralari, infeksiyaga qarshi kurashish uchun ma’sul qon hujayralari.',
    transcript: '[ lekosits ]',
    favorite: false,
  ),
  Word(
    en: 'Leukopenia (n)',
    uz: 'leykopeniya',
    enDef: 'A lower than normal number of leukocytes in the blood.',
    uzDef: 'Qondagi leykositlar soni me’yoridan pastligi.',
    transcript: '[ leukopenia ]',
    favorite: false,
  ),
  Word(
    en: 'Leukopheresis (n)',
    uz: 'leykoferez',
    enDef:
        'Selective removal of the white blood cells from a donor’s blood. The other components of the blood are then returned…',
    uzDef:
        'Donorning qonidan oq qon hujayralarini tanlab olib tashlash. Keyin qonning boshqa tarkibiy qismlari qaytariladi…',
    transcript: '[ leukoferezis ]',
    favorite: false,
  ),
  Word(
    en: 'Leukoplakia (n)',
    uz: 'leykoplakiya',
    enDef: 'Thick, white patches in the mouth that may become malignant.',
    uzDef: 'Og’izda yomon asaorat qoldirishi mumkun bo’lgan qalin oq dog’lar.',
    transcript: '[ ˌlo͞okəˈplākēə ]',
    favorite: false,
  ),
  Word(
    en: 'Lichen (n)',
    uz: 'liken',
    enDef:
        'Any of various skin diseases characterized by sores and enlarged skin markings.',
    uzDef:
        'Yaralar va kattalashgan teri belgilari bilan tavsiflangan har xil teri kasalliklari.',
    transcript: '[ ˈlīkən ]',
    favorite: false,
  ),
  Word(
    en: 'Ligament (n)',
    uz: 'ligament',
    enDef:
        'A tough band of connective tissue connecting bones or holding organs in place.',
    uzDef:
        'Suyaklarni birlashtiruvchi yoki organlarni joyida ushlab turadigan biriktiruvchi to’qimadan iborat.',
    transcript: '[ ˈliɡəmənt ]',
    favorite: false,
  ),
  Word(
    en: 'Ligature (n)',
    uz: 'ligatur',
    enDef:
        'A wire or thread used to tie off blood vessels or to close incisions or wounds.',
    uzDef:
        'Qon tomirlarini bog’lash yoki kesma yoki yaralarni yopish uchun ishlatiladigan sim yoki ip.',
    transcript: '[ ˈliɡəCHər ]',
    favorite: false,
  ),
  Word(
    en: 'Lightening (n)',
    uz: 'yoritish',
    enDef:
        'The feeling of decreased abdominal pressure during the last few weeks of pregnancy caused by the uterus dropping into the…',
    uzDef:
        'Homiladorlikning so’nggi bir necha haftalarida bachadonning qorin bo’shlig’igatushishi natijasida yuzaga keladigan qorin bosimining pasayishi hissi…',
    transcript: '[ laytining ]',
    favorite: false,
  ),
  Word(
    en: 'Limbus (n)',
    uz: 'limbus',
    enDef:
        'Margin, or border. The margin of the cornea where it contacts the sclera.',
    uzDef:
        'Chegara yoki chet. Shox pardaning sklera bilan aloqa qiladigan cheti.',
    transcript: '[ limbus ]',
    favorite: false,
  ),
  Word(
    en: 'Lingua (n)',
    uz: 'til',
    enDef: 'Tongue',
    uzDef: 'Til',
    transcript: '[ lingua ]',
    favorite: false,
  ),
  Word(
    en: 'Lipid (n)',
    uz: 'lipid',
    enDef: 'Cholesterol, triglycerides and related substances.',
    uzDef: 'Xolestirin, triglitseridlar va tegishli moddalar.',
    transcript: '[ ‘lipid ]',
    favorite: false,
  ),
  Word(
    en: 'Lipocyte (n)',
    uz: 'yog’li shish',
    enDef: 'A fat cell.',
    uzDef: 'Yog’li shish.',
    transcript: '[ lɪpəˌsaɪt ]',
    favorite: false,
  ),
  Word(
    en: 'Lipolysis (n)',
    uz: 'lipoliz',
    enDef: 'The splitting up, or destruction, of fat.',
    uzDef: 'Yog’ning bo’linishi yoki parchalnishi.',
    transcript: '[ liˈpäləsis ]',
    favorite: false,
  ),
  Word(
    en: 'Lipoma (n)',
    uz: 'lipoma',
    enDef: 'Fatty tumor.',
    uzDef: 'Yog’li shish.',
    transcript: '[ liˈpōmə ]',
    favorite: false,
  ),
  Word(
    en: 'Lipoprotein (n)',
    uz: 'lipoprotein',
    enDef:
        'Any of a group of proteins combined with a lipid that allow lipids to be transported in the circulatory…',
    uzDef:
        'Qon aylanish tizimida lipidlarni tashish imkonini beruvchi lipid bilan birlashtirilgan oqsillar guruhining har qanday…',
    transcript: '[ lipoproteyn ]',
    favorite: false,
  ),
  Word(
    en: 'Liposuction (n)',
    uz: 'liposaktsiya',
    enDef:
        'A surgical procedure that changes body shape by removing fat cells.',
    uzDef:
        'Yog’ hujayralarini olib tashlash orqali tana shaklini o’zgartiradigan jarrohlik amaliyoti.',
    transcript: '[ ˈlipōˌsəkSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Litholysis (n)',
    uz: 'litoliz',
    enDef: 'Breaking up of a stone, such as a gallstone.',
    uzDef: 'O’t pufagidagi tosh kabi toshni sindirish.',
    transcript: '[ litoliys ]',
    favorite: false,
  ),
  Word(
    en: 'Lithotripsy (n)',
    uz: 'litotripsi',
    enDef:
        'A procedure to break up kidney stones into smaller pieces that can more easily pass out of the body.',
    uzDef:
        'Buyrak toshlarini tanadan osonroq o’tishi mumkun bo’lgan mayda bo’laklarga bo’lish tartibi.',
    transcript: '[ litotripsi ]',
    favorite: false,
  ),
  Word(
    en: 'Liver (n)',
    uz: 'jigar',
    enDef:
        'The large organ in the upper right abdomen that functions in digestion and storage of food, disposal of worn-out red…',
    uzDef:
        'Qorinning o’ng yuqori qismidagi katta organ bo’lib u ovqat hazm qilish va saqlash, eskirgan qizilni yo’q qilish…',
    transcript: '[ luve: ]',
    favorite: false,
  ),
  Word(
    en: 'Lobe (n)',
    uz: 'lob',
    enDef:
        '1.The fleshy lower part of the ear. 2. A well-defined portion of an organ.',
    uzDef:
        '1.Quloqning go’shtli pastgi qismi. 2. Organning aniq belgilangan qismi.',
    transcript: '[ lōb ]',
    favorite: false,
  ),
  Word(
    en: 'Lobectomy (n)',
    uz: 'lobektomiya',
    enDef: 'Surgical removal of the lobe of an organ.',
    uzDef: 'Organning lobini jarrohlik yo’lib bilan olib tashalash.',
    transcript: '[ lobektomi ]',
    favorite: false,
  ),
  Word(
    en: 'Lobotomy (n)',
    uz: 'lobotomiya',
    enDef:
        'A surgical operation in which a lobe of the brain, especially the frontal lobe of the cerebrum, is cut into…',
    uzDef:
        'Miyyaning bir bo’lagi, ayniqsa bosh miyyaning old qismi kesilgan jarrohlik operatsiyasi…',
    transcript: '[ lobotomi ]',
    favorite: false,
  ),
  Word(
    en: 'Lochia (n)',
    uz: 'lochia',
    enDef:
        'The discharge from the vagina that occurs for several days to weeks after childbirth.',
    uzDef: 'Tug’ilgandan keyin bir necha haftagacha bo’lgan vaginadan oqindi.',
    transcript: '[ lochia ]',
    favorite: false,
  ),
  Word(
    en: 'Lockjaw (n)',
    uz: 'qulflash',
    enDef: 'Tetanus infection.',
    uzDef: 'Tetanoz infeksiyasi.',
    transcript: '[ lokyou ]',
    favorite: false,
  ),
  Word(
    en: 'Loins (n)',
    uz: 'bel',
    enDef: 'The portion of the back between the rib cage and pelvis.',
    uzDef: 'Orqa tomonning qovurg’a va tos suyagi orasidagi qismi.',
    transcript: '[ loyns ]',
    favorite: false,
  ),
  Word(
    en: 'Lordosis (n)',
    uz: 'lordoz',
    enDef: 'Forward curvature of the spine, producing a hollow in the back.',
    uzDef: 'Orqa miyaning oldinga egriligi, orqada bo’shliq hosil qiladi.',
    transcript: '[ lordosis ]',
    favorite: false,
  ),
  Word(
    en: 'LSD (n)',
    uz: 'LSD',
    enDef: 'Lysergic acid diethylamide. A hallucinogenic drug.',
    uzDef: 'Lizergik kislota dietilamid. Gallyutsinogen dori.',
    transcript: '[ el.es,di ]',
    favorite: false,
  ),
  Word(
    en: 'Lumbago (n)',
    uz: 'lambago',
    enDef: 'Pain in the lower back.',
    uzDef: 'Pastki orqa qismda og’riq.',
    transcript: '[ lambago ]',
    favorite: false,
  ),
  Word(
    en: 'Lumbar (adj)',
    uz: 'bel',
    enDef: 'Having to do with the lower back, the loins.',
    uzDef: 'Pastki orqa, bel bilan qilish kerak.',
    transcript: '[ lamber ]',
    favorite: false,
  ),
  Word(
    en: 'Lungs (n)',
    uz: 'o’pka',
    enDef:
        'The main respiratory organs in the chest where blood is oxygenated.',
    uzDef:
        'Qon kislorod bilan ta’minlangan ko’krak qafasidagi asosiy nafas olish organlari.',
    transcript: '[ langs ]',
    favorite: false,
  ),
  Word(
    en: 'Lupus erythematosus (n)',
    uz: 'qizil qizil yuguruk',
    enDef:
        'A usually chronic inflammatory disease that causes abnormalities of blood vessels and connective tissue in various parts of the…',
    uzDef:
        'Odatda surunkali yallig’lanish kasalligi bo’lib, qon tomirlari va bitiktiruvchi to’qimalarning turli qismlarida anormalliklarga olib keladi.',
    transcript: '[ ˌlo͞opəs ˌerəˌTHēməˌtōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Luteinizing hormone (n)',
    uz: 'luteinlashtiruvchi gormon',
    enDef:
        'A hormone secreted by the anterior pituitary gland, responsible for stimulating ovulation in the female and testosterone production in the…',
    uzDef:
        'Oldingi gipofiz bezidan ajralib chiqadigan, ayollarda ovulyatsiyani va testesteron ishlab chiqarishni rag’batlantirish uchun javob beradigan garmon…',
    transcript: '[ ˌlo͞odēəˌnīziNG ˈhôrmōn ]',
    favorite: false,
  ),
  Word(
    en: 'Lyme disease (n)',
    uz: 'Lyme kasalligi',
    enDef:
        'A disease spread by deer ticks characterized at first by a skin rash, headache and fever, and later by arthritis…',
    uzDef:
        'Kiyik shomillari tomonidan tarqaladigan kasallik, dastlab teri toshmasi, bosh og’rig’i va isitma, keyin esa artrit bilan tavsiflanadi…',
    transcript: '[ ˈlīm dəˌzēz ]',
    favorite: false,
  ),
  Word(
    en: 'Lymph (n)',
    uz: 'limfa',
    enDef:
        'Consists primarily of a clear, yellowish fluid and white blood cells. Found in the lymphatic system.',
    uzDef:
        'U asosan shaffof, sarg’ish suyuqlik va qon hujayralridan iborat. Limfa tizimidan topilgan.',
    transcript: '[ limf ]',
    favorite: false,
  ),
  Word(
    en: 'Lymph node (n)',
    uz: 'limfa tugunlari',
    enDef:
        'Any of many small, compact structures lying in groups along the course of the lymphatic vessels and producing lymphocytes.',
    uzDef:
        'Limfa tomirlari bo’ylab guruh bo’lib yotgan va limfositlarni ishlab chiqaradigan ko’plab kichik, ixcham tuzilmalar ing har biri.',
    transcript: '[ limf nod ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphadenitis (n)',
    uz: 'limfadenit',
    enDef: 'Inflammation of the lymph nodes.',
    uzDef: 'Limfa tugunlarining yallig’lanishi.',
    transcript: '[ limfadenits ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphangitis (n)',
    uz: 'limfangit',
    enDef: 'Inflammation of a lymphatic vessel.',
    uzDef: 'Limfatik tomirning yallig’lanishi.',
    transcript: '[ ˌlimˌfanˈjīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphatic system (n)',
    uz: 'limfa tizimi',
    enDef:
        'The vessels and structures involved in carrying lymph from the tissues to the blood.',
    uzDef:
        'Limfani to’qimalardan qonga o’tkazishda ishtirok etadigan tomirlar va tuzilmalar.',
    transcript: '[ limˈfadik ˌsistəm ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphedema (n)',
    uz: 'limfedema',
    enDef: 'Swelling of tissue because of the buildup of too much lymph fluid.',
    uzDef:
        'Limfa suyuqliging ko’p to’planishi tufayli to’qimalarning shishishi.',
    transcript: '[ ˌlimfəˈdēmə ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphocyte (n)',
    uz: 'limfosit',
    enDef:
        'A type of leukocyte (white blood cell) involved in the production of antibodies and the development of immunity.',
    uzDef:
        'Antikorlarni ishlab chiqarish va immunitetni rivojlantorishda ishtirok etadigan leykositlarning bir turi(oq qon tanchalri).',
    transcript: '[ ˈlimfəˌsīt ]',
    favorite: false,
  ),
  Word(
    en: 'Lymphoma (n)',
    uz: 'limfoma',
    enDef: 'A malignant tumor of the lymphoid tissues.',
    uzDef: 'Limfoid to’qimalarning xavfli o’smasi.',
    transcript: '[ limˈfōmə ]',
    favorite: false,
  ),
  Word(
    en: 'Macrophage (n)',
    uz: 'makrofag',
    enDef: 'A large cell that engulfs and digests foreign material.',
    uzDef: 'Begona moddalrni yutib, hazm qiladigan hujayra.',
    transcript: '[ ˈmakrəˌfāj ]',
    favorite: false,
  ),
  Word(
    en: 'Macula (n)',
    uz: 'makula',
    enDef:
        'The central part of the retina with the highest density of light receptors. Responsible for detailed vision.',
    uzDef:
        'Yorug’lik retsepttorlarining eng yuqoti zichligi bilan retinaning markaziy qismi. Batafsil ko’rish uchun javobgar.',
    transcript: '[ makula ]',
    favorite: false,
  ),
  Word(
    en: 'Macule (n)',
    uz: 'makyol',
    enDef: 'A discolored, flat spot of skin.',
    uzDef: 'Terining rangsiz, tekis joyi.',
    transcript: '[ makyol ]',
    favorite: false,
  ),
  Word(
    en: 'Malady (n)',
    uz: 'kasallik',
    enDef: 'Illness.',
    uzDef: 'Kasallik',
    transcript: '[ ˈmalədē ]',
    favorite: false,
  ),
  Word(
    en: 'Malaria (n)',
    uz: 'bezgak',
    enDef:
        'An infectious disease of the tropics characterized by high fever and chills. The fever typically recurs every third day.',
    uzDef:
        'Yuqori isitma va titroq bilan tavsiflangan tropiklarning yuqumli kasalligi. Odatda isitma har uchunchi kunda takrorlanadi.',
    transcript: '[ malaria ]',
    favorite: false,
  ),
  Word(
    en: 'Malignancy (n)',
    uz: 'yomonlik',
    enDef:
        'A tendency to worsen to a more serious illness or death. Commonly used to describe cancer.',
    uzDef:
        'Og’irroq kasallik yoki o’limga qadar yomonlashish tendentsiyasi. Ko’pincha saraton kasalligini tasvirlash uchun ishlatiladi.',
    transcript: '[ malignensy ]',
    favorite: false,
  ),
  Word(
    en: 'Malingering (n)',
    uz: 'noqulaylik',
    enDef:
        'Deliberate exaggeration of the symptoms of an illness or injury for gain. For example, pretending to be ill in order…',
    uzDef:
        'Foyda olish uchun kasallik yoki jarohat belgilarini qasddan oshirib yuborish. Misol uchun, tartib bilan kasal bo’lib ko’rsatish…',
    transcript: '[ malingering ]',
    favorite: false,
  ),
  Word(
    en: 'Malleolus',
    uz: 'Malleola',
    enDef: 'The rounded bony prominence on either side of the ankle.',
    uzDef: 'Oyoq bilagi zo’r ikki tomonida yumaloq suyak chiqishi.',
    transcript: '[ məˈliːələs ]',
    favorite: false,
  ),
  Word(
    en: 'Malleus',
    uz: 'Malleus',
    enDef: 'A small bone in the middle ear, often called the hammer.',
    uzDef: 'O’rta quloqdagi kichik suyak, ko’pincha bolg’a deb ataladi.',
    transcript: '[ mæliəs ]',
    favorite: false,
  ),
  Word(
    en: 'Malnutrition (n)',
    uz: 'noto’g’ri ovqatlanish',
    enDef: 'Poor nourishment resulting from an inadequate or improper diet.',
    uzDef:
        'Noto’g’ri yoki noto’g’ri ovqatlanish natijasida kelib chiqadigan yomon ovqatlanish.',
    transcript: '[ ˌmaln(y)o͞oˈtriSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Malocclusion (n)',
    uz: 'malokluziya',
    enDef: 'Improper meeting of the upper and lower teeth.',
    uzDef: 'Yuqori va pastki tishlarning noto’g’ri uchrashishi.',
    transcript: '[ ˌmaləˈklo͞oZHən ]',
    favorite: false,
  ),
  Word(
    en: 'Malunion (n)',
    uz: 'melunion',
    enDef: 'Improper healing of the pieces of a broken bone.',
    uzDef: 'Singan suyak qismlarini noto’g’ri davolash.',
    transcript: '[ melunion ]',
    favorite: false,
  ),
  Word(
    en: 'Mammary (adj)',
    uz: 'sut bezlari',
    enDef: 'Having to do with the breast.',
    uzDef: 'Ko’krak bilan bog’liq.',
    transcript: '[ ˈmam(ə)rē ]',
    favorite: false,
  ),
  Word(
    en: 'Mandible (n)',
    uz: 'mandibula',
    enDef: 'The lower jaw.',
    uzDef: 'Pastki jag’.',
    transcript: '[ mandibl ]',
    favorite: false,
  ),
  Word(
    en: 'Mania (n)',
    uz: 'maniya',
    enDef: 'A mental disorder. Characterized by extreme excitement and energy.',
    uzDef:
        'Ruhiy buzilish. Haddan tashqari hayajon va energiya bilan tavsiflanadi.',
    transcript: '[ ˈmānēə ]',
    favorite: false,
  ),
  Word(
    en: 'Manic-depressive (adj)',
    uz: 'manik-depressiv',
    enDef:
        'A mental disorder marked by alternating periods of excitability and depression. Also called bipolar affective disorder.',
    uzDef:
        'Qo’zg’aluvchanlik va tushkunlik davrlarining o’zgarishi bilan ajralib turadigan ruhiy kasallik. Bipolyar affektiv buzilish deb ham ataladi.',
    transcript: '[ manik-depresiv ]',
    favorite: false,
  ),
  Word(
    en: 'Marijuana (n)',
    uz: 'marixuana',
    enDef:
        'A drug derived from the leaves of the Cannabis sativa plant. Makes the user feel euphoric.',
    uzDef:
        'Cannabis sativa o’simligining barglaridan olingan dori. Foydalnuvchini eyforiyasi his qiladi.',
    transcript: '[ ˌmerəˈ(h)wänə ]',
    favorite: false,
  ),
  Word(
    en: 'Marrow (n)',
    uz: 'ilik',
    enDef: 'The soft, sponge-like material inside the bones.',
    uzDef: 'Suyaklar ichidagi yumshoq, shimhichga o’xshash material.',
    transcript: '[ ˈmerō ]',
    favorite: false,
  ),
  Word(
    en: 'Masculinization (n)',
    uz: 'maskulinizeshn',
    enDef: 'Development of male sex characteristics in a female.',
    uzDef: 'Ayolda erkak jinsiy xususiyatlarining rivojlanishi.',
    transcript: '[ maskulinizeshn ]',
    favorite: false,
  ),
  Word(
    en: 'Masochism (n)',
    uz: 'mazoxizm',
    enDef: 'Pleasure from personal, psychological or physical pain.',
    uzDef: 'Shaxsiy, psixologik yoki jismoniy og’riqdan zavqlanish.',
    transcript: '[ ˈmasəˌkizəm ]',
    favorite: false,
  ),
  Word(
    en: 'Mastectomy (n)',
    uz: 'mastektomiya',
    enDef: 'Surgical removal of the breast.',
    uzDef: 'Ko’krakni jarrohlik yo’li bilan olib tashlash.',
    transcript: '[ maˈstektəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Mastitis (n)',
    uz: 'mastit',
    enDef: 'Inflammation of the breast.',
    uzDef: 'Ko’krakning yallig’lanishi.',
    transcript: '[ maˈstīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Mastoid (n)',
    uz: 'mastoid',
    enDef: 'A bony, rounded projection of the skull located behind each ear.',
    uzDef:
        'Har bir quloq orqasida joylashgan bosh suyagining suyak, yumaloq proektsiyasi.',
    transcript: '[ ˈmastoid ]',
    favorite: false,
  ),
  Word(
    en: 'Mastoiditis (n)',
    uz: 'mastoidit',
    enDef:
        'An infection of the mastoid bone that can cause redness, warmth, swelling and pain behind the ear, sometimes with drainage…',
    uzDef:
        'Quloq orqasida qizarish, issiqlik, shishis va og’riqni keltirib chiqaradigan mastoid suyagi infeksiyasi, ba’zan drenj bilan..',
    transcript: '[ ˌmastoiˈdīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Masturbation (n)',
    uz: 'onanizm',
    enDef: 'Sexual self-stimulation.',
    uzDef: 'Jinsiy o’z-o’zini rag’batlantirish.',
    transcript: '[ ˌmastərˈbāSHən ]',
    favorite: false,
  ),
  Word(
    en: 'Maxillae (n)',
    uz: 'maxillae',
    enDef: 'The pair of bones forming the upper jaw.',
    uzDef: 'Yuqori jag’ni hosil qiluvchi juft suyak.',
    transcript: '[ maxiale ]',
    favorite: false,
  ),
  Word(
    en: 'measles',
    uz: 'qizamiq',
    enDef:
        'A highly contagious viral disease occurring most frequently in childhood and characterized by small, red spots on the skin, high…',
    uzDef:
        'Ko’pincha bolalik davrida uchraydigan o’ta yuqumli virusli kasallik va terida mayda qizil dog’lar, balnd…',
    transcript: '[ ˈmēzəlz ]',
    favorite: false,
  ),
  Word(
    en: "Meckel's diverticulum (n)",
    uz: 'Mekkel devertikulasi',
    enDef: 'A sac that may form in the small intestine, present at birth.',
    uzDef:
        'Tug’ilganda mavjud bo’lgan ingichka ichakda paydo bo’lishi mumkun bo’lgan qop.',
    transcript: '[ mekkel divertikulum ]',
    favorite: false,
  ),
  Word(
    en: "Meconium (n)",
    uz: 'mekonyum',
    enDef:
        'The greenish fecal matter in a fetus, forming the first bowel movement of a newborn infant.',
    uzDef:
        'Yangi tug’ulgan chaqaloqning birinchi ichak harakatini hosil qiluvchi homiladagi yashil rangdagi najas.',
    transcript: '[ məˈkōnēəm ]',
    favorite: false,
  ),
  Word(
    en: 'Median nerve (n)',
    uz: 'median nerv',
    enDef:
        'The nerve that stimulates some of the muscles of the hand and wrist.',
    uzDef: 'Qo’l va bilakning ba’zi mushakparini qo’zg’atadigan asab.',
    transcript: '[ median nerv ]',
    favorite: false,
  ),
  Word(
    en: 'Mediastinum (n)',
    uz: 'mediastinum',
    enDef:
        'The tissues and organs located directly behind the sternum between the lungs. Contains the heart and its large vessels, the…',
    uzDef:
        'Ro’qimalar va organlar to’g’ridan to’g’ri o’pka o’rtasida sternum orqasida joylashgan. Yurak va uning katta tomirlarini o’z ichiga oladi…',
    transcript: '[ ˌmēdēəˈstīnəm ]',
    favorite: false,
  ),
  Word(
    en: 'Medulla (n)',
    uz: 'medulla',
    enDef:
        'The inner part of an organ. The adrenal medulla is the center of the adrenal gland where epinephrine (adrenaline) is…',
    uzDef:
        'Organning ichki qismi. Buyrak usti medullasi buyrak usti bezining markazi bo’lib, epinefrin(adrenalin)…',
    transcript: '[ məˈdələ ]',
    favorite: false,
  ),
  Word(
    en: 'Medulla oblongata (n)',
    uz: 'medulla oblangata',
    enDef:
        'The part of the brain just above the spinal cord that includes the control centers for breathing, circulation and…',
    uzDef:
        'Miyaning orqa miya ustidagi qismi nafas olsih, qon aylanish va boshqariladigan markazlarni o’z ichiga oladi…',
    transcript: '[ məˌdələ äˌblôNGˈɡädə ]',
    favorite: false,
  ),
  Word(
    en: 'Meibomian gland (n)',
    uz: 'meobian bezi',
    enDef:
        'A type of gland of the eyelid’s inner surface. Inflammation of a meibomian gland can produce a swelling called a…',
    uzDef:
        'Ko’z qovog’ining ichki yuzasi bezining bir turi. Meibomiya bezining yallig’lanishi shish paydo bo’lishiga olib kelishi mumkun…',
    transcript: '[ meobian gland ]',
    favorite: false,
  ),
  Word(
    en: 'Melancholia (n)',
    uz: 'melanxoliya',
    enDef:
        'A mental state characterized by extreme sadness. A severe form of depression.',
    uzDef:
        'Haddan tashqari qayg’u bilan tavsiflangan ruhiy holat. Depressiyaning og’ir shakli.',
    transcript: '[ ˌmelənˈkōlēə ]',
    favorite: false,
  ),
  Word(
    en: 'Melanin (n)',
    uz: 'Melanin',
    enDef:
        'A brownish-black pigment normally found in skin, hair and parts of the eye.',
    uzDef:
        'Jigarrang-qora pigment odatda teri, soch va ko’zning qismlarida topiladi.',
    transcript: '[ ˈmelənən ]',
    favorite: false,
  ),
  Word(
    en: 'Melanoma (n)',
    uz: 'Melanoma',
    enDef:
        'A dark-colored tumor, especially malignant melanoma, that is a form of skin cancer that can spread from one part of…',
    uzDef:
        'To’q rangli o’simta, ayniqsa malign melanoma, bu teri saratonining bir shakli bo’lib, teining bir qismidan tarqalishi mumkun…',
    transcript: '[ ˌmeləˈnōmə ]',
    favorite: false,
  ),
  Word(
    en: 'Melasma (n)',
    uz: 'Melazma',
    enDef:
        'Dark coloring of the skin often seen during pregnancy and at menopause. Also occurs in Addison’s disease.',
    uzDef:
        'Ko’pincha homiladorlik paytida va menopauzada terining quyuq rangi kuzatiladi. Addision kasalligida ham uchraydi.',
    transcript: '[ melazma ]',
    favorite: false,
  ),
  Word(
    en: 'Melena (n)',
    uz: 'Melena',
    enDef: 'Black-colored feces caused by the presence of blood.',
    uzDef: 'Qon borligidan kelib chiqqan qora rangli najas.',
    transcript: '[ məˈlēnə ]',
    favorite: false,
  ),
  Word(
    en: 'Membrane (n)',
    uz: 'Membrana',
    enDef: 'A thin layer of tissue covering an organ.',
    uzDef: 'Organni qoplaudigan yupqa to’qima qatlami.',
    transcript: '[ ˈmemˌbrān ]',
    favorite: false,
  ),
  Word(
    en: 'menarche',
    uz: 'Hayz ko’rish',
    enDef: 'A woman’s first menstrual period.',
    uzDef: 'Ayolning birinchi hayz ko’rishi.',
    transcript: '[ məˈnärkē ]',
    favorite: false,
  ),
  Word(
    en: "Meniere's syndrome (n)",
    uz: 'Meniere sindromi',
    enDef:
        'A disorder of the inner ear characterized by dizziness, ringing in the ears and progressive hearing loss.',
    uzDef:
        'Bosh aylanishi, quloqlarda jiringlash va progressiv eshitish halokati bilan tavsiflangan ichki quloqning buzilishi.',
    transcript: '[ menieres sindrom ]',
    favorite: false,
  ),
  Word(
    en: "Meninges (n)",
    uz: 'Meninges',
    enDef: 'The three membranes covering the brain and spinal cord.',
    uzDef: 'Miya va orqa miyani qoplaydigan uchta membrana.',
    transcript: '[ məˈninjēz ]',
    favorite: false,
  ),
  Word(
    en: 'Meningioma (n)',
    uz: 'Meningioma',
    enDef: 'Tumor of the meninges, usually benign and slow-growing.',
    uzDef: 'Meniks o’smasi, odatda yaxshi va sekin o’sadi.',
    transcript: '[ məˌninjēˈōmə ]',
    favorite: false,
  ),
  Word(
    en: 'Meningitis (n)',
    uz: 'Meningit',
    enDef:
        'Inflammation of the meninges as the result of infection by bacteria or viruses. Symptoms include high fever, headache, stiff neck…',
    uzDef:
        'Bakterialar yoki viruslar tomonidan yuqtirish natijasid miya pardasining yallig’lanishi. Alomatlar orasida  yuqori isitma , bosh og’rig’i va qattiq bo’yin…',
    transcript: '[ ˌmenənˈjīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Meniscus (n)',
    uz: 'Meniskus',
    enDef: 'The cartilage in the knee joint.',
    uzDef: 'Tizza bo’g’imidagi xaftaga.',
    transcript: '[ məˈniskəs ]',
    favorite: false,
  ),
  Word(
    en: 'Menopause (n)',
    uz: 'Menopauza',
    enDef:
        'The time at which the menstrual cycle gradually stops. Sometimes referred to as the “change of life.”',
    uzDef:
        'Menstrul  siklus asta-sekin to’xtaydigan vaqt. Ba’zan hayotning o’zgarishi  deb ataladi.',
    transcript: '[ ˈmenəˌpôz ]',
    favorite: false,
  ),
  Word(
    en: 'Menorrhagia (n)',
    uz: 'Menorragiya',
    enDef: 'Heavy bleeding during menstruation.',
    uzDef: 'Hayz ko’rish paytida kuchli qon ketish.',
    transcript: '[ ˌmenəˈrāj(ē)ə ]',
    favorite: false,
  ),
  Word(
    en: 'Menstruation (n)',
    uz: 'Hayz ko’rish',
    enDef:
        'The periodic discharge of blood and tissues from the uterus. This usually occurs about every four weeks in a woman…',
    uzDef:
        'Bachadondan qon va to’qimalarning davriy oqishi. Bu odatda har to’rt haftadq bir ayolda sodir bo’ladi…',
    transcript: '[ ˌmenstro͞oˈāSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Metabolism (n)',
    uz: 'Matabolizm',
    enDef:
        'The chemical and physical processes involved in building up, storing and using materials required for life.',
    uzDef:
        'Hayot uchun zarur bo’lgan materiallarni qurish, saqlash  va ishlatish bilan bog’liq kimyoviy va fizik jarayonlar.',
    transcript: '[ məˈtabəˌlizəm ]',
    favorite: false,
  ),
  Word(
    en: 'Metacarpal (n)',
    uz: 'Metakarpal',
    enDef:
        'Any of the five bones that make up the hand and join the wrist to the fingers.',
    uzDef:
        'Qo’lni tashkil etuvchi va bilakni barmoqlarga qo’shadigan beshta suyakdan har biri.',
    transcript: '[ ˌmedəˈkärpəl ]',
    favorite: false,
  ),
  Word(
    en: 'Metaphysis (n)',
    uz: 'Metafiz',
    enDef:
        'The wider portion at the end of a long bone where growth occurs in infants and children.',
    uzDef:
        'Go’daklar va bolalarda o’sish sodir bo’ladigan uzun suyakning oxiridagi kengroq qismi.',
    transcript: '[ metapfiz ]',
    favorite: false,
  ),
  Word(
    en: 'Metastasis (n)',
    uz: 'Metastaz',
    enDef:
        'The spread of a disease from its primary site in the body to another location in the body. Usually refers…',
    uzDef:
        'Kasallikning tanadagi asosiy joyidan bowhqa joyga tarqalishi. Odatda…',
    transcript: '[ məˈtastəsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Metatarsal (n)',
    uz: 'Metatarsal',
    enDef:
        'Any of the five bones of the foot directly jointed to each of the toes.',
    uzDef:
        'Oyoqning beshta suyagidan har biri to’g’ridan to’g’ri barmoqlarning har biriga bog’langan.',
    transcript: '[ ˌmedəˈtärs(ə)l ]',
    favorite: false,
  ),
  Word(
    en: 'Metra (n)',
    uz: 'Metr',
    enDef: 'Uterus.',
    uzDef: 'Bachadon.',
    transcript: '[ metra ]',
    favorite: false,
  ),
  Word(
    en: 'etritims',
    uz: 'Eritmalar',
    enDef: 'Inflammation of the uterus.',
    uzDef: 'Bachadonning yallig’lanishi.',
    transcript: '[ etritims ]',
    favorite: false,
  ),
  Word(
    en: 'Metrorrhagia (n)',
    uz: 'Metrorragiya',
    enDef:
        'Uterine bleeding, usually of normal amount occurring at irregular intervals.',
    uzDef:
        'Bachadondan qon ketish , odatda tartibsiz vaqt oralig’ida sodir bo’ladigan normal miqdorda.',
    transcript: '[ ˌmētrəˈrājēə ]',
    favorite: false,
  ),
  Word(
    en: 'Microbe (n)',
    uz: 'Mikrob',
    enDef: 'A microorganism, such as bacterium.',
    uzDef: 'Mikroorganizm, masalan, bakteriya.',
    transcript: '[ ˈmīˌkrōb ]',
    favorite: false,
  ),
  Word(
    en: 'Microbiology (n)',
    uz: 'Mikrobiologiya',
    enDef:
        'The study of living microbes, including bacteria, protozoa and molds.',
    uzDef:
        'Tirik mikroblarni, shu jumladan bakteriyalarni, protozoalarni va mog’orlarni o’rganish.',
    transcript: '[ ˌmīkrōˌbīˈäləjē ]',
    favorite: false,
  ),
  Word(
    en: 'Microencephaly (n)',
    uz: 'Mikroensefali',
    enDef: 'Having an abnormally small brain.',
    uzDef: 'Anormal darajada kichik miyaga ega bo’lish.',
    transcript: '[ mikroensefali ]',
    favorite: false,
  ),
  Word(
    en: 'Microorganism (n)',
    uz: 'Mikroorganizm',
    enDef: 'A microscopic plant or animal.',
    uzDef: 'Mikroskopik o’simlik yoki hayvon.',
    transcript: '[ ˌmīkrōˈôrɡənizəm ]',
    favorite: false,
  ),
  Word(
    en: 'Midwife (n)',
    uz: 'Doya',
    enDef:
        'A person who helps women at childbirth, but who isn’t a nurse or physician.',
    uzDef:
        'Tug’ish paytida ayollarga yordam beradigan , ammo hamshira yoki shifokor bo’lmagan odam.',
    transcript: '[ ˈmidˌwīf ]',
    favorite: false,
  ),
  Word(
    en: 'Migraine (n)',
    uz: 'Migren',
    enDef:
        'A group of symptoms that includes a severe headache, usually on one side of the head, and often accompanied by…',
    uzDef:
        'Odatda boshining bir tomonida kuchli bosh og’rig’ini o’z ichiga olgan simptomlar guruhi va ko’pincha…',
    transcript: '[ ˈmīˌɡrān ]',
    favorite: false,
  ),
  Word(
    en: 'Milia (n)',
    uz: 'Milia',
    enDef:
        'Pinhead-sized whitish skin lesions found on the face or trunk of some newborn infants.',
    uzDef:
        'Ba’zi yangi tug’ilgan chaqaloqlarning yuzida yoki tanasida topilgan  pinhead o’lchamdagi oq rangli teri jarohatlari.',
    transcript: '[ milia ]',
    favorite: false,
  ),
  Word(
    en: 'Miliaria (n)',
    uz: 'Miliariya',
    enDef:
        'Prickly heat or “heat rash” as a result of inflammation of the sweat glands and characterized by small, white or…',
    uzDef:
        '“Issiqlik toahmasi” ter bezlarining yallig’lanishi natijasida kivhik, oq yoki…',
    transcript: '[ ˌmilēˈerēə ]',
    favorite: false,
  ),
  Word(
    en: 'Miscarriage (n)',
    uz: 'Abort',
    enDef:
        'Natural loss of a fetus from the womb before it is sufficiently developed to survive. Also called spontaneous abortion.',
    uzDef:
        'Homilaning omon qolishi uchun etqrlicha rivojlanganidan oldin uning tabiiy yo’qolishi. Spontan abort deb ham ataladi.',
    transcript: '[ ˈmisˌkerij ]',
    favorite: false,
  ),
  Word(
    en: 'Mitral valve (n)',
    uz: 'Mitral qopqoq',
    enDef:
        'The valve of the heart between the left atrium and left ventricle that prevents the flow of blood back into…',
    uzDef:
        'Yurakning chap atrium va chap qorincha orasidagi klapan bo’lib, qonning orqasiga qaytilishiga to’sqinlik qiladi…',
    transcript: '[ ˈmītrəl ˌvalv ]',
    favorite: false,
  ),
  Word(
    en: 'Mittelschmerz (n)',
    uz: 'Mittwlschemerz',
    enDef:
        'Pelvic pain between periods, corresponding to the release of an ovum (egg) by an ovary.',
    uzDef:
        'Tuxumdonning tuxumdon(tuxum) chiqarishiga to’g’ri keladigan hayz davrlari orasidagi tos og’rig’i.',
    transcript: '[ mitelshemerz ]',
    favorite: false,
  ),
  Word(
    en: 'Mole (n)',
    uz: 'Mol',
    enDef:
        '1. A fleshy, pigmented skin blemish. 2. A mass of uterine tissue formed by a failure of the normal fertilization…',
    uzDef:
        '1. Go’shtli, pigmentli teri dog’i. 2. Oddiy urug’lanishning buzilishi natijasida hosil bo’lgan bachadon to’qimalarining massasi…',
    transcript: '[ moʻl ]',
    favorite: false,
  ),
  Word(
    en: 'Molluscum contagiosum (n)',
    uz: 'Molloskum contagiosum',
    enDef:
        'A viral infection of the skin characterized by lesions with depressed centers containing a curd-like substance.',
    uzDef:
        'Terining virusli imfesksiyasi, o’z ichiga tvorogga o’xshash moddani o’z ichiga olgan depressiv markazlarga ega bo’lgan shikastlanishlar bilan tavsiflanadi.',
    transcript: '[ mäˌləskəm kənˌtājēˈōsəm ]',
    favorite: false,
  ),
  Word(
    en: 'Mongolism (n)',
    uz: 'Mongolizm',
    enDef:
        'A condition present at birth characterized by mental deficiency, a broad face and slanting eyes. Also called Down syndrome.',
    uzDef:
        'Tug’ilganda aqliy zaiflik, keng  yuz va qiya ko’zlar bilan tavsiflangan holat. Down sindromi deb ham ataladi.',
    transcript: '[ mongolizm ]',
    favorite: false,
  ),
  Word(
    en: 'Monocyte (n)',
    uz: 'Monotsit',
    enDef: 'A large white blood cell leukocyte.',
    uzDef: 'Katta oq qon hujayralarileykositlari.',
    transcript: '[ ˈmänəˌsīt ]',
    favorite: false,
  ),
  Word(
    en: 'Mononucleosis (n)',
    uz: 'Mononuklyoz',
    enDef: 'An infection with Epstein-Barr virus. Also called “mono.”',
    uzDef: 'Epstein-Barr virusi bilan infektsiya. Shuningdek “mono”.',
    transcript: '[ ˌmänōˌn(y)o͞oklēˈōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Morbid (adj)',
    uz: 'Kasal',
    enDef:
        '1. Pathologic or abnormal. 2. Having to do with, or characterized by, disease…',
    uzDef:
        '1. Patalogik yoki anormal. 2. Kasallik bilan bog’liq yoki xarakterli…',
    transcript: '[ ˈmôrbəd ]',
    favorite: false,
  ),
  Word(
    en: 'Morning sickness (n)',
    uz: 'Erralab kasallik',
    enDef: 'Nausea and vomiting occurring during pregnancy.',
    uzDef: 'Homiladorlik paytida ko’ngil aynishi va qayt qilish.',
    transcript: '[ ˈmôrniNG ˌsiknis ]',
    favorite: false,
  ),
  Word(
    en: 'MRI (n)',
    uz: 'MRI',
    enDef: 'Magnetic resonance imaging.',
    uzDef: 'Magnit-rezonans  tomografiyasi.',
    transcript: '[ ˌemˌärˈī ]',
    favorite: false,
  ),
  Word(
    en: 'Mucosa (n)',
    uz: 'Shilliq qavat',
    enDef:
        'The membrane covering canals and cavities that open on the outside of the body, such as the gastrointestinal tract and…',
    uzDef:
        'Tananing tashqarisida  ochiladigan kanallar va bo’shliqlarni qoplaydigan membrana, masalan, oshqozon -ichak trakti va …',
    transcript: '[ myo͞oˈkōzə ]',
    favorite: false,
  ),
  Word(
    en: 'Mumps (n)',
    uz: 'Parotit',
    enDef:
        'A viral disease of childhood characterized by swelling of the parotid (salivary) glands and fever.',
    uzDef:
        'Parotid (tupuk) bezlarining shishishi va isitma bilan tavsiflangan bolalikdagi virusli kasallik.',
    transcript: '[ məmps ]',
    favorite: false,
  ),
  Word(
    en: 'Murmur (n)',
    uz: 'Shivirlash',
    enDef: 'An extra heart sound that may be normal or abnormal.',
    uzDef:
        'Oddiy yoki g’ayritabiiy bo’lishi mumkun bo’lgan qo’shimcha yurak tovushi.',
    transcript: '[ ˈmərmər ]',
    favorite: false,
  ),
  Word(
    en: 'Muscle (n)',
    uz: 'Muskul',
    enDef:
        'Tissue made up of bundles of long, slender cells that contract when stimulated.',
    uzDef:
        'To’qimalar rag’batlantirilganda qisqaradigan uzun, ingichka hujayralar to’plamparidan iborat.',
    transcript: '[ ˈməsəl ]',
    favorite: false,
  ),
  Word(
    en: 'Mutation (n)',
    uz: 'Mutatsiya',
    enDef: 'A damaged gene that may produce a disease or deficiency.',
    uzDef:
        'Kasallik yoki yetishmovchilikni keltirib chiqarishi mumkun bo’lgan shikastlangan gen.',
    transcript: '[ myo͞oˈtāSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Mute (adj)',
    uz: 'Ovozsiz',
    enDef: 'An inability or unwillingness to speak.',
    uzDef: 'Gapirishga qodir emaslik yoki istamaslik.',
    transcript: '[ myo͞ot ]',
    favorite: false,
  ),
  Word(
    en: 'Myalgia (n)',
    uz: 'Miyalji',
    enDef: 'Muscle pain.',
    uzDef: 'Mushak og’rig’i.',
    transcript: '[ mīˈalj(ē)ə ]',
    favorite: false,
  ),
  Word(
    en: 'Myasthenia gravis (n)',
    uz: 'Miyasteniya gravis',
    enDef: 'A chronic disease characterized by muscular weakness and fatigue.',
    uzDef:
        'Mushaklar zaifligi va charchoq bilan tavsiflangan surunkali kasallik.',
    transcript: '[ miyastenia gravis ]',
    favorite: false,
  ),
  Word(
    en: 'Myelin (n)',
    uz: 'Miyelin',
    enDef: 'The fat-like substance that insulates certain nerve fibers.',
    uzDef: 'Ba’zj nerv tolalarini izolyatsiya qiluvchi yog’ga o’xshash modda.',
    transcript: '[ ˈmīələn ]',
    favorite: false,
  ),
  Word(
    en: 'Myocarditis (n)',
    uz: 'Miyokardit',
    enDef: 'Inflammation of the heart muscle.',
    uzDef: 'Yurak mushaglarini yallig’lanishi.',
    transcript: '[ ˌmīōˌkärˈdīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Myoma (n)',
    uz: 'Mioma',
    enDef: 'A tumor of muscle cells.',
    uzDef: 'Mushak hujayralarini o’smasi',
    transcript: '[ myoma ]',
    favorite: false,
  ),
  Word(
    en: 'Myopia (n)',
    uz: 'Miyopi',
    enDef: 'Nearsightedness.',
    uzDef: 'Yaqindan ko’rish.',
    transcript: '[ mīˈōpēə ]',
    favorite: false,
  ),
  Word(
    en: 'Myositis (n)',
    uz: 'Miyozit',
    enDef: 'Inflammation of a muscle.',
    uzDef: 'Mushakning yallig’lanishi.',
    transcript: '[ ˌmīōˈsīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Myringotomy (n)',
    uz: 'Miringotomiya',
    enDef: 'An incision in the eardrum to relieve pressure or release fluid.',
    uzDef: 'Bosim yoki suyuqlikni chiqarish uchun quloq pardasidagi kesma.',
    transcript: '[ ˌmirənˈɡädəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Narcissistic (adj)',
    uz: 'Narsistik',
    enDef: 'Self-centered, being “in love” with oneself.',
    uzDef: 'O’zini o’ylash, o’ziga “sevgida” bo’lish',
    transcript: '[ ˌnärsəˈsistik ]',
    favorite: false,
  ),
  Word(
    en: 'Narcolepsy (n)',
    uz: 'Narkolepsiya',
    enDef: 'Frequent and uncontrolled desire for sleep.',
    uzDef: 'Tez-tez va nazoratsiz uyqu istagi.',
    transcript: '[ ˈnärkəˌlepsē ]',
    favorite: false,
  ),
  Word(
    en: 'Nausea (n)',
    uz: 'Ko’ngil aynishi',
    enDef:
        'A feeling of sickness in the stomach, sometimes followed by the urge to vomit.',
    uzDef: 'Oshqozonda kasallik hissi, ba’zida qusish istagi paydo bo’ladi.',
    transcript: '[ ˈnôzēə ]',
    favorite: false,
  ),
  Word(
    en: 'Nebulizer (n)',
    uz: 'Nebulizer',
    enDef: 'A device that produces a very fine vapor to be inhaled.',
    uzDef: 'Nafas olish uchun juda nozik bug’ hosil qiluvchi qurilma.',
    transcript: '[ ˈnebyəˌlīzər ]',
    favorite: false,
  ),
  Word(
    en: 'Necrosis (n)',
    uz: 'Nekroz',
    enDef: 'Death of a cell or tissue.',
    uzDef: 'Hujayra yoki to’qimalarning o’limi.',
    transcript: '[ neˈkrōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Nematode (n)',
    uz: 'Nematod',
    enDef: 'A roundworm that may infest the digestive tract of humans.',
    uzDef:
        'Odamning ovqat hazm qilish tizimiga zarar yetkazishi mumkin bo’lgan yumaloq qurt.',
    transcript: '[ ˈnēməˌtōd ]',
    favorite: false,
  ),
  Word(
    en: 'Neoplasm (n)',
    uz: 'Neoplazma',
    enDef: 'A new growth, tumor.',
    uzDef: 'Yangi o’sish, shish.',
    transcript: '[ ˈnēəˌplazəm ]',
    favorite: false,
  ),
  Word(
    en: 'Nephrectomy (n)',
    uz: 'Nefrektomiya',
    enDef: 'Surgical removal of a kidney.',
    uzDef: 'Burakni jarrohlik yo’lib bilan olib tashlash.',
    transcript: '[ nəˈfrektəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Nephritis (n)',
    uz: 'Nefrit',
    enDef: 'Inflammation of a kidney.',
    uzDef: 'Buyrakning yallig’lanishi.',
    transcript: '[ nəˈfrīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Nephropathy (n)',
    uz: 'Nefropatiya',
    enDef: 'Disease of the kidneys. Swelling or breakdown of the kidney.',
    uzDef: 'Buyraklar kasalligi. Buyrakning shishishi yoki buzilishi.',
    transcript: '[ nefropaty ]',
    favorite: false,
  ),
  Word(
    en: 'Nephrosis (n)',
    uz: 'Nedfroz',
    enDef:
        'A disease of the kidney that causes malfunction but no inflammation. Also called nephrotic syndrome.',
    uzDef:
        'Buyrakning noto’g’ri ishlashiga olib keladigan, ammo yallig’lanishsiz kasallik. Nefrotik sindrom deb ham ataladi.',
    transcript: '[ nəˈfrōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Nerve (n)',
    uz: 'Asab',
    enDef:
        'A cord-like structure made up of special tissue for carrying electrical impulses from one part of the body to another.',
    uzDef:
        'Elektr impulslarini tananing bir qismidan o’tkazish uchun maxsus to’qimadan iborat shnursimon tuzilma…',
    transcript: '[ nərv ]',
    favorite: false,
  ),
  Word(
    en: 'Neuralgia (n)',
    uz: 'Nevralogiya',
    enDef: 'Pain along the course of a nerve.',
    uzDef: 'Nerv yo’nalishi bo’ylab og’riq.',
    transcript: '[ n(y)o͝oˈralj(ē)ə ]',
    favorite: false,
  ),
  Word(
    en: 'Neuritis (n)',
    uz: 'Nevrit',
    enDef: 'Inflammation of a nerve.',
    uzDef: 'Nervning yallig’lanishi.',
    transcript: '[ ˌn(y)o͝oˈrīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Neurofibromatosis (n)',
    uz: 'Neyrofibramatos',
    enDef:
        'An inherited disorder that causes dark spots on the skin and tumors of the skin, peripheral, optic and acoustic nerves.',
    uzDef:
        'Terida qora dog’lar va teri, periferik, optik va akustik o’smalarni keltirib chiqaradigan irsiy kasallik…',
    transcript: '[ ˌn(y)o͝orōˌfībrəməˈtōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Neurology (n)',
    uz: 'Nevrologiya',
    enDef: 'The branch of medicine that pertains to the nervous system.',
    uzDef: 'Tiibbiyotning asab tizimiga tegishli bo’limi.',
    transcript: '[ n(y)o͝oˈräləjē ]',
    favorite: false,
  ),
  Word(
    en: 'Neuroma (n)',
    uz: 'Nevroma',
    enDef: 'A benign but sometimes painful tumor growing on a nerve.',
    uzDef: 'Nervda o’sadigan yaxshi, ammo ba’zida og’riqli o’sma.',
    transcript: '[ ˌn(y)o͝oˈrōmə ]',
    favorite: false,
  ),
  Word(
    en: 'Neuron (n)',
    uz: 'Neyron',
    enDef: 'A nerve cell.',
    uzDef: 'Nerv hujayrasi.',
    transcript: '[ ˈn(y)o͝orän ]',
    favorite: false,
  ),
  Word(
    en: 'Neuropathy (n)',
    uz: 'Neyropatiya',
    enDef: 'Disease of the nervous system or of an individual nerve.',
    uzDef: 'Asab tizimining yoki individual nervlarning kasalligi.',
    transcript: '[ ˌn(y)o͝oˈräpəTHē ]',
    favorite: false,
  ),
  Word(
    en: 'Neurosis (n)',
    uz: 'Nevroz',
    enDef:
        'An emotional disorder that can interfere with a person’s ability to lead a normal life.',
    uzDef:
        'Insonning normal hayot kechirishiga xalaqit berqdigan hissiy buzuqlik.',
    transcript: '[ n(y)o͝oˈrōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Neutrophil (n)',
    uz: 'Neytrofil',
    enDef: 'A mature white blood cell with a three- to five-lobed nucleus.',
    uzDef: 'Uchdan besh bo’lakli yadroli etuk oq qon hujayralari.',
    transcript: '[ ˈn(y)o͞otrəfil ]',
    favorite: false,
  ),
  Word(
    en: 'Nevus (n)',
    uz: 'Nevus',
    enDef: 'A mole or other colored spot on the skin.',
    uzDef: 'Teridagi mol yoki boshqa rangli nuqta.',
    transcript: '[ ˈnēvəs ]',
    favorite: false,
  ),
  Word(
    en: 'Nicotine (n)',
    uz: 'Nikotin',
    enDef:
        'A highly toxic and addictive component of tobacco. While the amounts obtained from smoking may not be enough to be…',
    uzDef:
        'Tamaki juda zaharli va o’ziga qaramlik qiluvchi komponent. Chekishdan olingan miqdorlar yetarli bo’lmasligi mumkin…',
    transcript: '[ ˈnikəˌtēn ]',
    favorite: false,
  ),
  Word(
    en: 'Night blindness (n)',
    uz: 'Tungi ko’rlik',
    enDef:
        'A reduced ability to see in dim light. May be caused by a vitamin-A deficiency or glaucoma.',
    uzDef:
        'Xira yrug’likda ko’rish qobiliyatining pasayishi. A vitamini yetishmovchiligi yoki glaukoma sabab bo’lishi mumkin.',
    transcript: '[ nīt ˈblīn(d)nis ]',
    favorite: false,
  ),
  Word(
    en: 'Nit (n)',
    uz: 'Nit',
    enDef: 'The egg of a louse.',
    uzDef: 'Bitning tuxum.',
    transcript: '[ nit ]',
    favorite: false,
  ),
  Word(
    en: 'Nocturia (n)',
    uz: 'Nokturiya',
    enDef: 'Excessive urination at night.',
    uzDef: 'Kechasi ortiqcha siyish.',
    transcript: '[ nokturiya ]',
    favorite: false,
  ),
  Word(
    en: 'Node (n)',
    uz: 'Tugun',
    enDef: 'A swelling, knot or knob.',
    uzDef: 'Shishish, tugun yoki tugma.',
    transcript: '[ nōd ]',
    favorite: false,
  ),
  Word(
    en: 'Nonunion (n)',
    uz: 'Birlashmaslik',
    enDef: 'Failure of the ends of a broken bone to mend.',
    uzDef: 'Singan suyakning uchlarini tikmaslik.',
    transcript: '[ nänˈyo͞onyən ]',
    favorite: false,
  ),
  Word(
    en: 'Norepinephrine (n)',
    uz: 'Norepinefrin',
    enDef:
        'A hormone produced by the adrenal medulla and certain sympathetic nerve fibers.',
    uzDef:
        'Buyrak uati bezi medullasi va ma’lum simpatik nerv tolalari tkmonidan ishlab chiqarilgan gormon.',
    transcript: '[ ˌnôrepəˈnefrən ]',
    favorite: false,
  ),
  Word(
    en: 'Nosocomial (adj)',
    uz: 'Nozokomial',
    enDef:
        'Having to do with the hospital. For example, an nosocomial infection is one that’s acquired during hospitalization.',
    uzDef:
        'Kasalxona bilan bog’liq. Masalan, kasalxonaga yotqizish paytida olingan nazakomial infeksia.',
    transcript: '[ ˌnōzōˈkōmēəl ]',
    favorite: false,
  ),
  Word(
    en: 'Obesity (n)',
    uz: 'Semizlik',
    enDef:
        'Having too much body fat. A weight more than 20% above the normal range.',
    uzDef:
        'Tana yog’ining haddan tashqari ko’p bo’lishi. Oddiy diapazondan 20% dan ortiq vazn.',
    transcript: '[ ōˈbēsədē ]',
    favorite: false,
  ),
  Word(
    en: 'Obsession (n)',
    uz: 'Ta’qib qilish',
    enDef: 'An ongoing preoccupation with an idea.',
    uzDef: 'G’oya bilan doimiy mashg’ullik.',
    transcript: '[ əbˈseSHən ]',
    favorite: false,
  ),
  Word(
    en: 'Obsessive-compulsive (adj)',
    uz: 'Obsesif-kompulsiv',
    enDef:
        'Marked by a need to repeatedly perform certain behaviors or rituals.',
    uzDef:
        'Muayyan hatti-harakatlar yoki marosimlarni qayta qayta bajarish zarurati bilan belgiilanadi.',
    transcript: '[ obseziv kompulsiv ]',
    favorite: false,
  ),
  Word(
    en: 'Obstetrics (n)',
    uz: 'Akusherlik',
    enDef:
        'The branch of medicine that deals with the care and treatment of women during pregnancy and childbirth.',
    uzDef:
        'Homiladorlik va tug’ish davrida ayollarni parvarish qilish va davolash bilan shug’ullanadigan tibbiyot sohasi.',
    transcript: '[ əbˈstetriks ]',
    favorite: false,
  ),
  Word(
    en: 'Occiput (n)',
    uz: 'Oksiput',
    enDef: 'The back of the head.',
    uzDef: 'Boshning orqa qismi.',
    transcript: '[ ˈäksəpət ]',
    favorite: false,
  ),
  Word(
    en: 'Occult (adj)',
    uz: 'Okkultiv',
    enDef: 'Hidden from view.',
    uzDef: 'Ko’zdan yashirilgan.',
    transcript: '[ əˈkəlt ]',
    favorite: false,
  ),
  Word(
    en: 'Occupational illness (n)',
    uz: 'Kasbiy kasallik',
    enDef: 'Any illness caused or aggravated by a person’s job.',
    uzDef:
        'Insonning ishi tufayli kelib chiqqan yoki kuchaygan har qanday kasallik.',
    transcript: '[ okupeshnal illnes ]',
    favorite: false,
  ),
  Word(
    en: 'Occupational therapy (n)',
    uz: 'Kaspiy terapiya',
    enDef:
        'Teaching useful skills to sick or handicapped people to promote rehabilitation and healing.',
    uzDef:
        'Kasal yoki nogiron kishilarga reabilitatsiya va davolanishni rivojlantirish uchun foydali ko’nikmalarni o’rgatish.',
    transcript: '[ okupeshnal terapy ]',
    favorite: false,
  ),
  Word(
    en: 'Ocular (adj)',
    uz: 'Ko’z',
    enDef: 'Having to do with the eye.',
    uzDef: 'Ko’z bilan bog’liq.',
    transcript: '[ ˈäkyələr ]',
    favorite: false,
  ),
  Word(
    en: 'Odontalgia (n)',
    uz: 'Odontalgiya',
    enDef: 'Toothache.',
    uzDef: 'Tish og’rig’i.',
    transcript: '[ odontalgiya ]',
    favorite: false,
  ),
  Word(
    en: 'Olecranon (n)',
    uz: 'Olekranon',
    enDef:
        'The projection of the ulna (the larger of the two bones in the forearm) at the elbow.',
    uzDef: 'Tirsakda ulna (bilakdagi ikkita suyakdan kattaroq) proyeksiyasi.',
    transcript: '[ ōˈlekrənän ]',
    favorite: false,
  ),
  Word(
    en: 'Olfactory (adj)',
    uz: 'Hidlash',
    enDef: 'Having to do with the sense of smell.',
    uzDef: 'Hid hissi bilan bog’liq.',
    transcript: '[ älˈfakt(ə)rē ]',
    favorite: false,
  ),
  Word(
    en: 'Oligomenorrhea (n)',
    uz: 'Oligomenoreya',
    enDef: 'Light menstrual flow.',
    uzDef: 'Yengil hayz ko’rish.',
    transcript: '[ ˌɒlɪɡoʊˌmɛnəˈriːə ]',
    favorite: false,
  ),
  Word(
    en: 'Oligospermia (n)',
    uz: 'Oligospermiya',
    enDef: 'A low number of sperm in the semen.',
    uzDef: 'Spermada kam miqdordagi sperma.',
    transcript: '[ oligospermiya ]',
    favorite: false,
  ),
  Word(
    en: 'Oliguria (n)',
    uz: 'Oliguriya',
    enDef: 'A condition characterized by an abnormally small output of urine.',
    uzDef: 'Anormap darajada kichik siydik chiqishi bilan tavsiflangan holat.',
    transcript: '[ ˌäləˈɡo͝orēə ]',
    favorite: false,
  ),
  Word(
    en: 'Oncology (n)',
    uz: 'Onkologiya',
    enDef: 'The study of tumors.',
    uzDef: 'Shishlarni o’rganish.',
    transcript: '[ änˈkäləjē ]',
    favorite: false,
  ),
  Word(
    en: 'Oophorectomy (n)',
    uz: 'Ooferaktomiya',
    enDef: 'The surgical removal of an ovary.',
    uzDef: 'Tuxumdonni jarrohlik yo’lib bilan olib tashlash.',
    transcript: '[ ˌōəfəˈrektəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Ophthalmology (n)',
    uz: 'Oftalmologiya',
    enDef: 'The branch of medicine that pertains to the eye and its diseases.',
    uzDef: 'Tibbiyotning ko’z va uning kasqlliklariga tegishli bo’limi.',
    transcript: '[ ˌäfTHə(l)ˈmäləjē ]',
    favorite: false,
  ),
  Word(
    en: 'Optic neuritis (n)',
    uz: 'Optik nervit',
    enDef:
        'Inflammation of the optic nerve, which connects the eye to the brain. Symptoms include pain with eye movement, blurred vision…',
    uzDef:
        'Ko’zni miya bian bog’laydigan optik asabning yallig’lanishi. Alomatlar orasida ko’z harakati bilan og’riq, loyqa ko’rish…',
    transcript: '[ optik neurit ]',
    favorite: false,
  ),
  Word(
    en: 'Optical (adj)',
    uz: 'Optik',
    enDef: 'Having to do with vision.',
    uzDef: 'Ko’rish bilan bog’liq.',
    transcript: '[ ˈäptək(ə)l ]',
    favorite: false,
  ),
  Word(
    en: 'Optometry (n)',
    uz: 'Optometriya',
    enDef: 'The practice of eye and vision care.',
    uzDef: 'Ko’z va ko’rishni parvarish qilish amaliyoti.',
    transcript: '[ äpˈtämətrē ]',
    favorite: false,
  ),
  Word(
    en: 'Orbit (n)',
    uz: 'Orbita',
    enDef: 'The bony cavity containing the eyeball. Eye socket.',
    uzDef: 'Ko’z olmasini o’z ichiga olgan suyak bo’shlig’i . Ko’z bo’shlig’i.',
    transcript: '[ ˈôrbət ]',
    favorite: false,
  ),
  Word(
    en: 'Orchiectomy (n)',
    uz: 'Orxiektomiya',
    enDef:
        'The surgical removal of one or both testicles. Also called castration.',
    uzDef:
        'Bir yoki ikkala moyakni jarrohlik yo’li bilan olib tashlash. Kastratsiya deb ham ataladi.',
    transcript: '[ ˌôrkēˈektəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Organ (n)',
    uz: 'Organ',
    enDef:
        'A structural unit of an animal or plant that serves a specific function.',
    uzDef:
        'Hayvon yoki o’simlikning muayyan vazifani bajaradigan tarkibiy birligi.',
    transcript: '[ ˈôrɡən ]',
    favorite: false,
  ),
  Word(
    en: 'Organic (adj)',
    uz: 'Organik',
    enDef: 'Having to do with substances derived from living organisms.',
    uzDef: 'Tirik organizmlardan olingan moddalar bilan bog’liq.',
    transcript: '[ ôrˈɡanik ]',
    favorite: false,
  ),
  Word(
    en: 'Orgasm (n)',
    uz: 'Orgazm',
    enDef: 'Sexual climax.',
    uzDef: 'Jinsiy avj.',
    transcript: '[ ˈôrˌɡazəm ]',
    favorite: false,
  ),
  Word(
    en: 'Orifice (n)',
    uz: 'Orifice',
    enDef: 'The entrance or outlet of a body cavity.',
    uzDef: 'Tana bo\'shlig\'ining kirish yoki chiqish joyi.',
    transcript: '[ ˈôrəfəs ]',
    favorite: false,
  ),
  Word(
    en: 'Oropharynx (n)',
    uz: 'Orafarenks',
    enDef: 'The part of the pharynx behind the mouth and tongue.',
    uzDef: 'Farenksning og’iz va til orqasidagi qismi.',
    transcript: '[ ˌôrōˈferiNGks ]',
    favorite: false,
  ),
  Word(
    en: 'Orthodontics (n)',
    uz: 'Ortodontiya',
    enDef:
        'The branch of dentistry that deals with the correction of irregularities of the teeth and related facial problems.',
    uzDef:
        'Tishlardagi nosimmetrikliklar va ular bilan bog’liq yuz muammolarini tuzatish bilan shug’ullanadigan stomotologiya bo’limi.',
    transcript: '[ ˌôrTHəˈdän(t)iks ]',
    favorite: false,
  ),
  Word(
    en: 'Orthopedics (n)',
    uz: 'Ortopediya',
    enDef:
        'The branch of medicine that deals with the treatment of deformities, diseases and injuries of the bones, joints and…',
    uzDef:
        'Suyaklar, bo’g’imlar va deformatsiyalar , kasalliklar va shikastlanishlarni davolash bilan shug’ullanadigan tibbiyot sohasi. ..',
    transcript: '[ ˌôrTHəˈpēdiks ]',
    favorite: false,
  ),
  Word(
    en: 'Orthopnea (n)',
    uz: 'Ortopnea',
    enDef: 'Difficulty breathing when lying flat.',
    uzDef: 'Yassi yotganda nafas olish qiyinlashuvi.',
    transcript: '[ ortopneya ]',
    favorite: false,
  ),
  Word(
    en: 'Oscillation (n)',
    uz: 'Tebranish',
    enDef: 'A back-and-forth motion; vibration.',
    uzDef: 'Oldinga va orqaga harakat; tebranish.',
    transcript: '[ ˌäsəˈlāSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Osgood-Schlatter disease (n)',
    uz: 'Osgud-Schlatter kasalligi',
    enDef:
        'Inflammation of the bone and cartilage of the shin bone, just below the knee.',
    uzDef:
        'Shisha suyagining suyagi va xaftaga yallig’lanishi, tizzadan biroz pastroq.',
    transcript: '[ Osgod-Sshlater dezis ]',
    favorite: false,
  ),
  Word(
    en: 'Ossicle (n)',
    uz: 'Suyak suyagi',
    enDef: 'A small bone.',
    uzDef: 'Kichik suyak.',
    transcript: '[ ˈäsək(ə)l ]',
    favorite: false,
  ),
  Word(
    en: 'Osteoarthritis (n)',
    uz: 'Osteoartrit',
    enDef:
        'A slowly progressive form of arthritis, usually found in older people. Characterized by deterioration of bone cartilage.',
    uzDef:
        'Artritning asta-sekin o’sib boruvchi shakli, odatda keksa odamlarda uchraydi. Suyak xaftaga tushishi bilan tavsiflanadi.',
    transcript: '[ ˌästēōärˈTHrīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Osteoma (n)',
    uz: 'Osteoma',
    enDef: 'A bony tumor',
    uzDef: 'Suyak shishi.',
    transcript: '[ oateoma ]',
    favorite: false,
  ),
  Word(
    en: 'Osteomalacia (n)',
    uz: 'Osteomolaziya',
    enDef: 'Softening of the bones resulting from deficient bone calcium.',
    uzDef:
        'Suyak kaltsiyining yetishmasligi natijasida suyaklarning yumshashi.',
    transcript: '[ ˌästēōməˈlāSH(ē)ə ]',
    favorite: false,
  ),
  Word(
    en: 'Osteomyelitis (n)',
    uz: 'Osteomiyelit',
    enDef: 'Infection of a bone.',
    uzDef: 'Suyak infeksiyasi.',
    transcript: '[ ˌästēōˌmīəˈlīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Osteopathy (n)',
    uz: 'Osteopatiya',
    enDef:
        'A system of therapy emphasizing primary medical care and the importance of body mechanics and manipulation to correct abnormalities.',
    uzDef:
        'Birlqmchi tibbiy yordam va anormalliklarni tuzatish uchun tana mexanikasi va manipulatsiya muhimligini ta’kidlaydigan terapiya tizimi.',
    transcript: '[ ˌästēˈäpəTHē ]',
    favorite: false,
  ),
  Word(
    en: 'Osteoporosis (n)',
    uz: 'Osteoporoz',
    enDef:
        'A bone disorder characterized by a reduction in bone density, chiefly found in women who have passed menopause and the…',
    uzDef:
        'Suyak zichligini pasayishi bilan tavsiflangan suyak kasalligi , asosan menopauzadan o’tgan ayollarda va …',
    transcript: '[ ˌästēōpəˈrōsəs ]',
    favorite: false,
  ),
  Word(
    en: 'Ostomy (n)',
    uz: 'Ostoma',
    enDef:
        'A procedure done to make a passageway for waste. A colostomy is an example.',
    uzDef:
        'Chiqindilarga o’tish yo’lini qilish uchun qilingan protsedura. Kolostomiya bunga misol bo’la oladi.',
    transcript: '[ ˈästəmi ]',
    favorite: false,
  ),
  Word(
    en: 'Otic (adj)',
    uz: 'Otik',
    enDef: 'Having to do with the ear.',
    uzDef: 'Quloq bilan bog’liq.',
    transcript: '[ ˈōdik ]',
    favorite: false,
  ),
  Word(
    en: 'Otitis (n)',
    uz: 'Otit',
    enDef:
        'Inflammation of the ear. Otitis externa (inflammation of the ear canal) is also called swimmer’s ear, while otitis media is…',
    uzDef:
        'Quloqning yallig’lanishi. Tashqi otit (eshitish kanalining yallig’lanish) suzuvchi qulog’i deb ham ataladi, o’rta otit esa…',
    transcript: '[ ōˈtīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Ovary (n)',
    uz: 'Tuxumdon',
    enDef: 'The female sex gland that contains ova, or eggs.',
    uzDef: 'Tuxum yoki tuxumni o’z ichiga olgan ayol jinsiy bezi.',
    transcript: '[ ˈōv(ə)rē ]',
    favorite: false,
  ),
  Word(
    en: 'Ovulation (n)',
    uz: 'Ovulyatsiya',
    enDef: 'The process in which an ovum is released from the ovary.',
    uzDef: 'Tuxumdonning tuxumdondan chiqishi jarayoni.',
    transcript: '[ ˌōvyəˈlāSHən ]',
    favorite: false,
  ),
  Word(
    en: 'Ovum (n)',
    uz: 'Tuxum hujayrasi',
    enDef: 'Egg; the female reproductive element.',
    uzDef: 'Tuxum; ayol jinsiy elementlari.',
    transcript: '[ ˈōvəm ]',
    favorite: false,
  ),
  Word(
    en: 'Oximeter (n)',
    uz: 'Oksimetr',
    enDef: 'A device for determining the oxygen saturation level of the blood.',
    uzDef:
        'Qonning kislorod bilan to’yinganlik darajasini aniqlash uchun qurilma.',
    transcript: '[ äkˈsimidər ]',
    favorite: false,
  ),
  Word(
    en: 'Oxygen (n)',
    uz: 'Kislorod',
    enDef: 'A chemical element essential for sustaining life.',
    uzDef: 'Hayotni saqlab qolish uchun zarur bo’lgan kimyoviy element.',
    transcript: '[ ˈäksəjən ]',
    favorite: false,
  ),
  Word(
    en: 'oxytocin',
    uz: 'Oksitotsin',
    enDef:
        'A pituitary hormone that encourages the pregnant uterus to contract and is sometimes used to induce labor. It also encourages…',
    uzDef:
        'Homilador bachadonning qisqariahini rag’batlantiradigan va ba’zida tug’ilish i qo’zg’atish uchun ishlatiladigan gipofiz gormoniz. Bu ham rag’batlantiradi…',
    transcript: '[ ˌäksəˈtōs(ə)n ]',
    favorite: false,
  ),
  Word(
    en: "Paget's disease (n)",
    uz: 'Paget kasalligi',
    enDef:
        'A type of cancer usually involving the breast’s larger ducts, areola and nipples. 2. A disease characterized by weakened…',
    uzDef:
        'Odatda ko\'krakning katta kanallari, areola va nipellarni o\'z ichiga olgan saraton turi.  2. Zaiflashish  bilan xarakterlanadigan kasallik.',
    transcript: '[ paj′ĭts dɪˈziːz ]',
    favorite: false,
  ),
  Word(
    en: 'Palate (n)',
    uz: 'Tanglay',
    enDef:
        'The roof of mouth. An anatomical structure that separates the nasal and oral cavities.',
    uzDef:
        'Burun va ogʻiz boʻshligʻini bir-biridan ajratib turadigan anatomik tuzilma.',
    transcript: '[palət]',
    favorite: false,
  ),
  Word(
    en: 'Palliative (adj)',
    uz: 'Palliativ',
    enDef: 'Controlling symptoms without curing the disease.',
    uzDef: 'Kasallikni davolamasdan simptomlarni nazorat qilish.',
    transcript: '[pæliətɪv]',
    favorite: false,
  ),
  Word(
    en: 'Pallor (n)',
    uz: 'Rangparlik',
    enDef: 'Pale appearance of the skin.',
    uzDef: 'Ta’naming ranging õchgan qismi.',
    transcript: '[pælər]',
    favorite: false,
  ),
  Word(
    en: 'Palpate (v)',
    uz: 'Paypaslash',
    enDef: 'To feel with the fingers.',
    uzDef: 'Barmoqlar bilan paypaslab his qilish.',
    transcript: '[pælˈpeɪt]',
    favorite: false,
  ),
  Word(
    en: 'Palpebra (n)',
    uz: 'Palpebra',
    enDef: 'The eyelid.',
    uzDef: 'Keng tarqalgan epidemiya.',
    transcript: '[pæl.pəb.ɹə]',
    favorite: false,
  ),
  Word(
    en: 'Palpitation (n)',
    uz: 'Yurak urishi',
    enDef: 'A sensation that the heart is beating too rapidly or strongly.',
    uzDef: 'Yurakning juda tez yoki kuchli urishi hissi.',
    transcript: '[pælˈpeɪʃn]',
    favorite: false,
  ),
  Word(
    en: 'Paralysis (n)',
    uz: 'falaj',
    enDef: 'Inability to move parts of the body.',
    uzDef: 'Tananing qismlarini harakatga keltira olmaslik.',
    transcript: '[pəˈrælɪsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Panacea (n)',
    uz: 'Panacea',
    enDef: 'A remedy for all diseases.',
    uzDef: 'Barcha kasalliklarga davo',
    transcript: '[pænəˈsiːə]',
    favorite: false,
  ),
  Word(
    en: 'Pancreas (n)',
    uz: 'Oshqozon osti bezi',
    enDef:
        'A gland located below and behind the stomach and liver that produces insulin and glucagon, the hormones involved in carbohydrate…',
    uzDef:
        'Oshqozon va jigar ostida va orqasida joylashgan, insulin va glyukagon, uglevodlar tarkibidagi gormonlar ishlab chiqaradigan bez ...',
    transcript: '[pæŋkriəs]',
    favorite: false,
  ),
  Word(
    en: 'Pancreatitis (n)',
    uz: 'Pankreatit',
    enDef: 'Inflammation of the pancreas.',
    uzDef: "Oshqozon osti bezining yallig'lanishi",
    transcript: '[pæŋkriəˈtaɪtɪs]',
    favorite: false,
  ),
  Word(
    en: 'Pandemic (n)',
    uz: 'Pandemiya',
    enDef: 'A widespread epidemic.',
    uzDef: 'Keng tarqalgan epidemiya.',
    transcript: 'Noun /pænˈdemɪk/',
    favorite: false,
  ),
  Word(
    en: 'Panic (n)',
    uz: 'Vahima',
    enDef: 'A sudden attack of anxiety.',
    uzDef: 'To\'satdan tashvish hujumi.',
    transcript: 'Noun /ˈpænɪk/',
    favorite: false,
  ),
  Word(
    en: 'Papilla (n)',
    uz: 'Emchak uchi',
    enDef: 'A small nipple-shaped projection.',
    uzDef: 'Kichkina nipel shaklidagi proektsiya.',
    transcript: '/pəˈpɪlə/',
    favorite: false,
  ),
  Word(
    en: 'Papilledema (n)',
    uz: 'Papilla shishi',
    enDef:
        'Swelling of the optic disk. May be due to an increase of pressure in the skull.',
    uzDef:
        'Optik diskning shishishi.  Bosh suyagidagi bosimning oshishi bilan bog’liq bo’lishi mumkin.',
    transcript: '/pəˈpɪldəmá/',
    favorite: false,
  ),
  Word(
    en: 'Papilloma (n)',
    uz: 'Papilloma',
    enDef: 'A benign tumor of the skin or mucous membranes. A wart.',
    uzDef: 'Teri yoki shilliq pardalarning yaxshi xulqli o’smasi.  Siğil.',
    transcript: 'Noun /ˌpæpɪˈləʊmə/',
    favorite: false,
  ),
  Word(
    en: 'Papule (n)',
    uz: 'Papula',
    enDef: 'A solid, raised skin lesion.',
    uzDef: 'Qattiq, ko’tarilgan terining shikastlanishi.',
    transcript: '/ˈpapjuːl/',
    favorite: false,
  ),
  Word(
    en: 'Para-aminobenzoic acid (n)',
    uz: 'Para-aminobenzoy kislotasi',
    enDef:
        'PABA, a substance used in suntan lotion and used clinically to treat rickettsial diseases.',
    uzDef:
        'PABA, quyosh losonida ishlatiladigan va rikketsiya kasalliklarini davolashda klinik jihatdan qo’llaniladigan modda.',
    transcript: 'pærə əˌmiːnoʊbɛnˈzoʊɪk ˈæsɪd',
    favorite: false,
  ),
  Word(
    en: 'Paracentesis (n)',
    uz: 'Parasentez',
    enDef: 'Surgical removal of fluid from a cavity.',
    uzDef: 'Bo’shliqdan suyuqlikni jarrohlik yo’li bilan olib tashlash.',
    transcript: 'pærəsɛnˈtiːsɪs',
    favorite: false,
  ),
  Word(
    en: 'Parainfluenza virus (n)',
    uz: 'Parainfluenza virusi',
    enDef:
        'One of a group of viruses that cause a variety of upper respiratory diseases.',
    uzDef:
        'Yuqori nafas yo’llarining turli kasalliklarini keltirib chiqaradigan viruslar guruhidan biri.',
    transcript: 'Noun /ˌpærəɪnfluˈɛnzə/ /ˈvaɪrəs/',
    favorite: false,
  ),
  Word(
    en: 'Paranasal sinuses (n)',
    uz: 'Paranasal sinuslar',
    enDef:
        'The mucosa-lined cavities in the bones of the skull that open into the passages of the nose.',
    uzDef:
        'Burun yo’llariga ochiladigan bosh suyagining suyaklaridagi shilliq qavat bilan qoplangan bo’shliqlar.',
    transcript: 'Noun /pærəˈneɪzəl ˈsaɪnəsɪz/',
    favorite: false,
  ),
  Word(
    en: 'Paranoia (n)',
    uz: 'Paranoyya',
    enDef:
        'A mental disorder characterized by a belief that others are out to get you.',
    uzDef:
        'Boshqalar sizni qo’lga kiritishga intilish bilan tavsiflangan ruhiy kasallik.',
    transcript: 'Noun /ˌpærəˈnɔɪə/',
    favorite: false,
  ),
  Word(
    en: 'Paraplegia (n)',
    uz: 'Paraplegiya',
    enDef: 'Inability to feel or move the legs.',
    uzDef: 'Oyoqlarni his qilish yoki harakatlantirish qobiliyati.',
    transcript: 'Noun /ˌpærəˈpliːdʒə/',
    favorite: false,
  ),
  Word(
    en: 'Parasite (n)',
    uz: 'Parazit',
    enDef:
        'An organism that lives on or in the tissues of another organism and draws its nourishment from the host.',
    uzDef:
        'Boshqa organizmda yoki uning to’qimalarida yashovchi va o’z ozuqasini uy egasidan oladigan organizm.',
    transcript: 'Noun /ˈpærəsaɪt/',
    favorite: false,
  ),
  Word(
    en: 'Paraspadias (n)',
    uz: 'Paraspadias',
    enDef:
        'A developmental abnormality in which the urethra opens along one side of the penis.',
    uzDef:
        'Jinsiy olatni bir tomoni bo’ylab siydik chiqarish kanali ochiladigan rivojlanish anomaliyasi.',
    transcript: '[ˌpærəˈspeɪdiəs]',
    favorite: false,
  ),
  Word(
    en: 'Parathyroid glands (n)',
    uz: 'Paratiroid bezlari',
    enDef:
        'Two pair of small glands situated next to or in the thyroid gland that are involved in the metabolism of…',
    uzDef:
        'Qalqonsimon bez yonida yoki uning ichida joylashgan ikki juft mayda bezlar metabolizmda ishtirok etadilar …',
    transcript: '/ˌparəˈθʌɪrɔɪd/ /ɡlænd/',
    favorite: false,
  ),
  Word(
    en: 'Parenteral (adj)',
    uz: 'Parenteral',
    enDef: 'Inside the body, but outside the intestines.',
    uzDef: 'Tananing ichida, lekin ichakdan tashqarida.',
    transcript: 'Adjective /pəˈrentl/',
    favorite: false,
  ),
  Word(
    en: 'Paresis (n)',
    uz: 'Parezlar',
    enDef: 'Partial or slight loss of feeling or movement.',
    uzDef: 'Hissiyot yoki harakatning qisman yoki ozgina yo’qolishi.',
    transcript: 'Noun / pəˈri sɪs, ˈpær ə sɪs /',
    favorite: false,
  ),
  Word(
    en: 'Paresthesia',
    uz: 'Paresteziya',
    enDef:
        'An abnormal sensation of burning or prickling on the skin, caused by a disorder of the nervous system.',
    uzDef:
        'Asab tizimining buzilishidan kelib chiqadigan g’ayritabiiy yonish yoki teri ustida sanchish hissi.',
    transcript: '/Parɪsˈθiːzɪə/',
    favorite: false,
  ),
  Word(
    en: "Parkinson's disease (n)",
    uz: 'Parkinson kasalligi',
    enDef:
        'A progressive disease of the brain. Characterized by tremors and muscle stiffness.',
    uzDef:
        'Miyaning progressiv kasalligi.  Tremor va mushaklarning qattiqligi bilan tavsiflanadi.',
    transcript: '/dɪˈziːz/',
    favorite: false,
  ),
  Word(
    en: "Parotid glands (n)",
    uz: 'Carotid bezlari',
    enDef: 'The largest of the salivary glands, located near the ears.',
    uzDef: 'Tuprik bezlarining eng kattasi, quloqlarga yaqin joylashgan.',
    transcript: '/pəˈrɒtɪd/ɡlænd/',
    favorite: false,
  ),
  Word(
    en: 'Paroxysm (n)',
    uz: 'Proksism',
    enDef: 'A sudden attack, or raised level of intensity, of symptoms.',
    uzDef: 'To’satdan hujum yoki alomatlarning kuchayishi.',
    transcript: '/ˈparəksɪz(ə)m/',
    favorite: false,
  ),
  Word(
    en: 'Pasteurization (n)',
    uz: 'Pasterizatsiya',
    enDef:
        'Heating milk or other substances to a temperature of 140§F for 30 minutes to kill harmful bacteria.',
    uzDef:
        'Zararli bakteriyalarni o’ldirish uchun sut yoki boshqa moddalarni 30 daqiqa davomida 140§F haroratgacha qo’ying.',
    transcript: 'Noun /ˌpɑːstʃəraɪˈzeɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Patella (n)',
    uz: 'Patella ,tizaband',
    enDef: 'The kneecap.',
    uzDef: 'Tizza qopqog’i.',
    transcript: 'Noun /pəˈtelə/',
    favorite: false,
  ),
  Word(
    en: 'Pathogen (n)',
    uz: 'Patogen',
    enDef: 'Any agent that causes disease.',
    uzDef: 'Kasallikni keltirib chiqaradigan har qanday agent.',
    transcript: 'Noun /ˈpæθədʒən/',
    favorite: false,
  ),
  Word(
    en: 'Pathology (n)',
    uz: 'Patologiya',
    enDef: 'The study of changes caused by disease.',
    uzDef: 'Kasallik natijasida yuzaga keladigan o’zgarishlarni o’rganish.',
    transcript: 'Noun /pəˈθɒlədʒi/',
    favorite: false,
  ),
  Word(
    en: 'Pectoral (adj)',
    uz: 'Siynaga oid',
    enDef: 'Having to do with the chest or breast.',
    uzDef: 'Ko’krak yoki ko’krak bilan bog’liq.',
    transcript: 'Adjective /ˈpektərəl/',
    favorite: false,
  ),
  Word(
    en: 'Pectus carinatum (n)',
    uz: 'Kõkrak qafasi',
    enDef:
        'An abnormally prominent sternum or breastbone. Also called pigeon breast.',
    uzDef:
        'G’ayritabiiy darajada ko’zga tashlanadigan sternum yoki ko’krak suyagi.  Shuningdek, kaptar ko’kragi deb ataladi.',
    transcript: '[ˈpɛktəs ˌkærɪˈneɪtəm]',
    favorite: false,
  ),
  Word(
    en: 'Pectus excavatum (n)',
    uz: 'Kõkrak uchi',
    enDef: 'A defect of the sternum that’s present at birth.',
    uzDef: 'Tug’ilganda mavjud bo’lgan sternum nuqson.',
    transcript: '[ˈpɛktəs ˌɛkskəˈveɪtəm]',
    favorite: false,
  ),
  Word(
    en: 'Pedal (adj)',
    uz: 'Pedal',
    enDef: 'Having to do with the feet.',
    uzDef: 'Oyoqlar bilan bog’liq.',
    transcript: 'Noun /ˈpedl/',
    favorite: false,
  ),
  Word(
    en: 'Pediatrics (n)',
    uz: 'Pediatriya',
    enDef:
        'The branch of medicine that deals with the development and care of infants and children.',
    uzDef:
        'Tibbiyotning chaqaloqlar va bolalarning rivojlanishi va parvarishi bilan shug’ullanadigan bo’limi.',
    transcript: 'Noun /ˌpiːdiˈætrɪks/',
    favorite: false,
  ),
  Word(
    en: 'Pediculosis (n)',
    uz: 'Pedikulyoz',
    enDef: 'Infestation with lice.',
    uzDef: 'Bitlar bilan zararlanish.',
    transcript: '/pi’dikjŭləŭsis/',
    favorite: false,
  ),
  Word(
    en: 'Pelvis (n)',
    uz: 'Tos suyagi',
    enDef: 'The bony structure in the lower part of the abdomen.',
    uzDef: 'Qarnning pastki qismidagi yog’on bo’lim.',
    transcript: 'Noun /ˈpelvɪs/',
    favorite: false,
  ),
  Word(
    en: 'Pemphigus (n)',
    uz: 'Pemfigus',
    enDef:
        'A group of autoimmune diseases characterized by blisters in the skin and mucous membranes.',
    uzDef:
        'Tana teri va mukozalarda pufakchalar bilan tavsiflangan avtoimmun kasalliklar guruh.',
    transcript: '/’pəmfigəs’/',
    favorite: false,
  ),
  Word(
    en: 'Pepsin (n)',
    uz: 'Pepsin',
    enDef:
        'An enzyme produced in the stomach that breaks down proteins into simpler compounds.',
    uzDef:
        'Oshqozonda yaratiladigan enzim, uni proteinlarni oddiy moddalarga ajratadi.',
    transcript: 'Noun /ˈpepsɪn/',
    favorite: false,
  ),
  Word(
    en: 'Peptic (adj)',
    uz: 'Peptik',
    enDef: 'Having to do with the stomach.',
    uzDef: 'Oshqozon bilan bog’liq.',
    transcript: 'Adjective /ˌpeptɪk/',
    favorite: false,
  ),
  Word(
    en: 'Percutaneous (adj)',
    uz: 'Teri orqali',
    enDef: 'Introduced through the skin.',
    uzDef: 'Teri orqali kiritiladi.',
    transcript: 'adjective /ˌpɜːkjuːˈteɪniəs/',
    favorite: false,
  ),
  Word(
    en: 'Perforation (n)',
    uz: 'Perforatsiya',
    enDef: 'A hole or break through a membrane or the wall of an organ.',
    uzDef: 'Teshik yoki organning membranasini yoki devorini kesib o’tish.',
    transcript: 'Noun /ˌpɜːfəˈreɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Pericarditis (n)',
    uz: 'Perikardit',
    enDef: 'Inflammation of the sac surrounding the heart.',
    uzDef: 'Yurakni o’rab turgan qopning yallig’lanishi.',
    transcript: 'Noun / ˌpɛr ɪ kɑrˈdaɪ tɪs /',
    favorite: false,
  ),
  Word(
    en: 'Pericardium (n)',
    uz: 'Perikard',
    enDef: 'The fibrous sac surrounding the heart.',
    uzDef: 'Tolali qop yurak.',
    transcript: 'Noun /ˌperiˈkɑːdiəm/',
    favorite: false,
  ),
  Word(
    en: 'Perineum (n)',
    uz: 'Perineum',
    enDef:
        'The area between the anus and the vulva in females, or between the anus and the scrotum in males.',
    uzDef:
        'Ayollarda anus va vulva orasidagi hudud, erkaklarda anus va moshina orasidagi hudud.',
    transcript: 'Noun /ˌperɪˈniːəm/',
    favorite: false,
  ),
  Word(
    en: 'Periodontitis (n)',
    uz: 'Periodontit',
    enDef: 'Inflammation of the tissues around the teeth.',
    uzDef: 'Tish atrofidagi to’qimalarning yallig’lanishi.',
    transcript: 'Noun /ˌperiədɒnˈtaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Periosteum (n)',
    uz: 'Periosteum',
    enDef:
        'The dense layer of vascular connective tissue enveloping the bones except at the surfaces of the joints.',
    uzDef:
        'Tana suyaklarini qoplaydigan biriktiruvchi to’qima, o’zaro sochlar bo’lmasdan qoplangan ziddiy to’qima.',
    transcript: '/ˌpɛrɪˈɒstɪəm/',
    favorite: false,
  ),
  Word(
    en: 'Peripheral (adj)',
    uz: 'Periferik',
    enDef:
        'At or near the surface of the body. Located away from the center structure.',
    uzDef:
        'Tananing yuzasida yoki yaqinida.  Markaz tuzilmasidan uzoqda joylashgan.',
    transcript: 'Adjective /pəˈrɪfərəl/',
    favorite: false,
  ),
  Word(
    en: 'Peristalsis (n)',
    uz: 'Periltastika',
    enDef:
        'The waves of contraction and relaxation of the smooth muscle of the digestive tract.',
    uzDef:
        'Ovqat hazm qilish traktining silliq mushaklarining qisqarishi va bo’shashishi to’lqinlari.',
    transcript: 'Noun /ˌperɪˈstælsɪs/',
    favorite: false,
  ),
  Word(
    en: 'Peritoneum (n)',
    uz: 'Qorin pardasi',
    enDef: 'The membrane lining the walls of the abdominal and pelvic cavity.',
    uzDef:
        'Qorin bo’shlig’I va tos bo’shlig’I devorlarini qoplaydigan membrana.',
    transcript: 'Noun /ˌperɪtəˈniːəm/',
    favorite: false,
  ),
  Word(
    en: 'Peritonitis (n)',
    uz: 'Peritonit',
    enDef: 'Inflammation of the peritoneum.',
    uzDef: 'Qorin pardaning yallig’lanishi.',
    transcript: 'Noun /ˌperɪtəˈnaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Pernicious (adj)',
    uz: 'Zararli',
    enDef: 'Fatal.',
    uzDef: 'Halokat.',
    transcript: 'Adjective /pəˈnɪʃəs/',
    favorite: false,
  ),
  Word(
    en: 'Pernicious anemia (n)',
    uz: 'Zararli anemiya',
    enDef: 'Anemia due to vitamin B12 deficiency.',
    uzDef: 'B12 vitamini etishmovchiligi tufayli yuzaga keladigan anemiya.',
    transcript: '/pəˈnɪʃəs əˈniːmiə/',
    favorite: false,
  ),
  Word(
    en: 'Pertussis (n)',
    uz: 'Kõkyõtal',
    enDef:
        'A serious infectious respiratory disease of children. Named for the distinctive whooping sound made by the patient after a coughing…',
    uzDef:
        'Bolalarning jiddiy yuqumli respirator kasalligi.  Bemorning yo’taldan keyin chiqaradigan o’ziga xos ko’k ovozi uchun nomlangan …',
    transcript: 'Noun/’pə’t āsis/',
    favorite: false,
  ),
  Word(
    en: 'Petit mal (n)',
    uz: 'Kichik mal',
    enDef: 'A mild seizure with a momentary loss of consciousness.',
    uzDef: 'Bir lahzalik ongni yo’qotish bilan birga engil tutilish.',
    transcript: '/’pəti ‘mæl/',
    favorite: false,
  ),
  Word(
    en: 'Phagocyte (n)',
    uz: 'Fagotsitlar',
    enDef: 'Any cell that destroys invading microorganisms.',
    uzDef: 'Bosqinchi mikroorganizmlarni yo’q qiladigan har qanday hujayra.',
    transcript: 'Noun /ˈfæɡəsaɪt/',
    favorite: false,
  ),
  Word(
    en: 'Phagomania (n)',
    uz: 'Fagomaniyaa',
    enDef: 'An obsession with eating.',
    uzDef: 'Ovqatlanishga obsessiya.',
    transcript: '(ˌfæɡəʊˈmeɪnɪə) / noun',
    favorite: false,
  ),
  Word(
    en: 'Pharmacist (n)',
    uz: 'Farmatsevt',
    enDef: 'A person licensed to mix and dispense drugs.',
    uzDef:
        'Dori vositalarini aralashtirish va tarqatish uchun litsenziyaga ega shaxs.',
    transcript: 'Noun /ˈfɑːməsɪst/',
    favorite: false,
  ),
  Word(
    en: 'Pharyngitis (n)',
    uz: 'Faringit',
    enDef: 'Inflammation of the pharynx. Also called a sore throat.',
    uzDef: 'Farenksning yallig’lanishi.  Tomoq og’rig’I ham deyiladi.',
    transcript: 'Noun /ˌfærɪnˈdʒaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Pharynx (n)',
    uz: 'Farenks, bõğin',
    enDef:
        'The cavity of the canal leading from the mouth and nasal passages to the larynx and the esophagus.',
    uzDef:
        'Og’iz va burun yo’llaridan halqum va qizilo’ngachga olib boruvchi kanal bo’shlig’i.',
    transcript: 'Noun /ˈfærɪŋks/',
    favorite: false,
  ),
  Word(
    en: 'Phenylalanine (n)',
    uz: 'Fenilalalin',
    enDef:
        'An essential amino acid occurring in proteins. A small amount of phenylalanine is necessary in the diet to make the…',
    uzDef:
        'Proteinlarda uchraydigan muhim aminokislota.  Ovqatlanish uchun oz miqdorda fenilalanin kerak bo’ladi …',
    transcript: '[ˌfɛnəlˈæləˌniːn]',
    favorite: false,
  ),
  Word(
    en: 'Phenylketonuria (PKU) (n)',
    uz: 'Fenilketonuriya (PKU)',
    enDef:
        'A rare inherited disorder. Causes an inability to metabolize phenylalanine, an amino acid that’s a common part of many proteins…',
    uzDef:
        'Kamdan kam uchraydigan irsiy kasallik.  Ko’pgina oqsillarning umumiy qismi bo’lgan aminokislota fenilalaninni metabolizatsiya qila olmasligiga olib keladi …',
    transcript: '[ˌfɛnəlˌkiːtoʊˈnjʊriə]',
    favorite: false,
  ),
  Word(
    en: 'Phimosis (n)',
    uz: 'Fimozis.',
    enDef: 'Excessive tightness of the foreskin of the penis.',
    uzDef: 'Jinsiy olatni sunnat terisining haddan tashqari tarangligi.',
    transcript: 'faɪˈmoʊsɪs',
    favorite: false,
  ),
  Word(
    en: 'Phlebitis (n)',
    uz: 'Flebit',
    enDef: 'Inflammation of a vein.',
    uzDef: 'Tomirning yallig’lanishi.',
    transcript: 'Noun /fləˈbaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Phlebotomy (n)',
    uz: 'Flebotomiya',
    enDef: 'Withdrawal of blood from a vein.',
    uzDef: 'Venadan qonni tortib olish.',
    transcript: 'Noun /fləˈbɒtəmi/',
    favorite: false,
  ),
  Word(
    en: 'Phlegm (n)',
    uz: 'Balğam',
    enDef:
        'Mucus, especially mucus produced by the lungs during inflammation or infection.',
    uzDef:
        'Shilliq, ayniqsa yallig’lanish yoki infektsiya paytida o’pka tomonidan ishlab chiqarilgan shilliq.',
    transcript: 'Noun /flem/',
    favorite: false,
  ),
  Word(
    en: 'Phobia (n)',
    uz: 'Fobiya',
    enDef: 'Any persistent, unreasonable abnormal fear.',
    uzDef: 'Har qanday doimiy, asossiz g’ayritabiiy qo’rquv.',
    transcript: 'Noun /ˈfəʊbiə/',
    favorite: false,
  ),
  Word(
    en: 'Phonation (n)',
    uz: 'Fonatsiya',
    enDef: 'Making vocal sounds.',
    uzDef: 'Ovozli tovushlarni yaratish.',
    transcript: 'Noun /fəˈneɪʃn,fəʊˈneɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Photophobia (n)',
    uz: 'Fotofobiya',
    enDef: 'Abnormal intolerance of light.',
    uzDef: 'Nurga g’ayritabiiy intolerans.',
    transcript: 'ˌfəʊtə(ʊ)ˈfəʊbɪə/',
    favorite: false,
  ),
  Word(
    en: 'Physician (n)',
    uz: 'Shifokor',
    enDef: 'A doctor. An authorized practitioner of medicine.',
    uzDef: 'Doktor.  Vakolatli tibbiyot mutaxassisi.',
    transcript: 'Noun /fɪˈzɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Physiology (n)',
    uz: 'Fiziologiya',
    enDef:
        'The branch of medicine that deals with the function of the various parts of the living organism.',
    uzDef:
        'Tirik organizmning turli qismlarining funktsiyalari bilan shug’ullanadigan tibbiyot sohasi.',
    transcript: 'Noun /ˌfɪziˈɒlədʒi/',
    favorite: false,
  ),
  Word(
    en: 'Pigeon toe (n)',
    uz: 'Katarina barmog’i',
    enDef: 'A foot condition where the toes turn in.',
    uzDef: 'Oyoq barmoqlari ichkariga kiradigan oyoq holati.',
    transcript: 'Noun /ˈpɪdʒɪn/ təʊ/',
    favorite: false,
  ),
  Word(
    en: 'Piles (n)',
    uz: 'Gemoroy',
    enDef: 'An enlarged vein inside or just outside the rectum.',
    uzDef: 'To’g’ri ichakning ichida yoki tashqarisida kengaygan tomir.',
    transcript: 'Noun /paɪlz/',
    favorite: false,
  ),
  Word(
    en: 'Pilus (n)',
    uz: 'Pilus',
    enDef: 'Hair.',
    uzDef: 'Soch',
    transcript: '/’pailùs’/',
    favorite: false,
  ),
  Word(
    en: 'Pimple (n)',
    uz: 'Husunbuzar',
    enDef: 'A small, elevated skin lesion.',
    uzDef: 'Kichkina, baland teri lezyoni',
    transcript: 'ˈpimpəl',
    favorite: false,
  ),
  Word(
    en: 'Pinguecula (n)',
    uz: 'Yoğ',
    enDef:
        'A yellowish spot on the cornea of the eye that sometimes occurs in the elderly.',
    uzDef:
        'Ko’zning shox pardasida ba’zida keksa odamlarda paydo bo’ladigan sarg’ish nuqta.',
    transcript: '[pɪŋˈɡwɛkjʊlə]',
    favorite: false,
  ),
  Word(
    en: 'Pink eye (n)',
    uz: 'Kõz qizarishi',
    enDef: 'Inflammation of the conjunctiva. Also called conjunctivitis.',
    uzDef: 'Konyunktivaning yallig’lanishi.  Konyunktivit deb ham ataladi.',
    transcript: '/pɪŋk aɪ/',
    favorite: false,
  ),
  Word(
    en: 'Pinna (n)',
    uz: 'Pinna',
    enDef: 'The part of the ear that’s projected outside of the head.',
    uzDef: 'Quloqning boshdan tashqarida joylashgan qismi.',
    transcript: 'ˈpinə',
    favorite: false,
  ),
  Word(
    en: 'Pinworm (n)',
    uz: 'Gijjalash',
    enDef:
        'A parasite, Enterobius vermicularis, that can cause intense itching around the anus.',
    uzDef:
        'Parazit, Enterobius vermicularis, anus atrofida kuchli qichishishga olib kelishi mumkin.',
    transcript: '/’pinwɜːm/',
    favorite: false,
  ),
  Word(
    en: 'Pituitary gland (n)',
    uz: 'Gipofiz bezi',
    enDef:
        'The gland that secretes hormones that influence body growth, metabolism and the function of other endocrine glands.',
    uzDef:
        'Tananing o’sishiga, metabolizmiga va boshqa endokrin bezlarning ishiga ta’sir qiluvchi gormonlarni chiqaradigan bez.',
    transcript: 'Noun /pɪˈtjuːɪtəri/ ɡlænd/',
    favorite: false,
  ),
  Word(
    en: 'Pityriasis (n)',
    uz: 'Pityriasis',
    enDef: 'A skin condition in which the skin forms thin, dry scales.',
    uzDef: 'Teri nozik, quruq tarozilar hosil qiladigan teri kasalligi.',
    transcript: '[ˌpɪtɪˈraɪəsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Placebo (n)',
    uz: 'Platsebo',
    enDef:
        'A harmless substance that resembles a medicine; often used to test the effectiveness of medicines.',
    uzDef:
        'Dori-darmonga o’xshash zararsiz modda;  ko’pincha dori vositalarining samaradorligini tekshirish uchun ishlatiladi.',
    transcript: 'Noun /pləˈsiːbəʊ/',
    favorite: false,
  ),
  Word(
    en: 'Placenta (n)',
    uz: 'Platsenta',
    enDef:
        'A spongy structure that grows on the uterine wall during pregnancy and provides nutrition to the fetus.',
    uzDef:
        'Homiladorlik davrida bachadon devorida o’sadigan va homilaning ovqatlanishini ta’minlaydigan gubka tuzilishi.',
    transcript: 'Noun /pləˈsentə/',
    favorite: false,
  ),
  Word(
    en: 'Plague (n)',
    uz: 'Vabo',
    enDef:
        '1. Any contagious epidemic disease that is deadly. 2. An infectious disease caused by Yersinia pestis that can be spread…',
    uzDef:
        'O’limga olib keladigan har qanday yuqumli epidemik kasallik.  2. Yersinia pestis qoʻzgʻatuvchi, tarqalishi mumkin boʻlgan yuqumli kasallik…',
    transcript: 'Noun /pleɪɡ/',
    favorite: false,
  ),
  Word(
    en: 'Plantar (adj)',
    uz: 'Plantar',
    enDef: 'Having to do with the sole of the foot.',
    uzDef: 'Oyoqning tagligi bilan bog’liq.',
    transcript: '/ˈplantə/',
    favorite: false,
  ),
  Word(
    en: 'Plasma (n)',
    uz: 'Plazma',
    enDef: 'The fluid portion of the blood.',
    uzDef: 'Qonning suyuq qismi.',
    transcript: '/ˈplazmə/',
    favorite: false,
  ),
  Word(
    en: 'Platelet (n)',
    uz: 'Trombotsitlar',
    enDef:
        'A thrombocyte, the smallest of the formed components of blood, associated with blood clotting.',
    uzDef:
        'Trombotsit, qonning hosil bo’lgan tarkibiy qismlaridan eng kichiki, qon ivishi bilan bog’liq.',
    transcript: 'ˈpleɪtlɪt',
    favorite: false,
  ),
  Word(
    en: 'Pleura (n)',
    uz: 'Plevra',
    enDef:
        'The membrane surrounding the lungs and lining the walls of the chest cavity.',
    uzDef:
        'O’pkani o’rab turgan va ko’krak bo’shlig’I devorlarini qoplaydigan membrana.',
    transcript: 'ˈplʊərə',
    favorite: false,
  ),
  Word(
    en: 'Pleurisy (n)',
    uz: 'Zotiljam',
    enDef: 'Inflammation of the pleura.',
    uzDef: 'Plevraning yallig’lanishi.',
    transcript: 'ˈplʊərəsi',
    favorite: false,
  ),
  Word(
    en: 'Plexus (n)',
    uz: 'Dihaniya',
    enDef: 'A network of nerves or veins.',
    uzDef: 'Nervlar yoki tomirlar tarmog’i.',
    transcript: 'ˈpleksəs',
    favorite: false,
  ),
  Word(
    en: 'Plumbism (n)',
    uz: 'Plumbiklik',
    enDef: 'Chronic lead poisoning.',
    uzDef: 'Surunkali qo’rgoshin zaharlanishi.',
    transcript: 'ˈplʌmbɪz(ə)m',
    favorite: false,
  ),
  Word(
    en: 'Pneumoconiosis (n)',
    uz: 'Pnevmokonioz',
    enDef:
        'Any of several lung diseases caused by inhaling particles of industrial substances.',
    uzDef:
        'Sanoat moddalarining zarralarini nafas olish natijasida yuzaga keladigan bir nechta o’pka kasalliklarining har biri.',
    transcript: '[ˌnjuːməʊkəʊnɪˈəʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Pneumonia (n)',
    uz: 'O’pka yalliglanishi, pnevnomaniya',
    enDef: 'Acute inflammation or infection of the lungs.',
    uzDef: 'O’pkaning o’tkir yallig’lanishi yoki infektsiyasi.',
    transcript: 'njuːˈməʊniə',
    favorite: false,
  ),
  Word(
    en: 'Pneumothorax (n)',
    uz: 'Zararlangan õpka',
    enDef:
        'The buildup of air or gas in the chest cavity. May cause lung collapse.',
    uzDef:
        'Ko’krak bo’shlig’ida havo yoki gazning to’planishi.  O’pka kollapsiga olib kelishi mumkin.',
    transcript: '[ˌnjuːməˈθɔræks]',
    favorite: false,
  ),
  Word(
    en: 'Podiatry (n)',
    uz: 'Podiatriya',
    enDef: 'The branch of medicine that pertains to the foot and its ailments.',
    uzDef: 'Oyoq va uning kasalliklariga taalluqli tibbiyot sohasi.',
    transcript: 'Pəˈdaɪətri',
    favorite: false,
  ),
  Word(
    en: 'Quackery (n)',
    uz: 'Samarasiz muolaja',
    enDef:
        'Misrepresentation of a product’s or person’s ability to diagnose and treat disease.',
    uzDef:
        'Mahsulot yoki shaxsning kasallikni tashxislash va davolash qobiliyatini noto’g’ri ko’rsatish.',
    transcript: 'Noun /ˈkwækəri',
    favorite: false,
  ),
  Word(
    en: 'Quadriceps (n)',
    uz: 'Sondagi asosiy yirik muskullar',
    enDef:
        'The name applied collectively to a group of four thigh muscles that insert together into the tendon surrounding the…',
    uzDef:
        'Bu nom to’rtta son mushaklari guruhiga qo’llaniladi, ular birgalikda tendonni o’rab oladilar …',
    transcript: 'Noun /ˈkwɒdrɪseps',
    favorite: false,
  ),
  Word(
    en: 'Quadriplegia (n)',
    uz: 'To’rt oyoq-qo’llarining falaji) kvadriplegiya',
    enDef: 'Loss of feeling and movement of the arms and legs',
    uzDef: 'Qo’l va oyoqlarning his-tuyg’ularini va harakatlarini yo’qotish',
    transcript: 'Noun /ˌkwɒdrɪˈpliːdʒə/',
    favorite: false,
  ),
  Word(
    en: 'Quarantine (n)',
    uz: 'Karantin',
    enDef:
        'Any isolation or restriction placed on movement to or from a place where communicable diseases have been diagnosed.',
    uzDef:
        'Yuqumli kasalliklar aniqlangan joyga yoki undan ko’chib o’tishga qo’yilgan har qanday izolyatsiya yoki cheklash.',
    transcript: 'Noun /ˈkwɒrəntiːn/',
    favorite: false,
  ),
  Word(
    en: 'Quickening (n)',
    uz: 'Tezlashuv',
    enDef: 'The first perceived movements of a fetus in the uterus.',
    uzDef: 'Bachadondagi homilaning birinchi seziladigan harakatlari.',
    transcript: '/ˈkwɪkəniŋ/',
    favorite: false,
  ),
  Word(
    en: 'Rad (n)',
    uz: 'Radian',
    enDef:
        'Radiation absorbed dose. A unit of measurement of the absorbed dose of ionizing radiation.',
    uzDef:
        'So’rilgan nurlanish dozasi.  Ionlashtiruvchi nurlanishning so’rilgan dozasini o’lchash birligi.',
    transcript: 'Noun [physics]',
    favorite: false,
  ),
  Word(
    en: 'Radiculopathy (n)',
    uz: 'Radikulopatiya',
    enDef: 'A disease or other problem affecting a nerve root.',
    uzDef: 'Nerv ildiziga ta’sir qiladigan kasallik yoki boshqa muammo.',
    transcript: '[ˌrædɪˈkjuːlɒpəθi]',
    favorite: false,
  ),
  Word(
    en: 'Radioisotope (n)',
    uz: 'Radiozotop',
    enDef:
        'A radioactive form of an element. Used in certain diagnostic tests.',
    uzDef:
        'Elementning radioaktiv shakli.  Muayyan diagnostik testlarda qo’llaniladi.',
    transcript: 'Noun /ˌreɪdiəʊˈaɪsətəʊp/',
    favorite: false,
  ),
  Word(
    en: 'Radiology (n)',
    uz: 'Radiologiya',
    enDef: 'The branch of medicine that deals with the use of x-rays.',
    uzDef:
        'Rentgen nurlaridan foydalanish bilan shug’ullanadigan tibbiyot sohasi.',
    transcript: 'Noun /ˌreɪdiˈɒlədʒi/',
    favorite: false,
  ),
  Word(
    en: 'Radon (n)',
    uz: 'Radon',
    enDef:
        'A colorless, radioactive gas produced by the decay of radium. The presence of sufficient quantities of this gas in homes…',
    uzDef:
        'Radiyning parchalanishi natijasida hosil bo’lgan rangsiz, radioaktiv gaz.  Uylarda bu gazning etarli miqdorda mavjudligi …',
    transcript: 'Noun /ˈreɪdɒn/',
    favorite: false,
  ),
  Word(
    en: 'Rash (n)',
    uz: 'Toshma',
    enDef: 'Visual marks or spots that appear on the skin.',
    uzDef: 'Terida paydo bo’ladigan vizual belgilar yoki dog’lar.',
    transcript: 'Noun /ræʃ/',
    favorite: false,
  ),
  Word(
    en: "Raynaud's phenomenon (n)",
    uz: 'Reyno fenomeni',
    enDef:
        'A circulation disorder characterized by changes of blood flow, resulting in the hands and feet becoming pale, followed by redness…',
    uzDef:
        'Qon aylanishining buzilishi, bu qon oqimining o’zgarishi bilan tavsiflanadi, natijada qo’llar va oyoqlar oqarib ketadi, keyin qizarib ketadi …',
    transcript: '[ˈreɪnoʊz ˈfɪnəmɪnɒn]',
    favorite: false,
  ),
  Word(
    en: "Recrudescence (n)",
    uz: 'Yoqimsiz holat yoki narsaning takrorlanishi',
    enDef: 'To reoccur after a temporary absence.',
    uzDef: 'Vaqtinchalik yo’qlikdan keyin takrorlanish.',
    transcript: '/ˌriːkruːˈdesns/',
    favorite: false,
  ),
  Word(
    en: 'Rectum (n)',
    uz: 'Tõğri ichak',
    enDef: 'The last portion of the large intestine.',
    uzDef: 'Yo’g’on ichakning oxirgi qismi.',
    transcript: '/ˈrektəm/',
    favorite: false,
  ),
  Word(
    en: 'Reflux (n)',
    uz: 'Reflyuks',
    enDef: 'A return flow.',
    uzDef: 'Qaytish oqimi.',
    transcript: 'Noun ˈrēˌfləks',
    favorite: false,
  ),
  Word(
    en: 'Refraction (n)',
    uz: 'Reaksiya',
    enDef:
        'The bending of a ray or wave of light from one medium to a medium of a different density…',
    uzDef:
        'Nur yoki yorug‘lik to‘lqinining bir muhitdan boshqa zichlikdagi muhitga egilishi…',
    transcript: '/rɪˈfrækʃn/',
    favorite: false,
  ),
  Word(
    en: 'Regurgitation (n)',
    uz: 'Og’izga qaytarish',
    enDef:
        'The return of partly digested food from the stomach to the mouth or of blood in a reverse direction through…',
    uzDef:
        'Qisman hazm qilingan ovqatning oshqozondan og’izga yoki qonga teskari yo’nalishda qaytishi …',
    transcript: '/rɪˌɡɜːdʒɪˈteɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Rehabilitation (n)',
    uz: 'Reabilitatsiya',
    enDef:
        'The process of restoring one’s ability to live as normally as possible after an injury or illness.',
    uzDef:
        'Jarohat yoki kasallikdan keyin iloji boricha normal yashash qobiliyatini tiklash jarayoni.',
    transcript: '/ˌriːəˌbɪlɪˈteɪʃn/',
    favorite: false,
  ),
  Word(
    en: "Reiter's syndrome (n)",
    uz: 'Reiter sindromi',
    enDef:
        'A complex group of symptoms marked by inflammation of the urethra or cervix, conjunctiva and joints.',
    uzDef:
        'Uretra yoki bachadon bo’yni, kon’yunktiva va bo’g’imlarning yallig’lanishi bilan belgilanadigan murakkab simptomlar guruhi.',
    transcript: 'ˈrīdərz ˌsinˌdrōm',
    favorite: false,
  ),
  Word(
    en: "Relapse (n)",
    uz: 'Takrorlanish',
    enDef: 'The return of a disease after its apparent resolution.',
    uzDef: 'Kasallikning aniq bartaraf etilganidan keyin qaytishi.',
    transcript: '/ˈriːlæps/',
    favorite: false,
  ),
  Word(
    en: 'REM (n)',
    uz: 'Uyquning tush ko’radigan va ko’z qimirlaydigan muddati',
    enDef:
        'Rapid eye movement. The phase of sleep associated with dreaming and distinguished from the other stages of sleep by rapid…',
    uzDef:
        'Tez ko’z harakati.  Uyqu fazasi tush ko’rish bilan bog’liq va uyquning boshqa bosqichlaridan tezligi bilan ajralib turadi …',
    transcript: '/rem/',
    favorite: false,
  ),
  Word(
    en: 'Remedy (n)',
    uz: 'Dori-darmon',
    enDef: 'Anything that cures.',
    uzDef: 'Davolaydigan har qanday narsa.',
    transcript: '/ˈremədi/',
    favorite: false,
  ),
  Word(
    en: 'Remission (n)',
    uz: 'Kasallikning susayishi',
    enDef: 'Improvement of the symptoms of a disease.',
    uzDef: 'Kasallik belgilarining yaxshilanishi.',
    transcript: '/rɪˈmɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Renal (adj)',
    uz: 'Buyrak',
    enDef: 'Having to do with the kidney.',
    uzDef: 'Buyrak bilan bog’liq.',
    transcript: '/ˈriːnl/',
    favorite: false,
  ),
  Word(
    en: 'Reservoir (n)',
    uz: 'Reservor',
    enDef:
        'A medical term used to describe a source of organisms causing a disease.',
    uzDef:
        'Kasallikni keltirib chiqaradigan organizmlarning manbasini tasvirlash uchun ishlatiladigan tibbiy atama.',
    transcript: '/ˈrezəvwɑːr/',
    favorite: false,
  ),
  Word(
    en: 'Respiration (n)',
    uz: 'Nafas olish',
    enDef:
        'The act or process of breathing. The process by which a living organism or cell takes in oxygen from the…',
    uzDef:
        'Nafas olish harakati yoki jarayoni.  Tirik organizm yoki hujayraning kislorodni olish jarayoni…',
    transcript: '/ˌrespəˈreɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Resuscitation (n)',
    uz: 'Xushidan ketish',
    enDef:
        'Restoring the heartbeat and/or breathing in someone who’s apparently dead. Also called artificial respiration.',
    uzDef:
        'Ko’rinishidan o’lgan odamda yurak urishini va / yoki nafas olishni tiklash.  Sun’iy nafas olish ham deyiladi.',
    transcript: '/rɪˌsʌsɪˈteɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Retardation (n)',
    uz: 'Sekinlashtirish',
    enDef:
        'Delay or halt of any process such as mental or physical development',
    uzDef:
        'Aqliy yoki jismoniy rivojlanish kabi har qanday jarayonni kechiktirish yoki to’xtatish',
    transcript: '/ˌriːtɑːˈdeɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Retina (n)',
    uz: 'Retina',
    enDef:
        'The innermost layer of the eyeball. The retina contains the light-sensing rods and cones used for vision.',
    uzDef:
        'Ko’z olmasining eng ichki qavati.  To’r pardada ko’rish uchun ishlatiladigan yorug’likni sezuvchi tayoqchalar va konuslar mavjud.',
    transcript: '/ˈretɪnə/',
    favorite: false,
  ),
  Word(
    en: 'Retinopathy (n)',
    uz: 'Retinopatsiya',
    enDef: 'Degeneration of the retina.',
    uzDef: 'Retinaning degeneratsiyasi.',
    transcript: 'Noun ˌretnˈäpəTHē',
    favorite: false,
  ),
  Word(
    en: 'Retrobulbar (adj)',
    uz: 'Retrobulbar',
    enDef: 'Behind the eyeball.',
    uzDef: 'Ko’z olmasining orqasida.',
    transcript: '[ˌrɛtroʊˈbʌlbər]',
    favorite: false,
  ),
  Word(
    en: 'Retrovirus (n)',
    uz: 'Retrovirus',
    enDef:
        'A virus that produces DNA from RNA (the opposite of the normal order). A group of viruses that includes…',
    uzDef:
        'RNK dan DNK hosil qiluvchi virus (oddiy tartibning aksi). O’z ichiga olgan viruslar guruhi …',
    transcript: '/ˈrɛtroʊˌvaɪrəs/',
    favorite: false,
  ),
  Word(
    en: 'Rh factor (n)',
    uz: 'Contagious modda',
    enDef:
        'One of the antigens present on red blood cells. Used in categorizing the type of blood a person has.',
    uzDef:
        'Qizil qon hujayralarida mavjud bo’lgan antijenlardan biri. Odamning qon turini tasniflashda foydalaniladi.',
    transcript: 'noun /ˈriːsəs fæktə(r)/',
    favorite: false,
  ),
  Word(
    en: 'Rheumatism (n)',
    uz: 'Revmatizm',
    enDef:
        'Pain in the muscles and joints. Characterized by inflammation and stiffness. Sometimes used to describe arthritis, bursitis and sciatica.',
    uzDef:
        'Mushaklar va bo’g’imlarda og’riq. Yallig’lanish va qattiqlik bilan tavsiflanadi. Ba’zan artrit, bursit va siyatikani tasvirlash uchun ishlatiladi.',
    transcript: 'Noun /ˈruːmətɪzəm/',
    favorite: false,
  ),
  Word(
    en: 'Rhinitis (n)',
    uz: 'Rinit',
    enDef: 'Inflammation of the mucous membranes of the nose.',
    uzDef: 'Burunning shilliq qavatining yallig’lanishi.',
    transcript: 'Noun /raɪˈnaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Rhinoplasty (n)',
    uz: 'Rinoplastika',
    enDef: 'Plastic surgery of the nose.',
    uzDef: 'Burunning plastik jarrohligi.',
    transcript: '[ˈraɪnoʊˌplæsti]',
    favorite: false,
  ),
  Word(
    en: 'Rhinorrhea (n)',
    uz: 'Rinoreya',
    enDef: 'Runny nose.',
    uzDef: 'Tumov',
    transcript: '[ˌraɪnəˈriə]',
    favorite: false,
  ),
  Word(
    en: 'Rickets (n)',
    uz: 'Raxit',
    enDef:
        'A condition resulting from a vitamin D deficiency in childhood. Characterized by the softening of the bones and associated…',
    uzDef:
        'Bolalikda D vitamini etishmasligidan kelib chiqadigan holat. Suyaklarning yumshashi bilan tavsiflanadi va ular bilan bog’liq …',
    transcript: 'Noun /ˈrɪkɪts/',
    favorite: false,
  ),
  Word(
    en: 'Ringworm (n)',
    uz: 'Moyxo’rak, qirmatemiratki',
    enDef: 'A fungal infection of the skin.',
    uzDef: 'Terining qo’ziqorin infektsiyasi.',
    transcript: 'Noun /ˈrɪŋwɜːm/',
    favorite: false,
  ),
  Word(
    en: 'Rocky Mountain spotted fever (n)',
    uz: 'Rokki tog\'li dog\'li isitma',
    enDef: 'An infectious disease spread by tick bites.',
    uzDef: 'Shomil chaqishi bilan yuqadigan yuqumli kasallik.',
    transcript: '[ˈrɒki ˈmaʊntən ˈspɒtɪd ˈfiːvər]',
    favorite: false,
  ),
  Word(
    en: 'Roseola infantum (n)',
    uz: 'Roseola infantum',
    enDef:
        'A common viral infection of young children. Characterized by high fever, irritability and a faint rose-colored rash that appears on…',
    uzDef:
        'Yosh bolalarning keng tarqalgan virusli infektsiyasi. Yuqori isitma, asabiylashish va xira atirgul rangli toshmalar bilan tavsiflanadi …',
    transcript: '[roʊˈziːələ ˈɪnfəntəm]',
    favorite: false,
  ),
  Word(
    en: 'Rubella (n)',
    uz: 'Qizilcha',
    enDef:
        'A mild childhood disease that causes fever and rash. Although rubella is mild in childhood, it’s dangerous to pregnant women…',
    uzDef:
        'Isitma va toshmalar keltirib chiqaradigan engil bolalik kasalligi. Qizilcha bolalik davrida engil kechsa-da, homilador ayollar uchun xavfli…',
    transcript: 'Noun /ruːˈbelə/',
    favorite: false,
  ),
  Word(
    en: 'Rubeola (n)',
    uz: 'Qizilcha',
    enDef:
        'A type of measles that can lead to serious complications and death.',
    uzDef: 'Qizilcha',
    transcript: 'Noun /ruːˈbeōlə/',
    favorite: false,
  ),
  Word(
    en: 'Sac (n)',
    uz: 'Hayvon qopchiği',
    enDef: 'Pouch; a bag-like structure.',
    uzDef: 'Sumka; sumkaga o’xshash tuzilish.',
    transcript: 'Noun /sæk/',
    favorite: false,
  ),
  Word(
    en: 'Saccharin (n)',
    uz: 'Saxarin',
    enDef:
        'A compound that’s hundreds of times sweeter than table sugar. Used as an artificial sweetener.',
    uzDef:
        'Stol shakaridan yuzlab marta shirinroq bo’lgan birikma. Sun’iy tatlandırıcı sifatida ishlatiladi.',
    transcript: 'Noun /ˈsækərɪn/',
    favorite: false,
  ),
  Word(
    en: 'Sacroiliac (adj)',
    uz: 'Sakroiliak',
    enDef:
        'Having to do with the joint formed by the sacrum and the ilium in the lower back.',
    uzDef:
        'Pastki orqa tarafdagi sakrum va ilium tomonidan hosil qilingan qo’shma bilan bog’liq.',
    transcript: '[ˌseɪkroʊˈɪliæk]',
    favorite: false,
  ),
  Word(
    en: 'Saliva (n)',
    uz: 'Sõlak',
    enDef:
        'An enzyme-containing thin, watery secretion of the salivary glands.',
    uzDef:
        'Tuprik bezlarining ferment o’z ichiga olgan nozik, suvli sekretsiyasi.',
    transcript: 'Noun /səˈlaɪvə/',
    favorite: false,
  ),
  Word(
    en: 'Salivary gland (n)',
    uz: 'Sõlak bezi',
    enDef:
        'Any one of the three pairs of glands of the mouth (parotid, submaxillary and sublingual) that release saliva.',
    uzDef:
        'Og’iz bo’shlig’ining uch juft bezlarining (parotid, submaxillarar va til osti bezlari) har qanday biri tupurikni chiqaradi.',
    transcript: '/səˈlaɪvəri ɡlænd/',
    favorite: false,
  ),
  Word(
    en: 'Salmonella (n)',
    uz: 'Salmonella',
    enDef:
        'A form of food poisoning characterized by fever and intestinal disorder due to Salmonella bacteria.',
    uzDef:
        'Salmonella bakteriyalari tufayli isitma va ichak buzilishi bilan tavsiflangan oziq-ovqat zaharlanishining bir shakli.',
    transcript: 'Noun /ˌsælməˈnelə/',
    favorite: false,
  ),
  Word(
    en: 'Salve (n)',
    uz: 'Malham',
    enDef: 'Ointment.',
    uzDef: 'Maz, malham',
    transcript: 'Noun /sælv/',
    favorite: false,
  ),
  Word(
    en: 'Sanguineous (adj)',
    uz: 'Qonli',
    enDef: 'Bloody.',
    uzDef: 'Qonli',
    transcript: '[sæŋɡwɪniəs]',
    favorite: false,
  ),
  Word(
    en: 'Scabies (n)',
    uz: 'Michigan, qõtir',
    enDef: 'An itchy, contagious skin condition caused by mites.',
    uzDef: 'Shomillar keltirib chiqaradigan qichima, yuqumli teri kasalligi.',
    transcript: 'Noun /ˈskeɪbiːz/',
    favorite: false,
  ),
  Word(
    en: 'Scapula (n)',
    uz: 'Kurak suyagi',
    enDef: 'The shoulder blade.',
    uzDef: 'Yelka pichog’i',
    transcript: 'Noun /ˈskæpjələ/',
    favorite: false,
  ),
  Word(
    en: 'Scarlet fever (n)',
    uz: 'Qizilcha',
    enDef:
        'Fever and skin reaction caused by certain strains of streptococcus bacteria, usually following a streptococcal infection of the throat, middle…',
    uzDef:
        'Odatda tomoqning streptokokk infektsiyasidan keyin streptokokk bakteriyalarining ma’lum shtammlari tufayli yuzaga keladigan isitma va teri reaktsiyasi, o’rta …',
    transcript: 'Noun /ˌskɑːlət ˈfiːvər/',
    favorite: false,
  ),
  Word(
    en: 'Schizophrenia (n)',
    uz: 'Shizoireniya',
    enDef:
        'A chronic mental disorder characterized by an inability to differentiate reality from fantasy. Often associated with hallucinations or delusions.',
    uzDef:
        'Haqiqatni fantaziyadan ajrata olmaslik bilan tavsiflangan surunkali ruhiy kasallik. Ko’pincha gallyutsinatsiyalar yoki aldanishlar bilan bog’liq.',
    transcript: 'Noun /ˌskɪtsəˈfriːniə/',
    favorite: false,
  ),
  Word(
    en: 'Sciatica (n)',
    uz: 'Siyatik',
    enDef:
        'Pain or inflammation going from the back to the buttock along the sciatic nerve.',
    uzDef:
        'Siyatik asab bo’ylab orqa tomondan dumbaga o’tadigan og’riq yoki yallig’lanish.',
    transcript: 'Noun /saɪˈætɪkə/',
    favorite: false,
  ),
  Word(
    en: 'Sclera (n)',
    uz: 'Sklera',
    enDef: 'The tough white covering of the eyeball.',
    uzDef: 'Ko’z olmasining qattiq oq qoplamasi.',
    transcript: 'Noun /ˈsklɪərə/',
    favorite: false,
  ),
  Word(
    en: 'Scleritis (n)',
    uz: 'Sklerit',
    enDef:
        'Inflammation of the sclera, causing pain, redness and possible loss of vision. Can be a complication of rheumatoid arthritis.',
    uzDef:
        'Og’riq, qizarish va ko’rish qobiliyatini yo’qotishi mumkin bo’lgan skleraning yallig’lanishi. Romatoid artritning asoratlari bo’lishi mumkin.',
    transcript: '[Skləˈrīdəs]',
    favorite: false,
  ),
  Word(
    en: 'Scleroderma (n)',
    uz: 'Skleroderma',
    enDef:
        'A chronic disease characterized by hardening or thickening of the skin due to abnormal tissue growth.',
    uzDef:
        'To’qimalarning anormal o’sishi tufayli terining qattiqlashishi yoki qalinlashishi bilan tavsiflangan surunkali kasallik.',
    transcript: '[ˌsklɪərəˈdɜrmə]',
    favorite: false,
  ),
  Word(
    en: 'Sclerosis (n)',
    uz: 'Qotib qolish holati',
    enDef: 'Hardening.',
    uzDef: 'Qattiqlashuv',
    transcript: 'Noun /skləˈrəʊsɪs/',
    favorite: false,
  ),
  Word(
    en: 'Scotoma (n)',
    uz: 'Skotoma',
    enDef: 'A blind spot in an area of otherwise normal vision.',
    uzDef: 'Aks holda normal ko’rish sohasidagi ko’r nuqta.',
    transcript: '[skəˈtoʊmə]',
    favorite: false,
  ),
  Word(
    en: 'Scratch test (n)',
    uz: 'Allergies testi',
    enDef:
        'A test for allergies in which small amounts of potential allergens are inserted in small scratches made in the…',
    uzDef:
        'Allergiya uchun test, unda kichik tirnalgan joylarga kichik miqdordagi potentsial allergenlar kiritiladi …',
    transcript: 'Noun /skrætʃ təst/',
    favorite: false,
  ),
  Word(
    en: 'Scrotum (n)',
    uz: 'Tuxumdon',
    enDef: 'The skin-covered sac that contains the testes.',
    uzDef: 'Moyaklarni o’z ichiga olgan teri bilan qoplangan xalta.',
    transcript: 'Noun /ˈskrəʊtəm/',
    favorite: false,
  ),
  Word(
    en: 'Scurvy (n)',
    uz: 'Singa, lavsha',
    enDef:
        'A condition caused by vitamin C deficiency. Symptoms include loss of appetite, bleeding gums, bruising, inability to gain weight and…',
    uzDef:
        'S vitamini etishmasligidan kelib chiqadigan holat. Semptomlar orasida ishtahaning yo’qolishi, tish go’shtining qon ketishi, ko’karishlar, vazn to’play olmaslik va ...',
    transcript: 'Noun /kɜːvi/',
    favorite: false,
  ),
  Word(
    en: 'Sebaceous cyst (n)',
    uz: 'Yoğ kistasi',
    enDef: 'A benign cyst containing oil and cells from a sebaceous gland.',
    uzDef:
        'Yog ‘bezining yog’I va hujayralarini o’z ichiga olgan yaxshi xulqli kist',
    transcript: 'SəˈbāSHəs sist',
    favorite: false,
  ),
  Word(
    en: 'Sebaceous glands (n)',
    uz: 'Yog ‘bezlari',
    enDef:
        'Small glands in the skin that release an oily substance through the hair follicles.',
    uzDef:
        'Soch follikulalari orqali yog’li moddani chiqaradigan teridagi kichik bezlar.',
    transcript: '/SəˈbāSHəs ɡlænd/',
    favorite: false,
  ),
  Word(
    en: 'Seborrhea (n)',
    uz: 'Seboreya',
    enDef:
        'Greasy scales or cheesy plugs resulting from overproduction of the sebaceous glands.',
    uzDef:
        'Yog’bezlarining ortiqcha ishlab chiqarilishidan kelib chiqadigan yog’li tarozilar yoki pishloqli tiqinlar.',
    transcript: '[ˌsɛbəˈriːə]',
    favorite: false,
  ),
  Word(
    en: 'Seborrheic keratoses (n)',
    uz: 'Seboreik keratozlar',
    enDef:
        'Skin growths that may be smooth or warty-looking, of varying size, and flesh-colored, brown or black. Often appear on the…',
    uzDef:
        'Teri o’simtalari silliq yoki siğil ko’rinishi mumkin, har xil o’lchamdagi va tana rangi, jigarrang yoki qora. Ko’pincha paydo bo’ladi …',
    transcript: '[ˌsɛbəˈriːɪk ˌkɛrəˈtoʊsiːz]',
    favorite: false,
  ),
  Word(
    en: 'Seizure (n)',
    uz: 'Seizer',
    enDef: 'An attack of epilepsy.',
    uzDef: 'Epilepsiya hujumi.',
    transcript: 'Noun /ˈsiːʒər/',
    favorite: false,
  ),
  Word(
    en: 'Semen (n)',
    uz: 'Maniy',
    enDef:
        'The ejaculate of the male consisting of sperm and secretions from the prostate, seminal glands and other glands.',
    uzDef:
        'Erkakning eyakulyatsiyasi sperma va prostata, urug’ bezlari va boshqa bezlarning sekretsiyasidan iborat.',
    transcript: 'Noun /ˈsiːmən/',
    favorite: false,
  ),
  Word(
    en: 'Semicircular canals (n)',
    uz: 'Yarim doira kanallari',
    enDef:
        'The three loop-shaped tubular passages of the inner ear that control the sense of balance.',
    uzDef:
        'Muvozanat hissini boshqaradigan ichki quloqning uchta halqa shaklidagi quvurli yo’llari.',
    transcript: '/ˌsemiˈsɜːkjələr kəˈnæl/',
    favorite: false,
  ),
  Word(
    en: 'Seminiferous (adj)',
    uz: 'Seminiferli',
    enDef: 'Carrying or producing semen.',
    uzDef: 'Spermani tashish yoki ishlab chiqarish.',
    transcript: '[ˌsɛməˈnɪfərəs]',
    favorite: false,
  ),
  Word(
    en: 'Sensorium (n)',
    uz: 'Sensorlu',
    enDef: 'The state of a person’s mental awareness.',
    uzDef: 'Insonning aqliy ongining holati.',
    transcript: 'Senˈsôrēəm',
    favorite: false,
  ),
  Word(
    en: 'Sepsis (n)',
    uz: 'Sepsis',
    enDef:
        'When disease-causing bacteria from an area of infection spread into the bloodstream and tissues.',
    uzDef:
        'Infektsiya hududidan kasallik qo’zg’atuvchi bakteriyalar qon oqimiga va to’qimalarga tarqalganda.',
    transcript: 'Noun /ˈsepsɪs/',
    favorite: false,
  ),
  Word(
    en: 'Septum (n)',
    uz: 'Septa',
    enDef: 'A wall dividing an organ or cavity, as in the nose.',
    uzDef: 'Burundagi kabi organ yoki bo’shliqni ajratuvchi devor.',
    transcript: 'Noun /ˈseptəm/',
    favorite: false,
  ),
  Word(
    en: 'Serology (n)',
    uz: 'Serologiya',
    enDef: 'The study of the antigen-antibody reaction.',
    uzDef: 'Antigen-antikor reaktsiyasini o’rganish.',
    transcript: 'Siˈräləjē',
    favorite: false,
  ),
  Word(
    en: 'Serotonin (n)',
    uz: 'Serotonin',
    enDef:
        'A chemical used to transmit information from one nerve cell to another.',
    uzDef:
        'Bir nerv hujayrasidan ikkinchisiga ma’lumot uzatish uchun ishlatiladigan kimyoviy.',
    transcript: 'Noun /ˌserəˈtəʊnɪn/',
    favorite: false,
  ),
  Word(
    en: 'Serum (n)',
    uz: 'Zardob',
    enDef: 'The clear, yellowish-colored liquid portion of blood.',
    uzDef:
        'Bir nerv hujayrasidan ikkinchisiga ma’lumot uzatish uchun ishlatiladigan kimyoviy.',
    transcript: 'Noun /ˈsɪərəm/',
    favorite: false,
  ),
  Word(
    en: 'Shigellosis (n)',
    uz: 'Shigelloz',
    enDef: 'A diarrheal disease caused by Shigella bacteria.',
    uzDef: 'Shigella bakteriyalari keltirib chiqaradigan diareya kasalligi.',
    transcript: '[ˌʃɪɡəˈloʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Shingles (n)',
    uz: 'Temratki',
    enDef:
        'A viral infection of certain sensory nerves that causes pain and blisters on the skin along the course of the…',
    uzDef:
        'Ba’zi sezgir nervlarning virusli infektsiyasi, bu jarayon davomida terida og’riq va pufakchalar paydo bo’lishiga olib keladi …',
    transcript: 'Noun /ˈʃɪŋɡlz/',
    favorite: false,
  ),
  Word(
    en: 'Shock (n)',
    uz: 'Shok',
    enDef:
        'A disorder resulting from disruption of the circulation of the blood that can upset all body functions.',
    uzDef:
        'Tananing barcha funktsiyalarini buzishi mumkin bo’lgan qon aylanishining buzilishi natijasida yuzaga keladigan buzilish.',
    transcript: 'Noun /ʃɒk/',
    favorite: false,
  ),
  Word(
    en: 'Shoulder (n)',
    uz: 'Yelka',
    enDef: 'The ball-and-socket joint connecting the arm with the body.',
    uzDef: 'Qo’lni tana bilan bog’laydigan shar va rozetka.',
    transcript: 'Noun /ˈʃəʊldər/',
    favorite: false,
  ),
  Word(
    en: 'Shunt (n)',
    uz: 'Yõnaltirmoq',
    enDef:
        'To surgically divert the flow (such as of blood) from one organ or pathway to another.',
    uzDef:
        'Oqimni (masalan, qon) bir organ yoki yo’ldan boshqasiga jarrohlik yo’li bilan yo’naltirish.',
    transcript: 'Verb /ʃʌnt/',
    favorite: false,
  ),
  Word(
    en: 'Siamese twins (n)',
    uz: 'Siam egizaklari',
    enDef: 'Identical twins born joined together.',
    uzDef: 'Bir xil egizaklar qo’shilib tug’iladi',
    transcript: 'Sīəˌmēz ˈtwinz',
    favorite: false,
  ),
  Word(
    en: 'Sickle cell anemia (n)',
    uz: 'O’roqsimon hujayrali anemiya',
    enDef:
        'A genetic condition characterized by abnormal red blood cells containing a defective form of hemoglobin. Sickle cell anemia occurs in…',
    uzDef:
        'Gemoglobinning nuqsonli shaklini o’z ichiga olgan anormal qizil qon hujayralari bilan tavsiflangan genetik holat. O‘roqsimon hujayrali anemiya…',
    transcript: 'ˌsikəl sel əˈnēmēə',
    favorite: false,
  ),
  Word(
    en: 'Sickle cell trait (n)',
    uz: 'O’roqsimon hujayrali xususiyat',
    enDef:
        'Inheriting the gene for sickle cell anemia from  shaped only one parent. It causes no symptoms.',
    uzDef:
        'O’roqsimon hujayrali anemiya genini faqat bitta ota-onadan meros qilib olish. Hech qanday alomat keltirmaydi.',
    transcript: 'ˈsikəl sel trāt',
    favorite: false,
  ),
  Word(
    en: 'Sigmoid (adj)',
    uz: 'Sigmasimon',
    enDef: 'S-shaped',
    uzDef: 'S shaklli',
    transcript: 'ˈsiɡmoid',
    favorite: false,
  ),
  Word(
    en: 'Sinew (n)',
    uz: 'Pay',
    enDef: 'A tendon or fibrous cord.',
    uzDef: 'Tendon yoki tolali shnur.',
    transcript: 'Noun /ˈsɪnjuː/',
    favorite: false,
  ),
  Word(
    en: 'Sinus (n)',
    uz: 'Burun teshiklari',
    enDef:
        'A cavity in a bone or other tissue. Commonly used to describe the cavities in the skull that open into…',
    uzDef:
        'Suyak yoki boshqa to’qimalarda bo’shliq. Odatda bosh suyagidagi bo’shliqlarni tasvirlash uchun ishlatiladi …',
    transcript: 'Noun /ˈsaɪnəs/',
    favorite: false,
  ),
  Word(
    en: 'Sinusitis (n)',
    uz: 'burun ichki qismining ishish kasalligi',
    enDef: 'Inflammation and infection of the sinuses.',
    uzDef: 'Sinuslarning yallig’lanishi va infektsiyasi.',
    transcript: 'Noun /ˌsaɪnəˈsaɪtɪs/',
    favorite: false,
  ),
  Word(
    en: 'Sitz bath (n)',
    uz: 'O’rindiqli vanna',
    enDef:
        'A bath in which only the hips and buttocks are immersed in water for relief of rectal or vaginal…',
    uzDef:
        'To’g’ri ichak yoki qinni bo’shatish uchun faqat son va dumba suvga botiriladigan vanna…',
    transcript: '[sɪts bæθ]',
    favorite: false,
  ),
  Word(
    en: 'Skeleton (n)',
    uz: 'Skelet',
    enDef:
        'The hard bony framework of the human body that supports the tissues and protects the organs.',
    uzDef:
        'To’qimalarni qo’llab-quvvatlaydigan va organlarni himoya qiladigan inson tanasining qattiq suyak ramkasi.',
    transcript: 'Noun /ˈskelɪtn/',
    favorite: false,
  ),
  Word(
    en: 'Skull (n)',
    uz: 'Bosh suyagi',
    enDef: 'The bony framework of the head.',
    uzDef: 'Boshning suyak ramkasi.',
    transcript: 'Noun /skʌl/',
    favorite: false,
  ),
  Word(
    en: 'Smallpox (n)',
    uz: 'Chechak',
    enDef:
        'A viral disease that was once highly contagious. Characterized by high fever, vomiting, and blisters and sores on the skin…',
    uzDef:
        'Bir vaqtlar juda yuqumli bo’lgan virusli kasallik. Yuqori isitma, qusish, terida pufakchalar va yaralar bilan xarakterlanadi…',
    transcript: 'Noun /ˈsmɔːlpɒks/',
    favorite: false,
  ),
  Word(
    en: 'Smooth muscle (n)',
    uz: 'Tartibsiz mushak to’qimalari',
    enDef:
        'A type of muscle tissue controlled by the involuntary nervous system, occurring in the walls of the uterus, intestines or…',
    uzDef: 'Bachadon devorlarida, ichaklarda yoki …',
    transcript: 'Noun /ˌsmuːð ˈmʌsl/',
    favorite: false,
  ),
  Word(
    en: 'Sneeze',
    uz: 'Aksi urmoq',
    enDef:
        'To exhale breath from the nose and mouth in a sudden, involuntary action as a result of irritation of the…',
    uzDef:
        'To’satdan, beixtiyor harakatda burun va og’izdan nafas olish uchun …',
    transcript: 'Verb /sniːz/',
    favorite: false,
  ),
  Word(
    en: "Snellen's chart (n)",
    uz: 'Snellen jadvali',
    enDef: 'A chart of block letters used to test distant vision',
    uzDef:
        'Uzoqni ko’rishni tekshirish uchun ishlatiladigan blok harflar jadvali',
    transcript: '[ˈsnɛlənz tʃɑːrt]',
    favorite: false,
  ),
  Word(
    en: "Snoring (n)",
    uz: 'Xurrak otish',
    enDef:
        'Harsh breathing sounds during sleep caused by the vibration of the soft palate during inhalation.',
    uzDef:
        'Nafas olish paytida yumshoq tanglayning tebranishidan kelib chiqqan uyqu paytida qattiq nafas olish tovushlari.',
    transcript: 'Noun /ˈsnɔːrɪŋ/',
    favorite: false,
  ),
  Word(
    en: 'Soft palate (n)',
    uz: 'Yumshoq tanglay',
    enDef:
        'The soft part of the roof of the mouth in the back, toward the throat.',
    uzDef: 'Orqa tarafdagi og’iz tomining yumshoq qismi, tomoqqa qarab.',
    transcript: 'ˌsôf(t) ˈpalət',
    favorite: false,
  ),
  Word(
    en: 'Soft tissue (n)',
    uz: 'Yumshoq to’qimalar',
    enDef:
        'The substance of an organic body or organ consisting of cells and intercellular materials. The muscles and other nonbony tissues…',
    uzDef:
        'Organik tana yoki organning hujayralar va hujayralararo materiallardan tashkil topgan moddasi. Mushaklar va boshqa suyak bo’lmagan to’qimalar …',
    transcript: '[sɒft ˈtɪʃuː]',
    favorite: false,
  ),
  Word(
    en: 'Solar plexus (n)',
    uz: 'Dihaniya',
    enDef: 'The network of nerves in the center of the abdomen',
    uzDef: 'Qorin bo’shlig’ining markazida joylashgan nervlar tarmog’i',
    transcript: 'Noun /ˌsəʊlə ˈpleksəs/',
    favorite: false,
  ),
  Word(
    en: 'Spasm (n)',
    uz: 'Spazm',
    enDef: 'A sudden, involuntary contraction of a muscle or group of muscles.',
    uzDef: 'Mushak yoki mushaklar guruhining to’satdan, majburiy qisqarishi.',
    transcript: 'Noun /ˈspæzəm/',
    favorite: false,
  ),
  Word(
    en: 'Specimen (n)',
    uz: 'Namuna',
    enDef: 'A sample taken to study the nature of the whole.',
    uzDef: 'Butunning tabiatini o’rganish uchun olingan namuna.',
    transcript: 'Noun /ˈspesɪmən/',
    favorite: false,
  ),
  Word(
    en: 'Speculum (n)',
    uz: 'Spekulum',
    enDef:
        'An instrument for opening a body cavity to permit visual inspection',
    uzDef: 'Vizual tekshirish uchun tana bo’shlig’ini ochish uchun asbob',
    transcript: 'Noun /ˈspekjələm/',
    favorite: false,
  ),
  Word(
    en: 'Sperm (n)',
    uz: 'Sperma',
    enDef: 'The male germ cell. Also called spermatozoon.',
    uzDef: 'Erkak jinsiy hujayrasi. Spermatozoid deb ham ataladi.',
    transcript: 'Noun /spɜːm/',
    favorite: false,
  ),
  Word(
    en: 'Sphincter (n)',
    uz: 'Ochilib yopiluvchi muskul',
    enDef:
        'A ring-shaped muscle that surrounds a natural opening in the body and can open or close it by relaxing or…',
    uzDef:
        'Tanadagi tabiiy teshikni o’rab turgan halqa shaklidagi mushak va uni bo’shashish yoki …',
    transcript: 'Noun /ˈsfɪŋktər/',
    favorite: false,
  ),
  Word(
    en: 'Sphygmomanometer (n)',
    uz: 'Sfigmomanometr',
    enDef:
        'An instrument for measuring blood pressure. An inflatable blood-pressure cuff.',
    uzDef:
        'Qon bosimini o’lchash uchun asbob. Puflanadigan qon bosimi manjeti.',
    transcript: '[ˌsfɪɡməˈnɒmətər]',
    favorite: false,
  ),
  Word(
    en: 'Spina bifida (n)',
    uz: 'Spina bifida',
    enDef:
        'A birth defect caused by imperfect closure of part of the spinal column, exposing some of the nervous system.',
    uzDef:
        'Orqa miya qismining nomukammal yopilishi, asab tizimining bir qismini fosh qilish natijasida tug’ma nuqson.',
    transcript: '[ˈspaɪnə ˈbɪfɪdə]',
    favorite: false,
  ),
  Word(
    en: 'Spirochete (n)',
    uz: 'Spiroxete',
    enDef: 'Spiral-shaped bacteria.',
    uzDef: 'Spiral shaklidagi bakteriyalar.',
    transcript: '/ˈspʌɪrə(ʊ)kiːt/',
    favorite: false,
  ),
  Word(
    en: 'Spleen (n)',
    uz: 'Taloq',
    enDef:
        'The blood-forming and -storing organ located under the ribs in the upper left portion of the abdomen.',
    uzDef:
        'Qon hosil qiluvchi va saqlovchi organ qorinning yuqori chap qismida qovurg’alar ostida joylashgan.',
    transcript: 'Noun /spliːn/',
    favorite: false,
  ),
  Word(
    en: 'Splenomegaly (n)',
    uz: 'Splenomegali',
    enDef: 'Enlargement of the spleen.',
    uzDef: 'Taloqning kengayishi.',
    transcript: 'ˌsplēnəˈmeɡəlē',
    favorite: false,
  ),
  Word(
    en: 'Splint (n)',
    uz: 'Splint',
    enDef: 'A device for holding broken or injured parts in place.',
    uzDef:
        'Buzilgan yoki shikastlangan qismlarni joyida ushlab turish uchun qurilma.',
    transcript: 'Noun /splɪnt/',
    favorite: false,
  ),
  Word(
    en: 'Spondylitis (n)',
    uz: 'Spondilit',
    enDef: 'Inflammation of the vertebrae.',
    uzDef: 'Umurtqa suyagining yallig’lanishi',
    transcript: 'ˌspändəˈlīdəs',
    favorite: false,
  ),
  Word(
    en: 'Spondylosis (n)',
    uz: 'Spondiloz',
    enDef:
        'Narrowing of the spinal column resulting in reduction of the spaces between the vertebrae which may cause compression of the…',
    uzDef:
        'Orqa miyaning torayishi, natijada umurtqalar orasidagi bo\'shliqlar qisqaradi, bu esa umurtqa pog\'onasining siqilishiga olib kelishi mumkin.  Spondiloz',
    transcript: '[ˌspɒndɪˈloʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Sprain (n)',
    uz: 'Paylarning shikastlanishi',
    enDef:
        'A twisting or stretching injury of a ligament or muscle of a joint, with or without dislocating a bone.',
    uzDef:
        'Bog’im yoki bo’g’im mushaklarining burilish yoki cho’zilish shikastlanishi, suyakning joylashishi yoki joyidan chiqishi.',
    transcript: 'Noun /spreɪn/',
    favorite: false,
  ),
  Word(
    en: 'Spur (n)',
    uz: 'Shpora',
    enDef: 'A projecting body. For example, from a bone.',
    uzDef: 'Loyihalash organi. Masalan, suyakdan.',
    transcript: 'Noun /spɜːr/',
    favorite: false,
  ),
  Word(
    en: 'Sputum (n)',
    uz: 'Balğam',
    enDef:
        'Mucus secreted by the lungs, bronchi and trachea that’s ejected by coughing or clearing the throat.',
    uzDef:
        'O’pka, bronxlar va traxeya tomonidan chiqariladigan shilimshiq yo’talish yoki tomoqni tozalash orqali chiqariladi.',
    transcript: 'Noun /ˈspjuːtəm/',
    favorite: false,
  ),
  Word(
    en: 'Stapedectomy (n)',
    uz: 'Stapedektomiya',
    enDef: 'Surgical removal of the stapes.',
    uzDef: 'Stapelarni jarrohlik yo’li bilan olib tashlash.',
    transcript: '[ˌsteɪpɪˈdɛktəmi]',
    favorite: false,
  ),
  Word(
    en: 'Stapedioplasty (n)',
    uz: 'Stapedioplastika',
    enDef:
        'Replacement of the stapes with other materials (wire, bone, plastic).',
    uzDef:
        'Stapelarni boshqa materiallar bilan almashtirish (sim, suyak, plastmassa).',
    transcript: '[ˌsteɪpiːdiəˈplæsti]',
    favorite: false,
  ),
  Word(
    en: 'Stapes (n)',
    uz: 'Stapes',
    enDef: 'A small bone of the middle ear. Also called the stirrup.',
    uzDef: 'O’rta quloqning kichik suyagi. Stirrup deb ham ataladi.',
    transcript: '[ˈsteɪpiːz]',
    favorite: false,
  ),
  Word(
    en: 'Stenosis (n)',
    uz: 'Stenoz',
    enDef: 'Narrowing of a body passage or opening.',
    uzDef: 'Tananing o’tishi yoki ochilishining torayishi.',
    transcript: 'Stəˈnōsəs',
    favorite: false,
  ),
  Word(
    en: 'Sterile (adj)',
    uz: 'Sterillangan. Bepusht',
    enDef: '1. Free from living microorganisms. 2. Unable to have children.',
    uzDef: '1. Tirik mikroorganizmlardan xoli. 2. Farzandli bo‘la olmaslik.',
    transcript: 'Adjective /ˈsteraɪl/',
    favorite: false,
  ),
  Word(
    en: 'Sternum (n)',
    uz: 'Kõkrak suyagi',
    enDef: 'The breastbone.',
    uzDef: 'Ko’krak suyagi.',
    transcript: 'Noun /ˈstɜːnəm/',
    favorite: false,
  ),
  Word(
    en: 'Stevens-Johnson reaction (n)',
    uz: 'Stivens-Jonson reaktsiyasi',
    enDef:
        'An inflammatory disease characterized by rapid attack of fever, skin blisters and sores on the lips, eyes, mouth, nasal passage…',
    uzDef:
        'Yallig’lanish kasalligi tez isitma, teri pufakchalari va lablar, ko’zlar, og’iz, burun yo’llarida yaralar bilan tavsiflanadi …',
    transcript: '[ˈstiːvənz ˈdʒɒnsən riˈækʃən]',
    favorite: false,
  ),
  Word(
    en: "Stoma (n)",
    uz: 'Sun’iy teshik',
    enDef: '1. Mouth-like opening. 2. An opening used for drainage.',
    uzDef:
        '1. Og’izga o’xshash ochilish. 2. Drenaj uchun ishlatiladigan teshik.',
    transcript: 'noun /ˈstəʊmə/',
    favorite: false,
  ),
  Word(
    en: 'Stomatitis (n)',
    uz: 'Stomatit',
    enDef: 'Inflammation of the mucosa of the mouth.',
    uzDef: 'Og’iz bo’shlig’I shilliq qavatining yallig’lanishi.',
    transcript: 'ˌstōməˈtīdəs',
    favorite: false,
  ),
  Word(
    en: 'Stool (n)',
    uz: 'Axlat',
    enDef: 'Feces, or bowel movement.',
    uzDef: 'Najas yoki ichak harakati.',
    transcript: 'Noun /stuːl/',
    favorite: false,
  ),
  Word(
    en: 'Syncope (n)',
    uz: 'Xushdan ketish',
    enDef: 'Fainting.',
    uzDef: 'Hushidan ketish.',
    transcript: 'Noun /ˈsɪŋkəpi/',
    favorite: false,
  ),
  Word(
    en: 'Synergism (n)',
    uz: 'Sinerjizm',
    enDef:
        'The working together of different organs or parts of the body so that their combined action is greater than their…',
    uzDef:
        'Tananing turli organlari yoki qismlarining birgalikdagi ta’siri ularning birgalikdagi ta’siridan kattaroq bo’lishi uchun …',
    transcript: '[ˈsɪnərˌdʒɪzəm]',
    favorite: false,
  ),
  Word(
    en: 'Synovial (adj)',
    uz: 'Suyuqlik',
    enDef:
        'The clear lubricating fluid produced in joints, bursae and tendon sheaths.',
    uzDef:
        'Shaffof moylash suyuqligi bo’g’imlarda, bursalarda va tendon qoplamalarida hosil bo’ladi.',
    transcript: 'Adjective /saɪˈnəʊviəl/',
    favorite: false,
  ),
  Word(
    en: 'Syphilis (n)',
    uz: 'Sifilis',
    enDef:
        'A sexually transmitted disease caused by the spirochete Treponema pallidum.',
    uzDef:
        'Treponema pallidum spiroxeti keltirib chiqaradigan jinsiy yo’l bilan yuqadigan kasallik.',
    transcript: 'Noun /ˈsɪfɪlɪs/',
    favorite: false,
  ),
  Word(
    en: 'Systole (n)',
    uz: 'Yurak urishining fazasi',
    enDef: 'The cardiac contraction of a heartbeat.',
    uzDef: 'Yurak urishining yurak qisqarishi.',
    transcript: 'Noun /ˈsɪstəli/',
    favorite: false,
  ),
  Word(
    en: 'Systolic (adj)',
    uz: 'Yurak urishining fazasiga oid',
    enDef:
        'Systolic blood pressure is the pressure when your heart is contracting, squeezing blood out.',
    uzDef:
        'Sistolik qon bosimi – bu yurak qisqarganda, qonni siqib chiqaradigan bosim.',
    transcript: 'Adjective /ˌsɪˈstɒlɪk/',
    favorite: false,
  ),
  Word(
    en: 'Tachycardia (n)',
    uz: 'Taxikardiya',
    enDef: 'An abnormally rapid heartbeat.',
    uzDef: 'Anormal darajada tez yurak urishi.',
    transcript: 'ˌtakəˈkärdēə',
    favorite: false,
  ),
  Word(
    en: 'Tachypnea (n)',
    uz: 'Taxipnea',
    enDef: 'Rapid breathing.',
    uzDef: 'Tez nafas olish.',
    transcript: 'ˌtakə(p)ˈnēə',
    favorite: false,
  ),
  Word(
    en: 'Tanner staging (n)',
    uz: 'Tanner sahnalashtirish',
    enDef:
        'A growth chart used to assess the stage of puberty based on pubic hair growth, the development of genitalia in…',
    uzDef:
        'O’sish jadvali jinsiy a’zolarning jinsiy a’zolarining rivojlanishiga qarab jinsiy etuklik bosqichini baholash uchun ishlatiladi …',
    transcript: '[ˈtænər ˈsteɪdʒɪŋ]',
    favorite: false,
  ),
  Word(
    en: 'Telogen effluvium (n)',
    uz: 'Telogen effluvium',
    enDef: 'Thinning hair. Rarely results in actual baldness.',
    uzDef: 'Yupqa sochlar. Kamdan-kam hollarda haqiqiy kellikka olib keladi.',
    transcript: '[ˈtɛlədʒən ɪˈfluviəm]',
    favorite: false,
  ),
  Word(
    en: 'Temporomandibular joint (n)',
    uz: 'Temporomandibular qo’shma',
    enDef:
        'TMJ. The joint between the lower jaw and the side of the head, located just in front of the…',
    uzDef:
        'TMJ. Pastki jag’ va boshning yon tomoni o’rtasidagi bo’g’in, faqat oldida joylashgan …',
    transcript: 'ˌtempərōˌmanˌdibyələr ˈjoint',
    favorite: false,
  ),
  Word(
    en: 'Tendinitis (n)',
    uz: 'Tendinit',
    enDef: 'Inflammation of a tendon.',
    uzDef: 'Tendonning yallig’lanishi.',
    transcript: 'ˌtendəˈnīdəs',
    favorite: false,
  ),
  Word(
    en: 'Tendon (n)',
    uz: 'Pay',
    enDef: 'A cord of strong white fibrous tissue connecting muscle to bone.',
    uzDef:
        'Mushakni suyak bilan bog’laydigan kuchli oq tolali to’qimalardan iborat shnur.',
    transcript: 'Noun /ˈtendən/',
    favorite: false,
  ),
  Word(
    en: 'Teratogen (n)',
    uz: 'Teratogen',
    enDef: 'An agent that causes physical defects in a developing embryo.',
    uzDef:
        'Rivojlanayotgan embrionda jismoniy nuqsonlarni keltirib chiqaradigan vosita.',
    transcript: '',
    favorite: false,
  ),
  Word(
    en: 'Testis (n)',
    uz: 'Uruğdon',
    enDef: 'The male gonad or reproductive organ.',
    uzDef: 'Erkak jinsiy bezi yoki reproduktiv organ.',
    transcript: 'Noun /ˈtestɪs/',
    favorite: false,
  ),
  Word(
    en: 'Testosterone (n)',
    uz: 'Hirsiy garmon',
    enDef: 'One of the male sex hormones.',
    uzDef: 'Erkak jinsiy gormonlaridan biri.',
    transcript: 'Noun /teˈstɒstərəʊn/',
    favorite: false,
  ),
  Word(
    en: 'Tetanus (n)',
    uz: 'Qoqshol',
    enDef:
        'An infectious disease, often fatal, caused by a Clostridium tetani bacteria.',
    uzDef:
        'Clostridium tetani bakteriyalari keltirib chiqaradigan ko’pincha o’limga olib keladigan yuqumli kasallik.',
    transcript: 'Noun /ˈtetnəs/',
    favorite: false,
  ),
  Word(
    en: 'Tetany (n)',
    uz: 'Tetaniya',
    enDef: 'A continuous muscle spasm.',
    uzDef: 'Mushaklarning doimiy spazmi',
    transcript: '[ˈtɛtəni]',
    favorite: false,
  ),
  Word(
    en: 'Thalassemia (n)',
    uz: 'Talassemiya',
    enDef: 'An inherited type of chronic anemia.',
    uzDef: 'Surunkali anemiyaning irsiy turi.',
    transcript: 'ˌTHaləˈsēmēə',
    favorite: false,
  ),
  Word(
    en: 'Therapeutic (adj)',
    uz: 'Terapetik',
    enDef: 'A substance or treatment that’s effective in treating diseases.',
    uzDef: 'Kasalliklarni davolashda samarali bo’lgan modda yoki davolash',
    transcript: 'Adjective /ˌθerəˈpjuːtɪk/',
    favorite: false,
  ),
  Word(
    en: 'Thoracentesis (n)',
    uz: 'Torasentez',
    enDef: 'A surgical puncture and drainage of the chest cavity.',
    uzDef: 'Ko’krak bo’shlig’ining jarrohlik ponksiyonu va drenaji.',
    transcript: '[ˌθɔrəsɛnˈtiːsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Thoracic (adj)',
    uz: 'Ko’krak qafasi bilan bog’liq',
    enDef: 'Having to do with the chest.',
    uzDef: 'Ko’krak qafasi bilan bog’liq.',
    transcript: 'Adjective /θɔːˈræsɪk/',
    favorite: false,
  ),
  Word(
    en: 'Thorax (n)',
    uz: 'Ko’krak qafasi',
    enDef: 'The chest.',
    uzDef: 'Ko’krak qafasi.',
    transcript: 'Noun /ˈθɔːræks/',
    favorite: false,
  ),
  Word(
    en: 'Thrombocyte (n)',
    uz: 'Trombotsit',
    enDef: 'A platelet.',
    uzDef: 'Qonning qotishiga xizmat qiluvchi qondagi disksimon zarra',
    transcript: 'ˈTHrämbəˌsīt',
    favorite: false,
  ),
  Word(
    en: 'Thromboembolism (n)',
    uz: 'Tromboemboliya',
    enDef:
        'Blockage of a blood vessel by the piece of a blood clot that has broken loose from its original…',
    uzDef:
        'Qon tomirining asl holatidan ajralib chiqqan qon ivishining bo’lagi bilan to’sib qo’yilishi …',
    transcript: 'ˌTHrämbōˈembəˌlizəm',
    favorite: false,
  ),
  Word(
    en: 'Thrombosis (n)',
    uz: 'Qon quyulishi',
    enDef: 'Formation of a blood clot within a blood vessel or the heart.',
    uzDef: 'Qon tomirlarida yoki yurakda qon pıhtılarının shakllanishi.',
    transcript: 'Noun /θrɒmˈbəʊsɪs/',
    favorite: false,
  ),
  Word(
    en: 'Thrush (n)',
    uz: 'Olashaqshaq',
    enDef:
        'Infection of the mouth by yeast. Characterized by milky-white lesions on the mouth, lips and throat.',
    uzDef:
        'Og’izning xamirturush bilan infektsiyasi.  Og’izda, labda va tomoqdagi sut-oq yaralar bilan tavsiflanadi.',
    transcript: 'Noun /θrʌʃ/',
    favorite: false,
  ),
  Word(
    en: 'Thymus (n)',
    uz: 'Timus',
    enDef:
        'A ductless gland located behind the upper portion of the breastbone.',
    uzDef: 'Ko’krak suyagining yuqori qismida joylashgan kanalsiz bez.',
    transcript: 'Noun /ˈθaɪməs/',
    favorite: false,
  ),
  Word(
    en: 'Thyroid gland (n)',
    uz: 'Qalqonsimon bez',
    enDef:
        'A large endocrine gland located in the front and sides of the neck and below the Adam’s apple. Essential for…',
    uzDef:
        'Bo’yinning old va yon tomonlarida va Odam olma ostida joylashgan katta endokrin bez.  Muhim…',
    transcript: '[ˈθaɪrɔɪd ɡlænd]',
    favorite: false,
  ),
  Word(
    en: 'Thyroxine (n)',
    uz: 'Tiroksin',
    enDef: 'The hormone from the thyroid gland that’s essential in metabolism.',
    uzDef: 'Qalqonsimon bezning gormoni metabolizmda muhim ahamiyatga ega.',
    transcript: '[θaɪˈrɒksiːn]',
    favorite: false,
  ),
  Word(
    en: 'Tibia (n)',
    uz: 'Boldir suyagi',
    enDef: 'The larger of two bones in the lower leg.',
    uzDef: 'Pastki oyoqdagi ikkita suyakning eng kattasi.',
    transcript: 'Noun /ˈtɪbiə/',
    favorite: false,
  ),
  Word(
    en: 'Tic (n)',
    uz: 'Muscular õynashi',
    enDef: 'An involuntary spasm or twitching of a muscle.',
    uzDef: 'Mushakning beixtiyor spazmi yoki burishishi.',
    transcript: 'Noun /tɪk/',
    favorite: false,
  ),
  Word(
    en: 'Tinea (n)',
    uz: 'Tinea',
    enDef:
        'A general term for fungal infections of the skin, usually combined with a description of the site or cause.',
    uzDef:
        'Terining qo’ziqorin infektsiyalari uchun umumiy atama, odatda sayt yoki sababning tavsifi bilan birlashtiriladi.',
    transcript: '[ˈtaɪniə]',
    favorite: false,
  ),
  Word(
    en: 'Tinnitus (n)',
    uz: 'Tinnitus',
    enDef:
        'Ringing in the ears. Sensation of a high-pitched sound that’s not actually present.',
    uzDef:
        'Quloqlarda jiringlash.  Haqiqatan ham mavjud bo’lmagan baland tovushni his qilish.',
    transcript: 'Noun /ˈtɪnɪtəs/',
    favorite: false,
  ),
  Word(
    en: 'Tissue (n)',
    uz: 'Tõqima',
    enDef:
        'A group of similar cells that together perform certain specialized functions.',
    uzDef:
        'Birgalikda muayyan maxsus funktsiyalarni bajaradigan o’xshash hujayralar guruhi.',
    transcript: 'Noun /ˈtɪʃuː/',
    favorite: false,
  ),
  Word(
    en: 'Tongue (n)',
    uz: 'Til',
    enDef:
        'The muscular organ attached to the floor of the mouth. Used to speak, chew, swallow and taste.',
    uzDef:
        'Og’iz tubiga biriktirilgan mushak organi.  Gapirish, chaynash, yutish va tatib ko‘rish uchun ishlatiladi.',
    transcript: 'noun /tʌŋ/',
    favorite: false,
  ),
  Word(
    en: 'Tonsillectomy (n)',
    uz: 'Jarrohlik operatsiya',
    enDef: 'A procedure to remove the tonsils.',
    uzDef: 'Bodomsimon bezlarni olib tashlash uchun protsedura.',
    transcript: 'Noun /ˌtɒnsəˈlektəmi/',
    favorite: false,
  ),
  Word(
    en: 'Tonsils (n)',
    uz: 'Bodomsimon bez',
    enDef:
        'A pair of oval masses of lymphoid tissue, one on each side of the throat at the back of the…',
    uzDef:
        'Bir juft oval limfoid to’qimalari, tomoqning har ikki tomonida, orqa tomonda …',
    transcript: 'Noun /ˈtɒnsl/',
    favorite: false,
  ),
  Word(
    en: 'Toxemia (n)',
    uz: 'Toksikoz',
    enDef:
        'The presence of toxic substances in the blood from bacteria or body cells.',
    uzDef:
        'Bakteriyalar yoki tana hujayralaridan qonda toksik moddalar mavjudligi.',
    transcript: '[ˌtɒkˈsiːmiə]',
    favorite: false,
  ),
  Word(
    en: 'Toxic (adj)',
    uz: 'Zaharli',
    enDef: 'Poisonous.',
    uzDef: 'Zaharli',
    transcript: 'Adjective /ˈtɒksɪk/',
    favorite: false,
  ),
  Word(
    en: 'Trachea (n)',
    uz: 'Hiqildoq',
    enDef:
        'The air passage extending from the throat to the bronchi. Also called the windpipe.',
    uzDef:
        'Tomoqdan bronxga cho’zilgan havo yo’li.  Nafas trubkasi deb ham ataladi.',
    transcript: 'Noun /trəˈkiːə/',
    favorite: false,
  ),
  Word(
    en: 'Tracheostomy (n)',
    uz: 'Traxeostomiya',
    enDef:
        'A surgical incision in the trachea (the windpipe) through which a rigid tube is inserted to allow air to…',
    uzDef:
        'Traxeyadagi (nafas trubkasi) jarrohlik kesma, u orqali havo o’tishi uchun qattiq trubka kiritiladi …',
    transcript: '[ˌtreɪkiˈɒstəmi]',
    favorite: false,
  ),
  Word(
    en: 'Trachoma (n)',
    uz: 'Traxoma',
    enDef:
        'A chronic infectious eye disease caused by Chlamydia infection of the eye. A leading cause of blindness worldwide.',
    uzDef:
        'Ko’zning xlamidiya infektsiyasidan kelib chiqqan surunkali yuqumli ko’z kasalligi.  Dunyo bo’ylab ko’rlikning asosiy sababi.',
    transcript: 'Noun / trəˈkoʊ mə /',
    favorite: false,
  ),
  Word(
    en: 'Transfusion (n)',
    uz: 'Qon quyish',
    enDef:
        'Introduction of blood or blood products through a vein into the body’s circulation.',
    uzDef:
        'Qon yoki qon mahsulotlarini tomir orqali tananing qon aylanishiga kiritish.  Qon quyish',
    transcript: 'Noun /trænsˈfjuːʒn/',
    favorite: false,
  ),
  Word(
    en: 'Transplantation (n)',
    uz: 'Transplatsiya ,kõchirib õtkazish',
    enDef:
        'The transfer of living organs or tissue from a donor to another person or from one area in the body…',
    uzDef:
        'Tirik organlar yoki to’qimalarni donordan boshqa odamga yoki tananing bir hududidan o’tkazish …',
    transcript: 'Noun /ˌtrænsplɑːnˈteɪʃn/',
    favorite: false,
  ),
  Word(
    en: 'Trauma (n)',
    uz: 'Ruhiy zo’riqish',
    enDef: 'Injury produced by an external force.',
    uzDef: 'Tashqi ta’sir natijasida yuzaga keladigan shikastlanish.',
    transcript: 'Noun /ˈtrɔːmə/',
    favorite: false,
  ),
  Word(
    en: 'Trench mouth (n)',
    uz: 'Xandaq og’zi',
    enDef:
        'An acute, severe bacterial infection of the gums and lining of the mouth.',
    uzDef:
        'Tish go’shti va og’iz shilliq qavatining o’tkir, og’ir bakterial infektsiyasi.',
    transcript: 'Noun /trent maʊθ/',
    favorite: false,
  ),
  Word(
    en: 'Triage (n)',
    uz: 'Bemorning holatini baholash',
    enDef:
        'A system of assigning priorities of medical treatment based on urgency, severity of injury and chance for survival.',
    uzDef:
        'Shoshilinchlik, shikastlanishning og’irligi va omon qolish imkoniyatiga asoslangan tibbiy davolanishning ustuvor yo’nalishlarini belgilash tizimi.',
    transcript: 'Noun /ˈtriːɑːʒ/',
    favorite: false,
  ),
  Word(
    en: 'Triceps (n)',
    uz: 'Triceps',
    enDef: 'A muscle of the arm used to extend the forearm.',
    uzDef: 'Bilakni cho’zish uchun ishlatiladigan qo’l mushaklari.',
    transcript: 'Noun /ˈtraɪseps/',
    favorite: false,
  ),
  Word(
    en: 'Trichinosis (n)',
    uz: 'Trixinoz',
    enDef:
        'Infection with a roundworm caused by consumption of larvae in undercooked pork or other infected meat.',
    uzDef:
        'Pishgan cho’chqa go’shti yoki boshqa yuqtirilgan go’shtda lichinkalarni iste’mol qilish natijasida yuzaga kelgan yumaloq qurt bilan infektsiya.',
    transcript: '[ˌtrɪkəˈnoʊsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Trichomoniasis (n)',
    uz: 'Trichomoniasis',
    enDef:
        'Infectious with Trichomonas protozoa. Frequently causes vaginal itching and discharge in women. It’s usually acquired by sexual contact with an…',
    uzDef:
        'Trichomonas protozoa bilan infektsiya.  Ko’pincha ayollarda vaginal qichishish va oqishni keltirib chiqaradi.  Odatda jinsiy aloqada bo’ladi …',
    transcript: '[ˌtrɪkəˌmoʊˈnaɪəsɪs]',
    favorite: false,
  ),
  Word(
    en: 'Tricuspid valve (n)',
    uz: 'Triküspid qopqog’i',
    enDef: 'The heart valve between the right atrium and the right ventricle.',
    uzDef: 'O’ng atrium va o’ng qorincha orasidagi yurak qopqog’i.',
    transcript: '[traɪˈkʌspɪd ˈvælv]',
    favorite: false,
  ),
  Word(
    en: 'Trisomy (n)',
    uz: 'Trisomiya',
    enDef:
        'The presence of an extra chromosome in addition to the usual pair. Down syndrome is an example of a condition…',
    uzDef:
        'Odatiy juftlikka qo’shimcha ravishda qo’shimcha xromosoma mavjudligi.  Daun sindromi bu holatga misoldir …',
    transcript: '[ˈtraɪsəmi]',
    favorite: false,
  ),
  Word(
    en: 'Truss (n)',
    uz: 'Tutib turuvchi tirgak',
    enDef: 'A device to keep a hernia in its proper place.',
    uzDef: 'Churrani o’z joyida ushlab turish uchun qurilma',
    transcript: 'Noun /trʌs/',
    favorite: false,
  ),
  Word(
    en: 'TSH (n)',
    uz: 'TSh',
    enDef:
        'Thyroid-stimulating hormone. A pituitary hormone that stimulates thyroid hormone production.',
    uzDef:
        'Qalqonsimon bezni ogohlantiruvchi gormon.  Qalqonsimon bez gormonlarini ishlab chiqarishni rag’batlantiradigan gipofiz gormoni.',
    transcript: '[ˌtiːɛsˈeɪtʃ]',
    favorite: false,
  ),
  Word(
    en: 'Tuberculin (n)',
    uz: 'Tuberkulin',
    enDef:
        'A protein injected into the skin to test for tuberculosis infection.',
    uzDef:
        'Sil kasalligi infektsiyasini tekshirish uchun teriga kiritilgan oqsil.',
    transcript: '[tjuːˈbəːkjʊlɪn]',
    favorite: false,
  ),
  Word(
    en: 'Tuberculosis (n)',
    uz: 'Sil kasali',
    enDef:
        'An infectious disease caused by bacteria and characterized by the formation of tubercles in various tissues of the body, especially…',
    uzDef:
        'Bakteriyalar keltirib chiqaradigan va tananing turli to’qimalarida tuberkulyozlar paydo bo’lishi bilan tavsiflangan yuqumli kasallik, ayniqsa …',
    transcript: 'Noun /tjuːˌbɜːkjuˈləʊsɪs/',
    favorite: false,
  ),
  Word(
    en: 'Tumor (n)',
    uz: 'Shish,g’urra',
    enDef: 'Overgrowth of tissue.',
    uzDef: 'To\'qimalarning ortiqcha o\'sishi.',
    transcript: '/tjūmo’/',
    favorite: false,
  ),
  Word(
    en: 'Tussis (n)',
    uz: 'Yo’tal',
    enDef: 'Cough.',
    uzDef: 'Yõtal',
    transcript: '/’tjūsis/',
    favorite: false,
  ),
  Word(
    en: 'Tympanic membrane (n)',
    uz: 'Timpanik membrana yoki quloq pardasi',
    enDef: 'The eardrum.',
    uzDef: 'Quloq pardasi',
    transcript: 'noun /ˈtɪmpənək ˈmembreɪn/',
    favorite: false,
  ),
  Word(
    en: 'Typhoid fever (n)',
    uz: 'Ich terlama yuqumli kasalligi',
    enDef:
        'A bacterial infection with Salmonella typhi transmitted by contaminated water, milk or other foods. Proper sanitation and hygiene prevent the…',
    uzDef:
        'Ifloslangan suv, sut yoki boshqa oziq-ovqatlar orqali yuqadigan Salmonella typhi bakterial infektsiyasi.  To’g’ri sanitariya va gigiena qoidalariga rioya qilish kasallikning oldini oladi …',
    transcript: 'Noun /ˈtaɪfɔɪd ˈfiːvə(r)/',
    favorite: false,
  ),
  Word(
    en: 'Typhus (n)',
    uz: 'Toshmali tif',
    enDef:
        'An infectious disease spread to people by the bite of ticks, mites, fleas and lice. Typhus is characterized by high…',
    uzDef:
        'Shomil, oqadilar, burga va bitlarning chaqishi orqali odamlarga yuqadigan yuqumli kasallik.  Qorin tifi yuqori…',
    transcript: 'Noun /ˈtaɪfəs/',
    favorite: false,
  ),
  Word(
    en: 'Ulcer (n)',
    uz: 'Ichki  yara, teri yarasi',
    enDef: 'A localized sore in the skin or mucous surfaces.',
    uzDef: 'Teri yoki shilliq qavatdagi mahalliy yara.',
    transcript: '[ ˈəlsər ]',
    favorite: false,
  ),
  Word(
    en: 'Ulcerative colitis (n)',
    uz: 'Yarali kolid',
    enDef:
        'A chronic inflammatory disease of the large intestine characterized by bloody diarrhea.',
    uzDef:
        'Yo\'g\'on ichakning surunkali yallig\'lanish kasalligi, qonli diareya bilan tavsiflanadi',
    transcript: '[ˈəl-sə-ˌrā-tiv ] [  kō-ˈlī-təs ]',
    favorite: false,
  ),
  Word(
    en: 'Ulna (n)',
    uz: 'Tirsak suyagi',
    enDef: 'The larger of the two bones of the forearm.',
    uzDef: 'Bilakning ikkita suyagidan kattasi.',
    transcript: '[ ˈəlnə ]',
    favorite: false,
  ),
  Word(
    en: 'Umbilical cord (n)',
    uz: 'Kindik ichakchasidagi',
    enDef:
        'A tough, cord-like structure connecting the fetus to the placenta for nourishment.',
    uzDef:
        'Xomilani oziqlantirish uchun platsenta bilan bog\'laydigan qattiq, shnurga o\'xshash tuzilma.',
    transcript: '[ ˌəmˈbilək(ə)l ˌkôrd ]',
    favorite: false,
  ),
  Word(
    en: 'Umbilicus (n)',
    uz: 'Kindik',
    enDef:
        'The scar at the site of attachment of the umbilical cord. The navel or belly button.',
    uzDef: 'Kindik bog\'lanish joyidagi chandiq.  Kindik yoki qorin tugmasi.',
    transcript: '[ ˌəmˈbilikəs ]',
    favorite: false,
  ),
  Word(
    en: 'Ungual (adj)',
    uz: 'Noaniq',
    enDef: 'Having to do with the nails.',
    uzDef: 'Tirnoqlar bilan bog’liq.',
    transcript: '[ ˈəNGɡ(yə)wəl ]',
    favorite: false,
  ),
  Word(
    en: 'Uremia (n)',
    uz: 'Uremiya',
    enDef:
        'The buildup in the blood of substances normally eliminated in the urine.',
    uzDef:
        'Odatda siydik bilan chiqariladigan moddalarning qonda to\'planishi.',
    transcript: '[ yo͝oˈrēmēə ]',
    favorite: false,
  ),
  Word(
    en: 'Ureter (n)',
    uz: 'Siydik chiqarish kanali',
    enDef: 'A narrow tube that transfers urine from the kidney to the bladder.',
    uzDef: 'Siydikni buyrakdan siydik pufagiga o\'tkazadigan tor naycha.',
    transcript: '[ ‘yo͝orədər ]',
    favorite: false,
  ),
  Word(
    en: 'Urethra (n)',
    uz: 'Uretra',
    enDef: 'The tube that allows the bladder to empty outside the body.',
    uzDef: 'Quviqni tanadan tashqarida bo\'shatish imkonini beruvchi naycha.',
    transcript: '[ yo͝oˈrēTHrə ]',
    favorite: false,
  ),
  Word(
    en: 'Urethral stricture (n)',
    uz: 'Uretraning torayishi',
    enDef: 'A narrow area of the urethra that blocks the flow of urine.',
    uzDef: 'Siydik chiqarishni to\'sib qo\'yadigan uretraning tor maydoni.',
    transcript: '[ yu̇-ˈrē-thrəl  ˈstrik-chər ]',
    favorite: false,
  ),
  Word(
    en: 'Urethritis (n)',
    uz: 'Uretrit',
    enDef: 'Inflammation or infection of the urethra.',
    uzDef: 'Uretraning yallig\'lanishi yoki infektsiyasi.',
    transcript: '[ˌyo͝orəˈTHrīdəs  ]',
    favorite: false,
  ),
  Word(
    en: 'Urinary bladder (n)',
    uz: 'Siydik pufagi',
    enDef:
        'The organ that serves as a temporary storage place for urine. Also called the bladder.',
    uzDef:
        'Siydikni vaqtincha saqlash joyi bo\'lib xizmat qiladigan organ.  Quviq deb ham ataladi.',
    transcript: '[  ˈyər-ə-ˌner-ē   ˈbla-dər ]',
    favorite: false,
  ),
  Word(
    en: 'Urine (n)',
    uz: 'Siydik',
    enDef:
        'The fluid composed of water and waste products that’s secreted by the kidneys.',
    uzDef:
        'Buyraklar tomonidan chiqariladigan suv va chiqindi mahsulotlardan tashkil topgan suyuqlik.',
    transcript: '[ˈyo͝orən ]',
    favorite: false,
  ),
  Word(
    en: 'Urogenital (adj)',
    uz: 'Urogenital',
    enDef: 'Having to do with the urinary system and genitals.',
    uzDef: 'Siydik chiqarish tizimi va jinsiy a\'zolar bilan bog\'liq.',
    transcript: '[ ˌyo͝orōˈjenədl ]',
    favorite: false,
  ),
  Word(
    en: 'Urology (n)',
    uz: 'Urologiya',
    enDef:
        'The branch of medicine that deals with the urinary system in women and the urogenital system in men.',
    uzDef:
        'Ayollarda siydik chiqarish tizimi va erkaklarda urogenital tizim bilan shug\'ullanadigan tibbiyot sohasi.',
    transcript: '[ yu̇-ˈrä-lə-jē ]',
    favorite: false,
  ),
  Word(
    en: 'Uterus (n)',
    uz: 'Bachadon',
    enDef:
        'A hollow muscular organ in women where the ovum (egg) is deposited and the embryo and fetus are developed.',
    uzDef:
        'Tuxum (tuxum) yotqizilgan va embrion va homila rivojlangan ayollardagi ichi bo\'sh mushak organi.',
    transcript: '[ ˈyo͞odərəs ]',
    favorite: false,
  ),
  Word(
    en: 'Uvula (n)',
    uz: 'Tilcha',
    enDef:
        'The fleshy mass hanging down from the soft palate above the back of the tongue.',
    uzDef:
        'Tilning orqa qismidagi yumshoq tanglaydan pastga osilgan go\'shtli massa.',
    transcript: '[  ˈyü-vyə-lə ]',
    favorite: false,
  ),
  Word(
    en: 'Vaccination (n)',
    uz: 'Emlash',
    enDef:
        'Inoculation with weakened or dead microorganisms to develop immunity and prevent disease caused by the regular strain of that…',
    uzDef:
        'Immunitetni rivojlantirish va ularning muntazam shtammidan kelib chiqadigan kasallikning oldini olish uchun zaiflashgan yoki o\'lik mikroorganizmlar bilan emlash ...',
    transcript: '[ ˌvaksəˈnāSH(ə)n ]',
    favorite: false,
  ),
  Word(
    en: 'Vaccine (n)',
    uz: 'Vaktsina',
    enDef:
        'A preparation of killed or weakened microorganisms, given to treat or prevent disease.',
    uzDef:
        'Kasallikni davolash yoki oldini olish uchun o\'ldirilgan yoki zaiflashgan mikroorganizmlardan tayyorlangan preparat.',
    transcript: '[vakˈsēn ]',
    favorite: false,
  ),
  Word(
    en: 'Vagina (n)',
    uz: 'Qin',
    enDef:
        'The muscular canal in women between the vulva and the uterus. It serves as the entry for spermatozoa and as…',
    uzDef:
        'Ayollarda vulva va bachadon o\'rtasidagi mushak kanali.  U spermatozoidlarning kirish joyi bo\'lib xizmat qiladi va ...',
    transcript: '[ vəˈjīnə ]',
    favorite: false,
  ),
  Word(
    en: 'Vaginismus (n)',
    uz: 'Vaginizm',
    enDef: 'Painful spasm of the vagina.',
    uzDef: 'Vaginaning og\'riqli spazmi.',
    transcript: '[ ˌvajəˈnizməs ]',
    favorite: false,
  ),
  Word(
    en: 'Varicocele (n)',
    uz: 'Varikosel',
    enDef:
        'Dilated veins in the spermatic cord above or around the testis that can cause decreased sperm production on the affected side.',
    uzDef:
        'Moyak ustidagi yoki atrofidagi sperma shnuridagi kengaygan tomirlar zararlanganda sperma ishlab chiqarishning kamayishiga olib kelishi mumkin ...',
    transcript: '[ˈverəkōˌsēl ]',
    favorite: false,
  ),
  Word(
    en: 'Varicose veins (n)',
    uz: 'Varikoz tomirlari',
    enDef: 'Swollen, distended veins especially visible in the legs.',
    uzDef: 'Shishgan, kengaygan tomirlar ayniqsa oyoqlarda ko\'rinadi.',
    transcript: '[ ˈverəˌkōs vāns ]',
    favorite: false,
  ),
  Word(
    en: 'Vas deferens (n)',
    uz: 'vas deferens',
    enDef:
        'The duct through which sperm travels from the testicle to the urethra of the penis.',
    uzDef:
        'Spermatozoidlar moyakdan jinsiy olatni uretrasiga o\'tkazadigan kanal.',
    transcript: '[ ˌvas ˈdefərənz ]',
    favorite: false,
  ),
  Word(
    en: 'Vascular (adj)',
    uz: 'qon tomir',
    enDef: 'Of or having vessels, particularly the blood vessels.',
    uzDef: 'Tomirlardan, xususan, qon tomirlaridan.',
    transcript: '[ ˈvaskyələr ]',
    favorite: false,
  ),
  Word(
    en: 'Vasculitis (n)',
    uz: 'vaskulit',
    enDef: 'Inflammation of the walls of the small blood vessels.',
    uzDef: 'Kichik qon tomirlari devorlarining yallig\'lanishi.',
    transcript: '[ ˌvaskyəˈlīdəs ]',
    favorite: false,
  ),
  Word(
    en: 'Vasectomy (n)',
    uz: 'vazektomiya',
    enDef:
        'Surgical removal or tying of the vas deferens to prevent the passing of sperm. Used as a form of birth control.',
    uzDef:
        'Spermatozoidlarning o\'tishini oldini olish uchun vas deferensni jarrohlik yo\'li bilan olib tashlash yoki bog\'lash.  Tug\'ilish shakli sifatida ishlatiladi ...',
    transcript: '[ vəˈsektəmē ]',
    favorite: false,
  ),
  Word(
    en: 'Vasoconstriction (n)',
    uz: 'Qon tomirlarining torayishi',
    enDef: 'Causing the narrowing or closing (constriction) of blood vessels.',
    uzDef:
        'Qon tomirlarining torayishi yoki yopilishi (siqilishi) sabab bo\'ladi.',
    transcript: '[ˌvāzōkənˈstrikSHən]',
    favorite: false,
  ),
  Word(
    en: 'Vasodilation (n)',
    uz: 'tomirlarning kengayishi',
    enDef: 'Causing the widening or opening (dilation) of blood vessels.',
    uzDef:
        'Qon tomirlarining kengayishiga yoki ochilishiga (kengayishiga) sabab bo\'ladi',
    transcript: '[ˌvāzōˌdīˈlāSHən]',
    favorite: false,
  ),
  Word(
    en: 'Vector (n)',
    uz: 'vektor',
    enDef:
        'An animal that spreads an infectious agent from one host to another. Also called a carrier.',
    uzDef:
        'Yuqumli qo\'zg\'atuvchini bir uy egasidan ikkinchisiga tarqatadigan hayvon.  Bundan tashqari, tashuvchi deb ataladi.',
    transcript: '[ˈvektər]',
    favorite: false,
  ),
  Word(
    en: 'Vein (n)',
    uz: 'tomir',
    enDef:
        'A vessel that carries blood from the various parts of the body to the heart.',
    uzDef: 'Tananing turli qismlaridan yurakka qon olib boradigan tomir.',
    transcript: '[ vān ]',
    favorite: false,
  ),
  Word(
    en: 'Venom (n)',
    uz: 'zahar',
    enDef: 'A toxin secreted by an animal.',
    uzDef: 'Hayvon tomonidan chiqariladigan toksin.',
    transcript: '[ˈvenəm]',
    favorite: false,
  ),
  Word(
    en: 'Venous (adj)',
    uz: 'venoz ',
    enDef: 'Having to do with a vein.',
    uzDef: 'Tomir bilan bog\'liq.',
    transcript: '[ˈvēnəs]',
    favorite: false,
  ),
  Word(
    en: 'Ventricle (n)',
    uz: 'qorincha',
    enDef:
        'Either of the two chambers that contract to pump blood from the heart. 2. Any of several small fluid-filled cavities.',
    uzDef:
        '1.Qonni yurakdan haydash uchun shartnoma tuzadigan ikkita kameradan biri.  2. Bir necha kichik suyuqlik bilan to\'ldirilgan har qanday ...',
    transcript: '[ˈventrək(ə)l]',
    favorite: false,
  ),
  Word(
    en: 'Verruca (n)',
    uz: 'verruka',
    enDef:
        'A small, hard, abnormal growth of the skin or mucous membranes caused by a virus.',
    uzDef:
        'Virus sabab bo\'lgan terining yoki shilliq pardalarning kichik, qattiq, g\'ayritabiiy o\'sishi.',
    transcript: '[vəˈro͞okə]',
    favorite: false,
  ),
  Word(
    en: 'Vertebrae (n)',
    uz: 'umurtqalar',
    enDef: 'The bones that make up the spine.',
    uzDef: 'Orqa miyani tashkil etuvchi suyaklar.',
    transcript: '[\\ ˈvər-tə-brə]',
    favorite: false,
  ),
  Word(
    en: 'Vertigo (n)',
    uz: 'bosh aylanishi',
    enDef: 'A spinning sensation often accompanied by mild to severe nausea.',
    uzDef:
        'Ko\'pincha engil va og\'ir ko\'ngil aynish bilan birga aylanadigan tuyg\'u.',
    transcript: '[ˈvərdəɡō]',
    favorite: false,
  ),
  Word(
    en: 'Vesicle (n)',
    uz: 'pufakcha',
    enDef:
        '1. A small, sac-like cavity. 2. A blister. Vesicourethral reflux. An abnormal condition that allows urine to flow from the bladder back into a ureter.',
    uzDef:
        '1.Kichik, xaltasimon bo‘shliq.  2. Blister.  Vesikouretral reflyuks.  Siydikning siydik pufagidan siydik chiqarish kanaliga oqib chiqishiga imkon beruvchi g\'ayritabiiy holat.',
    transcript: '[ˈvesək(ə)l]',
    favorite: false,
  ),
  Word(
    en: 'Virus (n)',
    uz: 'virus',
    enDef:
        'The agent of an infectious disease, smaller than bacteria, that must have a living host in order to grow or reproduce.',
    uzDef:
        'Yuqumli kasallikning qo\'zg\'atuvchisi, bakteriyalardan kichikroq, o\'sishi yoki o\'sishi uchun tirik xostga ega bo\'lishi kerak ...',
    transcript: '[ˈvīrəs]',
    favorite: false,
  ),
  Word(
    en: 'Viscera (n)',
    uz: 'ichki organlar',
    enDef: 'The large internal organs.',
    uzDef: 'Katta ichki organlar.',
    transcript: '[ˈvi-sə-rə]',
    favorite: false,
  ),
  Word(
    en: 'Vision (n)',
    uz: 'Ko’rish qobilyati',
    enDef: 'The sense of sight.',
    uzDef: 'Ko\'rish hissi.',
    transcript: '[ˈviZHən]',
    favorite: false,
  ),
  Word(
    en: 'Vitamin (n)',
    uz: 'Vitamin',
    enDef:
        'An organic substance found in food and essential in small quantities for good health.',
    uzDef:
        'Oziq-ovqat tarkibida mavjud bo\'lgan va yaxshi sog\'liq uchun oz miqdorda zarur bo\'lgan organik modda.',
    transcript: '[ˈvīdəmən]',
    favorite: false,
  ),
  Word(
    en: 'Vitiligo (n)',
    uz: 'vitiligo',
    enDef:
        'A skin condition characterized by sharply defined white patches that contain no skin color (pigment).',
    uzDef:
        'Teri rangi (pigment) o\'z ichiga olmaydigan keskin aniqlangan oq dog\'lar bilan tavsiflangan teri kasalligi.',
    transcript: '[ˌvīdlˈīɡō]',
    favorite: false,
  ),
  Word(
    en: 'Vitreous humor (n)',
    uz: 'shishasimon to\'r',
    enDef:
        'The jelly-like material that fills the eyeball between the lens and retina.',
    uzDef:
        'Ob\'ektiv va to\'r parda o\'rtasida ko\'z olmasini to\'ldiradigan jele o\'xshash material.',
    transcript: '[ˈvitrēəs ˈ(h)yo͞omər]',
    favorite: false,
  ),
  Word(
    en: 'Vomiting (n)',
    uz: 'qusish',
    enDef: 'Ejecting the contents of the stomach through the mouth.',
    uzDef: 'Oshqozon tarkibini og\'iz orqali chiqarib yuborish.',
    transcript: '[\\ ˈvä-mətin]',
    favorite: false,
  ),
  Word(
    en: 'Vulva (n)',
    uz: 'Vulva(ayollarning tashqi jinsiy a\'zolari)',
    enDef:
        'The external parts of the female reproductive tract surrounding the opening to the vagina.',
    uzDef:
        'Ayol jinsiy yo\'lining tashqi qismlari vaginaning ochilishini o\'rab oladi.  Siğil',
    transcript: '[ˈvəlvə]',
    favorite: false,
  ),
  Word(
    en: 'Wart (n)',
    uz: 'Buqoq',
    enDef:
        'A small, hard, abnormal growth of the skin or mucous membranes caused by a virus.',
    uzDef:
        'Virus sabab bo\'lgan terining yoki shilliq pardalarning kichik, qattiq, g\'ayritabiiy o\'sishi.',
    transcript: '[wôrt]',
    favorite: false,
  ),
  Word(
    en: 'Wheal (n)',
    uz: 'shilinish',
    enDef:
        'A pimple or small itchy elevation of the skin caused by an allergen.',
    uzDef:
        'Allergen sabab bo\'lgan terining kichik qichishi yoki pimple ko\'tarilishi.',
    transcript: '[\\ ˈ(h)wēl]',
    favorite: false,
  ),
  Word(
    en: 'Wheeze (n)',
    uz: 'xirillash',
    enDef:
        'A whistling or squeaky breathing sound caused by the narrowing (constriction) or blocking of the airway.',
    uzDef:
        'Nafas olish yo\'lining torayishi (qisqalishi) yoki tiqilib qolishi natijasida paydo bo\'lgan hushtak yoki chiyillagan nafas olish tovushi.',
    transcript: '[(h)wēz]',
    favorite: false,
  ),
  Word(
    en: 'Whiplash (n)',
    uz: 'Boyi sinishi',
    enDef:
        'An injury of the neck or spine due to a sudden, severe bending of the neck.',
    uzDef:
        'Bo\'yinning to\'satdan, qattiq egilishi tufayli bo\'yin yoki umurtqa pog\'onasining shikastlanishi.',
    transcript: '[ˈ(h)wipˌlaSH]',
    favorite: false,
  ),
  Word(
    en: 'whooping cough (n)',
    uz: 'ko\'k yo\'tal',
    enDef:
        'A serious infectious respiratory disease of children. Named for the distinctive whooping sound made by the patient after a coughing fit.',
    uzDef:
        'Bolalarning jiddiy yuqumli respirator kasalligi.  Bemorning yo\'taldan keyin chiqaradigan o\'ziga xos ko\'k ovozi uchun nomlangan ...',
    transcript: '[ˈ(h)wu̇p kof]',
    favorite: false,
  ),
  Word(
    en: "Wilms' tumor (n)",
    uz: 'Vilms shishi',
    enDef: 'A rapidly growing tumor of the kidney found in children.',
    uzDef: 'Bolalarda tez o\'sadigan buyrak shishi.',
    transcript: 'wilmz    ˌt(y)o͞omər',
    favorite: false,
  ),
  Word(
    en: "Wilson's disease (n)",
    uz: 'Uilson kasalligi',
    enDef:
        'A rare, inherited disorder that occurs when copper pools in the liver and other organs.',
    uzDef:
        'Qizil qon hujayralarida mis to\'planganda paydo bo\'ladigan noyob, irsiy kasallik.',
    transcript: '[ˈwɪlsənz dɪˌziːz]',
    favorite: false,
  ),
  Word(
    en: "Withdrawal (n)",
    uz: 'olib tashlash',
    enDef:
        'The act or process of giving up the use of a drug to which one has become addicted.',
    uzDef:
        'O\'ziga qaram bo\'lib qolgan giyohvand moddalarni iste\'mol qilishdan voz kechish harakati yoki jarayoni.',
    transcript: '[wiT͟Hˈdrôl]',
    favorite: false,
  ),
  Word(
    en: 'Wrist (n)',
    uz: 'Bilak',
    enDef: 'The joint or part of the arm between the hand and the forearm.',
    uzDef: 'Qo\'l va bilak orasidagi bo\'g\'im yoki qo\'lning bir qismi.',
    transcript: '[rist]',
    favorite: false,
  ),
  Word(
    en: 'Xanthoma (n)',
    uz: 'ksantoma',
    enDef: 'A tumor-like deposit of fatty substances in the skin.',
    uzDef: 'Teridagi yog\'li moddalarning o\'simtaga o\'xshash cho\'kmasi.',
    transcript: '[zanˈTHōmə]',
    favorite: false,
  ),
  Word(
    en: 'Xenograft (n)',
    uz: 'ksenograft',
    enDef:
        'Transplantation of tissue or organs from an individual of one species to another unrelated species.',
    uzDef:
        'To\'qima yoki organlarni bir turning biridan boshqa turga, masalan, cho\'chqaning yuragiga transplantatsiya qilish.',
    transcript: '[ˈzenəɡraft]',
    favorite: false,
  ),
  Word(
    en: 'Xeroderma (n)',
    uz: 'kseroderma',
    enDef: 'Dryness of the skin.',
    uzDef: 'Terining quruqligi.',
    transcript: '[ˌzirəˈdərmə]',
    favorite: false,
  ),
  Word(
    en: 'Yeast (n)',
    uz: 'xamirturush',
    enDef:
        'A single-celled fungus that reproduces by budding and may lead to infections of the skin or other moist areas.',
    uzDef:
        'Tomurcuklanma yo\'li bilan ko\'payadigan va terining yoki boshqa nam joylarining infektsiyasiga olib kelishi mumkin bo\'lgan bir hujayrali qo\'ziqorin.',
    transcript: '[yēst]',
    favorite: false,
  ),
  Word(
    en: 'Yellow fever (n)',
    uz: 'sariq isitma',
    enDef:
        'An acute viral illness spread by mosquito bites. Characterized by fever and jaundice.',
    uzDef:
        'Chivin chaqishi bilan tarqaladigan o\'tkir virusli kasallik.  Isitma va sariqlik bilan tavsiflanadi.',
    transcript: '[ˌyelō ˈfēvər]',
    favorite: false,
  ),
  Word(
    en: 'Zoonosis (n)',
    uz: 'Hayvonlar orqali odamlarga yuqadigan kasallik',
    enDef: 'A disease that can be spread to people by animals.',
    uzDef: 'Hayvonlar orqali odamlarga yuqadigan kasallik.',
    transcript: '[zo͞oˈnōsəs]',
    favorite: false,
  ),
  Word(
    en: 'Zoster (n)',
    uz: 'zoster',
    enDef:
        'A viral infection of certain sensory nerves that causes pain and an eruption of blisters on the skin along the nerve path.',
    uzDef:
        'Ba\'zi sezgir nervlarning virusli infektsiyasi, og\'riq va teri bo\'ylab pufakchalar paydo bo\'lishiga olib keladi.',
    transcript: '[ˈzästər]',
    favorite: false,
  ),
  Word(
    en: 'Zygote (n)',
    uz: 'zigota',
    enDef: 'A fertilized ovum (egg).',
    uzDef: 'Urug\'langan tuxumdon (tuxum).',
    transcript: '[ˈzīˌɡōt]',
    favorite: false,
  ),
];
