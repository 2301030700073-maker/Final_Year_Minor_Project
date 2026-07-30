package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.managers.l0;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.braze.support.StringUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h0 extends b {
    public final com.braze.managers.g0 b;
    public final a0 c;
    public final SharedPreferences d;
    public final SharedPreferences e;
    public String f;

    public h0(Context context, com.braze.managers.g0 pushRegistrationDataProvider, a0 sdkEnablementProvider, String str, String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pushRegistrationDataProvider, "pushRegistrationDataProvider");
        Intrinsics.checkNotNullParameter(sdkEnablementProvider, "sdkEnablementProvider");
        this.b = pushRegistrationDataProvider;
        this.c = sdkEnablementProvider;
        this.f = str;
        String cacheFileSuffix = StringUtils.getCacheFileSuffix(context, str, str2);
        this.d = context.getSharedPreferences("com.appboy.storage.user_cache.v3" + cacheFileSuffix, 0);
        this.e = context.getSharedPreferences("com.braze.storage.user_cache.push_token_store" + cacheFileSuffix, 0);
    }

    public static final String a(String str) {
        return com.braze.i.a("Failed to load user object json from prefs with json string: ", str);
    }

    public static final String d() {
        return "Could not create custom attributes json object from preferences";
    }

    public static final String e() {
        return "No push token available to add to attributes object.";
    }

    public static final String f() {
        return "Couldn't add push token to outbound json";
    }

    public static final String i() {
        return "Failed to add merged custom attributes back to user object.";
    }

    public static final String k() {
        return "Push token cache cleared via sendPushTokenOnNextExport.";
    }

    public static final String m() {
        return "SDK is disabled. Not writing to user cache.";
    }

    public final void b(final JSONObject jSONObject) {
        final String str = "ab_install_attribution";
        Intrinsics.checkNotNullParameter("ab_install_attribution", SDKConstants.PARAM_KEY);
        JSONObject h = h();
        try {
            if (jSONObject == null) {
                h.put("ab_install_attribution", JSONObject.NULL);
            } else {
                JSONObject optJSONObject = h.optJSONObject("ab_install_attribution");
                if (optJSONObject != null) {
                    h.put("ab_install_attribution", JsonUtils.plus(optJSONObject, jSONObject));
                } else {
                    h.put("ab_install_attribution", jSONObject);
                }
            }
            c(h);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h0.a(str, jSONObject);
                }
            }, 4, (Object) null);
        }
    }

    public final JSONObject g() {
        JSONObject h = h();
        if (h.has("custom")) {
            try {
                JSONObject jSONObject = h.getJSONObject("custom");
                Intrinsics.checkNotNullExpressionValue(jSONObject, "getJSONObject(...)");
                return jSONObject;
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h0.d();
                    }
                }, 4, (Object) null);
            }
        }
        return new JSONObject();
    }

    public final JSONObject h() {
        final String string = this.d.getString("user_cache_attributes_object", null);
        if (string == null) {
            return new JSONObject();
        }
        try {
            return new JSONObject(string);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h0.a(string);
                }
            }, 4, (Object) null);
            return new JSONObject();
        }
    }

    public final synchronized void j() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h0.k();
            }
        }, 6, (Object) null);
        this.e.edit().clear().apply();
    }

    @Override // com.braze.storage.b
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final com.braze.models.outgoing.l c() {
        StringUtils.ifNonEmpty(this.f, new Function1() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h0.a(h0.this, (String) obj);
            }
        });
        JSONObject h = h();
        a(h);
        this.d.edit().clear().apply();
        return new com.braze.models.outgoing.l(h);
    }

    public static final String d(String str, Object obj) {
        return "Failed to write to user object json from prefs with key: [" + str + "] value: [" + obj + AbstractJsonLexerKt.END_LIST;
    }

    public final boolean c(JSONObject jSONObject) {
        if (this.c.f209a.getBoolean("appboy_sdk_disabled", false)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h0.m();
                }
            }, 6, (Object) null);
            return false;
        }
        this.d.edit().putString("user_cache_attributes_object", jSONObject.toString()).apply();
        return true;
    }

    public final boolean c(final String str, final Object obj) {
        Object obj2;
        JSONObject h = h();
        if (obj == null) {
            try {
                obj2 = JSONObject.NULL;
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h0.d(str, obj);
                    }
                }, 4, (Object) null);
                return false;
            }
        } else {
            obj2 = obj;
        }
        h.put(str, obj2);
        return c(h);
    }

    public static final String b(String str, Object obj) {
        return "Could not write to custom attributes json object with key: [" + str + "] value: [" + obj + AbstractJsonLexerKt.END_LIST;
    }

    @Override // com.braze.storage.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void c(com.braze.models.outgoing.l outboundObject, boolean z) {
        Intrinsics.checkNotNullParameter(outboundObject, "outboundObject");
        JSONObject jSONObject = outboundObject.f169a;
        if (z) {
            if (jSONObject.has("push_token")) {
                this.e.edit().putString("push_token", jSONObject.optString("push_token")).apply();
                return;
            }
            return;
        }
        JSONObject h = h();
        JSONObject plus = JsonUtils.plus(jSONObject, h);
        plus.remove("push_token");
        JSONObject optJSONObject = h.optJSONObject("custom");
        JSONObject optJSONObject2 = jSONObject.optJSONObject("custom");
        try {
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h0.i();
                }
            }, 4, (Object) null);
        }
        if (optJSONObject != null && optJSONObject2 != null) {
            plus.put("custom", JsonUtils.plus(optJSONObject2, optJSONObject));
        } else if (optJSONObject != null) {
            plus.put("custom", optJSONObject);
        } else {
            if (optJSONObject2 != null) {
                plus.put("custom", optJSONObject2);
            }
            this.d.edit().putString("user_cache_attributes_object", plus.toString()).apply();
        }
        this.d.edit().putString("user_cache_attributes_object", plus.toString()).apply();
    }

    public final void a(JSONObject outboundJson) {
        Intrinsics.checkNotNullParameter(outboundJson, "outboundJson");
        try {
            String b = ((l0) this.b).b();
            if (b == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h0.e();
                    }
                }, 7, (Object) null);
            } else {
                if (Intrinsics.areEqual(b, this.e.getString("push_token", null))) {
                    return;
                }
                outboundJson.put("push_token", b);
            }
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h0.f();
                }
            }, 4, (Object) null);
        }
    }

    public static final Unit a(h0 h0Var, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        h0Var.c("user_id", it);
        return Unit.INSTANCE;
    }

    public static final String a(String str, JSONObject jSONObject) {
        return "Failed to write to user object json from prefs with key: [" + str + "] value: [" + jSONObject + "] ";
    }

    public final boolean a(final String key, final Object obj) {
        Object obj2;
        Intrinsics.checkNotNullParameter(key, "key");
        JSONObject g = g();
        if (obj == null) {
            try {
                obj2 = JSONObject.NULL;
            } catch (JSONException e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.storage.h0$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h0.b(key, obj);
                    }
                }, 4, (Object) null);
                return false;
            }
        } else {
            obj2 = obj;
        }
        g.put(key, obj2);
        return c("custom", g);
    }
}
