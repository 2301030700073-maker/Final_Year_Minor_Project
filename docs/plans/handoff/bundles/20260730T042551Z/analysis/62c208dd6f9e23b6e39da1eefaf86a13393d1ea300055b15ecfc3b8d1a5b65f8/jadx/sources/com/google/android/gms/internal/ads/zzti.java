package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzti implements zzuz {
    private final zzacs zza;
    private zzacn zzb;
    private zzaco zzc;

    public zzti(zzacs zzacsVar) {
        this.zza = zzacsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final int zza(zzadj zzadjVar) {
        zzacn zzacnVar = this.zzb;
        zzacnVar.getClass();
        zzaco zzacoVar = this.zzc;
        zzacoVar.getClass();
        return zzacnVar.zzb(zzacoVar, zzadjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzb() {
        zzaco zzacoVar = this.zzc;
        if (zzacoVar != null) {
            return zzacoVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzc() {
        zzacn zzacnVar = this.zzb;
        if (zzacnVar != null && (zzacnVar instanceof zzahs)) {
            ((zzahs) zzacnVar).zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
    
        if (r6.zzf() != r11) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006c, code lost:
    
        if (r6.zzf() != r11) goto L34;
     */
    @Override // com.google.android.gms.internal.ads.zzuz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzl r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzacq r15) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzacc r6 = new com.google.android.gms.internal.ads.zzacc
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.zzc = r6
            com.google.android.gms.internal.ads.zzacn r8 = r7.zzb
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.gms.internal.ads.zzacs r8 = r7.zza
            com.google.android.gms.internal.ads.zzacn[] r8 = r8.zza(r9, r10)
            int r10 = r8.length
            com.google.android.gms.internal.ads.zzfxk r13 = com.google.android.gms.internal.ads.zzfxn.zzi(r10)
            r14 = 0
            r0 = 1
            if (r10 != r0) goto L24
            r8 = r8[r14]
            r7.zzb = r8
            goto L7f
        L24:
            r1 = 0
        L25:
            if (r1 >= r10) goto L7b
            r2 = r8[r1]
            boolean r3 = r2.zzi(r6)     // Catch: java.lang.Throwable -> L4c java.io.EOFException -> L61
            if (r3 == 0) goto L38
            r7.zzb = r2     // Catch: java.lang.Throwable -> L4c java.io.EOFException -> L61
            com.google.android.gms.internal.ads.zzcw.zzf(r0)
            r6.zzj()
            goto L7b
        L38:
            java.util.List r2 = r2.zzd()     // Catch: java.lang.Throwable -> L4c java.io.EOFException -> L61
            r13.zzh(r2)     // Catch: java.lang.Throwable -> L4c java.io.EOFException -> L61
            com.google.android.gms.internal.ads.zzacn r2 = r7.zzb
            if (r2 != 0) goto L71
            long r2 = r6.zzf()
            int r4 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r4 != 0) goto L6f
            goto L71
        L4c:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzacn r9 = r7.zzb
            if (r9 != 0) goto L59
            long r9 = r6.zzf()
            int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r13 != 0) goto L5a
        L59:
            r14 = 1
        L5a:
            com.google.android.gms.internal.ads.zzcw.zzf(r14)
            r6.zzj()
            throw r8
        L61:
            com.google.android.gms.internal.ads.zzacn r2 = r7.zzb
            if (r2 != 0) goto L71
            long r2 = r6.zzf()
            int r4 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r4 != 0) goto L6f
            goto L71
        L6f:
            r2 = 0
            goto L72
        L71:
            r2 = 1
        L72:
            com.google.android.gms.internal.ads.zzcw.zzf(r2)
            r6.zzj()
            int r1 = r1 + 1
            goto L25
        L7b:
            com.google.android.gms.internal.ads.zzacn r10 = r7.zzb
            if (r10 == 0) goto L85
        L7f:
            com.google.android.gms.internal.ads.zzacn r8 = r7.zzb
            r8.zze(r15)
            return
        L85:
            com.google.android.gms.internal.ads.zzwk r10 = new com.google.android.gms.internal.ads.zzwk
            com.google.android.gms.internal.ads.zzfxn r8 = com.google.android.gms.internal.ads.zzfxn.zzm(r8)
            com.google.android.gms.internal.ads.zzth r11 = new com.google.android.gms.internal.ads.zzth
            r11.<init>()
            java.util.List r8 = com.google.android.gms.internal.ads.zzfyd.zzb(r8, r11)
            java.util.Iterator r8 = r8.iterator()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = ", "
            com.google.android.gms.internal.ads.zzfuf.zzc(r11, r8, r12)
            java.lang.String r8 = r11.toString()
            java.lang.String r11 = "None of the available extractors ("
            java.lang.String r12 = ") could read the stream."
            java.lang.String r8 = defpackage.Cif.m6908case(r11, r8, r12)
            com.google.android.gms.internal.ads.zzfxn r11 = r13.zzi()
            r10.<init>(r8, r9, r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzti.zzd(com.google.android.gms.internal.ads.zzl, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzacq):void");
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzf(long j, long j2) {
        zzacn zzacnVar = this.zzb;
        zzacnVar.getClass();
        zzacnVar.zzf(j, j2);
    }
}
