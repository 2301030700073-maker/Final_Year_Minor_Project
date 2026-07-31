package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzfou {
    public static zzfou zze(zzfov zzfovVar, zzfow zzfowVar) {
        zzfqs.zza();
        return new zzfoy(zzfovVar, zzfowVar, UUID.randomUUID().toString());
    }

    public abstract void zza();

    public abstract void zzb(View view);

    public abstract void zzc();

    public abstract void zzd(View view, zzfpb zzfpbVar, String str);
}
