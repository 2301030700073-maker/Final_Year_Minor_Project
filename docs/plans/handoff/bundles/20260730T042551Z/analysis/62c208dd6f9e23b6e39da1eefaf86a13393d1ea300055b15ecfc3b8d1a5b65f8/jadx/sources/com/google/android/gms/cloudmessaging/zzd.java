package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.WP;

/* loaded from: classes.dex */
public final class zzd implements Parcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new WP();

    /* renamed from: do, reason: not valid java name */
    public final Messenger f10175do;

    public zzd(IBinder iBinder) {
        this.f10175do = new Messenger(iBinder);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Messenger messenger = this.f10175do;
            messenger.getClass();
            IBinder binder = messenger.getBinder();
            Messenger messenger2 = ((zzd) obj).f10175do;
            messenger2.getClass();
            return binder.equals(messenger2.getBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        Messenger messenger = this.f10175do;
        messenger.getClass();
        return messenger.getBinder().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f10175do;
        messenger.getClass();
        parcel.writeStrongBinder(messenger.getBinder());
    }
}
