package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.mp4.Atom;
import androidx.media3.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaik {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        String str = zzep.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i) {
        return (i >> 24) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ef, code lost:
    
        if (r26 == 0) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0dd3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0e07  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0bd2  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0bd4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0d60  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0d65  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x023d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:580:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:581:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x029d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzb(com.google.android.gms.internal.ads.zzeu r76, com.google.android.gms.internal.ads.zzads r77, long r78, com.google.android.gms.internal.ads.zzq r80, boolean r81, boolean r82, com.google.android.gms.internal.ads.zzglu r83, boolean r84) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 3608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzb(com.google.android.gms.internal.ads.zzeu, com.google.android.gms.internal.ads.zzads, long, com.google.android.gms.internal.ads.zzq, boolean, boolean, com.google.android.gms.internal.ads.zzglu, boolean):java.util.List");
    }

    public static zzap zzc(zzev zzevVar) {
        int zzF;
        zzeg zzegVar = zzevVar.zza;
        zzegVar.zzh(8);
        zzap zzapVar = new zzap(C.TIME_UNSET, new zzao[0]);
        while (zzegVar.zzd() >= 8) {
            int zzg = zzegVar.zzg();
            int zzB = zzegVar.zzB() + zzg;
            int zzB2 = zzegVar.zzB();
            zzap zzapVar2 = null;
            if (zzB2 == 1835365473) {
                zzegVar.zzh(zzg);
                zzegVar.zzk(8);
                zzf(zzegVar);
                while (true) {
                    if (zzegVar.zzg() >= zzB) {
                        break;
                    }
                    int zzg2 = zzegVar.zzg();
                    int zzB3 = zzegVar.zzB() + zzg2;
                    if (zzegVar.zzB() == 1768715124) {
                        zzegVar.zzh(zzg2);
                        zzegVar.zzk(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzegVar.zzg() < zzB3) {
                            zzao zzc = zzait.zzc(zzegVar);
                            if (zzc != null) {
                                arrayList.add(zzc);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzapVar2 = new zzap(arrayList);
                        }
                    } else {
                        zzegVar.zzh(zzB3);
                    }
                }
                zzapVar = zzapVar.zzf(zzapVar2);
            } else if (zzB2 == 1936553057) {
                zzegVar.zzh(zzg);
                zzegVar.zzk(12);
                while (true) {
                    if (zzegVar.zzg() >= zzB) {
                        break;
                    }
                    int zzg3 = zzegVar.zzg();
                    int zzB4 = zzegVar.zzB();
                    if (zzegVar.zzB() != 1935766900) {
                        zzegVar.zzh(zzg3 + zzB4);
                    } else if (zzB4 >= 16) {
                        zzegVar.zzk(4);
                        int i = -1;
                        int i2 = 0;
                        for (int i3 = 0; i3 < 2; i3++) {
                            int zzs = zzegVar.zzs();
                            int zzs2 = zzegVar.zzs();
                            if (zzs == 0) {
                                i = zzs2;
                            } else if (zzs == 1) {
                                i2 = zzs2;
                            }
                        }
                        if (i == 12) {
                            zzF = PsExtractor.VIDEO_STREAM_MASK;
                        } else if (i == 13) {
                            zzF = 120;
                        } else {
                            if (i == 21 && zzegVar.zzd() >= 8 && zzegVar.zzg() + 8 <= zzB) {
                                int zzB5 = zzegVar.zzB();
                                int zzB6 = zzegVar.zzB();
                                if (zzB5 >= 12 && zzB6 == 1936877170) {
                                    zzF = zzegVar.zzF();
                                }
                            }
                            zzF = -2147483647;
                        }
                        if (zzF != -2147483647) {
                            zzapVar2 = new zzap(C.TIME_UNSET, new zzaha(zzF, i2));
                        }
                    }
                }
                zzapVar = zzapVar.zzf(zzapVar2);
            } else if (zzB2 == -1451722374) {
                zzapVar = zzapVar.zzf(zzh(zzegVar));
            }
            zzegVar.zzh(zzB);
        }
        return zzapVar;
    }

    public static zzey zzd(zzeg zzegVar) {
        long zzD;
        long zzD2;
        zzegVar.zzh(8);
        if (zza(zzegVar.zzB()) == 0) {
            zzD = zzegVar.zzz();
            zzD2 = zzegVar.zzz();
        } else {
            zzD = zzegVar.zzD();
            zzD2 = zzegVar.zzD();
        }
        return new zzey(zzD, zzD2, zzegVar.zzz());
    }

    public static zzap zze(zzeu zzeuVar) {
        zzes zzesVar;
        zzev zzc = zzeuVar.zzc(Atom.TYPE_hdlr);
        zzev zzc2 = zzeuVar.zzc(Atom.TYPE_keys);
        zzev zzc3 = zzeuVar.zzc(Atom.TYPE_ilst);
        if (zzc != null && zzc2 != null && zzc3 != null && zzi(zzc.zza) == 1835299937) {
            zzeg zzegVar = zzc2.zza;
            zzegVar.zzh(12);
            int zzB = zzegVar.zzB();
            String[] strArr = new String[zzB];
            for (int i = 0; i < zzB; i++) {
                int zzB2 = zzegVar.zzB();
                zzegVar.zzk(4);
                strArr[i] = zzegVar.zzK(zzB2 - 8, StandardCharsets.UTF_8);
            }
            zzeg zzegVar2 = zzc3.zza;
            zzegVar2.zzh(8);
            ArrayList arrayList = new ArrayList();
            while (zzegVar2.zzd() > 8) {
                int zzg = zzegVar2.zzg() + zzegVar2.zzB();
                int zzB3 = zzegVar2.zzB() - 1;
                if (zzB3 < 0 || zzB3 >= zzB) {
                    StringBuilder sb = new StringBuilder(String.valueOf(zzB3).length() + 41);
                    sb.append("Skipped metadata with unknown key index: ");
                    sb.append(zzB3);
                    zzdt.zzc("BoxParsers", sb.toString());
                } else {
                    String str = strArr[zzB3];
                    while (true) {
                        int zzg2 = zzegVar2.zzg();
                        if (zzg2 >= zzg) {
                            zzesVar = null;
                            break;
                        }
                        int zzB4 = zzegVar2.zzB();
                        if (zzegVar2.zzB() == 1684108385) {
                            int zzB5 = zzegVar2.zzB();
                            int zzB6 = zzegVar2.zzB();
                            int i2 = zzB4 - 16;
                            byte[] bArr = new byte[i2];
                            zzegVar2.zzm(bArr, 0, i2);
                            zzesVar = new zzes(str, bArr, zzB6, zzB5);
                            break;
                        }
                        zzegVar2.zzh(zzg2 + zzB4);
                    }
                    if (zzesVar != null) {
                        arrayList.add(zzesVar);
                    }
                }
                zzegVar2.zzh(zzg);
            }
            if (!arrayList.isEmpty()) {
                return new zzap(arrayList);
            }
        }
        return null;
    }

    public static void zzf(zzeg zzegVar) {
        int zzg = zzegVar.zzg();
        zzegVar.zzk(4);
        if (zzegVar.zzB() != 1751411826) {
            zzg += 4;
        }
        zzegVar.zzh(zzg);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x045e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaji zzg(com.google.android.gms.internal.ads.zzajf r43, com.google.android.gms.internal.ads.zzeu r44, com.google.android.gms.internal.ads.zzads r45, boolean r46) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 1915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzg(com.google.android.gms.internal.ads.zzajf, com.google.android.gms.internal.ads.zzeu, com.google.android.gms.internal.ads.zzads, boolean):com.google.android.gms.internal.ads.zzaji");
    }

    private static zzap zzh(zzeg zzegVar) {
        short zzv = zzegVar.zzv();
        zzegVar.zzk(2);
        String zzK = zzegVar.zzK(zzv, StandardCharsets.UTF_8);
        int max = Math.max(zzK.lastIndexOf(43), zzK.lastIndexOf(45));
        try {
            return new zzap(C.TIME_UNSET, new zzex(Float.parseFloat(zzK.substring(0, max)), Float.parseFloat(zzK.substring(max, zzK.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static int zzi(zzeg zzegVar) {
        zzegVar.zzh(16);
        return zzegVar.zzB();
    }

    private static String zzj(byte[] bArr, int i, int i2) {
        zzgmd.zzh(bArr.length == 64);
        ArrayList arrayList = new ArrayList(16);
        for (int i3 = 0; i3 < bArr.length - 3; i3 += 4) {
            int zze = zzgst.zze(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3]);
            String str = zzep.zza;
            int i4 = ((zze >> 8) & 255) - 128;
            int i5 = (zze >> 16) & 255;
            int i6 = (zze & 255) - 128;
            arrayList.add(String.format("%06x", Integer.valueOf(Math.max(0, Math.min(i5 + ((i6 * 17790) / 10000), 255)) | (Math.max(0, Math.min(((i4 * 14075) / 10000) + i5, 255)) << 16) | (Math.max(0, Math.min((i5 - ((i6 * 3455) / 10000)) - ((i4 * 7169) / 10000), 255)) << 8))));
        }
        String zzd = zzglx.zzd(arrayList, ", ");
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 7 + String.valueOf(i2).length() + 10 + zzd.length() + 1);
        sb.append("size: ");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        sb.append("\npalette: ");
        sb.append(zzd);
        sb.append("\n");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x014e, code lost:
    
        if (r6 == 1) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzi zzk(com.google.android.gms.internal.ads.zzeg r15) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzk(com.google.android.gms.internal.ads.zzeg):com.google.android.gms.internal.ads.zzi");
    }

    private static zzi zzl(zzeg zzegVar) {
        zzh zzhVar = new zzh();
        byte[] zzi = zzegVar.zzi();
        zzef zzefVar = new zzef(zzi, zzi.length);
        zzefVar.zzf(zzegVar.zzg() * 8);
        zzefVar.zzo(1);
        int zzj = zzefVar.zzj(8);
        for (int i = 0; i < zzj; i++) {
            zzefVar.zzo(1);
            int zzj2 = zzefVar.zzj(8);
            for (int i2 = 0; i2 < zzj2; i2++) {
                zzefVar.zzh(6);
                boolean zzi2 = zzefVar.zzi();
                zzefVar.zzg();
                zzefVar.zzo(11);
                zzefVar.zzh(4);
                int zzj3 = zzefVar.zzj(4) + 8;
                zzhVar.zze(zzj3);
                zzhVar.zzf(zzj3);
                zzefVar.zzo(1);
                if (zzi2) {
                    int zzj4 = zzefVar.zzj(8);
                    int zzj5 = zzefVar.zzj(8);
                    zzefVar.zzo(1);
                    boolean zzi3 = zzefVar.zzi();
                    zzhVar.zza(zzi.zzb(zzj4));
                    zzhVar.zzb(true != zzi3 ? 2 : 1);
                    zzhVar.zzc(zzi.zzc(zzj5));
                }
            }
        }
        return zzhVar.zzg();
    }

    private static ByteBuffer zzm() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static Pair zzn(zzeu zzeuVar) {
        zzev zzc = zzeuVar.zzc(Atom.TYPE_elst);
        if (zzc == null) {
            return null;
        }
        zzeg zzegVar = zzc.zza;
        zzegVar.zzh(8);
        int zza2 = zza(zzegVar.zzB());
        int zzH = zzegVar.zzH();
        long[] jArr = new long[zzH];
        long[] jArr2 = new long[zzH];
        for (int i = 0; i < zzH; i++) {
            jArr[i] = zza2 == 1 ? zzegVar.zzJ() : zzegVar.zzz();
            jArr2[i] = zza2 == 1 ? zzegVar.zzD() : zzegVar.zzB();
            if (zzegVar.zzv() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            zzegVar.zzk(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x0490, code lost:
    
        r2.zzk(com.google.android.gms.internal.ads.zzgst.zza(r2.zzP()));
     */
    /* JADX WARN: Removed duplicated region for block: B:224:0x06b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:233:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzo(com.google.android.gms.internal.ads.zzeg r34, int r35, int r36, int r37, int r38, java.lang.String r39, boolean r40, com.google.android.gms.internal.ads.zzq r41, com.google.android.gms.internal.ads.zzaig r42, int r43) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 1806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaik.zzo(com.google.android.gms.internal.ads.zzeg, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzq, com.google.android.gms.internal.ads.zzaig, int):void");
    }

    private static zzaib zzp(zzeg zzegVar, int i) {
        zzegVar.zzh(i + 12);
        zzegVar.zzk(1);
        zzs(zzegVar);
        zzegVar.zzk(2);
        int zzs = zzegVar.zzs();
        if ((zzs & 128) != 0) {
            zzegVar.zzk(2);
        }
        if ((zzs & 64) != 0) {
            zzegVar.zzk(zzegVar.zzs());
        }
        if ((zzs & 32) != 0) {
            zzegVar.zzk(2);
        }
        zzegVar.zzk(1);
        zzs(zzegVar);
        String zzf = zzas.zzf(zzegVar.zzs());
        if (MimeTypes.AUDIO_MPEG.equals(zzf) || MimeTypes.AUDIO_DTS.equals(zzf) || MimeTypes.AUDIO_DTS_HD.equals(zzf)) {
            return new zzaib(zzf, null, -1L, -1L);
        }
        zzegVar.zzk(4);
        long zzz = zzegVar.zzz();
        long zzz2 = zzegVar.zzz();
        zzegVar.zzk(1);
        int zzs2 = zzs(zzegVar);
        byte[] bArr = new byte[zzs2];
        zzegVar.zzm(bArr, 0, zzs2);
        return new zzaib(zzf, bArr, zzz2 <= 0 ? -1L : zzz2, zzz > 0 ? zzz : -1L);
    }

    private static zzahz zzq(zzeg zzegVar, int i) {
        zzegVar.zzh(i + 8);
        zzegVar.zzk(4);
        return new zzahz(zzegVar.zzz(), zzegVar.zzz());
    }

    private static Pair zzr(zzeg zzegVar, int i, int i2) throws zzat {
        Integer num;
        zzajg zzajgVar;
        Pair create;
        int i3;
        int i4;
        byte[] bArr;
        int zzg = zzegVar.zzg();
        while (zzg - i < i2) {
            zzegVar.zzh(zzg);
            int zzB = zzegVar.zzB();
            zzade.zza(zzB > 0, "childAtomSize must be positive");
            if (zzegVar.zzB() == 1936289382) {
                int i5 = zzg + 8;
                int i6 = 0;
                int i7 = -1;
                String str = null;
                Integer num2 = null;
                while (i5 - zzg < zzB) {
                    zzegVar.zzh(i5);
                    int zzB2 = zzegVar.zzB();
                    int zzB3 = zzegVar.zzB();
                    if (zzB3 == 1718775137) {
                        num2 = Integer.valueOf(zzegVar.zzB());
                    } else if (zzB3 == 1935894637) {
                        zzegVar.zzk(4);
                        str = zzegVar.zzK(4, StandardCharsets.UTF_8);
                    } else if (zzB3 == 1935894633) {
                        i7 = i5;
                        i6 = zzB2;
                    }
                    i5 += zzB2;
                }
                if (C.CENC_TYPE_cenc.equals(str) || C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str) || C.CENC_TYPE_cbcs.equals(str)) {
                    zzade.zza(num2 != null, "frma atom is mandatory");
                    zzade.zza(i7 != -1, "schi atom is mandatory");
                    int i8 = i7 + 8;
                    while (true) {
                        if (i8 - i7 >= i6) {
                            num = num2;
                            zzajgVar = null;
                            break;
                        }
                        zzegVar.zzh(i8);
                        int zzB4 = zzegVar.zzB();
                        if (zzegVar.zzB() == 1952804451) {
                            int zza2 = zza(zzegVar.zzB());
                            zzegVar.zzk(1);
                            if (zza2 == 0) {
                                zzegVar.zzk(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int zzs = zzegVar.zzs();
                                int i9 = (zzs & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                                i3 = zzs & 15;
                                i4 = i9;
                            }
                            boolean z = zzegVar.zzs() == 1;
                            int zzs2 = zzegVar.zzs();
                            byte[] bArr2 = new byte[16];
                            zzegVar.zzm(bArr2, 0, 16);
                            if (z && zzs2 == 0) {
                                int zzs3 = zzegVar.zzs();
                                byte[] bArr3 = new byte[zzs3];
                                zzegVar.zzm(bArr3, 0, zzs3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = num2;
                            zzajgVar = new zzajg(z, str, zzs2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += zzB4;
                        }
                    }
                    zzade.zza(zzajgVar != null, "tenc atom is mandatory");
                    String str2 = zzep.zza;
                    create = Pair.create(num, zzajgVar);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            zzg += zzB;
        }
        return null;
    }

    private static int zzs(zzeg zzegVar) {
        int zzs = zzegVar.zzs();
        int i = zzs & 127;
        while ((zzs & 128) == 128) {
            zzs = zzegVar.zzs();
            i = (i << 7) | (zzs & 127);
        }
        return i;
    }
}
