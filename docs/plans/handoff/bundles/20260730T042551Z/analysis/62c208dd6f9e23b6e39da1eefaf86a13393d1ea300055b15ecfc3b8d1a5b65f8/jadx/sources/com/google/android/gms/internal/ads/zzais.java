package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzais {
    public static zzax zza(zzdy zzdyVar) {
        String str;
        zzax zzaftVar;
        int zzg = zzdyVar.zzg() + zzdyVar.zzd();
        int zzg2 = zzdyVar.zzg();
        int i = (zzg2 >> 24) & 255;
        zzax zzaxVar = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = zzg2 & 16777215;
                if (i2 == 6516084) {
                    int zzg3 = zzdyVar.zzg();
                    if (zzdyVar.zzg() == 1684108385) {
                        zzdyVar.zzM(8);
                        String zzA = zzdyVar.zzA(zzg3 - 16);
                        zzaxVar = new zzagb("und", zzA, zzA);
                    } else {
                        zzdo.zzf("MetadataUtil", "Failed to parse comment attribute: ".concat(zzeq.zze(zzg2)));
                    }
                } else {
                    if (i2 != 7233901 && i2 != 7631467) {
                        if (i2 != 6516589 && i2 != 7828084) {
                            if (i2 == 6578553) {
                                zzaxVar = zze(zzg2, "TDRC", zzdyVar);
                            } else if (i2 == 4280916) {
                                zzaxVar = zze(zzg2, "TPE1", zzdyVar);
                            } else if (i2 == 7630703) {
                                zzaxVar = zze(zzg2, "TSSE", zzdyVar);
                            } else if (i2 == 6384738) {
                                zzaxVar = zze(zzg2, "TALB", zzdyVar);
                            } else if (i2 == 7108978) {
                                zzaxVar = zze(zzg2, "USLT", zzdyVar);
                            } else if (i2 == 6776174) {
                                zzaxVar = zze(zzg2, "TCON", zzdyVar);
                            } else {
                                if (i2 == 6779504) {
                                    zzaxVar = zze(zzg2, "TIT1", zzdyVar);
                                }
                                zzdo.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzeq.zze(zzg2));
                            }
                        }
                        zzaxVar = zze(zzg2, "TCOM", zzdyVar);
                    }
                    zzaxVar = zze(zzg2, "TIT2", zzdyVar);
                }
            } else if (zzg2 == 1735291493) {
                String zza = zzagi.zza(zzb(zzdyVar) - 1);
                if (zza != null) {
                    zzaftVar = new zzagq("TCON", null, zzfxn.zzo(zza));
                    zzaxVar = zzaftVar;
                } else {
                    zzdo.zzf("MetadataUtil", "Failed to parse standard genre code");
                }
            } else if (zzg2 == 1684632427) {
                zzaxVar = zzd(1684632427, "TPOS", zzdyVar);
            } else if (zzg2 == 1953655662) {
                zzaxVar = zzd(1953655662, "TRCK", zzdyVar);
            } else if (zzg2 == 1953329263) {
                zzaxVar = zzc(1953329263, "TBPM", zzdyVar, true, false);
            } else if (zzg2 == 1668311404) {
                zzaxVar = zzc(1668311404, "TCMP", zzdyVar, true, true);
            } else if (zzg2 == 1668249202) {
                int zzg4 = zzdyVar.zzg();
                if (zzdyVar.zzg() == 1684108385) {
                    int zzg5 = zzdyVar.zzg();
                    int i3 = zzaik.zza;
                    int i4 = zzg5 & 16777215;
                    if (i4 == 13) {
                        str = "image/jpeg";
                    } else if (i4 == 14) {
                        str = "image/png";
                        i4 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        zzdo.zzf("MetadataUtil", "Unrecognized cover art flags: " + i4);
                    } else {
                        zzdyVar.zzM(4);
                        int i5 = zzg4 - 16;
                        byte[] bArr = new byte[i5];
                        zzdyVar.zzH(bArr, 0, i5);
                        zzaftVar = new zzaft(str, null, 3, bArr);
                        zzaxVar = zzaftVar;
                    }
                } else {
                    zzdo.zzf("MetadataUtil", "Failed to parse cover art attribute");
                }
            } else if (zzg2 == 1631670868) {
                zzaxVar = zze(1631670868, "TPE2", zzdyVar);
            } else if (zzg2 == 1936682605) {
                zzaxVar = zze(1936682605, "TSOT", zzdyVar);
            } else if (zzg2 == 1936679276) {
                zzaxVar = zze(1936679276, "TSOA", zzdyVar);
            } else if (zzg2 == 1936679282) {
                zzaxVar = zze(1936679282, "TSOP", zzdyVar);
            } else if (zzg2 == 1936679265) {
                zzaxVar = zze(1936679265, "TSO2", zzdyVar);
            } else if (zzg2 == 1936679791) {
                zzaxVar = zze(1936679791, "TSOC", zzdyVar);
            } else if (zzg2 == 1920233063) {
                zzaxVar = zzc(1920233063, "ITUNESADVISORY", zzdyVar, false, false);
            } else if (zzg2 == 1885823344) {
                zzaxVar = zzc(1885823344, "ITUNESGAPLESS", zzdyVar, false, true);
            } else if (zzg2 == 1936683886) {
                zzaxVar = zze(1936683886, "TVSHOWSORT", zzdyVar);
            } else if (zzg2 == 1953919848) {
                zzaxVar = zze(1953919848, "TVSHOW", zzdyVar);
            } else {
                if (zzg2 == 757935405) {
                    String str2 = null;
                    String str3 = null;
                    int i6 = -1;
                    int i7 = -1;
                    while (zzdyVar.zzd() < zzg) {
                        int zzd = zzdyVar.zzd();
                        int zzg6 = zzdyVar.zzg();
                        int zzg7 = zzdyVar.zzg();
                        zzdyVar.zzM(4);
                        if (zzg7 == 1835360622) {
                            str2 = zzdyVar.zzA(zzg6 - 12);
                        } else {
                            int i8 = zzg6 - 12;
                            if (zzg7 == 1851878757) {
                                str3 = zzdyVar.zzA(i8);
                            } else {
                                if (zzg7 == 1684108385) {
                                    i7 = zzg6;
                                }
                                if (zzg7 == 1684108385) {
                                    i6 = zzd;
                                }
                                zzdyVar.zzM(i8);
                            }
                        }
                    }
                    if (str2 != null && str3 != null && i6 != -1) {
                        zzdyVar.zzL(i6);
                        zzdyVar.zzM(16);
                        zzaxVar = new zzagk(str2, str3, zzdyVar.zzA(i7 - 16));
                    }
                }
                zzdo.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzeq.zze(zzg2));
            }
            return zzaxVar;
        } finally {
            zzdyVar.zzL(zzg);
        }
    }

    private static int zzb(zzdy zzdyVar) {
        int zzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385) {
            zzdyVar.zzM(8);
            int i = zzg - 16;
            if (i == 1) {
                return zzdyVar.zzm();
            }
            if (i == 2) {
                return zzdyVar.zzq();
            }
            if (i == 3) {
                return zzdyVar.zzo();
            }
            if (i == 4 && (zzdyVar.zzf() & 128) == 0) {
                return zzdyVar.zzp();
            }
        }
        zzdo.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static zzagh zzc(int i, String str, zzdy zzdyVar, boolean z, boolean z2) {
        int zzb = zzb(zzdyVar);
        if (z2) {
            zzb = Math.min(1, zzb);
        }
        if (zzb >= 0) {
            return z ? new zzagq(str, null, zzfxn.zzo(Integer.toString(zzb))) : new zzagb("und", str, Integer.toString(zzb));
        }
        zzdo.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzeq.zze(i)));
        return null;
    }

    private static zzagq zzd(int i, String str, zzdy zzdyVar) {
        int zzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385 && zzg >= 22) {
            zzdyVar.zzM(10);
            int zzq = zzdyVar.zzq();
            if (zzq > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(zzq);
                String sb2 = sb.toString();
                int zzq2 = zzdyVar.zzq();
                if (zzq2 > 0) {
                    sb2 = sb2 + "/" + zzq2;
                }
                return new zzagq(str, null, zzfxn.zzo(sb2));
            }
        }
        zzdo.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzeq.zze(i)));
        return null;
    }

    private static zzagq zze(int i, String str, zzdy zzdyVar) {
        int zzg = zzdyVar.zzg();
        if (zzdyVar.zzg() == 1684108385) {
            zzdyVar.zzM(8);
            return new zzagq(str, null, zzfxn.zzo(zzdyVar.zzA(zzg - 16)));
        }
        zzdo.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzeq.zze(i)));
        return null;
    }
}
