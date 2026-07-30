package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbic extends zzbhg {
    private final OnAdManagerAdViewLoadedListener zza;

    public zzbic(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zza = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbhh
    public final void zze(com.google.android.gms.ads.internal.client.zzby zzbyVar, InterfaceC0456Qm interfaceC0456Qm) {
        if (zzbyVar == null || interfaceC0456Qm == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) BinderC3652rv.o(interfaceC0456Qm));
        try {
            if (zzbyVar.zzi() instanceof com.google.android.gms.ads.internal.client.zzg) {
                com.google.android.gms.ads.internal.client.zzg zzgVar = (com.google.android.gms.ads.internal.client.zzg) zzbyVar.zzi();
                adManagerAdView.setAdListener(zzgVar != null ? zzgVar.zzb() : null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
        try {
            if (zzbyVar.zzj() instanceof zzayy) {
                zzayy zzayyVar = (zzayy) zzbyVar.zzj();
                adManagerAdView.setAppEventListener(zzayyVar != null ? zzayyVar.zzb() : null);
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
        }
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzbib(this, adManagerAdView, zzbyVar));
    }
}
