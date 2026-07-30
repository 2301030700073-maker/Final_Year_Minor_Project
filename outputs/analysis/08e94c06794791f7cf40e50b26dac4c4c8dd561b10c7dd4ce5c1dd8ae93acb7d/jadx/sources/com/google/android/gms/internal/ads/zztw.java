package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zztw implements zzvn {
    private final zzadg zza;
    private zzada zzb;
    private zzadb zzc;

    public zztw(zzadg zzadgVar) {
        this.zza = zzadgVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
    
        if (r6.zzn() != r11) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        if (r6.zzn() != r11) goto L38;
     */
    @Override // com.google.android.gms.internal.ads.zzvn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzj r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzadd r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzacr r6 = new com.google.android.gms.internal.ads.zzacr
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.zzc = r6
            com.google.android.gms.internal.ads.zzada r8 = r7.zzb
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.gms.internal.ads.zzadg r8 = r7.zza
            com.google.android.gms.internal.ads.zzada[] r8 = r8.zzb(r9, r10)
            int r10 = r8.length
            com.google.android.gms.internal.ads.zzgpb r13 = com.google.android.gms.internal.ads.zzgpe.zzv(r10)
            r14 = 0
            r0 = 1
            if (r10 != r0) goto L25
            r8 = r8[r14]
            r7.zzb = r8
            goto L8a
        L25:
            r1 = r14
        L26:
            if (r1 >= r10) goto L86
            r2 = r8[r1]
            boolean r3 = r2.zza(r6)     // Catch: java.lang.Throwable -> L58 java.io.EOFException -> L6d
            if (r3 == 0) goto L44
            r7.zzb = r2     // Catch: java.lang.Throwable -> L58 java.io.EOFException -> L6d
            if (r2 != 0) goto L3c
            long r1 = r6.zzn()
            int r10 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r10 != 0) goto L3d
        L3c:
            r14 = r0
        L3d:
            com.google.android.gms.internal.ads.zzgmd.zzh(r14)
            r6.zzl()
            goto L86
        L44:
            java.util.List r2 = r2.zzb()     // Catch: java.lang.Throwable -> L58 java.io.EOFException -> L6d
            r13.zzh(r2)     // Catch: java.lang.Throwable -> L58 java.io.EOFException -> L6d
            com.google.android.gms.internal.ads.zzada r2 = r7.zzb
            if (r2 != 0) goto L7c
            long r2 = r6.zzn()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L7a
            goto L7c
        L58:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzada r9 = r7.zzb
            if (r9 != 0) goto L65
            long r9 = r6.zzn()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L66
        L65:
            r14 = r0
        L66:
            com.google.android.gms.internal.ads.zzgmd.zzh(r14)
            r6.zzl()
            throw r8
        L6d:
            com.google.android.gms.internal.ads.zzada r2 = r7.zzb
            if (r2 != 0) goto L7c
            long r2 = r6.zzn()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L7a
            goto L7c
        L7a:
            r2 = r14
            goto L7d
        L7c:
            r2 = r0
        L7d:
            com.google.android.gms.internal.ads.zzgmd.zzh(r2)
            r6.zzl()
            int r1 = r1 + 1
            goto L26
        L86:
            com.google.android.gms.internal.ads.zzada r10 = r7.zzb
            if (r10 == 0) goto L90
        L8a:
            com.google.android.gms.internal.ads.zzada r8 = r7.zzb
            r8.zzc(r15)
            return
        L90:
            com.google.android.gms.internal.ads.zzww r10 = new com.google.android.gms.internal.ads.zzww
            java.lang.String r11 = ", "
            r12 = r11
            java.lang.String r12 = (java.lang.String) r12
            com.google.android.gms.internal.ads.zzgpe r8 = com.google.android.gms.internal.ads.zzgpe.zzr(r8)
            com.google.android.gms.internal.ads.zztv r12 = com.google.android.gms.internal.ads.zztv.zza
            java.util.List r8 = com.google.android.gms.internal.ads.zzgqe.zzc(r8, r12)
            java.lang.String r8 = com.google.android.gms.internal.ads.zzglx.zzd(r8, r11)
            int r11 = r8.length()
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            int r11 = r11 + 58
            r12.<init>(r11)
            java.lang.String r11 = "None of the available extractors ("
            r12.append(r11)
            r12.append(r8)
            java.lang.String r8 = ") could read the stream."
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            r11 = r9
            android.net.Uri r11 = (android.net.Uri) r11
            com.google.android.gms.internal.ads.zzgpe r11 = r13.zzi()
            r10.<init>(r8, r9, r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztw.zza(com.google.android.gms.internal.ads.zzj, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzadd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzb() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzc() {
        zzada zzadaVar = this.zzb;
        if (zzadaVar != null && (zzadaVar instanceof zzahs)) {
            ((zzahs) zzadaVar).zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final long zzd() {
        zzadb zzadbVar = this.zzc;
        if (zzadbVar != null) {
            return zzadbVar.zzn();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zze(long j, long j2) {
        zzada zzadaVar = this.zzb;
        zzadaVar.getClass();
        zzadaVar.zze(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final int zzf(zzaea zzaeaVar) throws IOException {
        zzadb zzadbVar;
        zzada zzadaVar = this.zzb;
        if (zzadaVar == null || (zzadbVar = this.zzc) == null) {
            throw null;
        }
        return zzadaVar.zzd(zzadbVar, zzaeaVar);
    }
}
