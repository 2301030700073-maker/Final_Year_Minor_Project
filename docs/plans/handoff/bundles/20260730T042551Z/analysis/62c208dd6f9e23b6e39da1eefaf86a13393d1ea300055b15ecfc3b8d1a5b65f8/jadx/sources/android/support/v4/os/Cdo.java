package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.os.ResultReceiver;

/* renamed from: android.support.v4.os.do, reason: invalid class name */
/* loaded from: classes.dex */
public interface Cdo extends IInterface {

    /* renamed from: this, reason: not valid java name */
    public static final String f5084this = "android$support$v4$os$IResultReceiver".replace('$', '.');

    /* renamed from: android.support.v4.os.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractBinderC0024do extends Binder implements Cdo {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int f5085for = 0;

        /* renamed from: android.support.v4.os.do$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0025do implements Cdo {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f5086do;

            public C0025do(IBinder iBinder) {
                this.f5086do = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f5086do;
            }

            @Override // android.support.v4.os.Cdo
            /* renamed from: transient */
            public final void mo3187transient(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.f5084this);
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f5086do.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0024do() {
            attachInterface(this, Cdo.f5084this);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = Cdo.f5084this;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            ((ResultReceiver.Cif) this).mo3187transient(parcel.readInt(), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
            return true;
        }
    }

    /* renamed from: transient */
    void mo3187transient(int i, Bundle bundle);
}
