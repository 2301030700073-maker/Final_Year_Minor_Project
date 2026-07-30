package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.adapter;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver.Id;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidAppDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidDeviceDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JSONEventAdapter implements EventAdapter<JSONObject> {
    /* renamed from: if, reason: not valid java name */
    public static DefaultEvent m5103if(JSONObject jSONObject) {
        Id id;
        Long l;
        Long l2;
        Long l3;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        AndroidAppDetails androidAppDetails = new AndroidAppDetails(jSONObject.optString("app_package_name"), jSONObject.optString("app_version_code"), jSONObject.optString("app_version_name"), jSONObject.optString("app_title"), jSONObject.optString("app_id"));
        SDKInfo sDKInfo = new SDKInfo(jSONObject.optString("sdk_version"), jSONObject.optString("sdk_name"));
        AndroidDeviceDetails androidDeviceDetails = new AndroidDeviceDetails(jSONObject.optString("carrier"));
        String string = jSONObject.getString("event_type");
        Long valueOf = Long.valueOf(jSONObject.getLong("timestamp"));
        String string2 = jSONObject.getString("unique_id");
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (string2 == null || string2.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            synchronized (Id.class) {
            }
            id = Id.f8816do;
        } else {
            id = new Id(string2);
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("session");
        if (jSONObject2 != null) {
            str = jSONObject2.getString("id");
            l = Long.valueOf(jSONObject2.getLong("startTimestamp"));
            l2 = Long.valueOf(jSONObject2.optLong("stopTimestamp"));
            l3 = Long.valueOf(jSONObject2.optLong("duration"));
        } else {
            l = null;
            l2 = null;
            l3 = null;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("attributes");
        if (optJSONObject != null) {
            for (Iterator<String> keys = optJSONObject.keys(); keys.hasNext(); keys = keys) {
                String next = keys.next();
                hashMap.put(next, optJSONObject.optString(next));
            }
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("metrics");
        if (optJSONObject2 != null) {
            Iterator<String> keys2 = optJSONObject2.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                try {
                    hashMap2.put(next2, Double.valueOf(optJSONObject2.getDouble(next2)));
                } catch (JSONException unused) {
                }
            }
        }
        return new DefaultEvent(string, hashMap, hashMap2, sDKInfo, str, l.longValue(), l2, l3, valueOf.longValue(), id, androidAppDetails, androidDeviceDetails);
    }

    /* renamed from: do, reason: not valid java name */
    public final JSONObject m5104do(InternalEvent internalEvent) {
        if (internalEvent == null) {
            return null;
        }
        JSONObject mo5076if = internalEvent.mo5076if();
        if (mo5076if.has("class")) {
            mo5076if.remove("class");
        }
        if (!mo5076if.has("hashCode")) {
            return mo5076if;
        }
        mo5076if.remove("hashCode");
        return mo5076if;
    }

    public final String toString() {
        return new JSONBuilder(this).toString();
    }
}
