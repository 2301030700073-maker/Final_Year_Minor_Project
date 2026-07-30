package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.MessageApi;

/* loaded from: classes3.dex */
public final class zzfl implements MessageApi {
    private static final PendingResult zza(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, IntentFilter[] intentFilterArr) {
        return googleApiClient.enqueue(new zzfj(googleApiClient, messageListener, googleApiClient.registerListener(messageListener), intentFilterArr, null));
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public final PendingResult<Status> addListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener) {
        return zza(googleApiClient, messageListener, new IntentFilter[]{zzhl.zza("com.google.android.gms.wearable.MESSAGE_RECEIVED")});
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public final PendingResult<Status> removeListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener) {
        return googleApiClient.enqueue(new zzfh(this, googleApiClient, messageListener));
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public final PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient googleApiClient, String str, String str2, byte[] bArr) {
        return googleApiClient.enqueue(new zzfg(this, googleApiClient, str, str2, bArr));
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public final PendingResult<Status> addListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, Uri uri, int i) {
        boolean z;
        Preconditions.checkNotNull(uri, "uri must not be null");
        if (i != 0) {
            if (i != 1) {
                z = false;
                Preconditions.checkArgument(z, "invalid filter type");
                return zza(googleApiClient, messageListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.MESSAGE_RECEIVED", uri, i)});
            }
            i = 1;
        }
        z = true;
        Preconditions.checkArgument(z, "invalid filter type");
        return zza(googleApiClient, messageListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.MESSAGE_RECEIVED", uri, i)});
    }
}
