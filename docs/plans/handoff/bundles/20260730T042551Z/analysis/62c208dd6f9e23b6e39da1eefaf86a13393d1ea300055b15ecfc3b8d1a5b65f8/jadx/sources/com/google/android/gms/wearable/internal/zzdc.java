package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
import defpackage.V1;

/* loaded from: classes3.dex */
public final class zzdc implements DataEvent {
    private final int zza;
    private final DataItem zzb;

    public zzdc(DataEvent dataEvent) {
        this.zza = dataEvent.getType();
        this.zzb = new zzdh(dataEvent.getDataItem());
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ DataEvent freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final DataItem getDataItem() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final int getType() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        int i = this.zza;
        return V1.m2499else("DataEventEntity{ type=", i == 1 ? "changed" : i == 2 ? "deleted" : "unknown", ", dataitem=", this.zzb.toString(), " }");
    }
}
