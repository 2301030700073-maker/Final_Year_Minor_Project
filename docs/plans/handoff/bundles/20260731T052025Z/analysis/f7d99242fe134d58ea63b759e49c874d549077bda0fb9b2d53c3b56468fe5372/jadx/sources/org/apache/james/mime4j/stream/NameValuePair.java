package org.apache.james.mime4j.stream;

import coil3.size.ViewSizeResolver;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NameValuePair {
    public final String name;
    public final String value;

    public NameValuePair(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof NameValuePair) {
                NameValuePair nameValuePair = (NameValuePair) obj;
                if (this.name.equals(nameValuePair.name)) {
                    String str = nameValuePair.value;
                    String str2 = this.value;
                    if (str2 == null ? str == null : str2.equals(str)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Handshake.Companion.hashCode(Handshake.Companion.hashCode(17, this.name), this.value);
    }

    public final String toString() {
        String str = this.value;
        String str2 = this.name;
        return str == null ? str2 : ViewSizeResolver.CC.m(str2, "=\"", str, "\"");
    }
}
