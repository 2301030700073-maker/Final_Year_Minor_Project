package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.wearable.DataApi;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcu implements PendingResultUtil.ResultConverter {
    public static final /* synthetic */ zzcu zza = new zzcu();

    private /* synthetic */ zzcu() {
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final Object convert(Result result) {
        return ((DataApi.DataItemResult) result).getDataItem();
    }
}
