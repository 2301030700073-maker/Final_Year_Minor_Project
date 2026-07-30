package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.wearable.Wearable;

/* loaded from: classes3.dex */
abstract class zzu extends BaseImplementation.ApiMethodImpl {
    public zzu(GoogleApiClient googleApiClient) {
        super(Wearable.API, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    @KeepForSdk
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzu) obj);
    }
}
