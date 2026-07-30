package com.google.android.gms.wearable;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes3.dex */
public interface DataItemAsset extends Freezable<DataItemAsset> {
    String getDataItemKey();

    String getId();
}
