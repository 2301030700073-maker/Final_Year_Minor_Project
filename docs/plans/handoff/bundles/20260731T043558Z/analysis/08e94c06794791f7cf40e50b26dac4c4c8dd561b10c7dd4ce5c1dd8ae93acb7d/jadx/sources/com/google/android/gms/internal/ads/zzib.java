package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzib extends zzau {
    public final int zzc;
    public final String zzd;
    public final int zze;
    public final zzv zzf;
    public final int zzg;
    public final zzuu zzh;
    final boolean zzi;

    private zzib(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, null, false);
    }

    public static zzib zza(IOException iOException, int i) {
        return new zzib(0, iOException, i);
    }

    public static zzib zzb(Throwable th, String str, int i, zzv zzvVar, int i2, zzuu zzuuVar, boolean z, int i3) {
        return new zzib(1, th, null, i3, str, i, zzvVar, zzvVar == null ? 4 : i2, zzuuVar, z);
    }

    public static zzib zzc(RuntimeException runtimeException, int i) {
        return new zzib(2, runtimeException, i);
    }

    final zzib zzd(zzuu zzuuVar) {
        String message = getMessage();
        String str = zzep.zza;
        return new zzib(message, getCause(), this.zza, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, zzuuVar, this.zzb, this.zzi);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzib(int r14, java.lang.Throwable r15, java.lang.String r16, int r17, java.lang.String r18, int r19, com.google.android.gms.internal.ads.zzv r20, int r21, com.google.android.gms.internal.ads.zzuu r22, boolean r23) {
        /*
            r13 = this;
            r4 = r14
            r8 = r21
            if (r4 == 0) goto L85
            r0 = 1
            if (r4 == r0) goto L10
            java.lang.String r0 = "Unexpected runtime error"
            r5 = r18
            r6 = r19
            goto L8b
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r20)
            java.lang.String r2 = com.google.android.gms.internal.ads.zzep.zza
            if (r8 == 0) goto L35
            if (r8 == r0) goto L32
            r0 = 2
            if (r8 == r0) goto L2f
            r0 = 3
            if (r8 == r0) goto L2c
            r0 = 4
            if (r8 != r0) goto L26
            java.lang.String r0 = "YES"
            goto L37
        L26:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L2c:
            java.lang.String r0 = "NO_EXCEEDS_CAPABILITIES"
            goto L37
        L2f:
            java.lang.String r0 = "NO_UNSUPPORTED_DRM"
            goto L37
        L32:
            java.lang.String r0 = "NO_UNSUPPORTED_TYPE"
            goto L37
        L35:
            java.lang.String r0 = "NO"
        L37:
            java.lang.String r2 = java.lang.String.valueOf(r18)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r19)
            int r2 = r2 + 14
            int r3 = r3.length()
            java.lang.String r5 = java.lang.String.valueOf(r1)
            int r2 = r2 + r3
            int r2 = r2 + 9
            int r3 = r5.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = r2 + 19
            int r5 = r0.length()
            int r2 = r2 + r5
            r3.<init>(r2)
            r5 = r18
            r3.append(r5)
            java.lang.String r2 = " error, index="
            r3.append(r2)
            r6 = r19
            r3.append(r6)
            java.lang.String r2 = ", format="
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = ", format_supported="
            r3.append(r1)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            goto L8b
        L85:
            r5 = r18
            r6 = r19
            java.lang.String r0 = "Source error"
        L8b:
            r1 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L98
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
        L98:
            r1 = r0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r0 = r13
            r2 = r15
            r3 = r17
            r4 = r14
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r12 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzib.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, com.google.android.gms.internal.ads.zzv, int, com.google.android.gms.internal.ads.zzuu, boolean):void");
    }

    private zzib(String str, Throwable th, int i, int i2, String str2, int i3, zzv zzvVar, int i4, zzuu zzuuVar, long j, boolean z) {
        super(str, th, i, Bundle.EMPTY, j);
        int i5;
        boolean z2;
        if (z) {
            i5 = i2;
            if (i5 == 1) {
                i5 = 1;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            i5 = i2;
            z2 = true;
        }
        zzgmd.zza(z2);
        zzgmd.zza(th != null);
        this.zzc = i5;
        this.zzd = str2;
        this.zze = i3;
        this.zzf = zzvVar;
        this.zzg = i4;
        this.zzh = zzuuVar;
        this.zzi = z;
    }
}
