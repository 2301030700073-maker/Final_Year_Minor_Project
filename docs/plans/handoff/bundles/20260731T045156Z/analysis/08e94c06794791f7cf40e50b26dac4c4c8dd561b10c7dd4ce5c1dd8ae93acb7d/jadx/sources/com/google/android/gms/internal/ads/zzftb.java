package com.google.android.gms.internal.ads;

import java.io.File;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzftb {
    private final zzbai zza;
    private final File zzb;
    private final File zzc;
    private final File zzd;
    private byte[] zze;

    public zzftb(zzbai zzbaiVar, File file, File file2, File file3) {
        this.zza = zzbaiVar;
        this.zzb = file;
        this.zzc = file3;
        this.zzd = file2;
    }

    public final zzbai zza() {
        return this.zza;
    }

    public final File zzb() {
        return this.zzb;
    }

    public final File zzc() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zzd() {
        /*
            r10 = this;
            byte[] r0 = r10.zze
            r1 = 0
            if (r0 != 0) goto L5d
            java.io.File r0 = r10.zzd
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L56
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L56
            java.io.FileInputStream r0 = io.sentry.instrumentation.file.SentryFileInputStream.Factory.create(r2, r0)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L56
            com.google.android.gms.internal.ads.zzhvi r2 = com.google.android.gms.internal.ads.zzhvi.zzb     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            r2.<init>()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            r3 = 256(0x100, float:3.59E-43)
        L19:
            byte[] r4 = new byte[r3]     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            r5 = 0
            r6 = r5
        L1d:
            if (r6 >= r3) goto L2b
            int r7 = r3 - r6
            int r7 = r0.read(r4, r6, r7)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            r8 = -1
            if (r7 != r8) goto L29
            goto L2b
        L29:
            int r6 = r6 + r7
            goto L1d
        L2b:
            if (r6 != 0) goto L2f
            r4 = r1
            goto L33
        L2f:
            com.google.android.gms.internal.ads.zzhvi r4 = com.google.android.gms.internal.ads.zzhvi.zzr(r4, r5, r6)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
        L33:
            if (r4 != 0) goto L41
            com.google.android.gms.internal.ads.zzhvi r2 = com.google.android.gms.internal.ads.zzhvi.zzt(r2)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            byte[] r2 = r2.zzv()     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            com.google.android.gms.common.util.IOUtils.closeQuietly(r0)
            goto L5b
        L41:
            r2.add(r4)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            int r3 = r3 + r3
            r4 = 8192(0x2000, float:1.148E-41)
            int r3 = java.lang.Math.min(r3, r4)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L57
            goto L19
        L4c:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
            goto L52
        L51:
            r0 = move-exception
        L52:
            com.google.android.gms.common.util.IOUtils.closeQuietly(r1)
            throw r0
        L56:
            r0 = r1
        L57:
            com.google.android.gms.common.util.IOUtils.closeQuietly(r0)
            r2 = r1
        L5b:
            r10.zze = r2
        L5d:
            byte[] r0 = r10.zze
            if (r0 != 0) goto L62
            return r1
        L62:
            int r1 = r0.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzftb.zzd():byte[]");
    }

    public final boolean zze(long j) {
        return this.zza.zzc() - (System.currentTimeMillis() / 1000) < 3600;
    }
}
