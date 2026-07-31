package org.openintents.openpgp;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface IOpenPgpService2 extends IInterface {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class Default implements IOpenPgpService2 {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // org.openintents.openpgp.IOpenPgpService2
        public final ParcelFileDescriptor createOutputPipe(int i) {
            return null;
        }

        @Override // org.openintents.openpgp.IOpenPgpService2
        public final Intent execute(Intent intent, ParcelFileDescriptor parcelFileDescriptor, int i) {
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static class _Parcel {
        /* renamed from: -$$Nest$smwriteTypedObject, reason: not valid java name */
        public static void m1088$$Nest$smwriteTypedObject(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            }
        }
    }

    ParcelFileDescriptor createOutputPipe(int i);

    Intent execute(Intent intent, ParcelFileDescriptor parcelFileDescriptor, int i);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static abstract class Stub extends Binder implements IOpenPgpService2 {
        public static final /* synthetic */ int $r8$clinit = 0;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Proxy implements IOpenPgpService2 {
            public IBinder mRemote;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.openintents.openpgp.IOpenPgpService2
            public final ParcelFileDescriptor createOutputPipe(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("org.openintents.openpgp.IOpenPgpService2");
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return (ParcelFileDescriptor) (obtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.openintents.openpgp.IOpenPgpService2
            public final Intent execute(Intent intent, ParcelFileDescriptor parcelFileDescriptor, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("org.openintents.openpgp.IOpenPgpService2");
                    _Parcel.m1088$$Nest$smwriteTypedObject(obtain, intent, 0);
                    _Parcel.m1088$$Nest$smwriteTypedObject(obtain, parcelFileDescriptor, 0);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Intent) (obtain2.readInt() != 0 ? Intent.CREATOR.createFromParcel(obtain2) : null);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("org.openintents.openpgp.IOpenPgpService2");
            }
            if (i == 1598968902) {
                parcel2.writeString("org.openintents.openpgp.IOpenPgpService2");
                return true;
            }
            if (i == 1) {
                ParcelFileDescriptor createOutputPipe = createOutputPipe(parcel.readInt());
                parcel2.writeNoException();
                _Parcel.m1088$$Nest$smwriteTypedObject(parcel2, createOutputPipe, 1);
                return true;
            }
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            Intent execute = execute((Intent) (parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null), (ParcelFileDescriptor) (parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null), parcel.readInt());
            parcel2.writeNoException();
            _Parcel.m1088$$Nest$smwriteTypedObject(parcel2, execute, 1);
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
