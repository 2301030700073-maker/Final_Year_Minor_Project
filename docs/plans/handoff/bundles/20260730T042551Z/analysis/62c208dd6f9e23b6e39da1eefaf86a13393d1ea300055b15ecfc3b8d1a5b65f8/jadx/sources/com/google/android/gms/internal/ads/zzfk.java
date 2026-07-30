package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfk {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzc = new Object();
    private static int[] zzd = new int[10];

    public static int zza(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        zzcw.zzf(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            zzh(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            zzh(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            zzh(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b = bArr[i5];
            if ((b & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                    zzh(zArr);
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

    public static int zzb(byte[] bArr, int i) {
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
                i7 = i11 + 1;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfe zzc(byte[] r27, int r28, int r29, com.google.android.gms.internal.ads.zzfh r30) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfk.zzc(byte[], int, int, com.google.android.gms.internal.ads.zzfh):com.google.android.gms.internal.ads.zzfe");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfh zzd(byte[] r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 2091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfk.zzd(byte[], int, int):com.google.android.gms.internal.ads.zzfh");
    }

    public static zzfi zze(byte[] bArr, int i, int i2) {
        zzfl zzflVar = new zzfl(bArr, 4, i2);
        int zzc2 = zzflVar.zzc();
        int zzc3 = zzflVar.zzc();
        zzflVar.zze();
        return new zzfi(zzc2, zzc3, zzflVar.zzh());
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0218 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzfj zzf(byte[] r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfk.zzf(byte[], int, int):com.google.android.gms.internal.ads.zzfj");
    }

    public static String zzg(List list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArr = (byte[]) list.get(i);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                zzfxk zzfxkVar = new zzfxk();
                int i2 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i2 >= length2) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, length2, zArr);
                    if (zza2 != length2) {
                        zzfxkVar.zzf(Integer.valueOf(zza2));
                    }
                    i2 = zza2 + 3;
                }
                zzfxn zzi = zzfxkVar.zzi();
                for (int i3 = 0; i3 < zzi.size(); i3++) {
                    if (((Integer) zzi.get(i3)).intValue() + 3 < length) {
                        zzfl zzflVar = new zzfl(bArr, ((Integer) zzi.get(i3)).intValue() + 3, length);
                        zzey zzl = zzl(zzflVar);
                        if (zzl.zza == 33 && zzl.zzb == 0) {
                            zzflVar.zzf(4);
                            int zza3 = zzflVar.zza(3);
                            zzflVar.zze();
                            zzez zzm = zzm(zzflVar, true, zza3, null);
                            return zzcy.zzd(zzm.zza, zzm.zzb, zzm.zzc, zzm.zzd, zzm.zze, zzm.zzf);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void zzh(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean zzi(byte b) {
        if (((b & 96) >> 5) != 0) {
            return true;
        }
        int i = b & 31;
        return (i == 1 || i == 9 || i == 14) ? false : true;
    }

    private static int zzj(int i, int i2, int i3, int i4) {
        return i - ((i3 + i4) * (i2 == 1 ? 2 : 1));
    }

    private static int zzk(int i, int i2, int i3, int i4) {
        int i5 = 2;
        if (i2 != 1 && i2 != 2) {
            i5 = 1;
        }
        return i - ((i3 + i4) * i5);
    }

    private static zzey zzl(zzfl zzflVar) {
        zzflVar.zze();
        return new zzey(zzflVar.zza(6), zzflVar.zza(6), zzflVar.zza(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzez zzm(com.google.android.gms.internal.ads.zzfl r18, boolean r19, int r20, com.google.android.gms.internal.ads.zzez r21) {
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
            int r2 = r0.zza(r2)
            boolean r7 = r18.zzh()
            r8 = 5
            int r8 = r0.zza(r8)
            r9 = 0
            r10 = 0
        L1e:
            r11 = 32
            if (r9 >= r11) goto L2e
            boolean r11 = r18.zzh()
            if (r11 == 0) goto L2b
            r11 = 1
            int r11 = r11 << r9
            r10 = r10 | r11
        L2b:
            int r9 = r9 + 1
            goto L1e
        L2e:
            r9 = 0
        L2f:
            if (r9 >= r3) goto L3a
            int r11 = r0.zza(r5)
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
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
        L55:
            int r17 = r0.zza(r5)
            r2 = 0
        L5a:
            if (r6 >= r1) goto L6f
            boolean r3 = r18.zzh()
            if (r3 == 0) goto L64
            int r2 = r2 + 88
        L64:
            boolean r3 = r18.zzh()
            if (r3 == 0) goto L6c
            int r2 = r2 + 8
        L6c:
            int r6 = r6 + 1
            goto L5a
        L6f:
            r0.zzf(r2)
            if (r1 <= 0) goto L79
            int r5 = r5 - r1
            int r5 = r5 + r5
            r0.zzf(r5)
        L79:
            com.google.android.gms.internal.ads.zzez r0 = new com.google.android.gms.internal.ads.zzez
            r11 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfk.zzm(com.google.android.gms.internal.ads.zzfl, boolean, int, com.google.android.gms.internal.ads.zzez):com.google.android.gms.internal.ads.zzez");
    }

    private static void zzn(zzfl zzflVar) {
        int zzc2 = zzflVar.zzc() + 1;
        zzflVar.zzf(8);
        for (int i = 0; i < zzc2; i++) {
            zzflVar.zzc();
            zzflVar.zzc();
            zzflVar.zze();
        }
        zzflVar.zzf(20);
    }
}
