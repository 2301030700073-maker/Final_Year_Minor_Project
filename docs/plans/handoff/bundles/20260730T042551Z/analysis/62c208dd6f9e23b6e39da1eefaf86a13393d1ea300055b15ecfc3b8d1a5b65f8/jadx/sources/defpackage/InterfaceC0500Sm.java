package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: Sm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0500Sm extends IInterface {

    /* renamed from: Sm$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0500Sm {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int f3551for = 0;

        /* renamed from: Sm$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0005do implements InterfaceC0500Sm {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f3552do;

            public C0005do(IBinder iBinder) {
                this.f3552do = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3552do;
            }

            @Override // defpackage.InterfaceC0500Sm
            public final int g(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f3552do.transact(1, obtain, obtain2, 0)) {
                        int i = Cdo.f3551for;
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static InterfaceC0500Sm n(IBinder iBinder) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0500Sm)) ? new C0005do(iBinder) : (InterfaceC0500Sm) queryLocalInterface;
        }
    }

    int g(Bundle bundle);
}
