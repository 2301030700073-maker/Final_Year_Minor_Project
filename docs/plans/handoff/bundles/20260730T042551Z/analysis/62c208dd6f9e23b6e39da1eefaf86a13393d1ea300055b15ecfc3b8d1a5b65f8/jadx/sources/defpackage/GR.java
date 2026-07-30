package defpackage;

import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.internal.client.zzdk;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzex;

/* loaded from: classes.dex */
public final class GR extends zzdk {
    @Override // com.google.android.gms.ads.internal.client.zzdl
    public final void zze(zze zzeVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener = zzex.zzf().f9647do;
        if (onAdInspectorClosedListener != null) {
            onAdInspectorClosedListener.onAdInspectorClosed(zzeVar == null ? null : new AdInspectorError(zzeVar.zza, zzeVar.zzb, zzeVar.zzc));
        }
    }
}
