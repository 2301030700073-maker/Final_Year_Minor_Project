package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzaf;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzbi;
import com.google.android.gms.internal.location.zzz;

/* renamed from: Iq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0285Iq {

    /* renamed from: do, reason: not valid java name */
    public static final Api.ClientKey<zzaz> f1568do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Api<Api.ApiOptions.NoOptions> f1569do;

    static {
        Api.ClientKey<zzaz> clientKey = new Api.ClientKey<>();
        f1568do = clientKey;
        f1569do = new Api<>("LocationServices.API", new C3743tQ(), clientKey);
        new zzz();
        new zzaf();
        new zzbi();
    }

    /* renamed from: do, reason: not valid java name */
    public static zzaz m973do(GoogleApiClient googleApiClient) {
        Preconditions.checkArgument(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzaz zzazVar = (zzaz) googleApiClient.getClient(f1568do);
        Preconditions.checkState(zzazVar != null, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return zzazVar;
    }
}
