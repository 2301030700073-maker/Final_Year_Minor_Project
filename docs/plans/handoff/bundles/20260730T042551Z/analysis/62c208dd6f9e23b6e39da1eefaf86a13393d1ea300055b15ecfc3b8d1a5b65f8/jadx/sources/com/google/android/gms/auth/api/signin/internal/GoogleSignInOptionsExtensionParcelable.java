package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3388nO;

@SafeParcelable.Class(creator = "GoogleSignInOptionsExtensionCreator")
/* loaded from: classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new C3388nO();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getBundle", id = 3)
    public final Bundle f10169do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10170for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "getType", id = 2)
    public final int f10171new;

    @SafeParcelable.Constructor
    public GoogleSignInOptionsExtensionParcelable(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) Bundle bundle) {
        this.f10170for = i;
        this.f10171new = i2;
        this.f10169do = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10170for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10171new);
        SafeParcelWriter.writeBundle(parcel, 3, this.f10169do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
