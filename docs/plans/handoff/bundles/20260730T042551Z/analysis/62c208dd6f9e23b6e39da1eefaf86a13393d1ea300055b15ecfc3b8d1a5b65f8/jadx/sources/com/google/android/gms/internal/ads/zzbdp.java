package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import defpackage.C4105zc;
import org.json.JSONException;

/* loaded from: classes.dex */
final class zzbdp extends QueryInfoGenerationCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbdq zzb;

    public zzbdp(zzbdq zzbdqVar, String str) {
        this.zza = str;
        this.zzb = zzbdqVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        C4105zc c4105zc;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to generate query info for Custom Tab error: ".concat(String.valueOf(str)));
        try {
            zzbdq zzbdqVar = this.zzb;
            c4105zc = zzbdqVar.zzg;
            c4105zc.m8806do(zzbdqVar.zzc(this.zza, str).toString());
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating PACT Error Response JSON: ", e);
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        C4105zc c4105zc;
        String query = queryInfo.getQuery();
        try {
            zzbdq zzbdqVar = this.zzb;
            c4105zc = zzbdqVar.zzg;
            c4105zc.m8806do(zzbdqVar.zzd(this.zza, query).toString());
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating PACT Signal Response JSON: ", e);
        }
    }
}
