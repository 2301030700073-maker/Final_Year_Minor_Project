package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
class zzhvg extends zzhvf {
    protected final byte[] zza;

    zzhvg(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhvi) || zzc() != ((zzhvi) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzhvg)) {
            return obj.equals(this);
        }
        zzhvg zzhvgVar = (zzhvg) obj;
        int zzy = zzy();
        int zzy2 = zzhvgVar.zzy();
        if (zzy == 0 || zzy2 == 0 || zzy == zzy2) {
            return zzh(zzhvgVar, 0, zzc());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public int zzc() {
        return this.zza.length;
    }

    protected int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    protected void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzhvf
    final boolean zzh(zzhvi zzhviVar, int i, int i2) {
        if (i2 > zzhviVar.zzc()) {
            int zzc = zzc();
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 18 + String.valueOf(zzc).length());
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zzc);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > zzhviVar.zzc()) {
            int zzc2 = zzhviVar.zzc();
            int length = String.valueOf(i).length();
            StringBuilder sb2 = new StringBuilder(length + 24 + String.valueOf(i2).length() + 2 + String.valueOf(zzc2).length());
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(zzc2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzhviVar instanceof zzhvg)) {
            return zzhviVar.zzi(i, i3).equals(zzi(0, i2));
        }
        zzhvg zzhvgVar = (zzhvg) zzhviVar;
        byte[] bArr = this.zza;
        byte[] bArr2 = zzhvgVar.zza;
        int zzd = zzd() + i2;
        int zzd2 = zzd();
        int zzd3 = zzhvgVar.zzd() + i;
        while (zzd2 < zzd) {
            if (bArr[zzd2] != bArr2[zzd3]) {
                return false;
            }
            zzd2++;
            zzd3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public final zzhvi zzi(int i, int i2) {
        int zzA = zzA(i, i2, zzc());
        return zzA == 0 ? zzhvi.zzb : new zzhvc(this.zza, zzd() + i, zzA);
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public final ByteBuffer zzj() {
        return ByteBuffer.wrap(this.zza, zzd(), zzc()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    final void zzk(zzhuz zzhuzVar) throws IOException {
        zzhuzVar.zza(this.zza, zzd(), zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    protected final String zzl(Charset charset) {
        return new String(this.zza, zzd(), zzc(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public final boolean zzm() {
        int zzd = zzd();
        return zzhzo.zza(this.zza, zzd, zzc() + zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    protected final int zzn(int i, int i2, int i3) {
        int zzd = zzd() + i2;
        return zzhzo.zzb(i, this.zza, zzd, i3 + zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    protected final int zzo(int i, int i2, int i3) {
        return zzhxb.zzc(i, this.zza, zzd() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzhvi
    public final zzhvn zzp() {
        return zzhvn.zzG(this.zza, zzd(), zzc(), true);
    }
}
