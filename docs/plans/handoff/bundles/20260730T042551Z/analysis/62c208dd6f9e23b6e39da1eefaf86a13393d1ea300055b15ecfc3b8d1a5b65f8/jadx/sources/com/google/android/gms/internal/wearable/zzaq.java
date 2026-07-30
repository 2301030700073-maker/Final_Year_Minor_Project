package com.google.android.gms.internal.wearable;

import defpackage.Cif;
import defpackage.V1;

/* loaded from: classes3.dex */
final class zzaq extends zzat {
    private final int zzc;

    public zzaq(byte[] bArr, int i, int i2) {
        super(bArr);
        zzaw.zzk(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(V1.m2494case("Index < 0: ", i));
        }
        throw new ArrayIndexOutOfBoundsException(Cif.m6918new("Index > length: ", i, ", ", i2));
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.wearable.zzat
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.wearable.zzat, com.google.android.gms.internal.wearable.zzaw
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }
}
