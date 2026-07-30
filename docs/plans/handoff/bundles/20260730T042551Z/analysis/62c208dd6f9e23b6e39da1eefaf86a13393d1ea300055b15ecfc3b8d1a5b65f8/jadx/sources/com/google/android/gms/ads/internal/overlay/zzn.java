package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzdds;
import com.google.android.gms.internal.ads.zzdrw;

/* loaded from: classes.dex */
public final class zzn {
    public static final void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z, zzdrw zzdrwVar) {
        if (adOverlayInfoParcel.zzk == 4 && adOverlayInfoParcel.zzc == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdds zzddsVar = adOverlayInfoParcel.zzu;
            if (zzddsVar != null) {
                zzddsVar.zzdd();
            }
            Activity zzi = adOverlayInfoParcel.zzd.zzi();
            zzc zzcVar = adOverlayInfoParcel.zza;
            Context context2 = (zzcVar == null || !zzcVar.zzj || zzi == null) ? context : zzi;
            com.google.android.gms.ads.internal.zzv.zzi();
            zzc zzcVar2 = adOverlayInfoParcel.zza;
            zza.zzb(context2, zzcVar2, adOverlayInfoParcel.zzi, zzcVar2 != null ? zzcVar2.zzi : null, zzdrwVar, adOverlayInfoParcel.zzq);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzm.isClientJar);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzmU)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            zzs.zzX(context, intent, zzdrwVar, adOverlayInfoParcel.zzq);
        } else {
            com.google.android.gms.ads.internal.zzv.zzq();
            zzs.zzT(context, intent);
        }
    }
}
