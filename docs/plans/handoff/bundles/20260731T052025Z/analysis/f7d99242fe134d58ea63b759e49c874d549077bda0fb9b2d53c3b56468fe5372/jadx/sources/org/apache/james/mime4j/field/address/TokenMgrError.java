package org.apache.james.mime4j.field.address;

import androidx.datastore.preferences.PreferencesProto$Value;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TokenMgrError extends Error {
    public static final String addEscapes(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != 0) {
                if (charAt == '\"') {
                    stringBuffer.append("\\\"");
                } else if (charAt == '\'') {
                    stringBuffer.append("\\'");
                } else if (charAt == '\\') {
                    stringBuffer.append("\\\\");
                } else if (charAt == '\f') {
                    stringBuffer.append("\\f");
                } else if (charAt != '\r') {
                    switch (charAt) {
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            stringBuffer.append("\\b");
                            break;
                        case '\t':
                            stringBuffer.append("\\t");
                            break;
                        case '\n':
                            stringBuffer.append("\\n");
                            break;
                        default:
                            char charAt2 = str.charAt(i);
                            if (charAt2 < ' ' || charAt2 > '~') {
                                String str2 = "0000" + Integer.toString(charAt2, 16);
                                stringBuffer.append("\\u".concat(str2.substring(str2.length() - 4, str2.length())));
                                break;
                            } else {
                                stringBuffer.append(charAt2);
                                break;
                            }
                    }
                } else {
                    stringBuffer.append("\\r");
                }
            }
        }
        return stringBuffer.toString();
    }
}
