package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class zzaiz {
    private static final zzfvc zza = zzfvc.zzb(zzfty.zzc(':'));
    private static final zzfvc zzb = zzfvc.zzb(zzfty.zzc('*'));
    private final List zzc = new ArrayList();
    private int zzd = 0;
    private int zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int zza(zzaco zzacoVar, zzadj zzadjVar, List list) {
        int i;
        char c;
        char c2;
        int i2 = this.zzd;
        if (i2 == 0) {
            long zzd = zzacoVar.zzd();
            zzadjVar.zza = (zzd == -1 || zzd < 8) ? 0L : zzd - 8;
            this.zzd = 1;
            return 1;
        }
        int i3 = 2;
        if (i2 != 1) {
            char c3 = 2819;
            short s = 2817;
            short s2 = 2816;
            short s3 = 2192;
            if (i2 != 2) {
                long zzf = zzacoVar.zzf();
                int zzd2 = (int) ((zzacoVar.zzd() - zzacoVar.zzf()) - this.zze);
                zzdy zzdyVar = new zzdy(zzd2);
                zzacoVar.zzi(zzdyVar.zzN(), 0, zzd2);
                int i4 = 0;
                while (i4 < this.zzc.size()) {
                    zzaiy zzaiyVar = (zzaiy) this.zzc.get(i4);
                    zzdyVar.zzL((int) (zzaiyVar.zza - zzf));
                    zzdyVar.zzM(4);
                    int zzi = zzdyVar.zzi();
                    String zzB = zzdyVar.zzB(zzi, StandardCharsets.UTF_8);
                    switch (zzB.hashCode()) {
                        case -1711564334:
                            if (zzB.equals("SlowMotion_Data")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1332107749:
                            if (zzB.equals("Super_SlowMotion_Edit_Data")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1251387154:
                            if (zzB.equals("Super_SlowMotion_Data")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case -830665521:
                            if (zzB.equals("Super_SlowMotion_Deflickering_On")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1760745220:
                            if (zzB.equals("Super_SlowMotion_BGM")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c == 0) {
                        c2 = 2192;
                    } else if (c == 1) {
                        c2 = 2816;
                    } else if (c == 2) {
                        c2 = 2817;
                    } else if (c == 3) {
                        c2 = 2819;
                    } else {
                        if (c != 4) {
                            throw zzbc.zza("Invalid SEF name", null);
                        }
                        c2 = 2820;
                    }
                    int i5 = zzaiyVar.zzb - (zzi + 8);
                    if (c2 == 2192) {
                        ArrayList arrayList = new ArrayList();
                        List zzf2 = zzb.zzf(zzdyVar.zzB(i5, StandardCharsets.UTF_8));
                        for (int i6 = 0; i6 < zzf2.size(); i6++) {
                            List zzf3 = zza.zzf((CharSequence) zzf2.get(i6));
                            if (zzf3.size() != 3) {
                                throw zzbc.zza(null, null);
                            }
                            try {
                                arrayList.add(new zzagy(Long.parseLong((String) zzf3.get(0)), Long.parseLong((String) zzf3.get(1)), 1 << (Integer.parseInt((String) zzf3.get(2)) - 1)));
                            } catch (NumberFormatException e) {
                                throw zzbc.zza(null, e);
                            }
                        }
                        list.add(new zzagz(arrayList));
                    } else if (c2 != 2816 && c2 != 2817 && c2 != c3 && c2 != 2820) {
                        throw new IllegalStateException();
                    }
                    i4++;
                    c3 = 2819;
                }
                zzadjVar.zza = 0L;
            } else {
                long zzd3 = zzacoVar.zzd();
                int i7 = this.zze - 20;
                zzdy zzdyVar2 = new zzdy(i7);
                zzacoVar.zzi(zzdyVar2.zzN(), 0, i7);
                int i8 = 0;
                while (i8 < i7 / 12) {
                    zzdyVar2.zzM(i3);
                    short zzD = zzdyVar2.zzD();
                    if (zzD == s3 || zzD == s2 || zzD == s || zzD == 2819 || zzD == 2820) {
                        i = i7;
                        this.zzc.add(new zzaiy(zzD, (zzd3 - this.zze) - zzdyVar2.zzi(), zzdyVar2.zzi()));
                    } else {
                        zzdyVar2.zzM(8);
                        i = i7;
                    }
                    i8++;
                    i7 = i;
                    i3 = 2;
                    s = 2817;
                    s2 = 2816;
                    s3 = 2192;
                }
                if (this.zzc.isEmpty()) {
                    zzadjVar.zza = 0L;
                } else {
                    this.zzd = 3;
                    zzadjVar.zza = ((zzaiy) this.zzc.get(0)).zza;
                }
            }
        } else {
            zzdy zzdyVar3 = new zzdy(8);
            zzacoVar.zzi(zzdyVar3.zzN(), 0, 8);
            this.zze = zzdyVar3.zzi() + 8;
            if (zzdyVar3.zzg() != 1397048916) {
                zzadjVar.zza = 0L;
            } else {
                zzadjVar.zza = zzacoVar.zzf() - (this.zze - 12);
                this.zzd = 2;
            }
        }
        return 1;
    }

    public final void zzb() {
        this.zzc.clear();
        this.zzd = 0;
    }
}
