package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.AbstractC3884vr;
import defpackage.Cif;
import defpackage.F2;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AvailabilityException extends Exception {
    private final F2 zaa;

    public AvailabilityException(F2 f2) {
        this.zaa = f2;
    }

    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        F2 f2 = this.zaa;
        ApiKey<? extends Api.ApiOptions> apiKey = googleApi.getApiKey();
        Object orDefault = f2.getOrDefault(apiKey, null);
        Preconditions.checkArgument(orDefault != null, Cif.m6908case("The given API (", apiKey.zaa(), ") was not part of the availability request."));
        return (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.getOrDefault(apiKey, null));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((AbstractC3884vr.Cfor) this.zaa.keySet()).iterator();
        boolean z = true;
        while (it.hasNext()) {
            ApiKey apiKey = (ApiKey) it.next();
            ConnectionResult connectionResult = (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.getOrDefault(apiKey, null));
            z &= !connectionResult.isSuccess();
            arrayList.add(apiKey.zaa() + ": " + String.valueOf(connectionResult));
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }

    public ConnectionResult getConnectionResult(HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        F2 f2 = this.zaa;
        ApiKey<? extends Api.ApiOptions> apiKey = hasApiKey.getApiKey();
        Object orDefault = f2.getOrDefault(apiKey, null);
        Preconditions.checkArgument(orDefault != null, Cif.m6908case("The given API (", apiKey.zaa(), ") was not part of the availability request."));
        return (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.getOrDefault(apiKey, null));
    }
}
