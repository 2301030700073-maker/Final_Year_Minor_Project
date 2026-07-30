package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.Cpublic;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaik {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        int i = zzei.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i) {
        return (i >> 24) & 255;
    }

    public static zzay zzb(zzen zzenVar) {
        zzem zzemVar;
        zzeo zzb2 = zzenVar.zzb(1751411826);
        zzeo zzb3 = zzenVar.zzb(1801812339);
        zzeo zzb4 = zzenVar.zzb(1768715124);
        if (zzb2 != null && zzb3 != null && zzb4 != null && zzi(zzb2.zza) == 1835299937) {
            zzdy zzdyVar = zzb3.zza;
            zzdyVar.zzL(12);
            int zzg = zzdyVar.zzg();
            String[] strArr = new String[zzg];
            for (int i = 0; i < zzg; i++) {
                int zzg2 = zzdyVar.zzg();
                zzdyVar.zzM(4);
                strArr[i] = zzdyVar.zzB(zzg2 - 8, StandardCharsets.UTF_8);
            }
            zzdy zzdyVar2 = zzb4.zza;
            zzdyVar2.zzL(8);
            ArrayList arrayList = new ArrayList();
            while (zzdyVar2.zzb() > 8) {
                int zzg3 = zzdyVar2.zzg() + zzdyVar2.zzd();
                int zzg4 = zzdyVar2.zzg() - 1;
                if (zzg4 < 0 || zzg4 >= zzg) {
                    Cpublic.m7824goto("Skipped metadata with unknown key index: ", zzg4, "BoxParsers");
                } else {
                    String str = strArr[zzg4];
                    while (true) {
                        int zzd = zzdyVar2.zzd();
                        if (zzd >= zzg3) {
                            zzemVar = null;
                            break;
                        }
                        int zzg5 = zzdyVar2.zzg();
                        if (zzdyVar2.zzg() == 1684108385) {
                            int zzg6 = zzdyVar2.zzg();
                            int zzg7 = zzdyVar2.zzg();
                            int i2 = zzg5 - 16;
                            byte[] bArr = new byte[i2];
                            zzdyVar2.zzH(bArr, 0, i2);
                            zzemVar = new zzem(str, bArr, zzg7, zzg6);
                            break;
                        }
                        zzdyVar2.zzL(zzd + zzg5);
                    }
                    if (zzemVar != null) {
                        arrayList.add(zzemVar);
                    }
                }
                zzdyVar2.zzL(zzg3);
            }
            if (!arrayList.isEmpty()) {
                return new zzay(arrayList);
            }
        }
        return null;
    }

    public static zzay zzc(zzeo zzeoVar) {
        int zzn;
        zzdy zzdyVar = zzeoVar.zza;
        zzdyVar.zzL(8);
        zzay zzayVar = new zzay(-9223372036854775807L, new zzax[0]);
        while (zzdyVar.zzb() >= 8) {
            int zzd = zzdyVar.zzd();
            int zzg = zzdyVar.zzg() + zzd;
            int zzg2 = zzdyVar.zzg();
            zzay zzayVar2 = null;
            if (zzg2 == 1835365473) {
                zzdyVar.zzL(zzd);
                zzdyVar.zzM(8);
                zzg(zzdyVar);
                while (true) {
                    if (zzdyVar.zzd() >= zzg) {
                        break;
                    }
                    int zzd2 = zzdyVar.zzd();
                    int zzg3 = zzdyVar.zzg() + zzd2;
                    if (zzdyVar.zzg() == 1768715124) {
                        zzdyVar.zzL(zzd2);
                        zzdyVar.zzM(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzdyVar.zzd() < zzg3) {
                            zzax zza2 = zzais.zza(zzdyVar);
                            if (zza2 != null) {
                                arrayList.add(zza2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzayVar2 = new zzay(arrayList);
                        }
                    } else {
                        zzdyVar.zzL(zzg3);
                    }
                }
                zzayVar = zzayVar.zzd(zzayVar2);
            } else if (zzg2 == 1936553057) {
                zzdyVar.zzL(zzd);
                zzdyVar.zzM(12);
                while (true) {
                    if (zzdyVar.zzd() >= zzg) {
                        break;
                    }
                    int zzd3 = zzdyVar.zzd();
                    int zzg4 = zzdyVar.zzg();
                    if (zzdyVar.zzg() != 1935766900) {
                        zzdyVar.zzL(zzd3 + zzg4);
                    } else if (zzg4 >= 16) {
                        zzdyVar.zzM(4);
                        int i = -1;
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int zzm = zzdyVar.zzm();
                            int zzm2 = zzdyVar.zzm();
                            if (zzm == 0) {
                                i = zzm2;
                            } else if (zzm == 1) {
                                i2 = zzm2;
                            }
                        }
                        if (i == 12) {
                            zzn = 240;
                        } else if (i == 13) {
                            zzn = 120;
                        } else {
                            if (i == 21 && zzdyVar.zzb() >= 8 && zzdyVar.zzd() + 8 <= zzg) {
                                int zzg5 = zzdyVar.zzg();
                                int zzg6 = zzdyVar.zzg();
                                if (zzg5 >= 12 && zzg6 == 1936877170) {
                                    zzn = zzdyVar.zzn();
                                }
                            }
                            zzn = -2147483647;
                        }
                        if (zzn != -2147483647) {
                            zzayVar2 = new zzay(-9223372036854775807L, new zzahc(zzn, i2));
                        }
                    }
                }
                zzayVar = zzayVar.zzd(zzayVar2);
            } else if (zzg2 == -1451722374) {
                zzayVar = zzayVar.zzd(zzl(zzdyVar));
            }
            zzdyVar.zzL(zzg);
        }
        return zzayVar;
    }

    public static zzew zzd(zzdy zzdyVar) {
        long zzt;
        long zzt2;
        zzdyVar.zzL(8);
        if (zza(zzdyVar.zzg()) == 0) {
            zzt = zzdyVar.zzu();
            zzt2 = zzdyVar.zzu();
        } else {
            zzt = zzdyVar.zzt();
            zzt2 = zzdyVar.zzt();
        }
        return new zzew(zzt, zzt2, zzdyVar.zzu());
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0294 A[ADDED_TO_REGION, LOOP:13: B:232:0x0294->B:235:0x029e, LOOP_START, PHI: r16
      0x0294: PHI (r16v15 int) = (r16v3 int), (r16v16 int) binds: [B:231:0x0292, B:235:0x029e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x028b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0386  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaje zze(com.google.android.gms.internal.ads.zzajb r43, com.google.android.gms.internal.ads.zzen r44, com.google.android.gms.internal.ads.zzadb r45) {
        /*
            Method dump skipped, instructions count: 1588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zze(com.google.android.gms.internal.ads.zzajb, com.google.android.gms.internal.ads.zzen, com.google.android.gms.internal.ads.zzadb):com.google.android.gms.internal.ads.zzaje");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e3, code lost:
    
        if (r9 == 0) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0c69  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0c93  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0c2f  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0c33  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x0ca0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:548:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:551:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0228  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzf(com.google.android.gms.internal.ads.zzen r65, com.google.android.gms.internal.ads.zzadb r66, long r67, com.google.android.gms.internal.ads.zzu r69, boolean r70, boolean r71, com.google.android.gms.internal.ads.zzfuc r72) {
        /*
            Method dump skipped, instructions count: 3242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzf(com.google.android.gms.internal.ads.zzen, com.google.android.gms.internal.ads.zzadb, long, com.google.android.gms.internal.ads.zzu, boolean, boolean, com.google.android.gms.internal.ads.zzfuc):java.util.List");
    }

    public static void zzg(zzdy zzdyVar) {
        int zzd = zzdyVar.zzd();
        zzdyVar.zzM(4);
        if (zzdyVar.zzg() != 1751411826) {
            zzd += 4;
        }
        zzdyVar.zzL(zzd);
    }

    private static int zzh(zzdy zzdyVar) {
        int zzm = zzdyVar.zzm();
        int i = zzm & ModuleDescriptor.MODULE_VERSION;
        while ((zzm & 128) == 128) {
            zzm = zzdyVar.zzm();
            i = (i << 7) | (zzm & ModuleDescriptor.MODULE_VERSION);
        }
        return i;
    }

    private static int zzi(zzdy zzdyVar) {
        zzdyVar.zzL(16);
        return zzdyVar.zzg();
    }

    private static Pair zzj(zzdy zzdyVar, int i, int i2) {
        Integer num;
        zzajc zzajcVar;
        Pair create;
        int i3;
        int i4;
        byte[] bArr;
        int zzd = zzdyVar.zzd();
        while (zzd - i < i2) {
            zzdyVar.zzL(zzd);
            int zzg = zzdyVar.zzg();
            zzacr.zzb(zzg > 0, "childAtomSize must be positive");
            if (zzdyVar.zzg() == 1936289382) {
                int i5 = zzd + 8;
                int i6 = -1;
                int i7 = 0;
                String str = null;
                Integer num2 = null;
                while (i5 - zzd < zzg) {
                    zzdyVar.zzL(i5);
                    int zzg2 = zzdyVar.zzg();
                    int zzg3 = zzdyVar.zzg();
                    if (zzg3 == 1718775137) {
                        num2 = Integer.valueOf(zzdyVar.zzg());
                    } else if (zzg3 == 1935894637) {
                        zzdyVar.zzM(4);
                        str = zzdyVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (zzg3 == 1935894633) {
                        i6 = i5;
                        i7 = zzg2;
                    }
                    i5 += zzg2;
                }
                if ("cenc".equals(str) || "cbc1".equals(str) || "cens".equals(str) || "cbcs".equals(str)) {
                    zzacr.zzb(num2 != null, "frma atom is mandatory");
                    zzacr.zzb(i6 != -1, "schi atom is mandatory");
                    int i8 = i6 + 8;
                    while (true) {
                        if (i8 - i6 >= i7) {
                            num = num2;
                            zzajcVar = null;
                            break;
                        }
                        zzdyVar.zzL(i8);
                        int zzg4 = zzdyVar.zzg();
                        if (zzdyVar.zzg() == 1952804451) {
                            int zza2 = zza(zzdyVar.zzg());
                            zzdyVar.zzM(1);
                            if (zza2 == 0) {
                                zzdyVar.zzM(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int zzm = zzdyVar.zzm();
                                int i9 = (zzm & 240) >> 4;
                                i3 = zzm & 15;
                                i4 = i9;
                            }
                            boolean z = zzdyVar.zzm() == 1;
                            int zzm2 = zzdyVar.zzm();
                            byte[] bArr2 = new byte[16];
                            zzdyVar.zzH(bArr2, 0, 16);
                            if (z && zzm2 == 0) {
                                int zzm3 = zzdyVar.zzm();
                                byte[] bArr3 = new byte[zzm3];
                                zzdyVar.zzH(bArr3, 0, zzm3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = num2;
                            zzajcVar = new zzajc(z, str, zzm2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += zzg4;
                        }
                    }
                    zzacr.zzb(zzajcVar != null, "tenc atom is mandatory");
                    int i10 = zzei.zza;
                    create = Pair.create(num, zzajcVar);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            zzd += zzg;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0144, code lost:
    
        if (r6 == 1) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzk zzk(com.google.android.gms.internal.ads.zzdy r15) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzk(com.google.android.gms.internal.ads.zzdy):com.google.android.gms.internal.ads.zzk");
    }

    private static zzay zzl(zzdy zzdyVar) {
        short zzE = zzdyVar.zzE();
        zzdyVar.zzM(2);
        String zzB = zzdyVar.zzB(zzE, StandardCharsets.UTF_8);
        int max = Math.max(zzB.lastIndexOf(43), zzB.lastIndexOf(45));
        try {
            return new zzay(-9223372036854775807L, new zzet(Float.parseFloat(zzB.substring(0, max)), Float.parseFloat(zzB.substring(max, zzB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzaia zzm(zzdy zzdyVar, int i) {
        zzdyVar.zzL(i + 12);
        zzdyVar.zzM(1);
        zzh(zzdyVar);
        zzdyVar.zzM(2);
        int zzm = zzdyVar.zzm();
        if ((zzm & 128) != 0) {
            zzdyVar.zzM(2);
        }
        if ((zzm & 64) != 0) {
            zzdyVar.zzM(zzdyVar.zzm());
        }
        if ((zzm & 32) != 0) {
            zzdyVar.zzM(2);
        }
        zzdyVar.zzM(1);
        zzh(zzdyVar);
        String zzd = zzbb.zzd(zzdyVar.zzm());
        if ("audio/mpeg".equals(zzd) || "audio/vnd.dts".equals(zzd) || "audio/vnd.dts.hd".equals(zzd)) {
            return new zzaia(zzd, null, -1L, -1L);
        }
        zzdyVar.zzM(4);
        long zzu = zzdyVar.zzu();
        long zzu2 = zzdyVar.zzu();
        zzdyVar.zzM(1);
        int zzh = zzh(zzdyVar);
        byte[] bArr = new byte[zzh];
        zzdyVar.zzH(bArr, 0, zzh);
        return new zzaia(zzd, bArr, zzu2 <= 0 ? -1L : zzu2, zzu > 0 ? zzu : -1L);
    }

    private static ByteBuffer zzn() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x01c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzo(com.google.android.gms.internal.ads.zzdy r26, int r27, int r28, int r29, int r30, java.lang.String r31, boolean r32, com.google.android.gms.internal.ads.zzu r33, com.google.android.gms.internal.ads.zzaif r34, int r35) {
        /*
            Method dump skipped, instructions count: 1358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzo(com.google.android.gms.internal.ads.zzdy, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzu, com.google.android.gms.internal.ads.zzaif, int):void");
    }
}
