package com.braze.models.outgoing.event;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.braze.Constants;
import com.braze.enums.d;
import com.braze.enums.e;
import com.braze.enums.h;
import com.braze.models.FeatureFlag;
import com.braze.models.IBrazeLocation;
import com.braze.models.i;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.models.o;
import com.braze.models.outgoing.BrazeProperties;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.UUID;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {
    public static final i b(String str, BrazeProperties brazeProperties) {
        JSONObject put = new JSONObject().put(Constants.BRAZE_PUSH_CUSTOM_NOTIFICATION_ID, str);
        if (brazeProperties != null && brazeProperties.getSize() > 0) {
            put.put("p", brazeProperties.getJsonKey());
        }
        e eVar = e.e;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i d(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.o, jSONObject, 0.0d, 12);
    }

    public static final i f(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.q, jSONObject, 0.0d, 12);
    }

    public static final i h(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.r, jSONObject, 0.0d, 12);
    }

    public static final i j(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.p, jSONObject, 0.0d, 12);
    }

    public static final i l(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.m, jSONObject, 0.0d, 12);
    }

    public static final i n(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONObject.put("ids", jSONArray);
        return new b(e.l, jSONObject, 0.0d, 12);
    }

    public static final i p(String str) {
        return new b(e.y, b.g.a(str, (String) null, (String) null), 0.0d, 12);
    }

    public static final i q(String str) {
        JSONObject put = new JSONObject().put(Constants.BRAZE_PUSH_CUSTOM_NOTIFICATION_ID, str);
        e eVar = e.j;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i r(String str, String str2) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str).put("value", str2);
        e eVar = e.u;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i t(String str, String str2) {
        JSONObject put = new JSONObject().put("a", str).put(CmcdData.Factory.STREAM_TYPE_LIVE, str2);
        e eVar = e.A;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public final i a(final String eventName, final BrazeProperties brazeProperties) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(eventName, brazeProperties);
            }
        });
    }

    public final i c(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.d(cardId);
            }
        });
    }

    public final i e(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.f(cardId);
            }
        });
    }

    public final i g(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.h(cardId);
            }
        });
    }

    public final i i(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.j(cardId);
            }
        });
    }

    public final i k(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.l(cardId);
            }
        });
    }

    public final i m(final String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.n(cardId);
            }
        });
    }

    public final i o(final String triggerId) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.p(triggerId);
            }
        });
    }

    public final i s(final String alias, final String label) {
        Intrinsics.checkNotNullParameter(alias, "alias");
        Intrinsics.checkNotNullParameter(label, "label");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.t(alias, label);
            }
        });
    }

    public static final i s(String str) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str);
        e eVar = e.E;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public final i a(final String productId, final String currencyCode, final BigDecimal price, final int i, final BrazeProperties brazeProperties) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        Intrinsics.checkNotNullParameter(price, "price");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.a(BrazeProperties.this, productId, currencyCode, price, i);
            }
        });
    }

    public final i c(final String trackingId, final String str) {
        Intrinsics.checkNotNullParameter(trackingId, "trackingId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.d(trackingId, str);
            }
        });
    }

    public final i e(final String serializedEvent, final String uniqueIdentifier) {
        Intrinsics.checkNotNullParameter(serializedEvent, "serializedEvent");
        Intrinsics.checkNotNullParameter(uniqueIdentifier, "uniqueIdentifier");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.f(serializedEvent, uniqueIdentifier);
            }
        });
    }

    public final i g(final String id, final String eventType) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.h(id, eventType);
            }
        });
    }

    public final i i(final String triggerId, final String buttonId) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        Intrinsics.checkNotNullParameter(buttonId, "buttonId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.j(triggerId, buttonId);
            }
        });
    }

    public final i k(final String triggerId, final String str) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.l(triggerId, str);
            }
        });
    }

    public final i m(final String triggerId, final String str) {
        Intrinsics.checkNotNullParameter(triggerId, "triggerId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.n(triggerId, str);
            }
        });
    }

    public final i o(final String campaignId, final String pageId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.p(campaignId, pageId);
            }
        });
    }

    public static final i a(BrazeProperties brazeProperties, String str, String str2, BigDecimal bigDecimal, int i) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("pid", str);
        jSONObject.put("c", str2);
        Intrinsics.checkNotNullParameter(bigDecimal, "<this>");
        BigDecimal scale = bigDecimal.setScale(2, RoundingMode.HALF_UP);
        Intrinsics.checkNotNullExpressionValue(scale, "setScale(...)");
        jSONObject.put("p", scale.doubleValue());
        jSONObject.put("q", i);
        if (brazeProperties != null && brazeProperties.getSize() > 0) {
            jSONObject.put(CmcdConfiguration.KEY_PLAYBACK_RATE, brazeProperties.getJsonKey());
        }
        return new b(e.f, jSONObject, 0.0d, 12);
    }

    public static final String c() {
        return "Failed to create event";
    }

    public static final i p(String str, String str2) {
        JSONObject put = new JSONObject().put("cid", str).put("a", str2);
        e eVar = e.g;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public final i q(final String key, final String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.r(key, value);
            }
        });
    }

    public final i r(final String str) {
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.s(str);
            }
        });
    }

    public static final i d(String str, String str2) {
        JSONObject put = new JSONObject().put("id", str);
        if (str2 != null && str2.length() > 0) {
            put.put("bid", str2);
        }
        e eVar = e.J;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i f(String str, String uniqueIdentifier) {
        o oVar;
        JSONObject jSONObject = new JSONObject(str);
        String value = jSONObject.getString("name");
        d dVar = e.b;
        Intrinsics.checkNotNull(value);
        dVar.getClass();
        Intrinsics.checkNotNullParameter(value, "value");
        Object obj = e.c.get(value);
        if (obj == null) {
            obj = e.L;
        }
        e eventType = (e) obj;
        JSONObject eventData = jSONObject.getJSONObject("data");
        double d = jSONObject.getDouble("time");
        String optionalString = JsonUtils.getOptionalString(jSONObject, "user_id");
        String sessionId = JsonUtils.getOptionalString(jSONObject, SDKAnalyticsEvents.PARAMETER_SESSION_ID);
        Intrinsics.checkNotNull(eventData);
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventData, "eventData");
        Intrinsics.checkNotNullParameter(uniqueIdentifier, "uniqueIdentifier");
        b bVar = new b(eventType, eventData, d, uniqueIdentifier);
        bVar.e.setValue(bVar, b.h[0], optionalString);
        if (sessionId != null) {
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            UUID fromString = UUID.fromString(sessionId);
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(...)");
            oVar = new o(fromString);
        } else {
            oVar = null;
        }
        bVar.a(oVar);
        return bVar;
    }

    public static final i h(String str, String str2) {
        JSONObject put = new JSONObject().put("geo_id", str).put("event_type", str2);
        e eVar = e.n;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i j(String str, String str2) {
        return new b(e.z, b.g.a(str, str2, (String) null), 0.0d, 12);
    }

    public static final i l(String str, String str2) {
        return new b(e.x, b.g.a(str, (String) null, str2), 0.0d, 12);
    }

    public static final i n(String str, String str2) {
        return new b(e.w, b.g.a(str, (String) null, str2), 0.0d, 12);
    }

    public static final i b(IBrazeLocation iBrazeLocation) {
        return new b(e.d, iBrazeLocation.getJsonKey(), 0.0d, 12);
    }

    public static final i b(Throwable throwable, o oVar, boolean z) {
        StringBuilder append = new StringBuilder("\n                original_sdk_version: 35.0.0\n                exception_class: ").append(throwable.getClass().getName()).append("\n                available_cpus: ").append(Runtime.getRuntime().availableProcessors()).append("\n                ").append(oVar != null ? "session_id: " + oVar : null).append("\n                ");
        b.g.getClass();
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(stringWriter2, "toString(...)");
        JSONObject put = new JSONObject().put("e", StringsKt.trimIndent(append.append(StringsKt.take(stringWriter2, 5000)).append("\n            ").toString()));
        if (!z) {
            put.put("nop", true);
        }
        e eVar = e.k;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public final i a(final IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(IBrazeLocation.this);
            }
        });
    }

    public final i a(final Throwable throwable, final o oVar, final boolean z) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(throwable, oVar, z);
            }
        });
    }

    public final i a(final FeatureFlag ff) {
        Intrinsics.checkNotNullParameter(ff, "ff");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(FeatureFlag.this);
            }
        });
    }

    public final i a(final String trackingId) {
        Intrinsics.checkNotNullParameter(trackingId, "trackingId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(trackingId);
            }
        });
    }

    public final i a() {
        final String str = "feed_displayed";
        Intrinsics.checkNotNullParameter("feed_displayed", "name");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.q(str);
            }
        });
    }

    public final i a(final String customUserAttributeKey, final int i) {
        Intrinsics.checkNotNullParameter(customUserAttributeKey, "customUserAttributeKey");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(customUserAttributeKey, i);
            }
        });
    }

    public final i a(final String key, final String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(key, value);
            }
        });
    }

    public final i a(final String key, final String[] strArr) {
        Intrinsics.checkNotNullParameter(key, "key");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(key, strArr);
            }
        });
    }

    public final i a(final o sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(o.this);
            }
        });
    }

    public final i a(final long j) {
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(j);
            }
        });
    }

    public final i a(final String key, final double d, final double d2) {
        Intrinsics.checkNotNullParameter(key, "key");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(key, d, d2);
            }
        });
    }

    public final i a(final String key, final JSONObject json) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(json, "json");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(key, json);
            }
        });
    }

    public final i a(final String subscriptionGroupId, final h subscriptionGroupStatus) {
        Intrinsics.checkNotNullParameter(subscriptionGroupId, "subscriptionGroupId");
        Intrinsics.checkNotNullParameter(subscriptionGroupStatus, "subscriptionGroupStatus");
        return a(new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(subscriptionGroupId, subscriptionGroupStatus);
            }
        });
    }

    public final JSONObject a(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        if (str != null && str.length() != 0) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            jSONObject.put("trigger_ids", jSONArray);
        }
        if (str2 != null && str2.length() != 0) {
            jSONObject.put("bid", str2);
        }
        if (str3 != null) {
            jSONObject.put(InAppMessageBase.MESSAGE_EXTRAS, str3);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.b();
                }
            }, 6, (Object) null);
        }
        return jSONObject;
    }

    public final i a(Function0 function0) {
        try {
            return (i) function0.invoke();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.outgoing.event.a$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.c();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    public static final i b(FeatureFlag featureFlag) {
        JSONObject put = new JSONObject().put("fid", featureFlag.getId()).put(FeatureFlag.TRACKING_STRING, featureFlag.getTrackingString());
        e eVar = e.H;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str) {
        JSONObject put = new JSONObject().put("ids", JsonUtils.constructJsonArray(new String[]{str}));
        e eVar = e.I;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, int i) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str).put("value", i);
        e eVar = e.s;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, String str2) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str).put("value", str2);
        e eVar = e.t;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, String[] strArr) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SDKConstants.PARAM_KEY, str);
        if (strArr == null) {
            jSONObject.put("value", JSONObject.NULL);
        } else {
            jSONObject.put("value", JsonUtils.constructJsonArray(strArr));
        }
        return new b(e.v, jSONObject, 0.0d, 12);
    }

    public static final i b(o oVar) {
        b bVar = new b(e.B, (JSONObject) null, 0.0d, 14);
        bVar.a(oVar);
        return bVar;
    }

    public static final i b(long j) {
        JSONObject put = new JSONObject().put("d", j);
        e eVar = e.C;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, double d, double d2) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str).put(IBrazeLocation.LATITUDE, d).put(IBrazeLocation.LONGITUDE, d2);
        e eVar = e.D;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, JSONObject jSONObject) {
        JSONObject put = new JSONObject().put(SDKConstants.PARAM_KEY, str).put("value", jSONObject);
        e eVar = e.F;
        Intrinsics.checkNotNull(put);
        return new b(eVar, put, 0.0d, 12);
    }

    public static final i b(String str, h hVar) {
        String str2;
        JSONObject put = new JSONObject().put(FirebaseAnalytics.Param.GROUP_ID, str);
        int ordinal = hVar.ordinal();
        if (ordinal == 0) {
            str2 = "subscribed";
        } else if (ordinal == 1) {
            str2 = "unsubscribed";
        } else {
            throw new NoWhenBranchMatchedException();
        }
        JSONObject put2 = put.put("status", str2);
        e eVar = e.G;
        Intrinsics.checkNotNull(put2);
        return new b(eVar, put2, 0.0d, 12);
    }

    public static final String b() {
        return "Message extras are null, not adding to event";
    }
}
