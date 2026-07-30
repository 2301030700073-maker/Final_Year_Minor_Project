package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: Mm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0368Mm extends IInterface {

    /* renamed from: Mm$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0368Mm {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int f2238for = 0;

        /* renamed from: Mm$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0003do implements InterfaceC0368Mm {

            /* renamed from: do, reason: not valid java name */
            public final IBinder f2239do;

            public C0003do(IBinder iBinder) {
                this.f2239do = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2239do;
            }

            @Override // defpackage.InterfaceC0368Mm
            /* renamed from: try */
            public final Bundle mo1460try(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    this.f2239do.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    Bundle mo1460try(Bundle bundle);
}
