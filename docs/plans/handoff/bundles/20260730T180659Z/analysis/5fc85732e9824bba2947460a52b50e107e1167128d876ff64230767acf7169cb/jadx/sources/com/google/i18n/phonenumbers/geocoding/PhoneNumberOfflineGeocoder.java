package com.google.i18n.phonenumbers.geocoding;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.google.i18n.phonenumbers.prefixmapper.PrefixFileReader;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class PhoneNumberOfflineGeocoder {
    private static PhoneNumberOfflineGeocoder instance;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
    private PrefixFileReader prefixFileReader;

    PhoneNumberOfflineGeocoder(String str) {
        this.prefixFileReader = null;
        this.prefixFileReader = new PrefixFileReader(str);
    }

    public static synchronized PhoneNumberOfflineGeocoder getInstance() {
        PhoneNumberOfflineGeocoder phoneNumberOfflineGeocoder;
        synchronized (PhoneNumberOfflineGeocoder.class) {
            if (instance == null) {
                instance = new PhoneNumberOfflineGeocoder("/com/google/i18n/phonenumbers/geocoding/data/");
            }
            phoneNumberOfflineGeocoder = instance;
        }
        return phoneNumberOfflineGeocoder;
    }

    private String getCountryNameForNumber(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        List<String> regionCodesForCountryCode = this.phoneUtil.getRegionCodesForCountryCode(phonenumber$PhoneNumber.getCountryCode());
        if (regionCodesForCountryCode.size() == 1) {
            return getRegionDisplayName(regionCodesForCountryCode.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : regionCodesForCountryCode) {
            if (this.phoneUtil.isValidNumberForRegion(phonenumber$PhoneNumber, str2)) {
                if (!str.equals("ZZ")) {
                    return "";
                }
                str = str2;
            }
        }
        return getRegionDisplayName(str, locale);
    }

    private String getRegionDisplayName(String str, Locale locale) {
        return (str == null || str.equals("ZZ") || str.equals("001")) ? "" : new Locale("", str).getDisplayCountry(locale);
    }

    public String getDescriptionForValidNumber(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        String descriptionForNumber;
        Phonenumber$PhoneNumber phonenumber$PhoneNumber2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String countryMobileToken = PhoneNumberUtil.getCountryMobileToken(phonenumber$PhoneNumber.getCountryCode());
        String nationalSignificantNumber = this.phoneUtil.getNationalSignificantNumber(phonenumber$PhoneNumber);
        if (!countryMobileToken.equals("") && nationalSignificantNumber.startsWith(countryMobileToken)) {
            try {
                phonenumber$PhoneNumber2 = this.phoneUtil.parse(nationalSignificantNumber.substring(countryMobileToken.length()), this.phoneUtil.getRegionCodeForCountryCode(phonenumber$PhoneNumber.getCountryCode()));
            } catch (NumberParseException unused) {
                phonenumber$PhoneNumber2 = phonenumber$PhoneNumber;
            }
            descriptionForNumber = this.prefixFileReader.getDescriptionForNumber(phonenumber$PhoneNumber2, language, "", country);
        } else {
            descriptionForNumber = this.prefixFileReader.getDescriptionForNumber(phonenumber$PhoneNumber, language, "", country);
        }
        return descriptionForNumber.length() > 0 ? descriptionForNumber : getCountryNameForNumber(phonenumber$PhoneNumber, locale);
    }

    public String getDescriptionForNumber(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        PhoneNumberUtil.PhoneNumberType numberType = this.phoneUtil.getNumberType(phonenumber$PhoneNumber);
        if (numberType == PhoneNumberUtil.PhoneNumberType.UNKNOWN) {
            return "";
        }
        if (!this.phoneUtil.isNumberGeographical(numberType, phonenumber$PhoneNumber.getCountryCode())) {
            return getCountryNameForNumber(phonenumber$PhoneNumber, locale);
        }
        return getDescriptionForValidNumber(phonenumber$PhoneNumber, locale);
    }
}
