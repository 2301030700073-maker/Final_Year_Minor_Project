package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* loaded from: classes.dex */
final class zzgwu extends zzgwr {
    private final OutputStream zzg;

    public zzgwu(OutputStream outputStream, int i) {
        super(i);
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.zzg = outputStream;
    }

    private final void zzI() {
        this.zzg.write(this.zza, 0, this.zzc);
        this.zzc = 0;
    }

    private final void zzJ(int i) {
        if (this.zzb - this.zzc < i) {
            zzI();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzK() {
        if (this.zzc > 0) {
            zzI();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzL(byte b) {
        if (this.zzc == this.zzb) {
            zzI();
        }
        zzc(b);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzM(int i, boolean z) {
        zzJ(11);
        zzf(i << 3);
        zzc(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzN(int i, zzgwj zzgwjVar) {
        zzu((i << 3) | 2);
        zzu(zzgwjVar.zzd());
        zzgwjVar.zzo(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgww, com.google.android.gms.internal.ads.zzgwa
    public final void zza(byte[] bArr, int i, int i2) {
        zzr(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzh(int i, int i2) {
        zzJ(14);
        zzf((i << 3) | 5);
        zzd(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzi(int i) {
        zzJ(4);
        zzd(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzj(int i, long j) {
        zzJ(18);
        zzf((i << 3) | 1);
        zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzk(long j) {
        zzJ(8);
        zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzl(int i, int i2) {
        zzJ(20);
        zzf(i << 3);
        if (i2 >= 0) {
            zzf(i2);
        } else {
            zzg(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzm(int i) {
        if (i >= 0) {
            zzu(i);
        } else {
            zzw(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzn(int i, zzgzc zzgzcVar, zzgzv zzgzvVar) {
        zzu((i << 3) | 2);
        zzu(((zzgvs) zzgzcVar).zzaM(zzgzvVar));
        zzgzvVar.zzj(zzgzcVar, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzo(int i, zzgzc zzgzcVar) {
        zzu(11);
        zzt(2, i);
        zzu(26);
        zzu(zzgzcVar.zzaY());
        zzgzcVar.zzcY(this);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzp(int i, zzgwj zzgwjVar) {
        zzu(11);
        zzt(2, i);
        zzN(3, zzgwjVar);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzq(int i, String str) {
        zzu((i << 3) | 2);
        zzx(str);
    }

    public final void zzr(byte[] bArr, int i, int i2) {
        int i3 = this.zzb;
        int i4 = this.zzc;
        int i5 = i3 - i4;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, this.zza, i4, i2);
            this.zzc += i2;
            this.zzd += i2;
            return;
        }
        System.arraycopy(bArr, i, this.zza, i4, i5);
        int i6 = i + i5;
        this.zzc = this.zzb;
        this.zzd += i5;
        zzI();
        int i7 = i2 - i5;
        if (i7 <= this.zzb) {
            System.arraycopy(bArr, i6, this.zza, 0, i7);
            this.zzc = i7;
        } else {
            this.zzg.write(bArr, i6, i7);
        }
        this.zzd += i7;
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzs(int i, int i2) {
        zzu((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzt(int i, int i2) {
        zzJ(20);
        zzf(i << 3);
        zzf(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzu(int i) {
        zzJ(5);
        zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzv(int i, long j) {
        zzJ(20);
        zzf(i << 3);
        zzg(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgww
    public final void zzw(long j) {
        zzJ(10);
        zzg(j);
    }

    public final void zzx(String str) {
        int zze;
        try {
            int length = str.length() * 3;
            int zzD = zzgww.zzD(length);
            int i = zzD + length;
            int i2 = this.zzb;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int zzd = zzhat.zzd(str, bArr, 0, length);
                zzu(zzd);
                zzr(bArr, 0, zzd);
                return;
            }
            if (i > i2 - this.zzc) {
                zzI();
            }
            int zzD2 = zzgww.zzD(str.length());
            int i3 = this.zzc;
            try {
                if (zzD2 == zzD) {
                    int i4 = i3 + zzD2;
                    this.zzc = i4;
                    int zzd2 = zzhat.zzd(str, this.zza, i4, this.zzb - i4);
                    this.zzc = i3;
                    zze = (zzd2 - i3) - zzD2;
                    zzf(zze);
                    this.zzc = zzd2;
                } else {
                    zze = zzhat.zze(str);
                    zzf(zze);
                    this.zzc = zzhat.zzd(str, this.zza, this.zzc, zze);
                }
                this.zzd += zze;
            } catch (zzhas e) {
                this.zzd -= this.zzc - i3;
                this.zzc = i3;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new zzgwt(e2);
            }
        } catch (zzhas e3) {
            zzG(str, e3);
        }
    }
}
