package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.C3928wc;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeel implements zzecw {
    private final Context zza;
    private final zzdfu zzb;
    private final Executor zzc;
    private final zzfbn zzd;
    private final zzdrw zze;

    public zzeel(Context context, Executor executor, zzdfu zzdfuVar, zzfbn zzfbnVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzb = zzdfuVar;
        this.zzc = executor;
        this.zzd = zzfbnVar;
        this.zze = zzdrwVar;
    }

    private static String zze(zzfbo zzfboVar) {
        try {
            return zzfboVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(final zzfca zzfcaVar, final zzfbo zzfboVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmT)).booleanValue()) {
            zzdrv zza = this.zze.zza();
            zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "cstm_tbs_rndr");
            zza.zzg();
        }
        String zze = zze(zzfboVar);
        final Uri parse = zze != null ? Uri.parse(zze) : null;
        final zzfbr zzfbrVar = zzfcaVar.zzb.zzb;
        return zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeej
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzeel.this.zzc(parse, zzfcaVar, zzfboVar, zzfbrVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbdm.zzg(context) && !TextUtils.isEmpty(zze(zzfboVar));
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(Uri uri, zzfca zzfcaVar, zzfbo zzfboVar, zzfbr zzfbrVar, Object obj) {
        try {
            Intent intent = new C3928wc.Cnew().m8577do().f16367do;
            intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(intent, null);
            final zzcab zzcabVar = new zzcab();
            zzder zze = this.zzb.zze(new zzcrp(zzfcaVar, zzfboVar, null), new zzdeu(new zzdgc() { // from class: com.google.android.gms.internal.ads.zzeek
                @Override // com.google.android.gms.internal.ads.zzdgc
                public final void zza(boolean z, Context context, zzcwg zzcwgVar) {
                    zzeel.this.zzd(zzcabVar, z, context, zzcwgVar);
                }
            }, null));
            zzcabVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zze.zza(), null, new VersionInfoParcel(0, 0, false), null, null, zzfbrVar.zzb));
            this.zzd.zza();
            return zzgch.zzh(zze.zzg());
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    public final /* synthetic */ void zzd(zzcab zzcabVar, boolean z, Context context, zzcwg zzcwgVar) {
        try {
            com.google.android.gms.ads.internal.zzv.zzj();
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, (AdOverlayInfoParcel) zzcabVar.get(), true, this.zze);
        } catch (Exception unused) {
        }
    }
}
