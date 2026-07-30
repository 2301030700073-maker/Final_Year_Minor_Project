package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.facebook.GraphRequest;
import com.facebook.internal.gatekeeper.GateKeeper;
import com.facebook.internal.gatekeeper.GateKeeperRuntimeCache;
import defpackage.C0173Do;
import defpackage.C2782fz;
import defpackage.C3756th;
import defpackage.Cif;
import defpackage.RunnableC0320Kh;
import defpackage.RunnableC2852h9;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class FetchedAppGateKeepersManager {
    private static final String APPLICATION_FIELDS = "fields";
    private static final long APPLICATION_GATEKEEPER_CACHE_TIMEOUT = 3600000;
    private static final String APPLICATION_GATEKEEPER_EDGE = "mobile_sdk_gk";
    private static final String APPLICATION_GATEKEEPER_FIELD = "gatekeepers";
    private static final String APPLICATION_GRAPH_DATA = "data";
    private static final String APPLICATION_PLATFORM = "platform";
    private static final String APPLICATION_SDK_VERSION = "sdk_version";
    private static final String APP_GATEKEEPERS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_GATEKEEPERS.%s";
    private static final String APP_GATEKEEPERS_PREFS_STORE = "com.facebook.internal.preferences.APP_GATEKEEPERS";
    private static final String APP_PLATFORM = "android";
    private static GateKeeperRuntimeCache gateKeeperRuntimeCache;
    private static Long timestamp;
    public static final FetchedAppGateKeepersManager INSTANCE = new FetchedAppGateKeepersManager();
    private static final String TAG = C2782fz.m6697do(FetchedAppGateKeepersManager.class).m2544if();
    private static final AtomicBoolean isLoading = new AtomicBoolean(false);
    private static final ConcurrentLinkedQueue<Callback> callbacks = new ConcurrentLinkedQueue<>();
    private static final Map<String, JSONObject> fetchedAppGateKeepers = new ConcurrentHashMap();

    public interface Callback {
        void onCompleted();
    }

    private FetchedAppGateKeepersManager() {
    }

    private final JSONObject getAppGateKeepersQueryResponse(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(APPLICATION_PLATFORM, "android");
        C3756th c3756th = C3756th.f15751do;
        bundle.putString(APPLICATION_SDK_VERSION, "16.0.0");
        bundle.putString(APPLICATION_FIELDS, APPLICATION_GATEKEEPER_FIELD);
        String str2 = GraphRequest.f9271for;
        String format = String.format("app/%s", Arrays.copyOf(new Object[]{APPLICATION_GATEKEEPER_EDGE}, 1));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        GraphRequest m5286else = GraphRequest.Cfor.m5286else(null, format, null);
        m5286else.f9274do = bundle;
        JSONObject jSONObject = m5286else.m5267for().f1998if;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    public static final boolean getGateKeeperForKey(String str, String str2, boolean z) {
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        Map<String, Boolean> gateKeepersForApplication = INSTANCE.getGateKeepersForApplication(str2);
        if (!gateKeepersForApplication.containsKey(str)) {
            return z;
        }
        Boolean bool = gateKeepersForApplication.get(str);
        return bool == null ? z : bool.booleanValue();
    }

    private final boolean isTimestampValid(Long l) {
        return l != null && System.currentTimeMillis() - l.longValue() < APPLICATION_GATEKEEPER_CACHE_TIMEOUT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAppGateKeepersAsync$lambda-0, reason: not valid java name */
    public static final void m5411loadAppGateKeepersAsync$lambda0(String str, Context context, String str2) {
        C0173Do.m401try(str, "$applicationId");
        C0173Do.m401try(context, "$context");
        C0173Do.m401try(str2, "$gateKeepersKey");
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = INSTANCE;
        JSONObject appGateKeepersQueryResponse = fetchedAppGateKeepersManager.getAppGateKeepersQueryResponse(str);
        if (appGateKeepersQueryResponse.length() != 0) {
            parseAppGateKeepersFromJSON$facebook_core_release(str, appGateKeepersQueryResponse);
            context.getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(str2, appGateKeepersQueryResponse.toString()).apply();
            timestamp = Long.valueOf(System.currentTimeMillis());
        }
        fetchedAppGateKeepersManager.pollCallbacks();
        isLoading.set(false);
    }

    public static final synchronized JSONObject parseAppGateKeepersFromJSON$facebook_core_release(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONArray optJSONArray;
        synchronized (FetchedAppGateKeepersManager.class) {
            C0173Do.m401try(str, "applicationId");
            jSONObject2 = fetchedAppGateKeepers.get(str);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            int i = 0;
            JSONObject jSONObject3 = null;
            if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(APPLICATION_GRAPH_DATA)) != null) {
                jSONObject3 = optJSONArray.optJSONObject(0);
            }
            if (jSONObject3 == null) {
                jSONObject3 = new JSONObject();
            }
            JSONArray optJSONArray2 = jSONObject3.optJSONArray(APPLICATION_GATEKEEPER_FIELD);
            if (optJSONArray2 == null) {
                optJSONArray2 = new JSONArray();
            }
            int length = optJSONArray2.length();
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    try {
                        JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                        jSONObject2.put(jSONObject4.getString("key"), jSONObject4.getBoolean("value"));
                    } catch (JSONException e) {
                        Utility.logd(Utility.LOG_TAG, e);
                    }
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            fetchedAppGateKeepers.put(str, jSONObject2);
        }
        return jSONObject2;
    }

    private final void pollCallbacks() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<Callback> concurrentLinkedQueue = callbacks;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            Callback poll = concurrentLinkedQueue.poll();
            if (poll != null) {
                handler.post(new RunnableC2852h9(poll, 4));
            }
        }
    }

    public static final JSONObject queryAppGateKeepers(String str, boolean z) {
        C0173Do.m401try(str, "applicationId");
        if (!z) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                JSONObject jSONObject = map.get(str);
                return jSONObject == null ? new JSONObject() : jSONObject;
            }
        }
        JSONObject appGateKeepersQueryResponse = INSTANCE.getAppGateKeepersQueryResponse(str);
        C3756th.m8299do().getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(Cif.m6913else(new Object[]{str}, 1, APP_GATEKEEPERS_PREFS_KEY_FORMAT, "java.lang.String.format(format, *args)"), appGateKeepersQueryResponse.toString()).apply();
        return parseAppGateKeepersFromJSON$facebook_core_release(str, appGateKeepersQueryResponse);
    }

    public static final void resetRuntimeGateKeeperCache() {
        GateKeeperRuntimeCache gateKeeperRuntimeCache2 = gateKeeperRuntimeCache;
        if (gateKeeperRuntimeCache2 == null) {
            return;
        }
        GateKeeperRuntimeCache.resetCache$default(gateKeeperRuntimeCache2, null, 1, null);
    }

    public static final void setRuntimeGateKeeper(String str, GateKeeper gateKeeper) {
        GateKeeperRuntimeCache gateKeeperRuntimeCache2;
        C0173Do.m401try(str, "applicationId");
        C0173Do.m401try(gateKeeper, "gateKeeper");
        GateKeeperRuntimeCache gateKeeperRuntimeCache3 = gateKeeperRuntimeCache;
        if ((gateKeeperRuntimeCache3 == null ? null : gateKeeperRuntimeCache3.getGateKeeper(str, gateKeeper.getName())) == null || (gateKeeperRuntimeCache2 = gateKeeperRuntimeCache) == null) {
            return;
        }
        gateKeeperRuntimeCache2.setGateKeeper(str, gateKeeper);
    }

    public static /* synthetic */ void setRuntimeGateKeeper$default(String str, GateKeeper gateKeeper, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        setRuntimeGateKeeper(str, gateKeeper);
    }

    public final Map<String, Boolean> getGateKeepersForApplication(String str) {
        loadAppGateKeepersAsync();
        if (str != null) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                GateKeeperRuntimeCache gateKeeperRuntimeCache2 = gateKeeperRuntimeCache;
                List<GateKeeper> dumpGateKeepers = gateKeeperRuntimeCache2 == null ? null : gateKeeperRuntimeCache2.dumpGateKeepers(str);
                if (dumpGateKeepers != null) {
                    HashMap hashMap = new HashMap();
                    for (GateKeeper gateKeeper : dumpGateKeepers) {
                        hashMap.put(gateKeeper.getName(), Boolean.valueOf(gateKeeper.getValue()));
                    }
                    return hashMap;
                }
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    C0173Do.m399new(next, "key");
                    hashMap2.put(next, Boolean.valueOf(jSONObject.optBoolean(next)));
                }
                GateKeeperRuntimeCache gateKeeperRuntimeCache3 = gateKeeperRuntimeCache;
                if (gateKeeperRuntimeCache3 == null) {
                    gateKeeperRuntimeCache3 = new GateKeeperRuntimeCache();
                }
                ArrayList arrayList = new ArrayList(hashMap2.size());
                for (Map.Entry entry : hashMap2.entrySet()) {
                    arrayList.add(new GateKeeper((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                gateKeeperRuntimeCache3.setGateKeepers(str, arrayList);
                gateKeeperRuntimeCache = gateKeeperRuntimeCache3;
                return hashMap2;
            }
        }
        return new HashMap();
    }

    public final void loadAppGateKeepersAsync() {
        loadAppGateKeepersAsync(null);
    }

    public static final synchronized void loadAppGateKeepersAsync(Callback callback) {
        synchronized (FetchedAppGateKeepersManager.class) {
            if (callback != null) {
                try {
                    callbacks.add(callback);
                } catch (Throwable th) {
                    throw th;
                }
            }
            String m8303if = C3756th.m8303if();
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = INSTANCE;
            if (fetchedAppGateKeepersManager.isTimestampValid(timestamp) && fetchedAppGateKeepers.containsKey(m8303if)) {
                fetchedAppGateKeepersManager.pollCallbacks();
                return;
            }
            Context m8299do = C3756th.m8299do();
            int i = 0;
            String format = String.format(APP_GATEKEEPERS_PREFS_KEY_FORMAT, Arrays.copyOf(new Object[]{m8303if}, 1));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            JSONObject jSONObject = null;
            String string = m8299do.getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).getString(format, null);
            if (!Utility.isNullOrEmpty(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    Utility.logd(Utility.LOG_TAG, e);
                }
                if (jSONObject != null) {
                    parseAppGateKeepersFromJSON$facebook_core_release(m8303if, jSONObject);
                }
            }
            Executor m8304new = C3756th.m8304new();
            if (isLoading.compareAndSet(false, true)) {
                m8304new.execute(new RunnableC0320Kh(m8303if, m8299do, format, i));
            }
        }
    }
}
