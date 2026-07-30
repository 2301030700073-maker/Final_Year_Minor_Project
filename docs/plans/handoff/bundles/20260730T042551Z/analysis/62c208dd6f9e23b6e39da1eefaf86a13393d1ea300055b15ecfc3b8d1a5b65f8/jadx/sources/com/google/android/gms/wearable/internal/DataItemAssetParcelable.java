package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItemAsset;
import defpackage.Creturn;

@KeepName
@SafeParcelable.Class(creator = "DataItemAssetParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public class DataItemAssetParcelable extends AbstractSafeParcelable implements DataItemAsset, ReflectedParcelable {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new zzdf();

    @SafeParcelable.Field(getter = "getId", id = 2)
    private final String zza;

    @SafeParcelable.Field(getter = "getDataItemKey", id = 3)
    private final String zzb;

    public DataItemAssetParcelable(DataItemAsset dataItemAsset) {
        this.zza = (String) Preconditions.checkNotNull(dataItemAsset.getId());
        this.zzb = (String) Preconditions.checkNotNull(dataItemAsset.getDataItemKey());
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
        StringBuilder sb = new StringBuilder("DataItemAssetParcelable[@");
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

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public DataItemAssetParcelable(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
