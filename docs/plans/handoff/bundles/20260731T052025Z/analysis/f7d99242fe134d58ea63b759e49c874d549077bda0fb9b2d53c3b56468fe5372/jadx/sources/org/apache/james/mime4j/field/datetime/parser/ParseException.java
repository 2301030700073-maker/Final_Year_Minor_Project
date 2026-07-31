package org.apache.james.mime4j.field.datetime.parser;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParseException extends org.apache.james.mime4j.dom.field.ParseException {
    public Token currentToken;
    public String eol;
    public int[][] expectedTokenSequences;
    public boolean specialConstructor;
    public String[] tokenImage;

    public ParseException() {
        super("Cannot parse field");
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuffer stringBuffer;
        int[] iArr;
        String[] strArr = this.tokenImage;
        Token token = this.currentToken;
        int[][] iArr2 = this.expectedTokenSequences;
        String str = this.eol;
        if (!this.specialConstructor) {
            return super.getMessage();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < iArr2.length; i3++) {
            int[] iArr3 = iArr2[i3];
            if (i2 < iArr3.length) {
                i2 = iArr3.length;
            }
            int i4 = 0;
            while (true) {
                iArr = iArr2[i3];
                if (i4 >= iArr.length) {
                    break;
                }
                stringBuffer2.append(strArr[iArr[i4]]);
                stringBuffer2.append(" ");
                i4++;
            }
            if (iArr[iArr.length - 1] != 0) {
                stringBuffer2.append("...");
            }
            stringBuffer2.append(str);
            stringBuffer2.append("    ");
        }
        Token token2 = token.next;
        String str2 = "Encountered \"";
        int i5 = 0;
        while (true) {
            if (i5 < i2) {
                if (i5 != 0) {
                    str2 = str2.concat(" ");
                }
                if (token2.kind == 0) {
                    StringBuilder m = Modifier.CC.m(str2);
                    m.append(strArr[i]);
                    str2 = m.toString();
                } else {
                    StringBuilder m2 = Modifier.CC.m(str2);
                    String str3 = token2.image;
                    StringBuffer stringBuffer3 = new StringBuffer();
                    int i6 = i;
                    while (i6 < str3.length()) {
                        char charAt = str3.charAt(i6);
                        if (charAt != 0) {
                            if (charAt == '\"') {
                                stringBuffer = stringBuffer2;
                                stringBuffer3.append("\\\"");
                            } else if (charAt == '\'') {
                                stringBuffer = stringBuffer2;
                                stringBuffer3.append("\\'");
                            } else if (charAt == '\\') {
                                stringBuffer = stringBuffer2;
                                stringBuffer3.append("\\\\");
                            } else if (charAt == '\f') {
                                stringBuffer = stringBuffer2;
                                stringBuffer3.append("\\f");
                            } else if (charAt != '\r') {
                                switch (charAt) {
                                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                        stringBuffer = stringBuffer2;
                                        stringBuffer3.append("\\b");
                                        break;
                                    case '\t':
                                        stringBuffer = stringBuffer2;
                                        stringBuffer3.append("\\t");
                                        break;
                                    case '\n':
                                        stringBuffer = stringBuffer2;
                                        stringBuffer3.append("\\n");
                                        break;
                                    default:
                                        char charAt2 = str3.charAt(i6);
                                        if (charAt2 < ' ' || charAt2 > '~') {
                                            stringBuffer = stringBuffer2;
                                            String str4 = "0000" + Integer.toString(charAt2, 16);
                                            stringBuffer3.append("\\u".concat(str4.substring(str4.length() - 4, str4.length())));
                                            break;
                                        } else {
                                            stringBuffer3.append(charAt2);
                                            break;
                                        }
                                        break;
                                }
                            } else {
                                stringBuffer = stringBuffer2;
                                stringBuffer3.append("\\r");
                            }
                            i6++;
                            stringBuffer2 = stringBuffer;
                        }
                        stringBuffer = stringBuffer2;
                        i6++;
                        stringBuffer2 = stringBuffer;
                    }
                    m2.append(stringBuffer3.toString());
                    str2 = m2.toString();
                    token2 = token2.next;
                    i5++;
                    stringBuffer2 = stringBuffer2;
                    i = 0;
                }
            }
        }
        StringBuffer stringBuffer4 = stringBuffer2;
        StringBuilder m3 = Config.CC.m(str2, "\" at line ");
        m3.append(token.next.beginLine);
        m3.append(", column ");
        m3.append(token.next.beginColumn);
        String m4 = Config.CC.m(m3.toString(), ".", str);
        StringBuilder m5 = Modifier.CC.m(iArr2.length == 1 ? ViewSizeResolver.CC.m(m4, "Was expecting:", str, "    ") : ViewSizeResolver.CC.m(m4, "Was expecting one of:", str, "    "));
        m5.append(stringBuffer4.toString());
        return m5.toString();
    }

    public ParseException(TokenMgrError tokenMgrError) {
        super(tokenMgrError);
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }
}
