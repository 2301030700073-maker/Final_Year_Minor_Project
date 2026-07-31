package com.fsck.k9.autocrypt;

import coil3.size.ViewSizeResolver;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptGossipHeader {
    public final String addr;
    public final byte[] keyData;

    public AutocryptGossipHeader(String str, byte[] bArr) {
        bArr.getClass();
        this.addr = str;
        this.keyData = bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AutocryptGossipHeader)) {
            return false;
        }
        AutocryptGossipHeader autocryptGossipHeader = (AutocryptGossipHeader) obj;
        return this.addr.equals(autocryptGossipHeader.addr) && Arrays.equals(this.keyData, autocryptGossipHeader.keyData);
    }

    public final int hashCode() {
        return this.addr.hashCode() + (Arrays.hashCode(this.keyData) * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("AutocryptGossipHeader(addr=", this.addr, ", keyData=", Arrays.toString(this.keyData), ")");
    }
}
