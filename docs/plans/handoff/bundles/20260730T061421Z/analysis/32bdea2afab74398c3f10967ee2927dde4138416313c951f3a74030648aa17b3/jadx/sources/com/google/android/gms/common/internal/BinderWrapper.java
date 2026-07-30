package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.d.j.u;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
/* loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator CREATOR = new u();

    /* renamed from: a, reason: collision with root package name */
    public IBinder f3400a;

    public BinderWrapper() {
        this.f3400a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f3400a);
    }

    public BinderWrapper(Parcel parcel, u uVar) {
        this.f3400a = null;
        this.f3400a = parcel.readStrongBinder();
    }
}
