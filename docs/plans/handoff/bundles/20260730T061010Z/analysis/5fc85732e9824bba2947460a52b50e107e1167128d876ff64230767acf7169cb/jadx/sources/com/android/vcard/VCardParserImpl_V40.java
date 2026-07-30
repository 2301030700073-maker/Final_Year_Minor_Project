package com.android.vcard;

/* loaded from: classes.dex */
class VCardParserImpl_V40 extends VCardParserImpl_V30 {
    public static String unescapeCharacter(char c) {
        return (c == 'n' || c == 'N') ? "\n" : String.valueOf(c);
    }
}
