package com.braze.requests;

import com.braze.enums.BrazeSdkMetadata;
import com.braze.enums.SdkFlavor;
import com.braze.events.internal.c0;
import com.braze.events.internal.d0;
import com.braze.storage.e0;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.facebook.internal.ServerProtocol;
import io.sentry.protocol.App;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f extends b {
    public com.braze.models.outgoing.k j;
    public SdkFlavor k;
    public com.braze.models.outgoing.l l;
    public com.braze.models.b m;
    public EnumSet n;
    public String o;
    public String p;
    public final m q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e0 serverConfigStorageProvider, String urlBase, com.braze.models.outgoing.k outboundRespondWith) {
        super(new com.braze.requests.util.c(urlBase + "data", false), null, serverConfigStorageProvider);
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(urlBase, "urlBase");
        Intrinsics.checkNotNullParameter(outboundRespondWith, "outboundRespondWith");
        this.j = outboundRespondWith;
        this.q = m.f;
    }

    public static final String l() {
        return "Experienced JSONException while retrieving parameters. Returning empty object.";
    }

    public static final String m() {
        return "Trigger dispatch completed. Alerting subscribers.";
    }

    @Override // com.braze.requests.n
    public final boolean a() {
        ArrayList<com.braze.models.k> arrayList = new ArrayList();
        arrayList.add(this.h);
        arrayList.add(this.l);
        arrayList.add(this.m);
        arrayList.add(this.j);
        if (!arrayList.isEmpty()) {
            for (com.braze.models.k kVar : arrayList) {
                if (kVar != null && !kVar.isEmpty()) {
                    break;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.h);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            com.braze.models.k kVar2 = (com.braze.models.k) it.next();
            if (kVar2 != null && !kVar2.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final JSONObject b() {
        JSONObject b = super.b();
        if (b == null) {
            return null;
        }
        try {
            String str = this.o;
            if (str != null) {
                b.put(App.JsonKeys.APP_VERSION, str);
            }
            String str2 = this.p;
            if (str2 != null && !StringsKt.isBlank(str2)) {
                b.put("app_version_code", this.p);
            }
            com.braze.models.outgoing.l lVar = this.l;
            if (lVar != null && !lVar.isEmpty()) {
                JSONArray jsonArrayForJsonPut = lVar.b;
                Intrinsics.checkNotNullExpressionValue(jsonArrayForJsonPut, "jsonArrayForJsonPut");
                b.put("attributes", jsonArrayForJsonPut);
            }
            com.braze.models.b bVar = this.m;
            if (bVar != null && !bVar.b) {
                b.put("events", JsonUtils.constructJsonArray(bVar.f142a));
            }
            SdkFlavor sdkFlavor = this.k;
            if (sdkFlavor != null) {
                b.put("sdk_flavor", sdkFlavor.getJsonKey());
            }
            EnumSet set = this.n;
            if (set != null) {
                BrazeSdkMetadata.Companion.getClass();
                Intrinsics.checkNotNullParameter(set, "set");
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(((BrazeSdkMetadata) it.next()).jsonKey);
                }
                b.put("sdk_metadata", new JSONArray((Collection) CollectionsKt.sorted(arrayList)));
            }
            b.put("respond_with", this.j.getJsonKey());
            return b;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) e, false, new Function0() { // from class: com.braze.requests.f$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.l();
                }
            }, 4, (Object) null);
            return null;
        }
    }

    @Override // com.braze.requests.n
    public final m c() {
        return this.q;
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.d internalPublisher) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        if (this.j.b()) {
            internalPublisher.b(new d0(this), d0.class);
        }
    }

    @Override // com.braze.requests.b, com.braze.requests.o
    public final void a(com.braze.events.e internalPublisher) {
        Intrinsics.checkNotNullParameter(internalPublisher, "internalPublisher");
        if (this.j.b()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.requests.f$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.m();
                }
            }, 7, (Object) null);
            ((com.braze.events.d) internalPublisher).b(new c0(this), c0.class);
        }
    }

    @Override // com.braze.requests.b, com.braze.requests.n
    public final void a(HashMap existingHeaders) {
        boolean z;
        Intrinsics.checkNotNullParameter(existingHeaders, "existingHeaders");
        super.a(existingHeaders);
        if (this.j.isEmpty()) {
            return;
        }
        boolean z2 = true;
        if (this.j.b != null) {
            existingHeaders.put("X-Braze-FeedRequest", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            z = true;
        } else {
            z = false;
        }
        if (this.j.b()) {
            existingHeaders.put("X-Braze-TriggersRequest", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        } else {
            z2 = z;
        }
        if (z2) {
            existingHeaders.put("X-Braze-DataRequest", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
    }
}
