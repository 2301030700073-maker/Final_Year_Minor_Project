package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidPreferences;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PreferencesConfiguration {

    /* renamed from: do, reason: not valid java name */
    public final ConcurrentHashMap f8809do = new ConcurrentHashMap();

    public PreferencesConfiguration(AnalyticsContext analyticsContext) {
        String string;
        analyticsContext.getClass();
        AndroidPreferences androidPreferences = ((DefaultAnalyticsContext) analyticsContext).f8805do.f8836do;
        JSONObject jSONObject = null;
        if (androidPreferences != null && (string = androidPreferences.f8832do.getString("configuration", null)) != null) {
            try {
                jSONObject = new JSONObject(string);
            } catch (JSONException unused) {
            }
        }
        HashMap hashMap = new HashMap();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, jSONObject.getString(next));
                } catch (JSONException unused2) {
                }
            }
        }
        this.f8809do.putAll(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Boolean m5068do(java.lang.String r3, java.lang.Boolean r4) {
        /*
            r2 = this;
            j$.util.concurrent.ConcurrentHashMap r0 = r2.f8809do
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L1e
            boolean r0 = java.lang.Boolean.parseBoolean(r0)     // Catch: java.lang.Exception -> L13
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Exception -> L13
            goto L1f
        L13:
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            r0[r1] = r3
            java.lang.String r3 = "Could not get Boolean for propertyName: %s"
            java.lang.String.format(r3, r0)
        L1e:
            r3 = 0
        L1f:
            if (r3 == 0) goto L22
            r4 = r3
        L22:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration.m5068do(java.lang.String, java.lang.Boolean):java.lang.Boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Long m5069if(java.lang.String r3, java.lang.Long r4) {
        /*
            r2 = this;
            j$.util.concurrent.ConcurrentHashMap r0 = r2.f8809do
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L1a
            java.lang.Long r3 = java.lang.Long.decode(r0)     // Catch: java.lang.Exception -> Lf
            goto L1b
        Lf:
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            r0[r1] = r3
            java.lang.String r3 = "Could not get Long for propertyName: %s"
            java.lang.String.format(r3, r0)
        L1a:
            r3 = 0
        L1b:
            if (r3 == 0) goto L1e
            r4 = r3
        L1e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration.m5069if(java.lang.String, java.lang.Long):java.lang.Long");
    }
}
