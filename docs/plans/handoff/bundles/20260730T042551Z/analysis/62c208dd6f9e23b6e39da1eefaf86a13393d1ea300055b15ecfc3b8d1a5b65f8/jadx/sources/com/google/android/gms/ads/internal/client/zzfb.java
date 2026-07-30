package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

@SafeParcelable.Class(creator = "LiteSdkVersionsParcelCreator")
/* loaded from: classes.dex */
public final class zzfb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfb> CREATOR = new zzfc();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getGranularVersion", id = 3)
    public final String f9661break;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getAdsDynamiteVersion", id = 1)
    public final int f9662for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getSdkVersionLite", id = 2)
    public final int f9663new;

    public zzfb() {
        this(ModuleDescriptor.MODULE_VERSION, 244410000, "23.6.0");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f9662for);
        SafeParcelWriter.writeInt(parcel, 2, this.f9663new);
        SafeParcelWriter.writeString(parcel, 3, this.f9661break, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.f9663new;
    }

    public final String zzb() {
        return this.f9661break;
    }

    @SafeParcelable.Constructor
    public zzfb(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str) {
        this.f9662for = i;
        this.f9663new = i2;
        this.f9661break = str;
    }
}
