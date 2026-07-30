package com.google.android.gms.internal.wearable;

import defpackage.Cif;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
class zzat extends zzas {
    protected final byte[] zza;

    public zzat(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaw) || zzd() != ((zzaw) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzat)) {
            return obj.equals(this);
        }
        zzat zzatVar = (zzat) obj;
        int zzl = zzl();
        int zzl2 = zzatVar.zzl();
        if (zzl != 0 && zzl2 != 0 && zzl != zzl2) {
            return false;
        }
        int zzd = zzd();
        if (zzd > zzatVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + zzd + zzd());
        }
        if (zzd > zzatVar.zzd()) {
            throw new IllegalArgumentException(Cif.m6918new("Ran off end of other: 0, ", zzd, ", ", zzatVar.zzd()));
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzatVar.zza;
        zzatVar.zzc();
        int i = 0;
        int i2 = 0;
        while (i < zzd) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final int zzf(int i, int i2, int i3) {
        return zzcd.zzd(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final zzaw zzg(int i, int i2) {
        int zzk = zzaw.zzk(0, i2, zzd());
        return zzk == 0 ? zzaw.zzb : new zzaq(this.zza, 0, zzk);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final String zzh(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final void zzi(zzam zzamVar) {
        ((zzbb) zzamVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.wearable.zzaw
    public final boolean zzj() {
        return zzet.zzf(this.zza, 0, zzd());
    }
}
