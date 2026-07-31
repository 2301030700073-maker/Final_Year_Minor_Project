package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import java.io.IOException;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbla implements zzblx {
    zzbla() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgy zzcgyVar = (zzcgy) obj;
        try {
            String str = (String) map.get("enabled");
            zzblx zzblxVar = zzblw.zza;
            if (!zzglm.zze(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, str) && !zzglm.zze("false", str)) {
                return;
            }
            zzfwu.zza(zzcgyVar.getContext()).zzd(Boolean.parseBoolean(str));
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
