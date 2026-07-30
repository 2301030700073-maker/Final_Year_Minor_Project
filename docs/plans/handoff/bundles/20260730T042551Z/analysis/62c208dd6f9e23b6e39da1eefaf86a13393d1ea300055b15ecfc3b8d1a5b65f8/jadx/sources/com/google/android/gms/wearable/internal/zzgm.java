package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Node;
import defpackage.Cif;

@SafeParcelable.Class(creator = "NodeParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzgm extends AbstractSafeParcelable implements Node {
    public static final Parcelable.Creator<zzgm> CREATOR = new zzgn();

    @SafeParcelable.Field(getter = "getId", id = 2)
    private final String zza;

    @SafeParcelable.Field(getter = "getDisplayName", id = 3)
    private final String zzb;

    @SafeParcelable.Field(getter = "getHopCount", id = 4)
    private final int zzc;

    @SafeParcelable.Field(getter = "isNearby", id = 5)
    private final boolean zzd;

    @SafeParcelable.Constructor
    public zzgm(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 5) boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgm) {
            return ((zzgm) obj).zza.equals(this.zza);
        }
        return false;
    }

    @Override // com.google.android.gms.wearable.Node
    public final String getDisplayName() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.Node
    public final String getId() {
        return this.zza;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.wearable.Node
    public final boolean isNearby() {
        return this.zzd;
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zza;
        int i = this.zzc;
        boolean z = this.zzd;
        StringBuilder m6919this = Cif.m6919this("Node{", str, ", id=", str2, ", hops=");
        m6919this.append(i);
        m6919this.append(", isNearby=");
        m6919this.append(z);
        m6919this.append("}");
        return m6919this.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
