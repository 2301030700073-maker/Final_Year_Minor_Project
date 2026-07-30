package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.wearable.zzbj;
import com.google.android.gms.internal.wearable.zzcf;
import java.util.ArrayList;

@VisibleForTesting
/* loaded from: classes3.dex */
public class DataMapItem {
    private final Uri zza;
    private final DataMap zzb;

    private DataMapItem(DataItem dataItem) {
        DataMap zza;
        this.zza = dataItem.getUri();
        DataItem freeze = dataItem.freeze();
        byte[] data = freeze.getData();
        if (data == null && !freeze.getAssets().isEmpty()) {
            throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
        }
        if (data == null) {
            zza = new DataMap();
        } else {
            try {
                ArrayList arrayList = new ArrayList();
                int size = freeze.getAssets().size();
                for (int i = 0; i < size; i++) {
                    DataItemAsset dataItemAsset = freeze.getAssets().get(Integer.toString(i));
                    if (dataItemAsset == null) {
                        throw new IllegalStateException("Cannot find DataItemAsset referenced in data at " + i + " for " + freeze.toString());
                    }
                    arrayList.add(Asset.createFromRef(dataItemAsset.getId()));
                }
                zza = com.google.android.gms.internal.wearable.zzl.zza(new com.google.android.gms.internal.wearable.zzk(com.google.android.gms.internal.wearable.zzx.zzd(data, zzbj.zza()), arrayList));
            } catch (zzcf | NullPointerException e) {
                String.valueOf(freeze.getUri());
                Base64.encodeToString(data, 0);
                throw new IllegalStateException("Unable to parse datamap from dataItem.  uri=".concat(String.valueOf(freeze.getUri())), e);
            }
        }
        this.zzb = zza;
    }

    public static DataMapItem fromDataItem(DataItem dataItem) {
        Asserts.checkNotNull(dataItem, "dataItem must not be null");
        return new DataMapItem(dataItem);
    }

    public DataMap getDataMap() {
        return this.zzb;
    }

    public Uri getUri() {
        return this.zza;
    }
}
