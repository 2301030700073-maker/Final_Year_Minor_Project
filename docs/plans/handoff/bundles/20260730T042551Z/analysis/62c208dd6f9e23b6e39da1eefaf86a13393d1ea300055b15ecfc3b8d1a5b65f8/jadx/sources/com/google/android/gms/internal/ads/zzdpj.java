package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdpj {
    private final Map zza = new HashMap();

    public final synchronized zzdpi zza(String str) {
        return (zzdpi) this.zza.get(str);
    }

    public final String zzb(String str) {
        zzbrs zzbrsVar;
        zzdpi zza = zza(str);
        return (zza == null || (zzbrsVar = zza.zzb) == null) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : zzbrsVar.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(java.lang.String r6, com.google.android.gms.internal.ads.zzfdh r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.Map r0 = r5.zza     // Catch: java.lang.Throwable -> L46
            boolean r0 = r0.containsKey(r6)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto Lb
            monitor-exit(r5)
            return
        Lb:
            com.google.android.gms.internal.ads.zzdpi r0 = new com.google.android.gms.internal.ads.zzdpi     // Catch: java.lang.Throwable -> L46
            r1 = 0
            if (r7 != 0) goto L12
        L10:
            r2 = r1
            goto L19
        L12:
            com.google.android.gms.internal.ads.zzbrs r2 = r7.zze()     // Catch: com.google.android.gms.internal.ads.zzfcq -> L17 java.lang.Throwable -> L46
            goto L19
        L17:
            goto L10
        L19:
            if (r7 != 0) goto L1c
            goto L20
        L1c:
            com.google.android.gms.internal.ads.zzbrs r1 = r7.zzf()     // Catch: com.google.android.gms.internal.ads.zzfcq -> L20 java.lang.Throwable -> L46
        L20:
            com.google.android.gms.internal.ads.zzbcc r3 = com.google.android.gms.internal.ads.zzbcl.zzjk     // Catch: java.lang.Throwable -> L46
            com.google.android.gms.internal.ads.zzbcj r4 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L46
            java.lang.Object r3 = r4.zza(r3)     // Catch: java.lang.Throwable -> L46
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L46
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L46
            r4 = 1
            if (r3 != 0) goto L34
            goto L3c
        L34:
            r3 = 0
            if (r7 != 0) goto L39
        L37:
            r4 = 0
            goto L3c
        L39:
            r7.zzC()     // Catch: com.google.android.gms.internal.ads.zzfcq -> L37 java.lang.Throwable -> L46
        L3c:
            r0.<init>(r6, r2, r1, r4)     // Catch: java.lang.Throwable -> L46
            java.util.Map r7 = r5.zza     // Catch: java.lang.Throwable -> L46
            r7.put(r6, r0)     // Catch: java.lang.Throwable -> L46
            monitor-exit(r5)
            return
        L46:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpj.zzc(java.lang.String, com.google.android.gms.internal.ads.zzfdh):void");
    }

    public final synchronized void zzd(String str, zzbrd zzbrdVar) {
        if (this.zza.containsKey(str)) {
            return;
        }
        try {
            this.zza.put(str, new zzdpi(str, zzbrdVar.zzf(), zzbrdVar.zzg(), true));
        } catch (Throwable unused) {
        }
    }
}
