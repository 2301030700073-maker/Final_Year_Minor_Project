package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzezs implements zzeya {
    private final JSONObject zza;

    zzezs(Context context) {
        this.zza = zzbxf.zzb(context, VersionInfoParcel.forPackage());
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmW)).booleanValue() ? zzgui.zza(zzezq.zza) : zzgui.zza(new zzexy() { // from class: com.google.android.gms.internal.ads.zzezr
            @Override // com.google.android.gms.internal.ads.zzexy
            public final /* synthetic */ void zza(Object obj) {
                zzezs.this.zzc((JSONObject) obj);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 46;
    }

    final /* synthetic */ void zzc(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed putting version constants.");
        }
    }
}
