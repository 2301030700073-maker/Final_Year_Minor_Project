package com.android.vcard;

import android.util.Log;
import com.android.vcard.exception.VCardException;
import java.io.IOException;
import java.util.Set;

/* loaded from: classes.dex */
class VCardParserImpl_V30 extends VCardParserImpl_V21 {
    private boolean mEmittedAgentWarning;
    private String mPreviousLine;

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getBase64(String str) throws IOException, VCardException {
        return str;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected int getVersion() {
        return 1;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getVersionString() {
        return "3.0";
    }

    public VCardParserImpl_V30() {
        this.mEmittedAgentWarning = false;
    }

    public VCardParserImpl_V30(int i) {
        super(i);
        this.mEmittedAgentWarning = false;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String peekLine() throws IOException {
        String str = this.mPreviousLine;
        return str != null ? str : this.mReader.peekLine();
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getLine() throws IOException {
        String str = this.mPreviousLine;
        if (str != null) {
            this.mPreviousLine = null;
            return str;
        }
        return this.mReader.readLine();
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String getNonEmptyLine() throws IOException, VCardException {
        String readLine;
        String str = null;
        StringBuilder sb = null;
        while (true) {
            readLine = this.mReader.readLine();
            if (readLine == null) {
                break;
            }
            if (readLine.length() != 0) {
                if (readLine.charAt(0) == ' ' || readLine.charAt(0) == '\t') {
                    if (sb == null) {
                        sb = new StringBuilder();
                    }
                    String str2 = this.mPreviousLine;
                    if (str2 != null) {
                        sb.append(str2);
                        this.mPreviousLine = null;
                    }
                    sb.append(readLine.substring(1));
                } else {
                    if (sb != null || this.mPreviousLine != null) {
                        break;
                    }
                    this.mPreviousLine = readLine;
                }
            }
        }
        if (sb != null) {
            str = sb.toString();
        } else {
            String str3 = this.mPreviousLine;
            if (str3 != null) {
                str = str3;
            }
        }
        this.mPreviousLine = readLine;
        if (str != null) {
            return str;
        }
        throw new VCardException("Reached end of buffer.");
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected boolean readBeginVCard(boolean z) throws IOException, VCardException {
        return super.readBeginVCard(z);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleParams(VCardProperty vCardProperty, String str) throws VCardException {
        try {
            super.handleParams(vCardProperty, str);
        } catch (VCardException unused) {
            String[] split = str.split("=", 2);
            if (split.length == 2) {
                handleAnyParam(vCardProperty, split[0], split[1]);
                return;
            }
            throw new VCardException("Unknown params value: " + str);
        }
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleAnyParam(VCardProperty vCardProperty, String str, String str2) {
        splitAndPutParam(vCardProperty, str, str2);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleParamWithoutName(VCardProperty vCardProperty, String str) {
        handleType(vCardProperty, str);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleType(VCardProperty vCardProperty, String str) {
        splitAndPutParam(vCardProperty, "TYPE", str);
    }

    private void splitAndPutParam(VCardProperty vCardProperty, String str, String str2) {
        int length = str2.length();
        StringBuilder sb = null;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str2.charAt(i);
            if (charAt == '\"') {
                if (z) {
                    vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                    sb = null;
                    z = false;
                } else {
                    if (sb != null) {
                        if (sb.length() > 0) {
                            Log.w("vCard", "Unexpected Dquote inside property.");
                        } else {
                            vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                        }
                    }
                    z = true;
                }
            } else if (charAt != ',' || z) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(charAt);
            } else if (sb == null) {
                Log.w("vCard", "Comma is used before actual string comes. (" + str2 + ")");
            } else {
                vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
                sb = null;
            }
        }
        if (z) {
            Log.d("vCard", "Dangling Dquote.");
        }
        if (sb != null) {
            if (sb.length() == 0) {
                Log.w("vCard", "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing.");
            } else {
                vCardProperty.addParameter(str, encodeParamValue(sb.toString()));
            }
        }
    }

    protected String encodeParamValue(String str) {
        return VCardUtils.convertStringCharset(str, "ISO-8859-1", "UTF-8");
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected void handleAgent(VCardProperty vCardProperty) {
        if (this.mEmittedAgentWarning) {
            return;
        }
        Log.w("vCard", "AGENT in vCard 3.0 is not supported yet. Ignore it");
        this.mEmittedAgentWarning = true;
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected String maybeUnescapeText(String str) {
        return unescapeText(str);
    }

    public static String unescapeText(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\\' && i < length - 1) {
                i++;
                char charAt2 = str.charAt(i);
                if (charAt2 == 'n' || charAt2 == 'N') {
                    sb.append("\n");
                } else {
                    sb.append(charAt2);
                }
            } else {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }

    public static String unescapeCharacter(char c) {
        return (c == 'n' || c == 'N') ? "\n" : String.valueOf(c);
    }

    @Override // com.android.vcard.VCardParserImpl_V21
    protected Set<String> getKnownPropertyNameSet() {
        return VCardParser_V30.sKnownPropertyNameSet;
    }
}
