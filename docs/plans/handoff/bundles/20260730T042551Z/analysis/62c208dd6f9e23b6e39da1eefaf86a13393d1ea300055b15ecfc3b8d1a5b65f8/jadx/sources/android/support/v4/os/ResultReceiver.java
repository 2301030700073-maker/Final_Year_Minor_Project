package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.Cdo;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public android.support.v4.os.Cdo f5082do;

    /* renamed from: android.support.v4.os.ResultReceiver$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<ResultReceiver> {
        @Override // android.os.Parcelable.Creator
        public final ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }

    /* renamed from: android.support.v4.os.ResultReceiver$if, reason: invalid class name */
    public class Cif extends Cdo.AbstractBinderC0024do {
        public Cif() {
        }

        @Override // android.support.v4.os.Cdo
        /* renamed from: transient, reason: not valid java name */
        public final void mo3187transient(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            resultReceiver.getClass();
            resultReceiver.mo3167do(i, bundle);
        }
    }

    public ResultReceiver(Parcel parcel) {
        android.support.v4.os.Cdo c0025do;
        IBinder readStrongBinder = parcel.readStrongBinder();
        int i = Cdo.AbstractBinderC0024do.f5085for;
        if (readStrongBinder == null) {
            c0025do = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(android.support.v4.os.Cdo.f5084this);
            c0025do = (queryLocalInterface == null || !(queryLocalInterface instanceof android.support.v4.os.Cdo)) ? new Cdo.AbstractBinderC0024do.C0025do(readStrongBinder) : (android.support.v4.os.Cdo) queryLocalInterface;
        }
        this.f5082do = c0025do;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: do */
    public void mo3167do(int i, Bundle bundle) {
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3186if(int i, Bundle bundle) {
        android.support.v4.os.Cdo cdo = this.f5082do;
        if (cdo != null) {
            try {
                cdo.mo3187transient(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f5082do == null) {
                this.f5082do = new Cif();
            }
            parcel.writeStrongBinder(this.f5082do.asBinder());
        }
    }
}
