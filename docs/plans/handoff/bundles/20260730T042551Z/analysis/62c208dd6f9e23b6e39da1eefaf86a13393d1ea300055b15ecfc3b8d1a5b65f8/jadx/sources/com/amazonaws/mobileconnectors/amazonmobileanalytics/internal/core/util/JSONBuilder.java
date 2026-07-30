package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util;

import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JSONBuilder implements JSONSerializable {

    /* renamed from: do, reason: not valid java name */
    public final JSONObject f8840do = new JSONObject();

    public JSONBuilder(Object obj) {
        if (obj != null) {
            m5075for(obj.getClass().getName(), "class");
            m5075for(Integer.toHexString(obj.hashCode()), "hashCode");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final JSONBuilder m5075for(Object obj, String str) {
        if (obj instanceof JSONSerializable) {
            obj = ((JSONSerializable) obj).mo5076if();
        }
        try {
            this.f8840do.putOpt(str, obj);
        } catch (JSONException unused) {
        }
        return this;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable
    /* renamed from: if, reason: not valid java name */
    public final JSONObject mo5076if() {
        return this.f8840do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.String] */
    public final String toString() {
        ?? r0 = this.f8840do;
        if (r0 == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            r0 = r0.toString(4);
            return r0;
        } catch (JSONException unused) {
            return r0.toString();
        }
    }
}
