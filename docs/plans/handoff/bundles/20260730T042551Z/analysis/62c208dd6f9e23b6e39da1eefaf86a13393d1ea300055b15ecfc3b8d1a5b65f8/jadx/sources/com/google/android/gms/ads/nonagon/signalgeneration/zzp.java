package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzdsb;

/* loaded from: classes.dex */
public final class zzp extends QueryInfoGenerationCallback {

    /* renamed from: do, reason: not valid java name */
    public final int f10080do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f10081do = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzo f10082do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdsb f10083do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f10084do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f10085do;

    public zzp(zzo zzoVar, boolean z, int i, Boolean bool, zzdsb zzdsbVar) {
        this.f10082do = zzoVar;
        this.f10085do = z;
        this.f10080do = i;
        this.f10084do = bool;
        this.f10083do = zzdsbVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        Pair[] pairArr = new Pair[9];
        pairArr[0] = new Pair("sgf_reason", str);
        pairArr[1] = new Pair("se", "query_g");
        pairArr[2] = new Pair("ad_format", AdFormat.BANNER.name());
        pairArr[3] = new Pair("rtype", Integer.toString(6));
        pairArr[4] = new Pair("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        pairArr[5] = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.f10081do));
        pairArr[6] = new Pair("sgpc_rn", Integer.toString(this.f10080do));
        pairArr[7] = new Pair("sgpc_lsu", String.valueOf(this.f10084do));
        boolean z = this.f10085do;
        pairArr[8] = new Pair("tpc", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzaa.zzd(this.f10083do, null, "sgpcf", pairArr);
        this.f10082do.m5593do(z, new zzq(null, str, ((Long) zzbeq.zzf.zze()).longValue() + com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis(), this.f10080do));
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        Pair[] pairArr = new Pair[8];
        pairArr[0] = new Pair("se", "query_g");
        pairArr[1] = new Pair("ad_format", AdFormat.BANNER.name());
        pairArr[2] = new Pair("rtype", Integer.toString(6));
        pairArr[3] = new Pair("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        pairArr[4] = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.f10081do));
        pairArr[5] = new Pair("sgpc_rn", Integer.toString(this.f10080do));
        pairArr[6] = new Pair("sgpc_lsu", String.valueOf(this.f10084do));
        boolean z = this.f10085do;
        pairArr[7] = new Pair("tpc", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzaa.zzd(this.f10083do, null, "sgpcs", pairArr);
        this.f10082do.m5593do(z, new zzq(queryInfo, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, ((Long) zzbeq.zzf.zze()).longValue() + com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis(), this.f10080do));
    }
}
