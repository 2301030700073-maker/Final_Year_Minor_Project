package com.braze.communication;

import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.braze.support.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final b f21a;

    public e(b httpConnector) {
        Intrinsics.checkNotNullParameter(httpConnector, "httpConnector");
        this.f21a = httpConnector;
    }

    public static final String b() {
        return "Exception while logging result: ";
    }

    public final d a(final com.braze.requests.util.c requestTarget, final HashMap requestHeaders, final JSONObject payload) {
        Intrinsics.checkNotNullParameter(requestTarget, "requestTarget");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.a(com.braze.requests.util.c.this, requestHeaders, payload);
            }
        });
        a(requestTarget, requestHeaders, lazy, payload);
        long currentTimeMillis = System.currentTimeMillis();
        d a2 = this.f21a.a(requestTarget, requestHeaders, payload);
        a(lazy, requestTarget, a2.b, a2.c, System.currentTimeMillis() - currentTimeMillis);
        return a2;
    }

    public static final String a(com.braze.requests.util.c cVar, Map map, JSONObject jSONObject) {
        Object[] requestArgs = {cVar, map, jSONObject};
        String str = l.f251a;
        Intrinsics.checkNotNullParameter(requestArgs, "requestArgs");
        long j = 1;
        for (int i = 0; i < 3; i++) {
            j *= requestArgs[i].hashCode();
        }
        String hexString = Long.toHexString(j);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(...)");
        return hexString;
    }

    public final void a(final com.braze.requests.util.c cVar, final HashMap hashMap, final Lazy lazy, final JSONObject jSONObject) {
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this, (BrazeLogger.Priority) null, (Throwable) null, cVar.d, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(Lazy.this, cVar, this, hashMap, jSONObject);
                }
            }, 3, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Lazy lazy, com.braze.requests.util.c cVar, e eVar, Map map, JSONObject jSONObject) {
        StringBuilder append = new StringBuilder("\n                |Making request with id => \"").append((String) lazy.getValue()).append("\"\n                |to url: ").append(cVar).append("\n                \n                |with headers:\n                ");
        eVar.getClass();
        return StringsKt.trimMargin$default(append.append(a(map)).append("\n                |\n                |").append(jSONObject == null ? "" : "and JSON :\n" + JsonUtils.getPrettyPrintedString(jSONObject)).append("\n                ").toString(), null, 1, null);
    }

    public static final String a() {
        return "Exception while logging request: ";
    }

    public final void a(final Lazy lazy, final com.braze.requests.util.c cVar, final Map map, final JSONObject jSONObject, final long j) {
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.a(Lazy.this, cVar, j, this, map, jSONObject);
                }
            }, 7, (Object) null);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.e$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.b();
                }
            }, 4, (Object) null);
        }
    }

    public static final String a(Lazy lazy, com.braze.requests.util.c cVar, long j, e eVar, Map map, JSONObject jSONObject) {
        StringBuilder append = new StringBuilder("\n                |Made request with id => \"").append((String) lazy.getValue()).append("\"\n                |to url: ").append(cVar).append("\n                |took: ").append(j).append("ms\n                \n                |with response headers:\n                ");
        eVar.getClass();
        return StringsKt.trimMargin$default(append.append(a(map)).append("\n                |\n                |and response JSON:\n                |").append(JsonUtils.getPrettyPrintedString(jSONObject)).append("\n                ").toString(), null, 1, null);
    }

    public static String a(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add("|\"" + ((String) entry.getKey()) + "\" => \"" + ((String) entry.getValue()) + '\"');
        }
        return CollectionsKt.joinToString$default(arrayList, "\n", null, null, 0, null, null, 62, null);
    }
}
