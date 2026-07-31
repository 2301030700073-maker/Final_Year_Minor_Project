package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbkv implements zzblx {
    zzbkv() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgy zzcgyVar = (zzcgy) obj;
        if (TextUtils.isEmpty((CharSequence) map.get(RemoteConfigConstants.RequestFieldKey.APP_ID))) {
            com.google.android.gms.ads.internal.util.zze.zza("Missing App Id, cannot show LMD Overlay without it");
            return;
        }
        zzgko zzl = zzgkp.zzl();
        zzl.zzb((String) map.get(RemoteConfigConstants.RequestFieldKey.APP_ID));
        zzl.zzg(zzcgyVar.getWidth());
        zzl.zza(zzcgyVar.zzE().getWindowToken());
        if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
            zzl.zzc(Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY")));
        } else {
            zzl.zzc(81);
        }
        if (map.containsKey("verticalMargin")) {
            zzl.zzd(Float.parseFloat((String) map.get("verticalMargin")));
        } else {
            zzl.zzd(0.02f);
        }
        if (map.containsKey("enifd")) {
            zzl.zzh((String) map.get("enifd"));
        }
        try {
            com.google.android.gms.ads.internal.zzt.zzt().zzc(zzcgyVar, zzl.zzi());
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "DefaultGmsgHandlers.ShowLMDOverlay");
            com.google.android.gms.ads.internal.util.zze.zza("Missing parameters for LMD Overlay show request");
        }
    }
}
