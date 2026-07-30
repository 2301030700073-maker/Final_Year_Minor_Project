package com.google.i18n.phonenumbers.prefixmapper;

import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class PrefixFileReader {
    private static final Logger logger = Logger.getLogger(PrefixFileReader.class.getName());
    private final String phonePrefixDataDirectory;
    private MappingFileProvider mappingFileProvider = new MappingFileProvider();
    private Map<String, PhonePrefixMap> availablePhonePrefixMaps = new HashMap();

    public PrefixFileReader(String str) {
        this.phonePrefixDataDirectory = str;
        loadMappingFileProvider();
    }

    private void loadMappingFileProvider() {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.phonePrefixDataDirectory + "config"));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.mappingFileProvider.readExternal(objectInputStream);
            close(objectInputStream);
        } catch (IOException e2) {
            e = e2;
            objectInputStream2 = objectInputStream;
            logger.log(Level.WARNING, e.toString());
            close(objectInputStream2);
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            close(objectInputStream2);
            throw th;
        }
    }

    private PhonePrefixMap getPhonePrefixDescriptions(int i, String str, String str2, String str3) {
        String fileName = this.mappingFileProvider.getFileName(i, str, str2, str3);
        if (fileName.length() == 0) {
            return null;
        }
        if (!this.availablePhonePrefixMaps.containsKey(fileName)) {
            loadPhonePrefixMapFromFile(fileName);
        }
        return this.availablePhonePrefixMaps.get(fileName);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.Map, java.util.Map<java.lang.String, com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap>] */
    private void loadPhonePrefixMapFromFile(String str) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.phonePrefixDataDirectory + str));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            PhonePrefixMap phonePrefixMap = new PhonePrefixMap();
            phonePrefixMap.readExternal(objectInputStream);
            ?? r1 = this.availablePhonePrefixMaps;
            r1.put(str, phonePrefixMap);
            close(objectInputStream);
            objectInputStream2 = r1;
        } catch (IOException e2) {
            e = e2;
            objectInputStream3 = objectInputStream;
            logger.log(Level.WARNING, e.toString());
            close(objectInputStream3);
            objectInputStream2 = objectInputStream3;
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            close(objectInputStream2);
            throw th;
        }
    }

    private static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                logger.log(Level.WARNING, e.toString());
            }
        }
    }

    public String getDescriptionForNumber(Phonenumber$PhoneNumber phonenumber$PhoneNumber, String str, String str2, String str3) {
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        if (countryCode == 1) {
            countryCode = ((int) (phonenumber$PhoneNumber.getNationalNumber() / 10000000)) + 1000;
        }
        PhonePrefixMap phonePrefixDescriptions = getPhonePrefixDescriptions(countryCode, str, str2, str3);
        String lookup = phonePrefixDescriptions != null ? phonePrefixDescriptions.lookup(phonenumber$PhoneNumber) : null;
        if ((lookup == null || lookup.length() == 0) && mayFallBackToEnglish(str)) {
            PhonePrefixMap phonePrefixDescriptions2 = getPhonePrefixDescriptions(countryCode, "en", "", "");
            if (phonePrefixDescriptions2 == null) {
                return "";
            }
            lookup = phonePrefixDescriptions2.lookup(phonenumber$PhoneNumber);
        }
        return lookup != null ? lookup : "";
    }

    private boolean mayFallBackToEnglish(String str) {
        return (str.equals("zh") || str.equals("ja") || str.equals("ko")) ? false : true;
    }
}
