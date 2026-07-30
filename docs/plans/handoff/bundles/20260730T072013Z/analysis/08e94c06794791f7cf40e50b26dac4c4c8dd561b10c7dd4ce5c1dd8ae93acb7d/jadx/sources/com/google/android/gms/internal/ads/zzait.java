package com.google.android.gms.internal.ads;

import androidx.core.view.ViewCompat;
import androidx.media3.common.C;
import androidx.media3.container.MdtaMetadataEntry;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzait {
    public static void zza(int i, zzap zzapVar, zzt zztVar, zzap zzapVar2, zzap... zzapVarArr) {
        if (zzapVar2 == null) {
            zzapVar2 = new zzap(C.TIME_UNSET, new zzao[0]);
        }
        if (zzapVar != null) {
            zzgpe zzd = zzapVar.zzd(zzes.class);
            int size = zzd.size();
            for (int i2 = 0; i2 < size; i2++) {
                zzes zzesVar = (zzes) zzd.get(i2);
                if (!zzesVar.zza.equals(MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS) || i == 2) {
                    zzapVar2 = zzapVar2.zzg(zzesVar);
                }
            }
        }
        for (zzap zzapVar3 : zzapVarArr) {
            zzapVar2 = zzapVar2.zzf(zzapVar3);
        }
        if (zzapVar2.zza() > 0) {
            zztVar.zzk(zzapVar2);
        }
    }

    public static void zzb(int i, zzads zzadsVar, zzt zztVar) {
        if (i == 1 && zzadsVar.zzb()) {
            zztVar.zzH(zzadsVar.zza);
            zztVar.zzI(zzadsVar.zzb);
        }
    }

    public static zzao zzc(zzeg zzegVar) {
        String str;
        zzao zzaggVar;
        int zzg = zzegVar.zzg() + zzegVar.zzB();
        int zzB = zzegVar.zzB();
        int i = (zzB >> 24) & 255;
        zzao zzaoVar = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = zzB & ViewCompat.MEASURED_SIZE_MASK;
                if (i2 == 6516084) {
                    int zzB2 = zzegVar.zzB();
                    if (zzegVar.zzB() == 1684108385) {
                        zzegVar.zzk(8);
                        String zzL = zzegVar.zzL(zzB2 - 16);
                        zzaoVar = new zzagk(C.LANGUAGE_UNDETERMINED, zzL, zzL);
                    } else {
                        zzdt.zzc("MetadataUtil", "Failed to parse comment attribute: ".concat(zzew.zze(zzB)));
                    }
                } else {
                    if (i2 != 7233901 && i2 != 7631467) {
                        if (i2 != 6516589 && i2 != 7828084) {
                            if (i2 == 6578553) {
                                zzaoVar = zzd(zzB, "TDRC", zzegVar);
                            } else if (i2 == 4280916) {
                                zzaoVar = zzd(zzB, "TPE1", zzegVar);
                            } else if (i2 == 7630703) {
                                zzaoVar = zzd(zzB, "TSSE", zzegVar);
                            } else if (i2 == 6384738) {
                                zzaoVar = zzd(zzB, "TALB", zzegVar);
                            } else if (i2 == 7108978) {
                                zzaoVar = zzd(zzB, "USLT", zzegVar);
                            } else if (i2 == 6776174) {
                                zzaoVar = zzd(zzB, "TCON", zzegVar);
                            } else if (i2 == 6779504) {
                                zzaoVar = zzd(zzB, "TIT1", zzegVar);
                            } else if (i2 == 7173742) {
                                zzaoVar = zzd(zzB, "MVNM", zzegVar);
                            } else {
                                if (i2 == 7173737) {
                                    zzaoVar = zze(zzB, "MVIN", zzegVar, true, false);
                                }
                                String zze = zzew.zze(zzB);
                                StringBuilder sb = new StringBuilder(zze.length() + 32);
                                sb.append("Skipped unknown metadata entry: ");
                                sb.append(zze);
                                zzdt.zza("MetadataUtil", sb.toString());
                            }
                        }
                        zzaoVar = zzd(zzB, "TCOM", zzegVar);
                    }
                    zzaoVar = zzd(zzB, "TIT2", zzegVar);
                }
            } else if (zzB == 1735291493) {
                String zza = zzagr.zza(zzf(zzegVar) - 1);
                if (zza != null) {
                    zzaggVar = new zzagv("TCON", null, zzgpe.zzj(zza));
                    zzaoVar = zzaggVar;
                } else {
                    zzdt.zzc("MetadataUtil", "Failed to parse standard genre code");
                }
            } else if (zzB == 1684632427) {
                zzaoVar = zzg(1684632427, "TPOS", zzegVar);
            } else if (zzB == 1953655662) {
                zzaoVar = zzg(1953655662, "TRCK", zzegVar);
            } else if (zzB == 1953329263) {
                zzaoVar = zze(1953329263, "TBPM", zzegVar, true, false);
            } else if (zzB == 1668311404) {
                zzaoVar = zze(1668311404, "TCMP", zzegVar, true, true);
            } else if (zzB == 1668249202) {
                int zzB3 = zzegVar.zzB();
                if (zzegVar.zzB() == 1684108385) {
                    int zzB4 = zzegVar.zzB();
                    int i3 = zzaik.zza;
                    int i4 = zzB4 & ViewCompat.MEASURED_SIZE_MASK;
                    if (i4 == 13) {
                        str = "image/jpeg";
                    } else if (i4 == 14) {
                        str = "image/png";
                        i4 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i4).length() + 30);
                        sb2.append("Unrecognized cover art flags: ");
                        sb2.append(i4);
                        zzdt.zzc("MetadataUtil", sb2.toString());
                    } else {
                        zzegVar.zzk(4);
                        int i5 = zzB3 - 16;
                        byte[] bArr = new byte[i5];
                        zzegVar.zzm(bArr, 0, i5);
                        zzaggVar = new zzagg(str, null, 3, bArr);
                        zzaoVar = zzaggVar;
                    }
                } else {
                    zzdt.zzc("MetadataUtil", "Failed to parse cover art attribute");
                }
            } else if (zzB == 1631670868) {
                zzaoVar = zzd(1631670868, "TPE2", zzegVar);
            } else if (zzB == 1936682605) {
                zzaoVar = zzd(1936682605, "TSOT", zzegVar);
            } else if (zzB == 1936679276) {
                zzaoVar = zzd(1936679276, "TSOA", zzegVar);
            } else if (zzB == 1936679282) {
                zzaoVar = zzd(1936679282, "TSOP", zzegVar);
            } else if (zzB == 1936679265) {
                zzaoVar = zzd(1936679265, "TSO2", zzegVar);
            } else if (zzB == 1936679791) {
                zzaoVar = zzd(1936679791, "TSOC", zzegVar);
            } else if (zzB == 1920233063) {
                zzaoVar = zze(1920233063, "ITUNESADVISORY", zzegVar, false, false);
            } else if (zzB == 1885823344) {
                zzaoVar = zze(1885823344, "ITUNESGAPLESS", zzegVar, false, true);
            } else if (zzB == 1936683886) {
                zzaoVar = zzd(1936683886, "TVSHOWSORT", zzegVar);
            } else if (zzB == 1953919848) {
                zzaoVar = zzd(1953919848, "TVSHOW", zzegVar);
            } else {
                if (zzB == 757935405) {
                    int i6 = -1;
                    int i7 = -1;
                    String str2 = null;
                    String str3 = null;
                    while (zzegVar.zzg() < zzg) {
                        int zzg2 = zzegVar.zzg();
                        int zzB5 = zzegVar.zzB();
                        int zzB6 = zzegVar.zzB();
                        zzegVar.zzk(4);
                        if (zzB6 == 1835360622) {
                            str2 = zzegVar.zzL(zzB5 - 12);
                        } else {
                            int i8 = zzB5 - 12;
                            if (zzB6 == 1851878757) {
                                str3 = zzegVar.zzL(i8);
                            } else {
                                if (zzB6 == 1684108385) {
                                    i7 = zzB5;
                                }
                                if (zzB6 == 1684108385) {
                                    i6 = zzg2;
                                }
                                zzegVar.zzk(i8);
                            }
                        }
                    }
                    if (str2 != null && str3 != null && i6 != -1) {
                        zzegVar.zzh(i6);
                        zzegVar.zzk(16);
                        zzaoVar = new zzags(str2, str3, zzegVar.zzL(i7 - 16));
                    }
                }
                String zze2 = zzew.zze(zzB);
                StringBuilder sb3 = new StringBuilder(zze2.length() + 32);
                sb3.append("Skipped unknown metadata entry: ");
                sb3.append(zze2);
                zzdt.zza("MetadataUtil", sb3.toString());
            }
            return zzaoVar;
        } finally {
            zzegVar.zzh(zzg);
        }
    }

    private static zzagv zzd(int i, String str, zzeg zzegVar) {
        int zzB = zzegVar.zzB();
        if (zzegVar.zzB() == 1684108385) {
            zzegVar.zzk(8);
            return new zzagv(str, null, zzgpe.zzj(zzegVar.zzL(zzB - 16)));
        }
        zzdt.zzc("MetadataUtil", "Failed to parse text attribute: ".concat(zzew.zze(i)));
        return null;
    }

    private static zzagq zze(int i, String str, zzeg zzegVar, boolean z, boolean z2) {
        int zzf = zzf(zzegVar);
        if (z2) {
            zzf = Math.min(1, zzf);
        }
        if (zzf >= 0) {
            return z ? new zzagv(str, null, zzgpe.zzj(Integer.toString(zzf))) : new zzagk(C.LANGUAGE_UNDETERMINED, str, Integer.toString(zzf));
        }
        zzdt.zzc("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzew.zze(i)));
        return null;
    }

    private static int zzf(zzeg zzegVar) {
        int zzB = zzegVar.zzB();
        if (zzegVar.zzB() == 1684108385) {
            zzegVar.zzk(8);
            int i = zzB - 16;
            if (i == 1) {
                return zzegVar.zzs();
            }
            if (i == 2) {
                return zzegVar.zzt();
            }
            if (i == 3) {
                return zzegVar.zzx();
            }
            if (i == 4 && (zzegVar.zzn() & 128) == 0) {
                return zzegVar.zzH();
            }
        }
        zzdt.zzc("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static zzagv zzg(int i, String str, zzeg zzegVar) {
        int zzB = zzegVar.zzB();
        if (zzegVar.zzB() == 1684108385 && zzB >= 22) {
            zzegVar.zzk(10);
            int zzt = zzegVar.zzt();
            if (zzt > 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(zzt).length());
                sb.append(zzt);
                String sb2 = sb.toString();
                int zzt2 = zzegVar.zzt();
                if (zzt2 > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(zzt2).length());
                    sb3.append(sb2);
                    sb3.append("/");
                    sb3.append(zzt2);
                    sb2 = sb3.toString();
                }
                return new zzagv(str, null, zzgpe.zzj(sb2));
            }
        }
        zzdt.zzc("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzew.zze(i)));
        return null;
    }
}
