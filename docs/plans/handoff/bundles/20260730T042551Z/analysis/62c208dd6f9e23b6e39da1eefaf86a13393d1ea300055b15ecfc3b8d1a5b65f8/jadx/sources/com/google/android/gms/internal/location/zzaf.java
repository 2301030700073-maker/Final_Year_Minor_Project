package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.GeofencingRequest;
import defpackage.InterfaceC0520Tk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaf {
    @Deprecated
    public final PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, List<InterfaceC0520Tk> list, PendingIntent pendingIntent) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (InterfaceC0520Tk interfaceC0520Tk : list) {
                if (interfaceC0520Tk != null) {
                    Preconditions.checkNotNull(interfaceC0520Tk, "geofence can't be null.");
                    Preconditions.checkArgument(interfaceC0520Tk instanceof zzbe, "Geofence must be created using Geofence.Builder.");
                    arrayList.add((zzbe) interfaceC0520Tk);
                }
            }
        }
        Preconditions.checkArgument(!arrayList.isEmpty(), "No geofence has been added to this request.");
        return googleApiClient.execute(new zzac(this, googleApiClient, new GeofencingRequest(arrayList, 5, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null), pendingIntent));
    }

    public final PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        Preconditions.checkNotNull(pendingIntent, "PendingIntent can not be null.");
        return zza(googleApiClient, new com.google.android.gms.location.zzbq(null, pendingIntent, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public final PendingResult<Status> zza(GoogleApiClient googleApiClient, com.google.android.gms.location.zzbq zzbqVar) {
        return googleApiClient.execute(new zzad(this, googleApiClient, zzbqVar));
    }

    public final PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, List<String> list) {
        Preconditions.checkNotNull(list, "geofence can't be null.");
        Preconditions.checkArgument(!list.isEmpty(), "Geofences must contains at least one id.");
        return zza(googleApiClient, new com.google.android.gms.location.zzbq(list, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public final PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        return googleApiClient.execute(new zzac(this, googleApiClient, geofencingRequest, pendingIntent));
    }
}
