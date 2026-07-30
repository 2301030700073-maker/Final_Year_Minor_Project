package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C4095zO;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "RecordConsentByConsentResultResponseCreator")
/* loaded from: classes3.dex */
public final class zag extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zag> CREATOR = new C4095zO();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getToken", id = 2)
    public final String f10363break;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getGrantedScopes", id = 1)
    public final List f10364do;

    @SafeParcelable.Constructor
    public zag(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 1) ArrayList arrayList) {
        this.f10364do = arrayList;
        this.f10363break = str;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10363break != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, this.f10364do, false);
        SafeParcelWriter.writeString(parcel, 2, this.f10363break, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
