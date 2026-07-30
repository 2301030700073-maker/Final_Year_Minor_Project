package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class zzit {
    private final zzjc zza;
    private final byte[] zzb;

    private zzit(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzjc.zzb(bArr);
    }

    public final zzik zza() {
        this.zza.zzb();
        return new zziv(this.zzb);
    }

    public final zzjc zzb() {
        return this.zza;
    }
}
