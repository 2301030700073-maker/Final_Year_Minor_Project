package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzaty {
    static boolean zza = false;
    public static final /* synthetic */ int zzc = 0;
    private static MessageDigest zzd;
    private static final Object zze = new Object();
    private static final Object zzf = new Object();
    static final CountDownLatch zzb = new CountDownLatch(1);

    public static zzatm zza(byte[] bArr, String str) {
        Vector zzc2 = zzc(bArr, 255);
        if (zzc2 == null || zzc2.isEmpty()) {
            return null;
        }
        zzatm zza2 = zzatn.zza();
        int size = zzc2.size();
        for (int i = 0; i < size; i++) {
            zza2.zza(zzgwj.zzv(zzh((byte[]) zzc2.get(i), str, false), 0, 256));
        }
        byte[] zzf2 = zzf(bArr);
        zzgwj zzgwjVar = zzgwj.zzb;
        zza2.zzb(zzgwj.zzv(zzf2, 0, zzf2.length));
        return zza2;
    }

    public static String zzb(byte[] bArr, String str) {
        zzatm zza2 = zza(bArr, str);
        return zzatr.zza(zza2 == null ? zzh(zzg(4096).zzaV(), str, true) : ((zzatn) zza2.zzbr()).zzaV(), true);
    }

    public static Vector zzc(byte[] bArr, int i) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i2 = length + 254;
        Vector vector = new Vector();
        for (int i3 = 0; i3 < i2 / 255; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i4 > 255) {
                    length2 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static void zze() {
        synchronized (zzf) {
            if (!zza) {
                zza = true;
                new Thread(new zzatw(null)).start();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        r1.reset();
        r1.update(r6);
        r6 = com.google.android.gms.internal.ads.zzaty.zzd.digest();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] zzf(byte[] r6) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzaty.zze
            monitor-enter(r0)
            zze()     // Catch: java.lang.Throwable -> L34
            r1 = 0
            java.util.concurrent.CountDownLatch r2 = com.google.android.gms.internal.ads.zzaty.zzb     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            r4 = 2
            boolean r2 = r2.await(r4, r3)     // Catch: java.lang.InterruptedException -> L1b java.lang.Throwable -> L34
            if (r2 != 0) goto L14
            goto L1c
        L14:
            java.security.MessageDigest r2 = com.google.android.gms.internal.ads.zzaty.zzd     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto L19
            goto L1c
        L19:
            r1 = r2
            goto L1c
        L1b:
        L1c:
            if (r1 == 0) goto L2c
            r1.reset()     // Catch: java.lang.Throwable -> L34
            r1.update(r6)     // Catch: java.lang.Throwable -> L34
            java.security.MessageDigest r6 = com.google.android.gms.internal.ads.zzaty.zzd     // Catch: java.lang.Throwable -> L34
            byte[] r6 = r6.digest()     // Catch: java.lang.Throwable -> L34
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            return r6
        L2c:
            java.security.NoSuchAlgorithmException r6 = new java.security.NoSuchAlgorithmException     // Catch: java.lang.Throwable -> L34
            java.lang.String r1 = "Cannot compute hash"
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L34
            throw r6     // Catch: java.lang.Throwable -> L34
        L34:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L34
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaty.zzf(byte[]):byte[]");
    }

    public static zzasy zzg(int i) {
        zzasc zza2 = zzasy.zza();
        zza2.zzD(4096L);
        return (zzasy) zza2.zzbr();
    }

    private static byte[] zzh(byte[] bArr, String str, boolean z) {
        byte[] array;
        int length = bArr.length;
        int i = true != z ? 255 : 239;
        if (length > i) {
            bArr = zzg(4096).zzaV();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i2).put(b).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i2).put(b).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(zzf(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzatz[] zzatzVarArr = new zzaun().zzcG;
        int length3 = zzatzVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            zzatzVarArr[i3].zza(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzatp(str.getBytes("UTF-8")).zza(bArr3);
        }
        return bArr3;
    }
}
