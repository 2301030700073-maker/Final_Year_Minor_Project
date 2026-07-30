package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataClient;
import java.io.InputStream;

/* loaded from: classes3.dex */
final class zzda extends DataClient.GetFdForAssetResponse {
    private final DataApi.GetFdForAssetResult zza;

    public zzda(DataApi.GetFdForAssetResult getFdForAssetResult) {
        this.zza = getFdForAssetResult;
    }

    @Override // com.google.android.gms.wearable.DataClient.GetFdForAssetResponse
    public final ParcelFileDescriptor getFdForAsset() {
        return this.zza.getFd();
    }

    @Override // com.google.android.gms.wearable.DataClient.GetFdForAssetResponse
    public final InputStream getInputStream() {
        return this.zza.getInputStream();
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        this.zza.release();
    }
}
