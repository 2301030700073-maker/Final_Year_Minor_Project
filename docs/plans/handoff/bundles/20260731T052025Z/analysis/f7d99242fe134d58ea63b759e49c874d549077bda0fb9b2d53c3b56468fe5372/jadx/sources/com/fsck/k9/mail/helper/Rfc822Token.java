package com.fsck.k9.mail.helper;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Rfc822Token {
    public final String mAddress;
    public final String mComment;
    public final String mName;

    public Rfc822Token(String str, String str2, String str3) {
        this.mName = str;
        this.mAddress = str2;
        this.mComment = str3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Rfc822Token) {
            Rfc822Token rfc822Token = (Rfc822Token) obj;
            String str = rfc822Token.mName;
            String str2 = this.mName;
            if ((str2 == null ? str == null : str2.equals(str)) && this.mAddress.equals(rfc822Token.mAddress) && this.mComment.equals(rfc822Token.mComment)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.mName;
        int hashCode = str != null ? str.hashCode() + 527 : 17;
        return this.mComment.hashCode() + ((this.mAddress.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.mName;
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'A' || charAt > 'Z') && ((charAt < 'a' || charAt > 'z') && charAt != ' ' && (charAt < '0' || charAt > '9'))) {
                    StringBuilder sb2 = new StringBuilder();
                    int length2 = str.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt2 = str.charAt(i2);
                        if (charAt2 == '\\' || charAt2 == '\"') {
                            sb2.append('\\');
                        }
                        sb2.append(charAt2);
                    }
                    str = CameraDevices$CC.m("\"", sb2.toString(), "\"");
                    sb.append(str);
                    sb.append(' ');
                }
            }
            sb.append(str);
            sb.append(' ');
        }
        String str2 = this.mComment;
        if (str2.length() != 0) {
            sb.append('(');
            int length3 = str2.length();
            StringBuilder sb3 = new StringBuilder();
            for (int i3 = 0; i3 < length3; i3++) {
                char charAt3 = str2.charAt(i3);
                if (charAt3 == '(' || charAt3 == ')' || charAt3 == '\\') {
                    sb3.append('\\');
                }
                sb3.append(charAt3);
            }
            sb.append(sb3.toString());
            sb.append(") ");
        }
        String str3 = this.mAddress;
        if (str3.length() != 0) {
            sb.append('<');
            sb.append(str3);
            sb.append('>');
        }
        return sb.toString();
    }
}
