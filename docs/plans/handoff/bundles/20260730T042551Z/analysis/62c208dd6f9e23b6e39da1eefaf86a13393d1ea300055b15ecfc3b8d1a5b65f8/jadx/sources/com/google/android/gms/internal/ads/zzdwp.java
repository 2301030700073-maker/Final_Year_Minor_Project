package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzdwp implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;

    public zzdwp(zzhfj zzhfjVar, zzhfj zzhfjVar2) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        zzfgn zzfgnVar = (zzfgn) this.zza.zzb();
        final CookieManager zza = com.google.android.gms.ads.internal.zzv.zzr().zza((Context) this.zzb.zzb());
        zzfgd zzi = zzffx.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = zza;
                if (cookieManager == null) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaY));
            }
        }, zzfgh.WEBVIEW_COOKIE, zzfgnVar).zzi(1L, TimeUnit.SECONDS);
        final zzffr zzffrVar = new zzffr() { // from class: com.google.android.gms.internal.ads.zzdwl
            @Override // com.google.android.gms.internal.ads.zzffr
            public final Object zza(Object obj) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        };
        return zzi.zzc(Exception.class, new zzgbo(zzffrVar) { // from class: com.google.android.gms.internal.ads.zzffy
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzgch.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }).zza();
    }
}
