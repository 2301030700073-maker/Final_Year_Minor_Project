package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbkz implements zzblx {
    zzbkz() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgy zzcgyVar = (zzcgy) obj;
        try {
            zzfwx.zzh(zzcgyVar.getContext()).zzk();
            zzfwy.zzh(zzcgyVar.getContext()).zzj();
            zzfwz.zza(zzcgyVar.getContext()).zzb(null);
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "DefaultGmsgHandlers.ResetPaid");
        }
    }
}
