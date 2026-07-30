package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfa {

    /* renamed from: do, reason: not valid java name */
    public final Bundle f9658do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9659do;

    /* renamed from: if, reason: not valid java name */
    public final String f9660if;

    public zzfa(String str, Bundle bundle, String str2) {
        this.f9659do = str;
        this.f9658do = bundle;
        this.f9660if = str2;
    }

    public final Bundle zza() {
        return this.f9658do;
    }

    public final String zzb() {
        return this.f9659do;
    }

    public final String zzc() {
        String str = this.f9660if;
        if (!TextUtils.isEmpty(str)) {
            try {
                return new JSONObject(str).optString("request_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } catch (JSONException unused) {
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
