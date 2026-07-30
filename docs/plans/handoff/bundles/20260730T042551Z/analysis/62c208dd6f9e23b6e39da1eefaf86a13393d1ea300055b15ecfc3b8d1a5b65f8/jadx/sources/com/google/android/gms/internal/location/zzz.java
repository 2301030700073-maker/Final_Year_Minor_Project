package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import defpackage.AbstractC0241Gq;
import defpackage.C0285Iq;
import defpackage.InterfaceC0263Hq;
import java.lang.reflect.InvocationTargetException;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzz {
    public final PendingResult<Status> flushLocations(GoogleApiClient googleApiClient) {
        return googleApiClient.execute(new zzq(this, googleApiClient));
    }

    public final Location getLastLocation(GoogleApiClient googleApiClient) {
        String str;
        zzaz m973do = C0285Iq.m973do(googleApiClient);
        Context context = googleApiClient.getContext();
        try {
            if (Build.VERSION.SDK_INT >= 30 && context != null) {
                try {
                    str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                }
                return m973do.zzz(str);
            }
            return m973do.zzz(str);
        } catch (Exception unused2) {
            return null;
        }
        str = null;
    }

    public final LocationAvailability getLocationAvailability(GoogleApiClient googleApiClient) {
        try {
            return C0285Iq.m973do(googleApiClient).zzA();
        } catch (Exception unused) {
            return null;
        }
    }

    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.execute(new zzw(this, googleApiClient, pendingIntent));
    }

    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return googleApiClient.execute(new zzu(this, googleApiClient, locationRequest, pendingIntent));
    }

    public final PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, Location location) {
        return googleApiClient.execute(new zzp(this, googleApiClient, location));
    }

    public final PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.execute(new zzo(this, googleApiClient, z));
    }

    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, AbstractC0241Gq abstractC0241Gq) {
        return googleApiClient.execute(new zzn(this, googleApiClient, abstractC0241Gq));
    }

    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, AbstractC0241Gq abstractC0241Gq, Looper looper) {
        return googleApiClient.execute(new zzt(this, googleApiClient, locationRequest, abstractC0241Gq, looper));
    }

    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, InterfaceC0263Hq interfaceC0263Hq) {
        return googleApiClient.execute(new zzv(this, googleApiClient, interfaceC0263Hq));
    }

    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, InterfaceC0263Hq interfaceC0263Hq) {
        Preconditions.checkNotNull(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
        return googleApiClient.execute(new zzr(this, googleApiClient, locationRequest, interfaceC0263Hq));
    }

    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, InterfaceC0263Hq interfaceC0263Hq, Looper looper) {
        return googleApiClient.execute(new zzs(this, googleApiClient, locationRequest, interfaceC0263Hq, looper));
    }
}
