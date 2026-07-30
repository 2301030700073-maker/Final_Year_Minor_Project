package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzoa implements zzoe {
    public static final zzfvf zza = new zzfvf() { // from class: com.google.android.gms.internal.ads.zzny
        @Override // com.google.android.gms.internal.ads.zzfvf
        public final Object zza() {
            String zzn;
            zzn = zzoa.zzn();
            return zzn;
        }
    };
    private static final Random zzb = new Random();
    private final zzbp zzc;
    private final zzbo zzd;
    private final HashMap zze;
    private zzod zzf;
    private zzbq zzg;
    private String zzh;
    private long zzi;

    public zzoa() {
        throw null;
    }

    public zzoa(zzfvf zzfvfVar) {
        this.zzc = new zzbp();
        this.zzd = new zzbo();
        this.zze = new HashMap();
        this.zzg = zzbq.zza;
        this.zzi = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzl() {
        zznz zznzVar = (zznz) this.zze.get(this.zzh);
        return (zznzVar == null || zznzVar.zzd == -1) ? this.zzi + 1 : zznzVar.zzd;
    }

    private final zznz zzm(int i, zzug zzugVar) {
        long j = Long.MAX_VALUE;
        zznz zznzVar = null;
        for (zznz zznzVar2 : this.zze.values()) {
            zznzVar2.zzg(i, zzugVar);
            if (zznzVar2.zzj(i, zzugVar)) {
                long j2 = zznzVar2.zzd;
                if (j2 == -1 || j2 < j) {
                    zznzVar = zznzVar2;
                    j = j2;
                } else if (j2 == j) {
                    int i2 = zzei.zza;
                    if (zznzVar.zze != null && zznzVar2.zze != null) {
                        zznzVar = zznzVar2;
                    }
                }
            }
        }
        if (zznzVar != null) {
            return zznzVar;
        }
        String zzn = zzn();
        zznz zznzVar3 = new zznz(this, zzn, i, zzugVar);
        this.zze.put(zzn, zznzVar3);
        return zznzVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zznz zznzVar) {
        if (zznzVar.zzd != -1) {
            this.zzi = zznzVar.zzd;
        }
        this.zzh = null;
    }

    private final void zzp(zzlu zzluVar) {
        if (zzluVar.zzb.zzo()) {
            String str = this.zzh;
            if (str != null) {
                zznz zznzVar = (zznz) this.zze.get(str);
                zznzVar.getClass();
                zzo(zznzVar);
                return;
            }
            return;
        }
        zznz zznzVar2 = (zznz) this.zze.get(this.zzh);
        zznz zzm = zzm(zzluVar.zzc, zzluVar.zzd);
        this.zzh = zzm.zzb;
        zzi(zzluVar);
        zzug zzugVar = zzluVar.zzd;
        if (zzugVar == null || !zzugVar.zzb()) {
            return;
        }
        if (zznzVar2 != null) {
            if (zznzVar2.zzd == zzugVar.zzd && zznzVar2.zze != null && zznzVar2.zze.zzb == zzluVar.zzd.zzb && zznzVar2.zze.zzc == zzluVar.zzd.zzc) {
                return;
            }
        }
        zzug zzugVar2 = zzluVar.zzd;
        String unused = zzm(zzluVar.zzc, new zzug(zzugVar2.zza, zzugVar2.zzd)).zzb;
        String unused2 = zzm.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final synchronized String zze() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final synchronized String zzf(zzbq zzbqVar, zzug zzugVar) {
        return zzm(zzbqVar.zzn(zzugVar.zza, this.zzd).zzc, zzugVar).zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final synchronized void zzg(zzlu zzluVar) {
        zzod zzodVar;
        String str = this.zzh;
        if (str != null) {
            zznz zznzVar = (zznz) this.zze.get(str);
            zznzVar.getClass();
            zzo(zznzVar);
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zznz zznzVar2 = (zznz) it.next();
            it.remove();
            if (zznzVar2.zzf && (zzodVar = this.zzf) != null) {
                zzodVar.zzd(zzluVar, zznzVar2.zzb, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final void zzh(zzod zzodVar) {
        this.zzf = zzodVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
    
        if (r0.zzc == r10.zzc) goto L18;
     */
    @Override // com.google.android.gms.internal.ads.zzoe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzi(com.google.android.gms.internal.ads.zzlu r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            com.google.android.gms.internal.ads.zzod r0 = r9.zzf     // Catch: java.lang.Throwable -> Lc6
            r0.getClass()
            com.google.android.gms.internal.ads.zzbq r0 = r10.zzb     // Catch: java.lang.Throwable -> Lc6
            boolean r0 = r0.zzo()     // Catch: java.lang.Throwable -> Lc6
            if (r0 == 0) goto L10
            goto Lc4
        L10:
            com.google.android.gms.internal.ads.zzug r0 = r10.zzd     // Catch: java.lang.Throwable -> Lc6
            if (r0 == 0) goto L3c
            long r1 = r9.zzl()     // Catch: java.lang.Throwable -> Lc6
            long r3 = r0.zzd     // Catch: java.lang.Throwable -> Lc6
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 < 0) goto Lc4
            java.util.HashMap r0 = r9.zze     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r1 = r9.zzh     // Catch: java.lang.Throwable -> Lc6
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zznz r0 = (com.google.android.gms.internal.ads.zznz) r0     // Catch: java.lang.Throwable -> Lc6
            if (r0 == 0) goto L3c
            long r1 = com.google.android.gms.internal.ads.zznz.zzb(r0)     // Catch: java.lang.Throwable -> Lc6
            r3 = -1
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L3c
            int r0 = com.google.android.gms.internal.ads.zznz.zza(r0)     // Catch: java.lang.Throwable -> Lc6
            int r1 = r10.zzc     // Catch: java.lang.Throwable -> Lc6
            if (r0 != r1) goto Lc4
        L3c:
            int r0 = r10.zzc     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzug r1 = r10.zzd     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zznz r0 = r9.zzm(r0, r1)     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r1 = r9.zzh     // Catch: java.lang.Throwable -> Lc6
            if (r1 != 0) goto L4e
            java.lang.String r1 = com.google.android.gms.internal.ads.zznz.zzd(r0)     // Catch: java.lang.Throwable -> Lc6
            r9.zzh = r1     // Catch: java.lang.Throwable -> Lc6
        L4e:
            com.google.android.gms.internal.ads.zzug r1 = r10.zzd     // Catch: java.lang.Throwable -> Lc6
            r2 = 1
            if (r1 == 0) goto L98
            boolean r3 = r1.zzb()     // Catch: java.lang.Throwable -> Lc6
            if (r3 == 0) goto L98
            java.lang.Object r3 = r1.zza     // Catch: java.lang.Throwable -> Lc6
            long r4 = r1.zzd     // Catch: java.lang.Throwable -> Lc6
            int r1 = r1.zzb     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzug r6 = new com.google.android.gms.internal.ads.zzug     // Catch: java.lang.Throwable -> Lc6
            r6.<init>(r3, r4, r1)     // Catch: java.lang.Throwable -> Lc6
            int r1 = r10.zzc     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zznz r1 = r9.zzm(r1, r6)     // Catch: java.lang.Throwable -> Lc6
            boolean r3 = com.google.android.gms.internal.ads.zznz.zzi(r1)     // Catch: java.lang.Throwable -> Lc6
            if (r3 != 0) goto L98
            com.google.android.gms.internal.ads.zznz.zzf(r1, r2)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzbq r3 = r10.zzb     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzug r4 = r10.zzd     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzbo r5 = r9.zzd     // Catch: java.lang.Throwable -> Lc6
            java.lang.Object r4 = r4.zza     // Catch: java.lang.Throwable -> Lc6
            r3.zzn(r4, r5)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzbo r3 = r9.zzd     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzug r4 = r10.zzd     // Catch: java.lang.Throwable -> Lc6
            int r4 = r4.zzb     // Catch: java.lang.Throwable -> Lc6
            r3.zzg(r4)     // Catch: java.lang.Throwable -> Lc6
            r3 = 0
            long r5 = com.google.android.gms.internal.ads.zzei.zzv(r3)     // Catch: java.lang.Throwable -> Lc6
            long r7 = com.google.android.gms.internal.ads.zzei.zzv(r3)     // Catch: java.lang.Throwable -> Lc6
            long r5 = r5 + r7
            java.lang.Math.max(r3, r5)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zznz.zzd(r1)     // Catch: java.lang.Throwable -> Lc6
        L98:
            boolean r1 = com.google.android.gms.internal.ads.zznz.zzi(r0)     // Catch: java.lang.Throwable -> Lc6
            if (r1 != 0) goto La4
            com.google.android.gms.internal.ads.zznz.zzf(r0, r2)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zznz.zzd(r0)     // Catch: java.lang.Throwable -> Lc6
        La4:
            java.lang.String r1 = com.google.android.gms.internal.ads.zznz.zzd(r0)     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r3 = r9.zzh     // Catch: java.lang.Throwable -> Lc6
            boolean r1 = r1.equals(r3)     // Catch: java.lang.Throwable -> Lc6
            if (r1 == 0) goto Lc4
            boolean r1 = com.google.android.gms.internal.ads.zznz.zzh(r0)     // Catch: java.lang.Throwable -> Lc6
            if (r1 != 0) goto Lc4
            com.google.android.gms.internal.ads.zznz.zze(r0, r2)     // Catch: java.lang.Throwable -> Lc6
            com.google.android.gms.internal.ads.zzod r1 = r9.zzf     // Catch: java.lang.Throwable -> Lc6
            java.lang.String r0 = com.google.android.gms.internal.ads.zznz.zzd(r0)     // Catch: java.lang.Throwable -> Lc6
            r1.zzc(r10, r0)     // Catch: java.lang.Throwable -> Lc6
            monitor-exit(r9)
            return
        Lc4:
            monitor-exit(r9)
            return
        Lc6:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoa.zzi(com.google.android.gms.internal.ads.zzlu):void");
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final synchronized void zzj(zzlu zzluVar, int i) {
        this.zzf.getClass();
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zznz zznzVar = (zznz) it.next();
            if (zznzVar.zzk(zzluVar)) {
                it.remove();
                if (zznzVar.zzf) {
                    boolean equals = zznzVar.zzb.equals(this.zzh);
                    boolean z = false;
                    if (i == 0 && equals && zznzVar.zzg) {
                        z = true;
                    }
                    if (equals) {
                        zzo(zznzVar);
                    }
                    this.zzf.zzd(zzluVar, zznzVar.zzb, z);
                }
            }
        }
        zzp(zzluVar);
    }

    @Override // com.google.android.gms.internal.ads.zzoe
    public final synchronized void zzk(zzlu zzluVar) {
        this.zzf.getClass();
        zzbq zzbqVar = this.zzg;
        this.zzg = zzluVar.zzb;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zznz zznzVar = (zznz) it.next();
            if (!zznzVar.zzl(zzbqVar, this.zzg) || zznzVar.zzk(zzluVar)) {
                it.remove();
                if (zznzVar.zzf) {
                    if (zznzVar.zzb.equals(this.zzh)) {
                        zzo(zznzVar);
                    }
                    this.zzf.zzd(zzluVar, zznzVar.zzb, false);
                }
            }
        }
        zzp(zzluVar);
    }
}
