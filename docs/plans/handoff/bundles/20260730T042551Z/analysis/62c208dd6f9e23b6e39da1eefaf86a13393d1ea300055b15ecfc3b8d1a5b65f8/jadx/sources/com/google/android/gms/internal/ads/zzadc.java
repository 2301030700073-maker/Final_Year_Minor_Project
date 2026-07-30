package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzadc {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final float zzi;
    public final int zzj;
    public final String zzk;
    public final zzfh zzl;

    private zzadc(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, int i10, String str, zzfh zzfhVar) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
        this.zzf = i7;
        this.zzg = i8;
        this.zzh = i9;
        this.zzi = f;
        this.zzj = i10;
        this.zzk = str;
        this.zzl = zzfhVar;
    }

    public static zzadc zza(zzdy zzdyVar) {
        return zzc(zzdyVar, false, null);
    }

    public static zzadc zzb(zzdy zzdyVar, zzfh zzfhVar) {
        return zzc(zzdyVar, true, zzfhVar);
    }

    private static zzadc zzc(zzdy zzdyVar, boolean z, zzfh zzfhVar) {
        int i;
        int i2;
        int i3;
        int i4;
        zzfd zzfdVar;
        int max;
        boolean z2;
        int max2;
        int i5;
        int i6;
        int i7;
        int i8 = 4;
        try {
            if (z) {
                zzdyVar.zzM(4);
            } else {
                zzdyVar.zzM(21);
            }
            int zzm = zzdyVar.zzm() & 3;
            int zzm2 = zzdyVar.zzm();
            int zzd = zzdyVar.zzd();
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < zzm2; i11++) {
                zzdyVar.zzM(1);
                int zzq = zzdyVar.zzq();
                for (int i12 = 0; i12 < zzq; i12++) {
                    int zzq2 = zzdyVar.zzq();
                    i10 += zzq2 + 4;
                    zzdyVar.zzM(zzq2);
                }
            }
            zzdyVar.zzL(zzd);
            byte[] bArr = new byte[i10];
            zzfh zzfhVar2 = zzfhVar;
            int i13 = 0;
            int i14 = 0;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            float f = 1.0f;
            int i23 = -1;
            String str = null;
            while (i13 < zzm2) {
                int zzm3 = zzdyVar.zzm() & 63;
                int zzq3 = zzdyVar.zzq();
                zzfh zzfhVar3 = zzfhVar2;
                int i24 = 0;
                while (i24 < zzq3) {
                    int zzq4 = zzdyVar.zzq();
                    int i25 = zzm2;
                    System.arraycopy(zzfk.zza, i9, bArr, i14, i8);
                    int i26 = i14 + 4;
                    System.arraycopy(zzdyVar.zzN(), zzdyVar.zzd(), bArr, i26, zzq4);
                    int i27 = 32;
                    if (zzm3 != 32) {
                        i27 = zzm3;
                    } else if (i24 == 0) {
                        zzfhVar3 = zzfk.zzd(bArr, i26, i26 + zzq4);
                        i = zzq3;
                        i2 = zzm3;
                        i24 = 0;
                        i14 = i26 + zzq4;
                        zzdyVar.zzM(zzq4);
                        i24++;
                        zzm2 = i25;
                        zzq3 = i;
                        zzm3 = i2;
                        i8 = 4;
                    }
                    if (i27 != 33) {
                        i = zzq3;
                        i2 = zzm3;
                        if (i27 == 39 && i24 == 0) {
                            int i28 = i26 + 2;
                            int i29 = (i26 + zzq4) - 1;
                            while (true) {
                                byte b = bArr[i29];
                                if (b == 0) {
                                    if (i29 <= i28) {
                                        break;
                                    }
                                    i29--;
                                } else if (b != 0 && i29 > i28) {
                                    zzfl zzflVar = new zzfl(bArr, i28, i29 + 1);
                                    while (zzflVar.zzg(16)) {
                                        int zza = zzflVar.zza(8);
                                        int i30 = 0;
                                        while (zza == 255) {
                                            i30 += 255;
                                            zza = zzflVar.zza(8);
                                        }
                                        int i31 = i30 + zza;
                                        int zza2 = zzflVar.zza(8);
                                        int i32 = 0;
                                        while (zza2 == 255) {
                                            i32 += 255;
                                            zza2 = zzflVar.zza(8);
                                        }
                                        int i33 = i32 + zza2;
                                        if (i33 == 0 || !zzflVar.zzg(i33)) {
                                            break;
                                        }
                                        if (i31 == 176) {
                                            int zzc = zzflVar.zzc();
                                            boolean zzh = zzflVar.zzh();
                                            int zzc2 = zzh ? zzflVar.zzc() : 0;
                                            int zzc3 = zzflVar.zzc();
                                            int i34 = 0;
                                            int i35 = -1;
                                            int i36 = -1;
                                            int i37 = -1;
                                            int i38 = -1;
                                            int i39 = -1;
                                            int i40 = -1;
                                            while (i34 <= zzc3) {
                                                i35 = zzflVar.zzc();
                                                i36 = zzflVar.zzc();
                                                i3 = i24;
                                                int zza3 = zzflVar.zza(6);
                                                if (zza3 != 63) {
                                                    if (zza3 == 0) {
                                                        i4 = i15;
                                                        max = Math.max(0, zzc - 30);
                                                    } else {
                                                        i4 = i15;
                                                        max = Math.max(0, (zza3 + zzc) - 31);
                                                    }
                                                    i38 = zzflVar.zza(max);
                                                    if (zzh) {
                                                        int zza4 = zzflVar.zza(6);
                                                        if (zza4 != 63) {
                                                            if (zza4 == 0) {
                                                                z2 = zzh;
                                                                max2 = Math.max(0, zzc2 - 30);
                                                            } else {
                                                                z2 = zzh;
                                                                max2 = Math.max(0, (zza4 + zzc2) - 31);
                                                            }
                                                            i40 = zzflVar.zza(max2);
                                                            i39 = zza4;
                                                        }
                                                    } else {
                                                        z2 = zzh;
                                                    }
                                                    if (zzflVar.zzh()) {
                                                        zzflVar.zzf(10);
                                                    }
                                                    i34++;
                                                    i37 = zza3;
                                                    i24 = i3;
                                                    zzh = z2;
                                                    i15 = i4;
                                                }
                                            }
                                            i3 = i24;
                                            i4 = i15;
                                            zzfdVar = new zzfd(zzc, zzc2, zzc3 + 1, i35, i36, i37, i38, i39, i40);
                                        }
                                    }
                                }
                            }
                            i3 = i24;
                            i4 = i15;
                            zzfdVar = null;
                            if (zzfdVar != null && zzfhVar3 != null) {
                                i9 = 0;
                                if (zzfdVar.zza == ((zzex) zzfhVar3.zza.get(0)).zzb) {
                                    i24 = i3;
                                    i15 = i4;
                                    i22 = 4;
                                } else {
                                    i24 = i3;
                                    i15 = i4;
                                    i22 = 5;
                                }
                                i14 = i26 + zzq4;
                                zzdyVar.zzM(zzq4);
                                i24++;
                                zzm2 = i25;
                                zzq3 = i;
                                zzm3 = i2;
                                i8 = 4;
                            }
                        }
                        i3 = i24;
                        i4 = i15;
                    } else if (i24 == 0) {
                        zzfe zzc4 = zzfk.zzc(bArr, i26, i26 + zzq4, zzfhVar3);
                        int i41 = zzc4.zzd;
                        int i42 = zzc4.zze;
                        int i43 = zzc4.zzb + 8;
                        int i44 = zzc4.zzc + 8;
                        int i45 = zzc4.zzh;
                        int i46 = zzc4.zzi;
                        int i47 = zzc4.zzj;
                        float f2 = zzc4.zzf;
                        int i48 = zzc4.zzg;
                        zzez zzezVar = zzc4.zza;
                        if (zzezVar != null) {
                            i5 = i48;
                            i6 = i43;
                            i = zzq3;
                            i2 = zzm3;
                            i7 = i42;
                            str = zzcy.zzd(zzezVar.zza, zzezVar.zzb, zzezVar.zzc, zzezVar.zzd, zzezVar.zze, zzezVar.zzf);
                        } else {
                            i5 = i48;
                            i6 = i43;
                            i = zzq3;
                            i2 = zzm3;
                            i7 = i42;
                        }
                        i15 = i41;
                        i17 = i6;
                        i9 = 0;
                        i23 = i5;
                        f = f2;
                        i21 = i47;
                        i20 = i46;
                        i19 = i45;
                        i18 = i44;
                        i16 = i7;
                        i14 = i26 + zzq4;
                        zzdyVar.zzM(zzq4);
                        i24++;
                        zzm2 = i25;
                        zzq3 = i;
                        zzm3 = i2;
                        i8 = 4;
                    } else {
                        i = zzq3;
                        i2 = zzm3;
                        i3 = i24;
                        i4 = i15;
                    }
                    i9 = 0;
                    i24 = i3;
                    i15 = i4;
                    i14 = i26 + zzq4;
                    zzdyVar.zzM(zzq4);
                    i24++;
                    zzm2 = i25;
                    zzq3 = i;
                    zzm3 = i2;
                    i8 = 4;
                }
                i13++;
                zzfhVar2 = zzfhVar3;
                i8 = 4;
            }
            return new zzadc(i10 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), zzm + 1, i15, i16, i17, i18, i19, i20, i21, i22, f, i23, str, zzfhVar2);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbc.zza("Error parsing".concat(true != z ? "HEVC config" : "L-HEVC config"), e);
        }
    }
}
