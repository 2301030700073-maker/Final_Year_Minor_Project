package com.google.android.gms.internal.ads;

import defpackage.Cif;

/* loaded from: classes.dex */
final class zzftv extends zzftu {
    private final char zza;

    public zzftv(char c) {
        this.zza = c;
    }

    public final String toString() {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        int i = this.zza;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(i & 15);
            i >>= 4;
        }
        return Cif.m6908case("CharMatcher.is('", String.copyValueOf(cArr), "')");
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final boolean zzb(char c) {
        return c == this.zza;
    }
}
