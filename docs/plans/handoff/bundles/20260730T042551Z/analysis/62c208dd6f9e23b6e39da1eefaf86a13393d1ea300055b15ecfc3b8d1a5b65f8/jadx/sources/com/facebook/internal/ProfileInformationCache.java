package com.facebook.internal;

import defpackage.C0173Do;
import j$.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ProfileInformationCache {
    public static final ProfileInformationCache INSTANCE = new ProfileInformationCache();
    private static final ConcurrentHashMap<String, JSONObject> infoCache = new ConcurrentHashMap<>();

    private ProfileInformationCache() {
    }

    public static final JSONObject getProfileInformation(String str) {
        C0173Do.m401try(str, "accessToken");
        return infoCache.get(str);
    }

    public static final void putProfileInformation(String str, JSONObject jSONObject) {
        C0173Do.m401try(str, "key");
        C0173Do.m401try(jSONObject, "value");
        infoCache.put(str, jSONObject);
    }
}
