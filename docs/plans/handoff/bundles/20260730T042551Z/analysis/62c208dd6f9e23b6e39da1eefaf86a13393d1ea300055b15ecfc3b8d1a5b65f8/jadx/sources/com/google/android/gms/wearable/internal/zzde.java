package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;
import defpackage.Creturn;

/* loaded from: classes3.dex */
public final class zzde implements DataItemAsset {
    private final String zza;
    private final String zzb;

    public zzde(DataItemAsset dataItemAsset) {
        this.zza = dataItemAsset.getId();
        this.zzb = dataItemAsset.getDataItemKey();
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ DataItemAsset freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public final String getDataItemKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public final String getId() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataItemAssetEntity[@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zza == null) {
            sb.append(",noid");
        } else {
            sb.append(",");
            sb.append(this.zza);
        }
        sb.append(", key=");
        return Creturn.m7984try(sb, this.zzb, "]");
    }
}
