package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes3.dex */
public class PutDataMapRequest {
    private final PutDataRequest zza;
    private final DataMap zzb;

    private PutDataMapRequest(PutDataRequest putDataRequest, DataMap dataMap) {
        this.zza = putDataRequest;
        DataMap dataMap2 = new DataMap();
        this.zzb = dataMap2;
        if (dataMap != null) {
            dataMap2.putAll(dataMap);
        }
    }

    public static PutDataMapRequest create(String str) {
        Asserts.checkNotNull(str, "path must not be null");
        return new PutDataMapRequest(PutDataRequest.create(str), null);
    }

    public static PutDataMapRequest createFromDataMapItem(DataMapItem dataMapItem) {
        Asserts.checkNotNull(dataMapItem, "source must not be null");
        return new PutDataMapRequest(PutDataRequest.zza(dataMapItem.getUri()), dataMapItem.getDataMap());
    }

    public static PutDataMapRequest createWithAutoAppendedId(String str) {
        Asserts.checkNotNull(str, "pathPrefix must not be null");
        return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(str), null);
    }

    public PutDataRequest asPutDataRequest() {
        com.google.android.gms.internal.wearable.zzk zzb = com.google.android.gms.internal.wearable.zzl.zzb(this.zzb);
        this.zza.setData(zzb.zza.zzL());
        int size = zzb.zzb.size();
        for (int i = 0; i < size; i++) {
            String num = Integer.toString(i);
            Asset asset = (Asset) zzb.zzb.get(i);
            if (num == null) {
                throw new IllegalStateException("asset key cannot be null: ".concat(String.valueOf(asset)));
            }
            if (asset == null) {
                throw new IllegalStateException("asset cannot be null: key=".concat(num));
            }
            if (Log.isLoggable(DataMap.TAG, 3)) {
                asset.toString();
            }
            this.zza.putAsset(num, asset);
        }
        return this.zza;
    }

    public DataMap getDataMap() {
        return this.zzb;
    }

    public Uri getUri() {
        return this.zza.getUri();
    }

    public boolean isUrgent() {
        return this.zza.isUrgent();
    }

    public PutDataMapRequest setUrgent() {
        this.zza.setUrgent();
        return this;
    }
}
