package com.braze.requests;

import com.braze.events.internal.g0;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.concurrent.TimeUnit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class x extends b {
    public final com.braze.triggers.actions.f j;
    public final com.braze.triggers.events.b k;
    public final m l;
    public final String m;
    public final long n;
    public final long o;
    public final com.braze.triggers.actions.f p;
    public final com.braze.models.outgoing.k q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(e0 serverConfigStorageProvider, String urlBase, com.braze.triggers.actions.f templatedTriggeredAction, com.braze.triggers.events.b triggerEvent, String str) {
        super(new com.braze.requests.util.c(urlBase + SDKConstants.PARAM_UPDATE_TEMPLATE, false), str, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        Intrinsics.checkNotNullParameter(templatedTriggeredAction, "templatedTriggeredAction");
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        this.j = templatedTriggeredAction;
        this.k = triggerEvent;
        this.l = m.g;
        this.m = templatedTriggeredAction.h;
        int i = templatedTriggeredAction.b.e;
        this.n = i == -1 ? TimeUnit.SECONDS.toMillis(r3.d + 30) : i;
        this.o = templatedTriggeredAction.j;
        this.p = templatedTriggeredAction;
        this.q = new com.braze.models.outgoing.k(str, null, null, null);
    }

    public static final String l() {
        return "Experienced JSONException while retrieving parameters. Returning null.";
    }

    @Override // com.braze.requests.n
    public final boolean a() {
        return false;
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final JSONObject b() {
        JSONObject b = super.b();
        if (b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(InAppMessageBase.TRIGGER_ID, this.m);
            jSONObject.put("trigger_event_type", this.k.a());
            com.braze.models.i iVar = ((com.braze.triggers.events.i) this.k).c;
            jSONObject.put("data", iVar != null ? ((com.braze.models.outgoing.event.b) iVar).getJsonKey() : null);
            b.put(SDKConstants.PARAM_UPDATE_TEMPLATE, jSONObject);
            String str = this.q.f168a;
            if (str != null && str.length() != 0) {
                b.put("respond_with", this.q.getJsonKey());
            }
            return b;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.x$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return x.l();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.l;
    }

    @Override // com.braze.requests.b
    public final String toString() {
        return "TemplateRequest(templatedTriggeredAction=" + this.j + ", triggerEvent=" + this.k + ", triggerAnalyticsId='" + this.m + "', templatePayloadExpirationTimestamp=" + this.o + ", getTemplatedDataExpiration=" + (((com.braze.triggers.events.i) this.k).b + this.n) + "triggeredAction=" + this.p + ')';
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        InAppMessageBase inAppMessageBase = apiResponse.g;
        if (inAppMessageBase != null) {
            inAppMessageBase.setLocalPrefetchedAssetPaths(MapsKt.toMap(this.j.f));
        }
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        super.a(internalPublisher, externalPublisher, responseError);
        if (responseError instanceof com.braze.models.response.b) {
            ((com.braze.events.d) internalPublisher).b(new g0(this.k, this.j), g0.class);
        }
    }
}
