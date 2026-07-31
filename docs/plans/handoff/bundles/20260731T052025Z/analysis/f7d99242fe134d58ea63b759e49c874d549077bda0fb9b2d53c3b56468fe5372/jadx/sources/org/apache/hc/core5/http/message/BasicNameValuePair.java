package org.apache.hc.core5.http.message;

import j$.util.Objects;
import java.io.Serializable;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicNameValuePair implements Serializable {
    public final String name;
    public final String value;

    public BasicNameValuePair(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BasicNameValuePair) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) obj;
            if (this.name.equalsIgnoreCase(basicNameValuePair.name) && Objects.equals(this.value, basicNameValuePair.value)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.name;
        String lowerCase = str == null ? null : str.toLowerCase(Locale.ROOT);
        int hashCode = 629 + (lowerCase != null ? lowerCase.hashCode() : 0);
        String str2 = this.value;
        return (hashCode * 37) + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.value;
        String str2 = this.name;
        if (str == null) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 1);
        sb.append(str2);
        sb.append("=");
        sb.append(str);
        return sb.toString();
    }
}
