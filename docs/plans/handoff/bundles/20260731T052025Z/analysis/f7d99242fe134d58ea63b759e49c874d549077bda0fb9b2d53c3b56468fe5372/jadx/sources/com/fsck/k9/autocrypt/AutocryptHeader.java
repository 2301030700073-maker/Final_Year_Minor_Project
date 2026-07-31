package com.fsck.k9.autocrypt;

import androidx.compose.ui.Modifier;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptHeader {
    public final String addr;
    public final boolean isPreferEncryptMutual;
    public final byte[] keyData;
    public final LinkedHashMap parameters;

    public AutocryptHeader(LinkedHashMap linkedHashMap, String str, byte[] bArr, boolean z) {
        bArr.getClass();
        this.parameters = linkedHashMap;
        this.addr = str;
        this.keyData = bArr;
        this.isPreferEncryptMutual = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocryptHeader)) {
            return false;
        }
        AutocryptHeader autocryptHeader = (AutocryptHeader) obj;
        return this.isPreferEncryptMutual == autocryptHeader.isPreferEncryptMutual && Arrays.equals(this.keyData, autocryptHeader.keyData) && this.addr.equals(autocryptHeader.addr) && this.parameters.equals(autocryptHeader.parameters);
    }

    public final int hashCode() {
        return ((this.parameters.hashCode() + Modifier.CC.m(Arrays.hashCode(this.keyData) * 31, this.addr, 31)) * 31) + (this.isPreferEncryptMutual ? 1 : 0);
    }

    public final String toString() {
        return "AutocryptHeader(parameters=" + this.parameters + ", addr=" + this.addr + ", keyData=" + Arrays.toString(this.keyData) + ", isPreferEncryptMutual=" + this.isPreferEncryptMutual + ")";
    }
}
