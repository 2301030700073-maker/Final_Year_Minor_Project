package com.braze.requests;

import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.facebook.internal.ServerProtocol;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class i extends b {
    public final m j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(e0 serverConfigStorageProvider, String urlBase, String str) {
        super(new com.braze.requests.util.c(urlBase + "feature_flags/sync", false), str, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        this.j = m.e;
    }

    public static final String l() {
        return "Experienced JSONException while creating Feature Flags request. Returning null.";
    }

    public static final String m() {
        return "FeatureFlagsSyncRequest failed.";
    }

    public static final String n() {
        return "FeatureFlagsSyncRequest executed successfully.";
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
        try {
            String str = this.b;
            if (str != null && !StringsKt.isBlank(str)) {
                b.put("user_id", this.b);
            }
            return b;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.i$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.l();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.j;
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.g apiResponse) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(apiResponse, "apiResponse");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.i$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i.n();
            }
        }, 7, (Object) null);
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.k(this), com.braze.events.internal.k.class);
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher, com.braze.events.e externalPublisher, com.braze.models.response.d responseError) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        Intrinsics.checkNotNullParameter(externalPublisher, "externalPublisher");
        Intrinsics.checkNotNullParameter(responseError, "responseError");
        super.a(internalPublisher, externalPublisher, responseError);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.requests.i$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return i.m();
            }
        }, 6, (Object) null);
        ((com.braze.events.d) internalPublisher).b(new com.braze.events.internal.j(), com.braze.events.internal.j.class);
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final void a(HashMap existingHeaders) {
        Intrinsics.checkNotNullParameter(existingHeaders, "existingHeaders");
        super.a(existingHeaders);
        existingHeaders.put("X-Braze-DataRequest", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        existingHeaders.put("X-Braze-FeatureFlagsRequest", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    }
}
