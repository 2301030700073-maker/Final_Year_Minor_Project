package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzor implements zzpa {
    public static final zzgmv zza = zzop.zza;
    private static final Random zzb = new Random();
    private final zzbe zzc;
    private final zzbd zzd;
    private final HashMap zze;
    private zzoz zzf;
    private zzbf zzg;
    private String zzh;
    private long zzi;

    public zzor() {
        throw null;
    }

    public zzor(zzgmv zzgmvVar) {
        this.zzc = new zzbe();
        this.zzd = new zzbd();
        this.zze = new HashMap();
        this.zzg = zzbf.zza;
        this.zzi = -1L;
    }

    @RequiresNonNull({ServiceSpecificExtraArgs.CastExtraArgs.LISTENER})
    private final void zzl(zzmj zzmjVar) {
        if (zzmjVar.zzb.zzg()) {
            String str = this.zzh;
            if (str != null) {
                zzoq zzoqVar = (zzoq) this.zze.get(str);
                zzoqVar.getClass();
                zzm(zzoqVar);
                return;
            }
            return;
        }
        zzoq zzoqVar2 = (zzoq) this.zze.get(this.zzh);
        int i = zzmjVar.zzc;
        zzuu zzuuVar = zzmjVar.zzd;
        this.zzh = zzo(i, zzuuVar).zze();
        zzc(zzmjVar);
        if (zzuuVar == null || !zzuuVar.zzb()) {
            return;
        }
        if (zzoqVar2 != null) {
            if (zzoqVar2.zzg() == zzuuVar.zzd && zzoqVar2.zzh() != null) {
                zzuu zzh = zzoqVar2.zzh();
                if (zzh.zzb == zzuuVar.zzb) {
                    zzuu zzh2 = zzoqVar2.zzh();
                    if (zzh2.zzc == zzuuVar.zzc) {
                        return;
                    }
                }
            }
        }
        zzo(i, new zzuu(zzuuVar.zza, zzuuVar.zzd));
    }

    private final void zzm(zzoq zzoqVar) {
        if (zzoqVar.zzg() != -1) {
            this.zzi = zzoqVar.zzg();
        }
        this.zzh = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final long zzi() {
        zzoq zzoqVar = (zzoq) this.zze.get(this.zzh);
        return (zzoqVar == null || zzoqVar.zzg() == -1) ? this.zzi + 1 : zzoqVar.zzg();
    }

    private final zzoq zzo(int i, zzuu zzuuVar) {
        HashMap hashMap = this.zze;
        long j = Long.MAX_VALUE;
        zzoq zzoqVar = null;
        for (zzoq zzoqVar2 : hashMap.values()) {
            zzoqVar2.zzc(i, zzuuVar);
            if (zzoqVar2.zzb(i, zzuuVar)) {
                long zzg = zzoqVar2.zzg();
                if (zzg == -1 || zzg < j) {
                    zzoqVar = zzoqVar2;
                    j = zzg;
                } else if (zzg == j) {
                    String str = zzep.zza;
                    if (zzoqVar.zzh() != null && zzoqVar2.zzh() != null) {
                        zzoqVar = zzoqVar2;
                    }
                }
            }
        }
        if (zzoqVar != null) {
            return zzoqVar;
        }
        String zzp = zzp();
        zzoq zzoqVar3 = new zzoq(this, zzp, i, zzuuVar);
        hashMap.put(zzp, zzoqVar3);
        return zzoqVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzp() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final void zza(zzoz zzozVar) {
        this.zzf = zzozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized String zzb(zzbf zzbfVar, zzuu zzuuVar) {
        return zzo(zzbfVar.zzo(zzuuVar.zza, this.zzd).zzc, zzuuVar).zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r2.zzf() == r10.zzc) goto L18;
     */
    @Override // com.google.android.gms.internal.ads.zzpa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(com.google.android.gms.internal.ads.zzmj r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            com.google.android.gms.internal.ads.zzoz r0 = r9.zzf     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto Lad
            com.google.android.gms.internal.ads.zzbf r0 = r10.zzb     // Catch: java.lang.Throwable -> Laf
            boolean r1 = r0.zzg()     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto Lf
            goto Lab
        Lf:
            com.google.android.gms.internal.ads.zzuu r1 = r10.zzd     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto L3b
            long r2 = r9.zzi()     // Catch: java.lang.Throwable -> Laf
            long r4 = r1.zzd     // Catch: java.lang.Throwable -> Laf
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto Lab
            java.util.HashMap r2 = r9.zze     // Catch: java.lang.Throwable -> Laf
            java.lang.String r3 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzoq r2 = (com.google.android.gms.internal.ads.zzoq) r2     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto L3b
            long r3 = r2.zzg()     // Catch: java.lang.Throwable -> Laf
            r5 = -1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 != 0) goto L3b
            int r2 = r2.zzf()     // Catch: java.lang.Throwable -> Laf
            int r3 = r10.zzc     // Catch: java.lang.Throwable -> Laf
            if (r2 != r3) goto Lab
        L3b:
            int r2 = r10.zzc     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzoq r3 = r9.zzo(r2, r1)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r4 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            if (r4 != 0) goto L4b
            java.lang.String r4 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            r9.zzh = r4     // Catch: java.lang.Throwable -> Laf
        L4b:
            r4 = 1
            if (r1 == 0) goto L82
            boolean r5 = r1.zzb()     // Catch: java.lang.Throwable -> Laf
            if (r5 == 0) goto L82
            java.lang.Object r5 = r1.zza     // Catch: java.lang.Throwable -> Laf
            long r6 = r1.zzd     // Catch: java.lang.Throwable -> Laf
            int r1 = r1.zzb     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzuu r8 = new com.google.android.gms.internal.ads.zzuu     // Catch: java.lang.Throwable -> Laf
            r8.<init>(r5, r6, r1)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzoq r2 = r9.zzo(r2, r8)     // Catch: java.lang.Throwable -> Laf
            boolean r6 = r2.zzi()     // Catch: java.lang.Throwable -> Laf
            if (r6 != 0) goto L82
            r2.zzj(r4)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzbd r2 = r9.zzd     // Catch: java.lang.Throwable -> Laf
            r0.zzo(r5, r2)     // Catch: java.lang.Throwable -> Laf
            r2.zzc(r1)     // Catch: java.lang.Throwable -> Laf
            r0 = 0
            long r5 = com.google.android.gms.internal.ads.zzep.zzp(r0)     // Catch: java.lang.Throwable -> Laf
            long r7 = com.google.android.gms.internal.ads.zzep.zzp(r0)     // Catch: java.lang.Throwable -> Laf
            long r5 = r5 + r7
            java.lang.Math.max(r0, r5)     // Catch: java.lang.Throwable -> Laf
        L82:
            boolean r0 = r3.zzi()     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L8b
            r3.zzj(r4)     // Catch: java.lang.Throwable -> Laf
        L8b:
            java.lang.String r0 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r1 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto Lab
            boolean r0 = r3.zzk()     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto Lab
            r3.zzl(r4)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzoz r0 = r9.zzf     // Catch: java.lang.Throwable -> Laf
            java.lang.String r1 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            r0.zzc(r10, r1)     // Catch: java.lang.Throwable -> Laf
            monitor-exit(r9)
            return
        Lab:
            monitor-exit(r9)
            return
        Lad:
            r10 = 0
            throw r10     // Catch: java.lang.Throwable -> Laf
        Laf:
            r10 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laf
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzor.zzc(com.google.android.gms.internal.ads.zzmj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzd(zzmj zzmjVar) {
        if (this.zzf == null) {
            throw null;
        }
        zzbf zzbfVar = this.zzg;
        this.zzg = zzmjVar.zzb;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoq zzoqVar = (zzoq) it.next();
            if (!zzoqVar.zza(zzbfVar, this.zzg) || zzoqVar.zzd(zzmjVar)) {
                it.remove();
                if (zzoqVar.zzi()) {
                    if (zzoqVar.zze().equals(this.zzh)) {
                        zzm(zzoqVar);
                    }
                    this.zzf.zzd(zzmjVar, zzoqVar.zze(), false);
                }
            }
        }
        zzl(zzmjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zze(zzmj zzmjVar, int i) {
        if (this.zzf == null) {
            throw null;
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoq zzoqVar = (zzoq) it.next();
            if (zzoqVar.zzd(zzmjVar)) {
                it.remove();
                if (zzoqVar.zzi()) {
                    boolean equals = zzoqVar.zze().equals(this.zzh);
                    boolean z = false;
                    if (i == 0 && equals && zzoqVar.zzk()) {
                        z = true;
                    }
                    if (equals) {
                        zzm(zzoqVar);
                    }
                    this.zzf.zzd(zzmjVar, zzoqVar.zze(), z);
                }
            }
        }
        zzl(zzmjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized String zzf() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzpa
    public final synchronized void zzg(zzmj zzmjVar) {
        zzoz zzozVar;
        String str = this.zzh;
        if (str != null) {
            zzoq zzoqVar = (zzoq) this.zze.get(str);
            if (zzoqVar == null) {
                throw null;
            }
            zzoq zzoqVar2 = zzoqVar;
            zzm(zzoqVar);
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzoq zzoqVar3 = (zzoq) it.next();
            it.remove();
            if (zzoqVar3.zzi() && (zzozVar = this.zzf) != null) {
                zzozVar.zzd(zzmjVar, zzoqVar3.zze(), false);
            }
        }
    }

    final /* synthetic */ zzbe zzj() {
        return this.zzc;
    }

    final /* synthetic */ zzbd zzk() {
        return this.zzd;
    }
}
