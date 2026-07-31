package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeix implements zzehk {
    private final Context zza;
    private final zzdjd zzb;
    private final Executor zzc;
    private final zzfft zzd;
    private final zzdvi zze;

    public zzeix(Context context, Executor executor, zzdjd zzdjdVar, zzfft zzfftVar, zzdvi zzdviVar) {
        this.zza = context;
        this.zzb = zzdjdVar;
        this.zzc = executor;
        this.zzd = zzfftVar;
        this.zze = zzdviVar;
    }

    private static String zze(zzffu zzffuVar) {
        try {
            return zzffuVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final boolean zza(zzfgf zzfgfVar, zzffu zzffuVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbfv.zza(context) && !TextUtils.isEmpty(zze(zzffuVar));
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final ListenableFuture zzb(final zzfgf zzfgfVar, final zzffu zzffuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoe)).booleanValue()) {
            zzdvh zza = this.zze.zza();
            zza.zzc("action", "cstm_tbs_rndr");
            zza.zzd();
        }
        String zze = zze(zzffuVar);
        final Uri parse = zze != null ? Uri.parse(zze) : null;
        final zzffx zzffxVar = zzfgfVar.zzb.zzb;
        return zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzeiw
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzeix.this.zzc(parse, zzfgfVar, zzffuVar, zzffxVar, obj);
            }
        }, this.zzc);
    }

    final /* synthetic */ ListenableFuture zzc(Uri uri, zzfgf zzfgfVar, zzffu zzffuVar, zzffx zzffxVar, Object obj) {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null);
            zzcca zzccaVar = new zzcca();
            zzdhx zzd = this.zzb.zzd(new zzcue(zzfgfVar, zzffuVar, null), new zzdia(new zzeiv(this, zzccaVar, zzffuVar), null));
            zzccaVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzd.zzi(), null, new VersionInfoParcel(0, 0, false), null, null, zzffxVar.zzb));
            this.zzd.zzd();
            return zzgui.zza(zzd.zzh());
        } catch (Throwable th) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    final /* synthetic */ zzdvi zzd() {
        return this.zze;
    }
}
