package com.braze.models.response;

import com.braze.managers.o0;
import com.braze.managers.s0;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class m {
    public Long A;
    public long B;
    public long C;
    public long D;
    public Map E;
    public boolean F;
    public int G;

    /* renamed from: a, reason: collision with root package name */
    public long f180a;
    public Set b;
    public Set c;
    public Set d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public boolean j;
    public long k;
    public boolean l;
    public boolean m;
    public int n;
    public boolean o;
    public long p;
    public boolean q;
    public int r;
    public int s;
    public boolean t;
    public long u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public String z;

    public m() {
        int i = e0.f;
        int i2 = e0.g;
        this.f180a = 0L;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = -1;
        this.f = -1;
        this.g = -1;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = -1L;
        this.l = false;
        this.m = false;
        this.n = -1;
        this.o = false;
        this.p = 86400L;
        this.q = true;
        this.r = 30;
        this.s = 30;
        this.t = false;
        this.u = -1L;
        this.v = i;
        this.w = i2;
        this.x = 3;
        this.y = false;
        this.z = null;
        this.A = null;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = null;
        this.F = false;
        this.G = 0;
    }

    public static final String g() {
        return "Caught error parsing global rate limit config.";
    }

    public static final String k(JSONObject jSONObject) {
        return "sdkDebuggerObject contains invalid values. Disabling SDK debugging. " + jSONObject;
    }

    public final void a(JSONObject jSONObject) {
        int i;
        JSONObject optJSONObject = jSONObject.optJSONObject("banners");
        if (optJSONObject != null) {
            try {
                this.F = optJSONObject.getBoolean("enabled");
                i = optJSONObject.getInt("max_placements");
                this.G = i;
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.a();
                    }
                }, 4, (Object) null);
            }
            if (!this.F || i > 0) {
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.a(m.this);
                }
            }, 7, (Object) null);
            this.F = false;
            this.G = 0;
        }
    }

    public final void b(JSONObject jSONObject) {
        boolean z;
        JSONObject optJSONObject = jSONObject.optJSONObject("content_cards");
        if (optJSONObject != null) {
            try {
                z = optJSONObject.getBoolean("enabled");
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.b();
                    }
                }, 4, (Object) null);
                z = false;
            }
            this.j = z;
        }
    }

    public final void c(JSONObject jSONObject) {
        boolean z;
        JSONObject optJSONObject = jSONObject.optJSONObject("dust");
        if (optJSONObject != null) {
            try {
                z = optJSONObject.getBoolean("enabled");
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.c();
                    }
                }, 4, (Object) null);
                z = false;
            }
            this.t = z;
        }
    }

    public final void d(JSONObject jSONObject) {
        boolean z;
        JSONObject optJSONObject = jSONObject.optJSONObject("ephemeral_events");
        if (optJSONObject != null) {
            try {
                z = optJSONObject.getBoolean("enabled");
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.d();
                    }
                }, 4, (Object) null);
                z = false;
            }
            this.l = z;
        }
    }

    public final void e(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("feature_flags");
        if (optJSONObject != null) {
            try {
                this.m = optJSONObject.optBoolean("enabled");
                this.n = optJSONObject.getInt("refresh_rate_limit");
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.e();
                    }
                }, 4, (Object) null);
                this.m = false;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f180a == mVar.f180a && Intrinsics.areEqual(this.b, mVar.b) && Intrinsics.areEqual(this.c, mVar.c) && Intrinsics.areEqual(this.d, mVar.d) && this.e == mVar.e && this.f == mVar.f && this.g == mVar.g && this.h == mVar.h && this.i == mVar.i && this.j == mVar.j && this.k == mVar.k && this.l == mVar.l && this.m == mVar.m && this.n == mVar.n && this.o == mVar.o && this.p == mVar.p && this.q == mVar.q && this.r == mVar.r && this.s == mVar.s && this.t == mVar.t && this.u == mVar.u && this.v == mVar.v && this.w == mVar.w && this.x == mVar.x && this.y == mVar.y && Intrinsics.areEqual(this.z, mVar.z) && Intrinsics.areEqual(this.A, mVar.A) && this.B == mVar.B && this.C == mVar.C && this.D == mVar.D && Intrinsics.areEqual(this.E, mVar.E) && this.F == mVar.F && this.G == mVar.G;
    }

    public final void f(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("geofences");
        if (optJSONObject != null) {
            try {
                this.e = optJSONObject.getInt("min_time_since_last_request");
                this.f = optJSONObject.getInt("min_time_since_last_report");
                this.i = optJSONObject.getBoolean("enabled");
                this.h = true;
                this.g = optJSONObject.optInt("max_num_to_register", 20);
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.f();
                    }
                }, 4, (Object) null);
                this.e = -1;
                this.f = -1;
                this.g = -1;
                this.i = false;
                this.h = false;
            }
        }
    }

    public final void h(JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("global_request_rate_limit");
            if (optJSONObject != null) {
                if (!optJSONObject.getBoolean("enabled")) {
                    this.q = false;
                    return;
                }
                int i = optJSONObject.getInt("refill_rate");
                int i2 = optJSONObject.getInt("capacity");
                if (i2 < 10) {
                    this.q = false;
                } else {
                    if (i <= 0) {
                        return;
                    }
                    this.q = true;
                    this.s = i2;
                    this.r = i;
                    g(optJSONObject);
                }
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.g();
                }
            }, 4, (Object) null);
            this.q = false;
            this.E = null;
        }
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f180a) * 31;
        Set set = this.b;
        int hashCode2 = (hashCode + (set == null ? 0 : set.hashCode())) * 31;
        Set set2 = this.c;
        int hashCode3 = (hashCode2 + (set2 == null ? 0 : set2.hashCode())) * 31;
        Set set3 = this.d;
        int hashCode4 = (Boolean.hashCode(this.y) + ((Integer.hashCode(this.x) + ((Integer.hashCode(this.w) + ((Integer.hashCode(this.v) + ((Long.hashCode(this.u) + ((Boolean.hashCode(this.t) + ((Integer.hashCode(this.s) + ((Integer.hashCode(this.r) + ((Boolean.hashCode(this.q) + ((Long.hashCode(this.p) + ((Boolean.hashCode(this.o) + ((Integer.hashCode(this.n) + ((Boolean.hashCode(this.m) + ((Boolean.hashCode(this.l) + ((Long.hashCode(this.k) + ((Boolean.hashCode(this.j) + ((Boolean.hashCode(this.i) + ((Boolean.hashCode(this.h) + ((Integer.hashCode(this.g) + ((Integer.hashCode(this.f) + ((Integer.hashCode(this.e) + ((hashCode3 + (set3 == null ? 0 : set3.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.z;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.A;
        int hashCode6 = (Long.hashCode(this.D) + ((Long.hashCode(this.C) + ((Long.hashCode(this.B) + ((hashCode5 + (l == null ? 0 : l.hashCode())) * 31)) * 31)) * 31)) * 31;
        Map map = this.E;
        return Integer.hashCode(this.G) + ((Boolean.hashCode(this.F) + ((hashCode6 + (map != null ? map.hashCode() : 0)) * 31)) * 31);
    }

    public final void i(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("push_max");
        if (optJSONObject != null) {
            try {
                this.o = optJSONObject.optBoolean("enabled");
                this.p = optJSONObject.optLong("redeliver_buffer", 86400L);
                this.u = optJSONObject.optLong("redeliver_dedupe_buffer", -1L);
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return m.h();
                    }
                }, 4, (Object) null);
                this.o = false;
                this.p = 0L;
                this.u = -1L;
            }
        }
    }

    public final void j(JSONObject jSONObject) {
        final JSONObject optJSONObject = jSONObject.optJSONObject("sdk_debugger");
        if (optJSONObject == null) {
            return;
        }
        try {
            o0 a2 = s0.k.a(optJSONObject, false);
            if (a2.f127a) {
                this.y = true;
                this.z = a2.c;
                Long l = a2.b;
                if (l != null) {
                    this.A = Long.valueOf(l.longValue());
                }
                this.B = a2.d;
                this.C = a2.e;
                this.D = a2.f;
            }
            String str = this.z;
            if (str != null && !StringsKt.isBlank(str) && this.B > 0 && this.C > 0 && this.D > 0) {
                return;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.k(optJSONObject);
                }
            }, 7, (Object) null);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.response.m$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return m.i();
                }
            }, 4, (Object) null);
        }
        this.y = false;
        this.z = null;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServerConfig(configTime=");
        sb.append(this.f180a).append(", blocklistedEvents=").append(this.b).append(", blocklistedAttributes=").append(this.c).append(", blocklistedPurchases=").append(this.d).append(", minTimeSinceLastRequest=").append(this.e).append(", minTimeSinceLastReport=").append(this.f).append(", maxNumToRegister=").append(this.g).append(", geofencesEnabledSet=").append(this.h).append(", geofencesEnabled=").append(this.i).append(", isContentCardsFeatureEnabled=").append(this.j).append(", messagingSessionTimeout=").append(this.k).append(", ephemeralEventsEnabled=");
        sb.append(this.l).append(", featureFlagsEnabled=").append(this.m).append(", featureFlagsRefreshRateLimit=").append(this.n).append(", pushMaxEnabled=").append(this.o).append(", pushMaxRedeliverBuffer=").append(this.p).append(", globalRequestRateLimitEnabled=").append(this.q).append(", globalRequestRateLimitBucketRefillRate=").append(this.r).append(", globalRequestRateLimitBucketCapacity=").append(this.s).append(", isDustFeatureEnabled=").append(this.t).append(", pushMaxRedeliverDedupeBuffer=").append(this.u).append(", defaultBackoffMinSleepMs=").append(this.v).append(", defaultBackoffMaxSleepMs=").append(this.w);
        sb.append(", defaultBackoffScaleFactor=").append(this.x).append(", sdkDebuggerEnabled=").append(this.y).append(", sdkDebuggerAuthCode=").append(this.z).append(", sdkDebuggerExpirationTime=").append(this.A).append(", sdkDebuggerFlushIntervalBytes=").append(this.B).append(", sdkDebuggerFlushIntervalSeconds=").append(this.C).append(", sdkDebuggerMaxPayloadBytes=").append(this.D).append(", globalRequestRateLimitOverrides=").append(this.E).append(", bannersEnabled=").append(this.F).append(", maxBannerPlacements=").append(this.G).append(')');
        return sb.toString();
    }

    public final void g(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("endpoint_overrides");
        if (optJSONObject != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
            while (keys.hasNext()) {
                String destinationSuffix = keys.next();
                com.braze.requests.l lVar = com.braze.requests.m.b;
                Intrinsics.checkNotNull(destinationSuffix);
                lVar.getClass();
                Intrinsics.checkNotNullParameter(destinationSuffix, "destinationSuffix");
                com.braze.requests.m mVar = (com.braze.requests.m) com.braze.requests.m.c.get(destinationSuffix);
                if (mVar != null) {
                    JSONObject jSONObject2 = optJSONObject.getJSONObject(destinationSuffix);
                    int i = jSONObject2.getInt("capacity");
                    int i2 = jSONObject2.getInt("refill_rate");
                    if (i > 0 && i2 > 0) {
                        linkedHashMap.put(mVar, new j(i, i2));
                    }
                }
            }
            if (linkedHashMap.isEmpty()) {
                return;
            }
            this.E = linkedHashMap;
        }
    }

    public static final String b() {
        return "Error getting required content cards fields. Using defaults.";
    }

    public static final String c() {
        return "Error getting required DUST enabled field. Using default of false.";
    }

    public static final String d() {
        return "Error getting required ephemeral events fields. Using defaults.";
    }

    public static final String e() {
        return "Error getting required feature flag fields. Disabling feature flags.";
    }

    public static final String a(m mVar) {
        return "Banners enabled but maxBannerPlacement is " + mVar.G + ". Not enabling banners.";
    }

    public static final String a() {
        return "Error getting required banner configuration fields. Disabling banners.";
    }

    public static HashSet a(JSONObject jSONObject, String str) {
        Iterator it;
        HashSet hashSet = new HashSet();
        if (jSONObject.has(str)) {
            JSONArray optJSONArray = jSONObject.optJSONArray(str);
            if (optJSONArray == null) {
                it = CollectionsKt.emptyList().iterator();
            } else {
                it = SequencesKt.map(SequencesKt.filter(CollectionsKt.asSequence(RangesKt.until(0, optJSONArray.length())), new k(optJSONArray)), new l(optJSONArray)).iterator();
            }
            while (it.hasNext()) {
                hashSet.add((String) it.next());
            }
        }
        return hashSet;
    }

    public static final String f() {
        return "Error getting required geofence fields. Using defaults.";
    }

    public static final String i() {
        return "Error getting required SDK debugging fields. Disabling SDK debugging.";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public m(JSONObject configJson) {
        this();
        Intrinsics.checkNotNullParameter(configJson, "configJson");
        this.f180a = configJson.optLong("time", 0L);
        this.k = configJson.optLong("messaging_session_timeout", -1L);
        this.b = a(configJson, "events_blacklist");
        this.c = a(configJson, "attributes_blacklist");
        this.d = a(configJson, "purchases_blacklist");
        b(configJson);
        f(configJson);
        d(configJson);
        e(configJson);
        i(configJson);
        h(configJson);
        c(configJson);
        JSONObject optJSONObject = configJson.optJSONObject("request_backoff");
        if (optJSONObject != null) {
            this.v = optJSONObject.optInt("min_sleep_duration_ms", this.v);
            this.w = optJSONObject.optInt("max_sleep_duration_ms", this.w);
            this.x = optJSONObject.optInt("scale_factor", this.x);
        }
        j(configJson);
        a(configJson);
    }

    public static final String h() {
        return "Error getting required push max fields. Disabling push max.";
    }
}
