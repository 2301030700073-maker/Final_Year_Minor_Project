package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfnm {
    private final Map zza;
    private final zzfon zzb;
    private final zzfnv zzc;
    private final Context zzd;
    private volatile ConnectivityManager zze;
    private final AtomicBoolean zzf = new AtomicBoolean(false);
    private final Clock zzg;
    private AtomicInteger zzh;

    zzfnm(zzfon zzfonVar, zzfnv zzfnvVar, Context context, Clock clock) {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        hashMap.put(AdFormat.APP_OPEN_AD, new HashMap());
        hashMap.put(AdFormat.INTERSTITIAL, new HashMap());
        hashMap.put(AdFormat.REWARDED, new HashMap());
        this.zzb = zzfonVar;
        this.zzc = zzfnvVar;
        this.zzd = context;
        this.zzg = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzk(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzx)).booleanValue()) {
            zzl(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzl(boolean z) {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            for (zzfom zzfomVar : ((Map) it.next()).values()) {
                if (z) {
                    zzfomVar.zzh();
                } else {
                    zzfomVar.zzg();
                }
            }
        }
    }

    private final synchronized Object zzo(Class cls, AdFormat adFormat, String str) {
        zzfnv zzfnvVar = this.zzc;
        Clock clock = this.zzg;
        zzfnvVar.zze(clock.currentTimeMillis(), ExifInterface.GPS_MEASUREMENT_2D);
        Map map = this.zza;
        if (!map.containsKey(adFormat)) {
            return null;
        }
        zzfom zzfomVar = (zzfom) ((Map) map.get(adFormat)).get(str);
        if (zzfomVar != null && adFormat.equals(zzfomVar.zzm())) {
            zzfob zzfobVar = new zzfob(zzfomVar.zze.zza, zzfomVar.zzm());
            zzfobVar.zza(str);
            zzfoc zzfocVar = new zzfoc(zzfobVar, null);
            zzfnvVar.zzf(clock.currentTimeMillis(), zzfocVar, zzfomVar.zze.zzd, zzfomVar.zzn(), ExifInterface.GPS_MEASUREMENT_2D);
            try {
                String zzi = zzfomVar.zzi();
                Object zze = zzfomVar.zze();
                Object cast = zze == null ? null : cls.cast(zze);
                if (cast != null) {
                    zzfnvVar.zzh(clock.currentTimeMillis(), zzfomVar.zze.zzd, zzfomVar.zzn(), zzi, zzfocVar, ExifInterface.GPS_MEASUREMENT_2D);
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
        return null;
    }

    private final synchronized boolean zzp(AdFormat adFormat) {
        int size;
        int ordinal;
        Map map = this.zza;
        size = map.containsKey(adFormat) ? ((Map) map.get(adFormat)).size() : 0;
        ordinal = adFormat.ordinal();
        return size < (ordinal != 1 ? ordinal != 2 ? ordinal != 5 ? 0 : Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfd)).intValue(), 1) : Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfc)).intValue(), 1) : Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfb)).intValue(), 1));
    }

    public final synchronized boolean zza(String str, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar) {
        zzfom zzb;
        if (!this.zzf.getAndSet(true)) {
            if (this.zze == null) {
                synchronized (this) {
                    if (this.zze == null) {
                        try {
                            this.zze = (ConnectivityManager) this.zzd.getSystemService("connectivity");
                        } catch (ClassCastException e) {
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to get connectivity manager", e);
                        }
                    }
                }
            }
            if (!PlatformVersion.isAtLeastO() || this.zze == null) {
                this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzF)).intValue());
            } else {
                try {
                    this.zze.registerDefaultNetworkCallback(new zzfnk(this));
                } catch (RuntimeException e2) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to register network callback", e2);
                    this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzF)).intValue());
                }
            }
            com.google.android.gms.ads.internal.zzt.zzg().zzb(new zzfnl(this));
        }
        AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
        if (adFormat != null) {
            Map map = this.zza;
            if (map.containsKey(adFormat) && !((Map) map.get(adFormat)).containsKey(str) && zzp(adFormat) && (zzb = this.zzb.zzb(str, zzftVar, zzchVar)) != null) {
                AtomicInteger atomicInteger = this.zzh;
                if (atomicInteger != null) {
                    zzb.zzk(atomicInteger.get());
                }
                zzfnv zzfnvVar = this.zzc;
                zzb.zzj(zzfnvVar);
                zzb.zzc();
                ((Map) map.get(adFormat)).put(str, zzb);
                zzfob zzfobVar = new zzfob(zzftVar.zza, adFormat);
                zzfobVar.zza(str);
                zzfnvVar.zza(zzftVar.zzd, this.zzg.currentTimeMillis(), new zzfoc(zzfobVar, null), ExifInterface.GPS_MEASUREMENT_2D);
                return true;
            }
        }
        return false;
    }

    public final synchronized boolean zzb(AdFormat adFormat, String str) {
        zzfoc zzfocVar;
        Clock clock = this.zzg;
        long currentTimeMillis = clock.currentTimeMillis();
        Map map = this.zza;
        int i = 0;
        if (!map.containsKey(adFormat)) {
            return false;
        }
        zzfom zzfomVar = (zzfom) ((Map) map.get(adFormat)).get(str);
        String zzi = zzfomVar == null ? null : zzfomVar.zzi();
        boolean z = zzi != null && adFormat.equals(zzfomVar.zzm());
        Long valueOf = z ? Long.valueOf(clock.currentTimeMillis()) : null;
        if (zzfomVar == null) {
            zzfocVar = null;
        } else {
            zzfob zzfobVar = new zzfob(zzfomVar.zze.zza, adFormat);
            zzfobVar.zza(str);
            zzfocVar = new zzfoc(zzfobVar, null);
        }
        zzfnv zzfnvVar = this.zzc;
        int i2 = zzfomVar == null ? 0 : zzfomVar.zze.zzd;
        if (zzfomVar != null) {
            i = zzfomVar.zzn();
        }
        zzfnvVar.zzd(i2, i, currentTimeMillis, valueOf, zzi, zzfocVar, ExifInterface.GPS_MEASUREMENT_2D);
        return z;
    }

    public final synchronized zzbyo zzc(String str) {
        return (zzbyo) zzo(zzbyo.class, AdFormat.REWARDED, str);
    }

    public final synchronized zzbcn zzd(String str) {
        return (zzbcn) zzo(zzbcn.class, AdFormat.APP_OPEN_AD, str);
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbx zze(String str) {
        return (com.google.android.gms.ads.internal.client.zzbx) zzo(com.google.android.gms.ads.internal.client.zzbx.class, AdFormat.INTERSTITIAL, str);
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzft zzf(AdFormat adFormat, String str) {
        Map map = this.zza;
        if (map.containsKey(adFormat)) {
            zzfom zzfomVar = (zzfom) ((Map) map.get(adFormat)).get(str);
            this.zzc.zzo(this.zzg.currentTimeMillis(), str, zzfomVar == null ? null : zzfomVar.zze.zza, adFormat, zzfomVar == null ? -1 : zzfomVar.zze.zzd, zzfomVar != null ? zzfomVar.zzn() : -1);
            if (zzfomVar != null) {
                return zzfomVar.zze;
            }
        }
        return null;
    }

    public final synchronized int zzg(AdFormat adFormat, String str) {
        Map map = this.zza;
        int i = 0;
        if (!map.containsKey(adFormat)) {
            return 0;
        }
        zzfom zzfomVar = (zzfom) ((Map) map.get(adFormat)).get(str);
        if (zzfomVar != null) {
            i = zzfomVar.zzn();
        }
        this.zzc.zzp(i, this.zzg.currentTimeMillis(), str, zzfomVar == null ? null : zzfomVar.zze.zza, adFormat, zzfomVar == null ? -1 : zzfomVar.zze.zzd);
        return i;
    }

    public final synchronized Map zzh(int i) {
        HashMap hashMap = new HashMap();
        AdFormat adFormat = AdFormat.getAdFormat(i);
        if (adFormat != null) {
            Map map = this.zza;
            if (map.containsKey(adFormat)) {
                for (zzfom zzfomVar : ((Map) map.get(adFormat)).values()) {
                    hashMap.put(zzfomVar.zzl(), zzfomVar.zze);
                }
                this.zzc.zzn(adFormat, this.zzg.currentTimeMillis(), hashMap.size());
                return hashMap;
            }
        }
        return hashMap;
    }

    public final synchronized boolean zzi(AdFormat adFormat, String str) {
        zzfom zzfomVar;
        Map map = this.zza;
        if (map.containsKey(adFormat) && (zzfomVar = (zzfom) ((Map) map.get(adFormat)).get(str)) != null) {
            ((Map) map.get(adFormat)).remove(str);
            zzfomVar.zzf();
            zzfomVar.zzo();
            zzfnv zzfnvVar = this.zzc;
            long currentTimeMillis = this.zzg.currentTimeMillis();
            com.google.android.gms.ads.internal.client.zzft zzftVar = zzfomVar.zze;
            zzfnvVar.zzm(currentTimeMillis, str, zzftVar.zza, adFormat, zzftVar.zzd, zzfomVar.zzn());
            return true;
        }
        return false;
    }

    public final synchronized void zzj(int i) {
        AdFormat adFormat = AdFormat.getAdFormat(i);
        if (adFormat != null) {
            Map map = this.zza;
            if (map.containsKey(adFormat)) {
                Map map2 = (Map) map.get(adFormat);
                int size = map2.size();
                for (String str : map2.keySet()) {
                    zzfom zzfomVar = (zzfom) map2.get(str);
                    if (zzfomVar != null) {
                        zzfomVar.zzf();
                        zzfomVar.zzo();
                        String.valueOf(str);
                        String valueOf = String.valueOf(str);
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Destroyed ad preloader for preloadId: ".concat(valueOf));
                    }
                }
                map2.clear();
                String concat = "Destroyed all ad preloaders for ad format: ".concat(adFormat.toString());
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh(concat);
                this.zzc.zzl(this.zzg.currentTimeMillis(), adFormat, size);
            }
        }
    }
}
