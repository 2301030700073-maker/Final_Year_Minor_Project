package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzajv extends zzajt {
    private zzaju zza;
    private int zzb;
    private boolean zzc;
    private zzady zzd;
    private zzadw zze;

    @Override // com.google.android.gms.internal.ads.zzajt
    public final long zza(zzdy zzdyVar) {
        if ((zzdyVar.zzN()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzdyVar.zzN()[0];
        zzaju zzajuVar = this.zza;
        zzcw.zzb(zzajuVar);
        int i = !zzajuVar.zzd[(b >> 1) & (255 >>> (8 - zzajuVar.zze))].zza ? zzajuVar.zza.zze : zzajuVar.zza.zzf;
        int i2 = this.zzc ? (this.zzb + i) / 4 : 0;
        if (zzdyVar.zzc() < zzdyVar.zze() + 4) {
            byte[] copyOf = Arrays.copyOf(zzdyVar.zzN(), zzdyVar.zze() + 4);
            zzdyVar.zzJ(copyOf, copyOf.length);
        } else {
            zzdyVar.zzK(zzdyVar.zze() + 4);
        }
        long j = i2;
        byte[] zzN = zzdyVar.zzN();
        zzN[zzdyVar.zze() - 4] = (byte) (j & 255);
        zzN[zzdyVar.zze() - 3] = (byte) ((j >>> 8) & 255);
        zzN[zzdyVar.zze() - 2] = (byte) ((j >>> 16) & 255);
        zzN[zzdyVar.zze() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final boolean zzc(zzdy zzdyVar, long j, zzajq zzajqVar) {
        zzaju zzajuVar;
        int i;
        int i2;
        int i3;
        int i4;
        zzady zzadyVar;
        long j2;
        if (this.zza != null) {
            zzajqVar.zza.getClass();
            return false;
        }
        zzady zzadyVar2 = this.zzd;
        int i5 = 4;
        if (zzadyVar2 == null) {
            zzadz.zzd(1, zzdyVar, false);
            int zzj = zzdyVar.zzj();
            int zzm = zzdyVar.zzm();
            int zzj2 = zzdyVar.zzj();
            int zzi = zzdyVar.zzi();
            int i6 = zzi <= 0 ? -1 : zzi;
            int zzi2 = zzdyVar.zzi();
            int i7 = zzi2 <= 0 ? -1 : zzi2;
            int zzi3 = zzdyVar.zzi();
            int i8 = zzi3 <= 0 ? -1 : zzi3;
            int zzm2 = zzdyVar.zzm();
            this.zzd = new zzady(zzj, zzm, zzj2, i6, i7, i8, (int) Math.pow(2.0d, zzm2 & 15), (int) Math.pow(2.0d, (zzm2 & 240) >> 4), 1 == (zzdyVar.zzm() & 1), Arrays.copyOf(zzdyVar.zzN(), zzdyVar.zze()));
        } else {
            zzadw zzadwVar = this.zze;
            if (zzadwVar == null) {
                this.zze = zzadz.zzc(zzdyVar, true, true);
            } else {
                byte[] bArr = new byte[zzdyVar.zze()];
                System.arraycopy(zzdyVar.zzN(), 0, bArr, 0, zzdyVar.zze());
                int i9 = zzadyVar2.zza;
                int i10 = 5;
                zzadz.zzd(5, zzdyVar, false);
                int zzm3 = zzdyVar.zzm() + 1;
                zzadv zzadvVar = new zzadv(zzdyVar.zzN());
                zzadvVar.zzc(zzdyVar.zzd() * 8);
                int i11 = 0;
                while (true) {
                    int i12 = 2;
                    int i13 = 16;
                    if (i11 >= zzm3) {
                        zzady zzadyVar3 = zzadyVar2;
                        int i14 = 6;
                        int zzb = zzadvVar.zzb(6) + 1;
                        for (int i15 = 0; i15 < zzb; i15++) {
                            if (zzadvVar.zzb(16) != 0) {
                                throw zzbc.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i16 = 1;
                        int zzb2 = zzadvVar.zzb(6) + 1;
                        int i17 = 0;
                        while (true) {
                            int i18 = 3;
                            if (i17 < zzb2) {
                                int zzb3 = zzadvVar.zzb(i13);
                                if (zzb3 == 0) {
                                    i3 = zzb2;
                                    int i19 = 8;
                                    zzadvVar.zzc(8);
                                    zzadvVar.zzc(16);
                                    zzadvVar.zzc(16);
                                    zzadvVar.zzc(6);
                                    zzadvVar.zzc(8);
                                    int zzb4 = zzadvVar.zzb(4) + 1;
                                    int i20 = 0;
                                    while (i20 < zzb4) {
                                        zzadvVar.zzc(i19);
                                        i20++;
                                        i19 = 8;
                                    }
                                } else {
                                    if (zzb3 != i16) {
                                        throw zzbc.zza("floor type greater than 1 not decodable: " + zzb3, null);
                                    }
                                    int zzb5 = zzadvVar.zzb(i10);
                                    int[] iArr = new int[zzb5];
                                    int i21 = -1;
                                    for (int i22 = 0; i22 < zzb5; i22++) {
                                        int zzb6 = zzadvVar.zzb(4);
                                        iArr[i22] = zzb6;
                                        if (zzb6 > i21) {
                                            i21 = zzb6;
                                        }
                                    }
                                    int i23 = i21 + 1;
                                    int[] iArr2 = new int[i23];
                                    int i24 = 0;
                                    while (i24 < i23) {
                                        iArr2[i24] = zzadvVar.zzb(i18) + 1;
                                        int zzb7 = zzadvVar.zzb(i12);
                                        if (zzb7 > 0) {
                                            i4 = 8;
                                            zzadvVar.zzc(8);
                                        } else {
                                            i4 = 8;
                                        }
                                        int i25 = zzb2;
                                        int i26 = 0;
                                        for (int i27 = 1; i26 < (i27 << zzb7); i27 = 1) {
                                            zzadvVar.zzc(i4);
                                            i26++;
                                            i4 = 8;
                                        }
                                        i24++;
                                        zzb2 = i25;
                                        i12 = 2;
                                        i18 = 3;
                                    }
                                    i3 = zzb2;
                                    zzadvVar.zzc(2);
                                    int zzb8 = zzadvVar.zzb(4);
                                    int i28 = 0;
                                    int i29 = 0;
                                    for (int i30 = 0; i30 < zzb5; i30++) {
                                        i28 += iArr2[iArr[i30]];
                                        while (i29 < i28) {
                                            zzadvVar.zzc(zzb8);
                                            i29++;
                                        }
                                    }
                                }
                                i17++;
                                zzb2 = i3;
                                i14 = 6;
                                i13 = 16;
                                i12 = 2;
                                i16 = 1;
                                i10 = 5;
                            } else {
                                int i31 = 1;
                                int zzb9 = zzadvVar.zzb(i14) + 1;
                                int i32 = 0;
                                while (i32 < zzb9) {
                                    if (zzadvVar.zzb(16) > 2) {
                                        throw zzbc.zza("residueType greater than 2 is not decodable", null);
                                    }
                                    zzadvVar.zzc(24);
                                    zzadvVar.zzc(24);
                                    zzadvVar.zzc(24);
                                    int zzb10 = zzadvVar.zzb(i14) + i31;
                                    int i33 = 8;
                                    zzadvVar.zzc(8);
                                    int[] iArr3 = new int[zzb10];
                                    for (int i34 = 0; i34 < zzb10; i34++) {
                                        iArr3[i34] = ((zzadvVar.zzd() ? zzadvVar.zzb(5) : 0) * 8) + zzadvVar.zzb(3);
                                    }
                                    int i35 = 0;
                                    while (i35 < zzb10) {
                                        int i36 = 0;
                                        while (i36 < i33) {
                                            if ((iArr3[i35] & (1 << i36)) != 0) {
                                                zzadvVar.zzc(i33);
                                            }
                                            i36++;
                                            i33 = 8;
                                        }
                                        i35++;
                                        i33 = 8;
                                    }
                                    i32++;
                                    i14 = 6;
                                    i31 = 1;
                                }
                                int zzb11 = zzadvVar.zzb(i14) + 1;
                                for (int i37 = 0; i37 < zzb11; i37++) {
                                    int zzb12 = zzadvVar.zzb(16);
                                    if (zzb12 != 0) {
                                        zzdo.zzc("VorbisUtil", "mapping type other than 0 not supported: " + zzb12);
                                    } else {
                                        if (zzadvVar.zzd()) {
                                            i = 1;
                                            i2 = zzadvVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            i2 = 1;
                                        }
                                        if (zzadvVar.zzd()) {
                                            int zzb13 = zzadvVar.zzb(8) + i;
                                            for (int i38 = 0; i38 < zzb13; i38++) {
                                                int i39 = i9 - 1;
                                                zzadvVar.zzc(zzadz.zza(i39));
                                                zzadvVar.zzc(zzadz.zza(i39));
                                            }
                                        }
                                        if (zzadvVar.zzb(2) != 0) {
                                            throw zzbc.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (i2 > 1) {
                                            for (int i40 = 0; i40 < i9; i40++) {
                                                zzadvVar.zzc(4);
                                            }
                                        }
                                        for (int i41 = 0; i41 < i2; i41++) {
                                            zzadvVar.zzc(8);
                                            zzadvVar.zzc(8);
                                            zzadvVar.zzc(8);
                                        }
                                    }
                                }
                                int zzb14 = zzadvVar.zzb(6) + 1;
                                zzadx[] zzadxVarArr = new zzadx[zzb14];
                                for (int i42 = 0; i42 < zzb14; i42++) {
                                    zzadxVarArr[i42] = new zzadx(zzadvVar.zzd(), zzadvVar.zzb(16), zzadvVar.zzb(16), zzadvVar.zzb(8));
                                }
                                if (!zzadvVar.zzd()) {
                                    throw zzbc.zza("framing bit after modes not set as expected", null);
                                }
                                zzajuVar = new zzaju(zzadyVar3, zzadwVar, bArr, zzadxVarArr, zzadz.zza(zzb14 - 1));
                            }
                        }
                    } else {
                        if (zzadvVar.zzb(24) != 5653314) {
                            throw zzbc.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzadvVar.zza(), null);
                        }
                        int zzb15 = zzadvVar.zzb(16);
                        int zzb16 = zzadvVar.zzb(24);
                        if (zzadvVar.zzd()) {
                            zzadvVar.zzc(5);
                            for (int i43 = 0; i43 < zzb16; i43 += zzadvVar.zzb(zzadz.zza(zzb16 - i43))) {
                            }
                        } else {
                            boolean zzd = zzadvVar.zzd();
                            for (int i44 = 0; i44 < zzb16; i44++) {
                                if (!zzd) {
                                    zzadvVar.zzc(5);
                                } else if (zzadvVar.zzd()) {
                                    zzadvVar.zzc(5);
                                }
                            }
                        }
                        int zzb17 = zzadvVar.zzb(i5);
                        if (zzb17 > 2) {
                            throw zzbc.zza("lookup type greater than 2 not decodable: " + zzb17, null);
                        }
                        if (zzb17 == 1) {
                            i12 = zzb17;
                        } else if (zzb17 != 2) {
                            zzadyVar = zzadyVar2;
                            i11++;
                            zzadyVar2 = zzadyVar;
                            i5 = 4;
                        }
                        zzadvVar.zzc(32);
                        zzadvVar.zzc(32);
                        int zzb18 = zzadvVar.zzb(i5) + 1;
                        zzadvVar.zzc(1);
                        if (i12 != 1) {
                            zzadyVar = zzadyVar2;
                            j2 = zzb15 * zzb16;
                        } else if (zzb15 != 0) {
                            zzadyVar = zzadyVar2;
                            j2 = (long) Math.floor(Math.pow(zzb16, 1.0d / zzb15));
                        } else {
                            zzadyVar = zzadyVar2;
                            j2 = 0;
                        }
                        zzadvVar.zzc((int) (j2 * zzb18));
                        i11++;
                        zzadyVar2 = zzadyVar;
                        i5 = 4;
                    }
                }
            }
        }
        zzajuVar = null;
        this.zza = zzajuVar;
        if (zzajuVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzady zzadyVar4 = zzajuVar.zza;
        arrayList.add(zzadyVar4.zzg);
        arrayList.add(zzajuVar.zzc);
        zzay zzb19 = zzadz.zzb(zzfxn.zzm(zzajuVar.zzb.zza));
        zzz zzzVar = new zzz();
        zzzVar.zzaa("audio/vorbis");
        zzzVar.zzy(zzadyVar4.zzd);
        zzzVar.zzV(zzadyVar4.zzc);
        zzzVar.zzz(zzadyVar4.zza);
        zzzVar.zzab(zzadyVar4.zzb);
        zzzVar.zzN(arrayList);
        zzzVar.zzT(zzb19);
        zzajqVar.zza = zzzVar.zzag();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajt
    public final void zzi(long j) {
        super.zzi(j);
        this.zzc = j != 0;
        zzady zzadyVar = this.zzd;
        this.zzb = zzadyVar != null ? zzadyVar.zze : 0;
    }
}
