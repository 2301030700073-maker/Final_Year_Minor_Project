package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzagg {
    public static final zzage zza = new Object() { // from class: com.google.android.gms.internal.ads.zzage
    };

    /* JADX WARN: Removed duplicated region for block: B:6:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzay zza(byte[] r11, int r12, com.google.android.gms.internal.ads.zzage r13, com.google.android.gms.internal.ads.zzafi r14) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagg.zza(byte[], int, com.google.android.gms.internal.ads.zzage, com.google.android.gms.internal.ads.zzafi):com.google.android.gms.internal.ads.zzay");
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int zzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return zzd;
        }
        while (true) {
            int length = bArr.length;
            if (zzd >= length - 1) {
                return length;
            }
            int i3 = zzd + 1;
            if ((zzd - i) % 2 == 0 && bArr[i3] == 0) {
                return zzd;
            }
            zzd = zzd(bArr, i3);
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    private static int zze(zzdy zzdyVar, int i) {
        byte[] zzN = zzdyVar.zzN();
        int zzd = zzdyVar.zzd();
        int i2 = zzd;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= zzd + i) {
                return i;
            }
            if ((zzN[i2] & 255) == 255 && zzN[i3] == 0) {
                System.arraycopy(zzN, i2 + 2, zzN, i3, (i - (i2 - zzd)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    private static zzfxn zzf(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzfxn.zzo(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        zzfxk zzfxkVar = new zzfxk();
        int zzc = zzc(bArr, i2, i);
        while (i2 < zzc) {
            zzfxkVar.zzf(new String(bArr, i2, zzc - i2, zzi(i)));
            i2 = zzb(i) + zzc;
            zzc = zzc(bArr, i2, i);
        }
        zzfxn zzi = zzfxkVar.zzi();
        return zzi.isEmpty() ? zzfxn.zzo(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) : zzi;
    }

    private static String zzg(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : new String(bArr, i, i2 - i, charset);
    }

    private static String zzh(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static Charset zzi(int i) {
        return i != 1 ? i != 2 ? i != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8 : StandardCharsets.UTF_16BE : StandardCharsets.UTF_16;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
    
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzj(com.google.android.gms.internal.ads.zzdy r21, int r22, int r23, boolean r24) {
        /*
            r1 = r21
            r0 = r22
            int r2 = r21.zzd()
        L8:
            int r3 = r21.zzb()     // Catch: java.lang.Throwable -> La5
            r4 = 1
            r5 = r23
            if (r3 < r5) goto La1
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r21.zzg()     // Catch: java.lang.Throwable -> La5
            long r8 = r21.zzu()     // Catch: java.lang.Throwable -> La5
            int r10 = r21.zzq()     // Catch: java.lang.Throwable -> La5
            goto L2c
        L22:
            int r7 = r21.zzo()     // Catch: java.lang.Throwable -> La5
            int r8 = r21.zzo()     // Catch: java.lang.Throwable -> La5
            long r8 = (long) r8     // Catch: java.lang.Throwable -> La5
            r10 = 0
        L2c:
            r11 = 0
            if (r7 != 0) goto L38
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L38
            if (r10 != 0) goto L38
            goto La1
        L38:
            r7 = 4
            if (r0 != r7) goto L67
            if (r24 != 0) goto L67
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L47
        L45:
            r4 = 0
            goto La1
        L47:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            r17 = 16
            long r17 = r8 >> r17
            r19 = 24
            long r8 = r8 >> r19
            long r15 = r15 & r11
            long r11 = r17 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 14
            long r11 = r11 << r15
            long r11 = r11 | r13
            r13 = 21
            long r8 = r8 << r13
            long r8 = r8 | r11
        L67:
            if (r0 != r7) goto L77
            r3 = r10 & 64
            if (r3 == 0) goto L6e
            goto L6f
        L6e:
            r4 = 0
        L6f:
            r3 = r10 & 1
            r20 = r4
            r4 = r3
            r3 = r20
            goto L87
        L77:
            if (r0 != r3) goto L85
            r3 = r10 & 32
            if (r3 == 0) goto L7f
            r3 = 1
            goto L80
        L7f:
            r3 = 0
        L80:
            r7 = r10 & 128(0x80, float:1.8E-43)
            if (r7 == 0) goto L86
            goto L87
        L85:
            r3 = 0
        L86:
            r4 = 0
        L87:
            if (r4 == 0) goto L8b
            int r3 = r3 + 4
        L8b:
            long r3 = (long) r3     // Catch: java.lang.Throwable -> La5
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L91
            goto L45
        L91:
            int r3 = r21.zzb()     // Catch: java.lang.Throwable -> La5
            long r3 = (long) r3     // Catch: java.lang.Throwable -> La5
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto L9b
            goto L45
        L9b:
            int r3 = (int) r8     // Catch: java.lang.Throwable -> La5
            r1.zzM(r3)     // Catch: java.lang.Throwable -> La5
            goto L8
        La1:
            r1.zzL(r2)
            return r4
        La5:
            r0 = move-exception
            r1.zzL(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagg.zzj(com.google.android.gms.internal.ads.zzdy, int, int, boolean):boolean");
    }

    private static byte[] zzk(byte[] bArr, int i, int i2) {
        return i2 <= i ? zzei.zzf : Arrays.copyOfRange(bArr, i, i2);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private static com.google.android.gms.internal.ads.zzagh zzl(int r35, com.google.android.gms.internal.ads.zzdy r36, boolean r37, int r38, com.google.android.gms.internal.ads.zzage r39) {
        /*
            Method dump skipped, instructions count: 1513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagg.zzl(int, com.google.android.gms.internal.ads.zzdy, boolean, int, com.google.android.gms.internal.ads.zzage):com.google.android.gms.internal.ads.zzagh");
    }
}
