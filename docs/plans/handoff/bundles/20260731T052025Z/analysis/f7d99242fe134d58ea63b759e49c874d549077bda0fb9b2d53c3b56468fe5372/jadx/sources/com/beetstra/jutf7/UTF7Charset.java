package com.beetstra.jutf7;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UTF7Charset extends UTF7StyleCharset {
    public final String directlyEncoded;

    public UTF7Charset(String str, String[] strArr, boolean z) {
        super(str, strArr, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", false);
        if (z) {
            this.directlyEncoded = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n";
        } else {
            this.directlyEncoded = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'(),-./:? \t\r\n";
        }
    }

    @Override // com.beetstra.jutf7.UTF7StyleCharset
    public final boolean canEncodeDirectly(char c) {
        return this.directlyEncoded.indexOf(c) >= 0;
    }

    @Override // com.beetstra.jutf7.UTF7StyleCharset
    public final byte shift() {
        return (byte) 43;
    }
}
