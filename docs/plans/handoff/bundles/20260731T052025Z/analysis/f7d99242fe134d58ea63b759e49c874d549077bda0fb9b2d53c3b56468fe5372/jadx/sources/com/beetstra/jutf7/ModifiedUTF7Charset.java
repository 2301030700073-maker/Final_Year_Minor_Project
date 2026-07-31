package com.beetstra.jutf7;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModifiedUTF7Charset extends UTF7StyleCharset {
    @Override // com.beetstra.jutf7.UTF7StyleCharset
    public final boolean canEncodeDirectly(char c) {
        return c != '&' && c >= ' ' && c <= '~';
    }

    @Override // com.beetstra.jutf7.UTF7StyleCharset
    public final byte shift() {
        return (byte) 38;
    }
}
