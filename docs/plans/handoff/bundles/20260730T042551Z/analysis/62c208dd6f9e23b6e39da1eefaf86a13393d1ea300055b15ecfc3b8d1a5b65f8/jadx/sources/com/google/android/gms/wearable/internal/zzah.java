package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.CapabilityApi;

/* loaded from: classes3.dex */
public final class zzah implements CapabilityApi {
    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<Status> addCapabilityListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, String str) {
        Asserts.checkNotNull(str, "capability must not be null");
        zzab zzabVar = new zzab(capabilityListener, str);
        IntentFilter zza = zzhl.zza("com.google.android.gms.wearable.CAPABILITY_CHANGED");
        if (!str.startsWith("/")) {
            str = "/".concat(str);
        }
        zza.addDataPath(str, 0);
        return zzc.zza(googleApiClient, new zzz(new IntentFilter[]{zza}), zzabVar);
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<Status> addListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, Uri uri, int i) {
        boolean z;
        Asserts.checkNotNull(uri, "uri must not be null");
        if (i != 0) {
            if (i != 1) {
                z = false;
                Preconditions.checkArgument(z, "invalid filter type");
                return zzc.zza(googleApiClient, new zzz(new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.CAPABILITY_CHANGED", uri, i)}), capabilityListener);
            }
            i = 1;
        }
        z = true;
        Preconditions.checkArgument(z, "invalid filter type");
        return zzc.zza(googleApiClient, new zzz(new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.CAPABILITY_CHANGED", uri, i)}), capabilityListener);
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<CapabilityApi.AddLocalCapabilityResult> addLocalCapability(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.enqueue(new zzx(this, googleApiClient, str));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<CapabilityApi.GetAllCapabilitiesResult> getAllCapabilities(GoogleApiClient googleApiClient, int i) {
        boolean z = true;
        if (i != 0) {
            if (i == 1) {
                i = 1;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z);
        return googleApiClient.enqueue(new zzw(this, googleApiClient, i));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<CapabilityApi.GetCapabilityResult> getCapability(GoogleApiClient googleApiClient, String str, int i) {
        boolean z = true;
        if (i != 0) {
            if (i == 1) {
                i = 1;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z);
        return googleApiClient.enqueue(new zzv(this, googleApiClient, str, i));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<Status> removeCapabilityListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, String str) {
        return googleApiClient.enqueue(new zzag(googleApiClient, new zzab(capabilityListener, str), null));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<Status> removeListener(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener) {
        return googleApiClient.enqueue(new zzag(googleApiClient, capabilityListener, null));
    }

    @Override // com.google.android.gms.wearable.CapabilityApi
    public final PendingResult<CapabilityApi.RemoveLocalCapabilityResult> removeLocalCapability(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.enqueue(new zzy(this, googleApiClient, str));
    }
}
