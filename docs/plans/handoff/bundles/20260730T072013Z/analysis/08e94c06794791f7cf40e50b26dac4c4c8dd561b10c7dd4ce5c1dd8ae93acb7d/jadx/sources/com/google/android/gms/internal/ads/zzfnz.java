package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfnz {
    private final zzfon zzc;
    private final zzfnv zzd;
    private final Context zze;
    private volatile ConnectivityManager zzf;
    private final Clock zzh;
    private AtomicInteger zzi;
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final ConcurrentMap zza = new ConcurrentHashMap();
    private final ConcurrentMap zzb = new ConcurrentHashMap();

    zzfnz(zzfon zzfonVar, zzfnv zzfnvVar, Context context, Clock clock) {
        this.zzc = zzfonVar;
        this.zzd = zzfnvVar;
        this.zze = context;
        this.zzh = clock;
    }

    static String zzh(String str, AdFormat adFormat) {
        String name = adFormat == null ? "NULL" : adFormat.name();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length());
        sb.append(str);
        sb.append("#");
        sb.append(name);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzi(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzx)).booleanValue()) {
            zzj(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzj(boolean z) {
        if (z) {
            Iterator it = this.zza.values().iterator();
            while (it.hasNext()) {
                ((zzfom) it.next()).zzh();
            }
        } else {
            Iterator it2 = this.zza.values().iterator();
            while (it2.hasNext()) {
                ((zzfom) it2.next()).zzg();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f3, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzA)).booleanValue() != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized java.util.List zzm(java.util.List r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.util.HashSet r0 = new java.util.HashSet     // Catch: java.lang.Throwable -> L104
            r0.<init>()     // Catch: java.lang.Throwable -> L104
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L104
            r1.<init>()     // Catch: java.lang.Throwable -> L104
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L104
        Lf:
            boolean r2 = r9.hasNext()     // Catch: java.lang.Throwable -> L104
            if (r2 == 0) goto L7b
            java.lang.Object r2 = r9.next()     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.ads.internal.client.zzft r2 = (com.google.android.gms.ads.internal.client.zzft) r2     // Catch: java.lang.Throwable -> L104
            java.lang.String r3 = r2.zza     // Catch: java.lang.Throwable -> L104
            int r4 = r2.zzb     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.ads.AdFormat r4 = com.google.android.gms.ads.AdFormat.getAdFormat(r4)     // Catch: java.lang.Throwable -> L104
            java.lang.String r3 = zzh(r3, r4)     // Catch: java.lang.Throwable -> L104
            r0.add(r3)     // Catch: java.lang.Throwable -> L104
            java.util.concurrent.ConcurrentMap r4 = r8.zza     // Catch: java.lang.Throwable -> L104
            java.lang.Object r5 = r4.get(r3)     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzfom r5 = (com.google.android.gms.internal.ads.zzfom) r5     // Catch: java.lang.Throwable -> L104
            if (r5 == 0) goto L4e
            com.google.android.gms.ads.internal.client.zzft r6 = r5.zze     // Catch: java.lang.Throwable -> L104
            boolean r6 = r6.equals(r2)     // Catch: java.lang.Throwable -> L104
            if (r6 != 0) goto L48
            java.util.concurrent.ConcurrentMap r6 = r8.zzb     // Catch: java.lang.Throwable -> L104
            r6.put(r3, r5)     // Catch: java.lang.Throwable -> L104
            r4.remove(r3)     // Catch: java.lang.Throwable -> L104
            r1.add(r2)     // Catch: java.lang.Throwable -> L104
            goto Lf
        L48:
            int r2 = r2.zzd     // Catch: java.lang.Throwable -> L104
            r5.zzr(r2)     // Catch: java.lang.Throwable -> L104
            goto Lf
        L4e:
            java.util.concurrent.ConcurrentMap r5 = r8.zzb     // Catch: java.lang.Throwable -> L104
            boolean r6 = r5.containsKey(r3)     // Catch: java.lang.Throwable -> L104
            if (r6 == 0) goto L77
            java.lang.Object r6 = r5.get(r3)     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzfom r6 = (com.google.android.gms.internal.ads.zzfom) r6     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.ads.internal.client.zzft r7 = r6.zze     // Catch: java.lang.Throwable -> L104
            boolean r7 = r7.equals(r2)     // Catch: java.lang.Throwable -> L104
            if (r7 == 0) goto L73
            int r2 = r2.zzd     // Catch: java.lang.Throwable -> L104
            r6.zzr(r2)     // Catch: java.lang.Throwable -> L104
            r6.zzh()     // Catch: java.lang.Throwable -> L104
            r4.put(r3, r6)     // Catch: java.lang.Throwable -> L104
            r5.remove(r3)     // Catch: java.lang.Throwable -> L104
            goto Lf
        L73:
            r1.add(r2)     // Catch: java.lang.Throwable -> L104
            goto Lf
        L77:
            r1.add(r2)     // Catch: java.lang.Throwable -> L104
            goto Lf
        L7b:
            java.util.concurrent.ConcurrentMap r9 = r8.zza     // Catch: java.lang.Throwable -> L104
            java.util.Set r9 = r9.entrySet()     // Catch: java.lang.Throwable -> L104
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L104
        L85:
            boolean r2 = r9.hasNext()     // Catch: java.lang.Throwable -> L104
            if (r2 == 0) goto Lb2
            java.lang.Object r2 = r9.next()     // Catch: java.lang.Throwable -> L104
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> L104
            java.lang.Object r3 = r2.getKey()     // Catch: java.lang.Throwable -> L104
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L104
            boolean r3 = r0.contains(r3)     // Catch: java.lang.Throwable -> L104
            if (r3 != 0) goto L85
            java.util.concurrent.ConcurrentMap r3 = r8.zzb     // Catch: java.lang.Throwable -> L104
            java.lang.Object r4 = r2.getKey()     // Catch: java.lang.Throwable -> L104
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L104
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzfom r2 = (com.google.android.gms.internal.ads.zzfom) r2     // Catch: java.lang.Throwable -> L104
            r3.put(r4, r2)     // Catch: java.lang.Throwable -> L104
            r9.remove()     // Catch: java.lang.Throwable -> L104
            goto L85
        Lb2:
            java.util.concurrent.ConcurrentMap r9 = r8.zzb     // Catch: java.lang.Throwable -> L104
            java.util.Set r9 = r9.entrySet()     // Catch: java.lang.Throwable -> L104
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L104
        Lbc:
            boolean r0 = r9.hasNext()     // Catch: java.lang.Throwable -> L104
            if (r0 == 0) goto L102
            java.lang.Object r0 = r9.next()     // Catch: java.lang.Throwable -> L104
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L104
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzfom r0 = (com.google.android.gms.internal.ads.zzfom) r0     // Catch: java.lang.Throwable -> L104
            r0.zzf()     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzbel r2 = com.google.android.gms.internal.ads.zzbeu.zzz     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzbes r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L104
            java.lang.Object r2 = r3.zzd(r2)     // Catch: java.lang.Throwable -> L104
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L104
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L104
            if (r2 != 0) goto Lf5
            com.google.android.gms.internal.ads.zzbel r2 = com.google.android.gms.internal.ads.zzbeu.zzA     // Catch: java.lang.Throwable -> L104
            com.google.android.gms.internal.ads.zzbes r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L104
            java.lang.Object r2 = r3.zzd(r2)     // Catch: java.lang.Throwable -> L104
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L104
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L104
            if (r2 == 0) goto Lf8
        Lf5:
            r0.zzo()     // Catch: java.lang.Throwable -> L104
        Lf8:
            boolean r0 = r0.zzd()     // Catch: java.lang.Throwable -> L104
            if (r0 != 0) goto Lbc
            r9.remove()     // Catch: java.lang.Throwable -> L104
            goto Lbc
        L102:
            monitor-exit(r8)
            return r1
        L104:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L104
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfnz.zzm(java.util.List):java.util.List");
    }

    private final synchronized void zzn(String str, zzfom zzfomVar) {
        zzfomVar.zzc();
        this.zza.put(str, zzfomVar);
    }

    private final synchronized boolean zzo(String str, AdFormat adFormat) {
        boolean z;
        Clock clock = this.zzh;
        long currentTimeMillis = clock.currentTimeMillis();
        zzfom zzq = zzq(str, adFormat);
        z = zzq != null && zzq.zzd();
        this.zzd.zzd(zzq == null ? 0 : zzq.zze.zzd, zzq == null ? 0 : zzq.zzn(), currentTimeMillis, z ? Long.valueOf(clock.currentTimeMillis()) : null, zzq == null ? null : zzq.zzi(), new zzfoc(new zzfob(str, adFormat), null), "1");
        return z;
    }

    private final synchronized Object zzp(Class cls, String str, AdFormat adFormat) {
        zzfoc zzfocVar = new zzfoc(new zzfob(str, adFormat), null);
        zzfnv zzfnvVar = this.zzd;
        Clock clock = this.zzh;
        zzfnvVar.zzf(clock.currentTimeMillis(), zzfocVar, -1, -1, "1");
        zzfom zzq = zzq(str, adFormat);
        if (zzq == null) {
            return null;
        }
        try {
            String zzi = zzq.zzi();
            Object zze = zzq.zze();
            Object cast = zze == null ? null : cls.cast(zze);
            if (cast != null) {
                zzfnvVar.zzh(clock.currentTimeMillis(), zzq.zze.zzd, zzq.zzn(), zzi, zzfocVar, "1");
            }
            return cast;
        } catch (ClassCastException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "PreloadAdManager.pollAd");
            String name = cls.getName();
            String.valueOf(name);
            com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(String.valueOf(name)), e);
            return null;
        }
    }

    private final synchronized zzfom zzq(String str, AdFormat adFormat) {
        return (zzfom) this.zza.get(zzh(str, adFormat));
    }

    public final synchronized void zza(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        if (!this.zzg.getAndSet(true)) {
            if (this.zzf == null) {
                synchronized (this) {
                    if (this.zzf == null) {
                        try {
                            this.zzf = (ConnectivityManager) this.zze.getSystemService("connectivity");
                        } catch (ClassCastException e) {
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to get connectivity manager", e);
                        }
                    }
                }
            }
            if (!PlatformVersion.isAtLeastO() || this.zzf == null) {
                this.zzi = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzF)).intValue());
            } else {
                try {
                    this.zzf.registerDefaultNetworkCallback(new zzfny(this));
                } catch (RuntimeException e2) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to register network callback", e2);
                    this.zzi = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzF)).intValue());
                }
            }
            com.google.android.gms.ads.internal.zzt.zzg().zzb(new zzfnx(this));
        }
        List<com.google.android.gms.ads.internal.client.zzft> zzm = zzm(list);
        EnumMap enumMap = new EnumMap(AdFormat.class);
        for (com.google.android.gms.ads.internal.client.zzft zzftVar : zzm) {
            String str = zzftVar.zza;
            AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
            zzfom zza = this.zzc.zza(zzftVar, zzceVar);
            if (adFormat != null && zza != null) {
                AtomicInteger atomicInteger = this.zzi;
                if (atomicInteger != null) {
                    zza.zzk(atomicInteger.get());
                }
                zzfnv zzfnvVar = this.zzd;
                zza.zzj(zzfnvVar);
                zzn(zzh(str, adFormat), zza);
                enumMap.put((EnumMap) adFormat, (AdFormat) Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzd(enumMap, adFormat, 0)).intValue() + 1));
                zzfnvVar.zza(zzftVar.zzd, this.zzh.currentTimeMillis(), new zzfoc(new zzfob(str, adFormat), null), "1");
            }
        }
        this.zzd.zzb(enumMap, this.zzh.currentTimeMillis(), "1");
    }

    public final synchronized boolean zzb(String str) {
        return zzo(str, AdFormat.REWARDED);
    }

    public final synchronized zzbyo zzc(String str) {
        return (zzbyo) zzp(zzbyo.class, str, AdFormat.REWARDED);
    }

    public final synchronized boolean zzd(String str) {
        return zzo(str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized zzbcn zze(String str) {
        return (zzbcn) zzp(zzbcn.class, str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized boolean zzf(String str) {
        return zzo(str, AdFormat.INTERSTITIAL);
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbx zzg(String str) {
        return (com.google.android.gms.ads.internal.client.zzbx) zzp(com.google.android.gms.ads.internal.client.zzbx.class, str, AdFormat.INTERSTITIAL);
    }
}
