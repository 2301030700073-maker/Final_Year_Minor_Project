package com.android.vcard;

import com.android.vcard.exception.VCardException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class VCardParser_V30 extends VCardParser {
    static final Set<String> sKnownPropertyNameSet = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", "NOTE", "URL", "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER", "NAME", "PROFILE", "SOURCE", "NICKNAME", "CLASS", "SORT-STRING", "CATEGORIES", "PRODID", "IMPP")));
    private final VCardParserImpl_V30 mVCardParserImpl;

    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList("7BIT", "8BIT", "BASE64", "B")));
    }

    public VCardParser_V30() {
        this.mVCardParserImpl = new VCardParserImpl_V30();
    }

    public VCardParser_V30(int i) {
        this.mVCardParserImpl = new VCardParserImpl_V30(i);
    }

    @Override // com.android.vcard.VCardParser
    public void addInterpreter(VCardInterpreter vCardInterpreter) {
        this.mVCardParserImpl.addInterpreter(vCardInterpreter);
    }

    @Override // com.android.vcard.VCardParser
    public void parse(InputStream inputStream) throws IOException, VCardException {
        this.mVCardParserImpl.parse(inputStream);
    }

    @Override // com.android.vcard.VCardParser
    public void cancel() {
        this.mVCardParserImpl.cancel();
    }
}
