package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbnu implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcca zza;

    zzbnu(zzbnv zzbnvVar, zzcca zzccaVar) {
        this.zza = zzccaVar;
        Objects.requireNonNull(zzbnvVar);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zza.zzd(new RuntimeException("Connection failed."));
    }
}
