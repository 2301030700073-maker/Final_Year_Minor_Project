package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
import defpackage.V1;

/* loaded from: classes3.dex */
public final class zzdd extends DataBufferRef implements DataEvent {
    private final int zza;

    public zzdd(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zza = i2;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ DataEvent freeze() {
        return new zzdc(this);
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final DataItem getDataItem() {
        return new zzdk(this.mDataHolder, this.mDataRow, this.zza);
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final int getType() {
        return getInteger("event_type");
    }

    public final String toString() {
        return V1.m2499else("DataEventRef{ type=", getInteger("event_type") == 1 ? "changed" : getInteger("event_type") == 2 ? "deleted" : "unknown", ", dataitem=", getDataItem().toString(), " }");
    }
}
