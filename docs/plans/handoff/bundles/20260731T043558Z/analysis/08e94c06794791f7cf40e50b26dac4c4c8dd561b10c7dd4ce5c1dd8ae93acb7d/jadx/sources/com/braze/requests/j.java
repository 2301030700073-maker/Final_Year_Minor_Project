package com.braze.requests;

import com.braze.models.IBrazeLocation;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class j extends b {
    public final com.braze.models.i j;
    public final m k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(e0 serverConfigStorageProvider, String urlBase, IBrazeLocation location) {
        super(new com.braze.requests.util.c(urlBase + "geofence/request", false), null, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        Intrinsics.checkNotNullParameter(location, "location");
        this.j = com.braze.models.outgoing.event.b.g.a(location);
        this.k = m.i;
    }

    public static final String d() {
        return "Experienced JSONException while creating geofence refresh request. Returning null.";
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
            com.braze.models.i iVar = this.j;
            if (iVar != null) {
                b.put("location_event", ((com.braze.models.outgoing.event.b) iVar).getJsonKey());
            }
            return b;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.j$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return j.d();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.k;
    }
}
