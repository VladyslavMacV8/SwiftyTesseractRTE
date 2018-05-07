//
//  RecognitionLanguage.swift
//  SwiftyTesseract
//
//  Created by Steven Sherry on 3/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

/// The language of the text to be recognized
public enum RecognitionLanguage: String {
  case afrikaans = "afr"
  case albanian = "sqi"
  case amharic = "amh"
  case arabic = "ara"
  case assamese = "asm"
  case azerbaijani = "aze"
  case azerbaijaniCyrillic = "aze_cyrl"
  case basque = "eus"
  case belarusian = "bel"
  case bengali = "ben"
  case bosnian = "bos"
  case bulgarian = "bul"
  case burmese = "mya"
  case catalanAndValencian = "cat"
  case cebuano = "ceb"
  case centralKhmer = "khm"
  case chineseSimplified = "chi_sim"
  case chineseTraditional = "chi_tra"
  case croatian = "hrv"
  case czech = "ces"
  case cherokee = "chr"
  case danish = "dan"
  case dutchFlemish = "nld"
  case dzongkha = "dzo"
  case english = "eng"
  case englishMiddle = "enm"
  case esperanto = "epo"
  case estonian = "est"
  case finnish = "fin"
  case frankish = "frk"
  case french = "fra"
  case frenchMiddle = "frm"
  case galician = "glg"
  case georgian = "kat"
  case georgianOld = "kat_old"
  case german = "deu"
  case greekAncient = "grc"
  case greekModern = "ell"
  case guajarati = "guj"
  case haitian = "hat"
  case hebrew = "heb"
  case hindi = "hin"
  case hungarian = "hun"
  case icelandic = "isl"
  case inuktitut = "iku"
  case indonesian = "ind"
  case italian = "ita"
  case italianOld = "ita_old"
  case irish = "gle"
  case javanese = "jav"
  case japanese = "jpn"
  case kannada = "kan"
  case kazakh = "kaz"
  case korean = "kor"
  case kurdish = "kur"
  case kyrgyz = "kir"
  case lao = "lao"
  case latin = "lat"
  case lithuanian = "lit"
  case malayalam = "mal"
  case macedonian = "mkd"
  case malay = "msa"
  case maltese = "mlt"
  case marathi = "mar"
  case nepali = "nep"
  case norwegian = "nor"
  case oriya = "ori"
  case pashto = "pus"
  case persian = "fas"
  case polish = "pol"
  case portugese = "por"
  case punjabi = "pan"
  case romanian = "ron"
  case russian = "rus"
  case sanskrit = "san"
  case serbian = "srp"
  case serbianLatin = "srp_ltn"
  case sinhala = "sin"
  case slovak = "slk"
  case slovenian = "slv"
  case spanish = "spa"
  case spanishOld = "spa_old"
  case swahili = "swa"
  case swedish = "swe"
  case syriac = "syr"
  case tamil = "tam"
  case tagalog = "tgl"
  case tajik = "tgk"
  case telugu = "tel"
  case thai = "tha"
  case tibetan = "bod"
  case tigrinya = "tir"
  case turkish = "tur"
  case uighur = "uig"
  case ukrainian = "ukr"
  case urdu = "urd"
  case uzbek = "uzb"
  case uzbekCyrillic = "uzb_cyrl"
  case vietnamese = "vie"
  case welsh = "cym"
  case yiddish = "yid"
}

extension RecognitionLanguage: LanguageStringConverter {
  static func createLanguageString(from languages: [RecognitionLanguage]) -> String {
    let stringLanguages = languages.reduce("") { $0.appending("\($1.rawValue)+") }
    return stringLanguages.droppingLast()
  }
}
