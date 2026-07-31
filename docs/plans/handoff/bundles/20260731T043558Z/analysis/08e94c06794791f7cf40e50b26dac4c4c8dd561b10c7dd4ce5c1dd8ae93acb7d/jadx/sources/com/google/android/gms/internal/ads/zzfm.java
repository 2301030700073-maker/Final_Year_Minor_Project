package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfm {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzc = new Object();
    private static int[] zzd = new int[10];

    public static int zzb(zzv zzvVar) {
        String str = zzvVar.zzo;
        if (Objects.equals(str, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        return (Objects.equals(str, MimeTypes.VIDEO_H265) || zzas.zze(zzvVar.zzk, MimeTypes.VIDEO_H265)) ? 2 : 0;
    }

    public static boolean zzc(byte[] bArr, int i, int i2, zzv zzvVar) {
        int i3;
        String str = zzvVar.zzo;
        if (Objects.equals(str, MimeTypes.VIDEO_H264)) {
            byte b = bArr[4];
            if (((b & 96) >> 5) == 0 && ((i3 = b & Ascii.US) == 1 || i3 == 9 || i3 == 14)) {
                return false;
            }
        } else if (Objects.equals(str, MimeTypes.VIDEO_H265)) {
            zzfa zzk = zzk(new zzfn(bArr, 4, i2 + 4));
            int i4 = zzk.zza;
            if (i4 == 35) {
                return false;
            }
            if (i4 <= 14 && i4 % 2 == 0 && zzk.zzc == zzvVar.zzF - 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0230 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0202  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfl zzd(byte[] r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfm.zzd(byte[], int, int):com.google.android.gms.internal.ads.zzfl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:349:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfj zze(byte[] r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 2122
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfm.zze(byte[], int, int):com.google.android.gms.internal.ads.zzfj");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfg zzf(byte[] r36, int r37, int r38, com.google.android.gms.internal.ads.zzfj r39) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfm.zzf(byte[], int, int, com.google.android.gms.internal.ads.zzfj):com.google.android.gms.internal.ads.zzfg");
    }

    public static zzfk zzg(byte[] bArr, int i, int i2) {
        zzfn zzfnVar = new zzfn(bArr, 4, i2);
        int zzg = zzfnVar.zzg();
        int zzg2 = zzfnVar.zzg();
        zzfnVar.zza();
        return new zzfk(zzg, zzg2, zzfnVar.zze());
    }

    public static int zzh(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        zzgmd.zzh(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            zzi(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            zzi(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            zzi(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b = bArr[i5];
            if ((b & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                    zzi(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    public static void zzi(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static String zzj(List list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArr = (byte[]) list.get(i);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                int i2 = zzgpe.zzd;
                zzgpb zzgpbVar = new zzgpb();
                int i3 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i3 >= length2) {
                        break;
                    }
                    int zzh = zzh(bArr, i3, length2, zArr);
                    if (zzh != length2) {
                        zzgpbVar.zzf(Integer.valueOf(zzh));
                    }
                    i3 = zzh + 3;
                }
                zzgpe zzi = zzgpbVar.zzi();
                for (int i4 = 0; i4 < zzi.size(); i4++) {
                    if (((Integer) zzi.get(i4)).intValue() + 3 < length) {
                        zzfn zzfnVar = new zzfn(bArr, ((Integer) zzi.get(i4)).intValue() + 3, length);
                        zzfa zzk = zzk(zzfnVar);
                        if (zzk.zza == 33 && zzk.zzb == 0) {
                            zzfnVar.zzb(4);
                            int zzf = zzfnVar.zzf(3);
                            zzfnVar.zza();
                            zzfb zzl = zzl(zzfnVar, true, zzf, null);
                            return zzdd.zzb(zzl.zza, zzl.zzb, zzl.zzc, zzl.zzd, zzl.zze, zzl.zzf);
                        }
                    }
                }
            }
        }
        return null;
    }

    private static zzfa zzk(zzfn zzfnVar) {
        zzfnVar.zza();
        return new zzfa(zzfnVar.zzf(6), zzfnVar.zzf(6), zzfnVar.zzf(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzfb zzl(com.google.android.gms.internal.ads.zzfn r18, boolean r19, int r20, com.google.android.gms.internal.ads.zzfb r21) {
        /*
            r0 = r18
            r1 = r20
            r2 = r21
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 8
            r6 = 0
            if (r19 == 0) goto L3c
            r2 = 2
            int r2 = r0.zzf(r2)
            boolean r7 = r18.zze()
            r8 = 5
            int r8 = r0.zzf(r8)
            r9 = r6
            r10 = r9
        L1e:
            r11 = 32
            if (r9 >= r11) goto L2e
            boolean r11 = r18.zze()
            if (r11 == 0) goto L2b
            r11 = 1
            int r11 = r11 << r9
            r10 = r10 | r11
        L2b:
            int r9 = r9 + 1
            goto L1e
        L2e:
            r9 = r6
        L2f:
            if (r9 >= r3) goto L3a
            int r11 = r0.zzf(r5)
            r4[r9] = r11
            int r9 = r9 + 1
            goto L2f
        L3a:
            r12 = r2
            goto L49
        L3c:
            if (r2 == 0) goto L4f
            int r3 = r2.zza
            boolean r7 = r2.zzb
            int r8 = r2.zzc
            int r10 = r2.zzd
            int[] r4 = r2.zze
            r12 = r3
        L49:
            r16 = r4
            r13 = r7
            r14 = r8
            r15 = r10
            goto L55
        L4f:
            r16 = r4
            r12 = r6
            r13 = r12
            r14 = r13
            r15 = r14
        L55:
            int r17 = r0.zzf(r5)
            r2 = r6
        L5a:
            if (r6 >= r1) goto L6f
            boolean r3 = r18.zze()
            if (r3 == 0) goto L64
            int r2 = r2 + 88
        L64:
            boolean r3 = r18.zze()
            if (r3 == 0) goto L6c
            int r2 = r2 + 8
        L6c:
            int r6 = r6 + 1
            goto L5a
        L6f:
            r0.zzb(r2)
            if (r1 <= 0) goto L79
            int r5 = r5 - r1
            int r5 = r5 + r5
            r0.zzb(r5)
        L79:
            com.google.android.gms.internal.ads.zzfb r0 = new com.google.android.gms.internal.ads.zzfb
            r11 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfm.zzl(com.google.android.gms.internal.ads.zzfn, boolean, int, com.google.android.gms.internal.ads.zzfb):com.google.android.gms.internal.ads.zzfb");
    }

    private static int zzm(int i, int i2, int i3, int i4) {
        int i5 = 2;
        if (i2 != 1 && i2 != 2) {
            i5 = 1;
        }
        return i - (i5 * (i3 + i4));
    }

    private static int zzn(int i, int i2, int i3, int i4) {
        return i - ((i2 == 1 ? 2 : 1) * (i3 + i4));
    }

    private static void zzo(zzfn zzfnVar) {
        int zzg = zzfnVar.zzg() + 1;
        zzfnVar.zzb(8);
        for (int i = 0; i < zzg; i++) {
            zzfnVar.zzg();
            zzfnVar.zzg();
            zzfnVar.zza();
        }
        zzfnVar.zzb(20);
    }

    public static int zza(byte[] bArr, int i) {
        int i2;
        synchronized (zzc) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 >= i - 2) {
                            i3 = i;
                            break;
                        }
                        int i5 = i3 + 1;
                        if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3 = i5;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = zzd;
                    int length = iArr.length;
                    if (length <= i4) {
                        zzd = Arrays.copyOf(iArr, length + length);
                    }
                    zzd[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = zzd[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i10 + 2;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }
}
