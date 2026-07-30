package com.google.android.gms.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class LoadAdError extends AdError {

    /* renamed from: do, reason: not valid java name */
    public final ResponseInfo f9511do;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.f9511do = responseInfo;
    }

    public ResponseInfo getResponseInfo() {
        return this.f9511do;
    }

    @Override // com.google.android.gms.ads.AdError
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject zzb() {
        JSONObject zzb = super.zzb();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzb.put("Response Info", "null");
        } else {
            zzb.put("Response Info", responseInfo.zzd());
        }
        return zzb;
    }
}
