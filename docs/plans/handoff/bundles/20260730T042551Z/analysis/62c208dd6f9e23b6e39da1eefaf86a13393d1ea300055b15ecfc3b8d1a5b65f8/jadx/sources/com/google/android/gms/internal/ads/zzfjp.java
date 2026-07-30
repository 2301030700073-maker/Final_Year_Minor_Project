package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.AdFormat;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.Locale;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class zzfjp {
    private final zzdrw zza;

    public zzfjp(zzdrw zzdrwVar) {
        this.zza = zzdrwVar;
    }

    private final void zzg(AdFormat adFormat, Optional optional, String str, long j, Optional optional2) {
        final zzdrv zza = this.zza.zza();
        zza.zzb(str, Long.toString(j));
        zza.zzb("ad_format", adFormat == null ? "unknown" : adFormat.name());
        optional.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjn
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrv.this.zzb(NativeProtocol.WEB_DIALOG_ACTION, (String) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        optional2.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrv.this.zzb("gqi", (String) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        zza.zzg();
    }

    public final void zza(AdFormat adFormat, long j, Optional optional, Optional optional2) {
        final zzdrv zza = this.zza.zza();
        zza.zzb("plaac_ts", Long.toString(j));
        zza.zzb("ad_format", adFormat.name());
        zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "is_ad_available");
        optional.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjl
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrv.this.zzb("plaay_ts", Long.toString(((Long) obj).longValue()));
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        optional2.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfjm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdrv.this.zzb("gqi", (String) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        zza.zzg();
    }

    public final void zzb(AdFormat adFormat, long j, Optional optional) {
        zzg(adFormat, Optional.empty(), "pano_ts", j, optional);
    }

    public final void zzc(AdFormat adFormat, long j) {
        zzg(adFormat, Optional.empty(), "paeo_ts", j, Optional.empty());
    }

    public final void zzd(AdFormat adFormat, long j) {
        zzg(adFormat, Optional.of("poll_ad"), "ppac_ts", j, Optional.empty());
    }

    public final void zze(AdFormat adFormat, long j, Optional optional) {
        zzg(adFormat, Optional.of("poll_ad"), "ppla_ts", j, optional);
    }

    public final void zzf(Map map, long j) {
        zzdrv zza = this.zza.zza();
        zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "start_preload");
        zza.zzb("sp_ts", Long.toString(j));
        for (AdFormat adFormat : map.keySet()) {
            String valueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            zza.zzb(valueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        zza.zzg();
    }
}
