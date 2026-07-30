package defpackage;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.location.zzaz;

/* renamed from: tQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3743tQ extends Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* bridge */ /* synthetic */ zzaz buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzaz(context, looper, connectionCallbacks, onConnectionFailedListener, "locationServices", clientSettings);
    }
}
