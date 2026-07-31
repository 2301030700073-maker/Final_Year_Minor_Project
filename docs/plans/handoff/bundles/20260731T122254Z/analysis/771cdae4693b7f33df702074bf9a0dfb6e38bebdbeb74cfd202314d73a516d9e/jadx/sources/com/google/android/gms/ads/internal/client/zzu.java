package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface zzu extends IInterface {

    public static abstract class zza extends Binder implements zzu {

        /* renamed from: com.google.android.gms.ads.internal.client.zzu$zza$zza, reason: collision with other inner class name */
        private static class C0010zza implements zzu {
            private IBinder zznF;

            C0010zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.ads.internal.client.zzu
            public long getValue() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
        }

        public static zzu zzn(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzu)) ? new C0010zza(iBinder) : (zzu) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
            long value = getValue();
            parcel2.writeNoException();
            parcel2.writeLong(value);
            return true;
        }
    }

    long getValue() throws RemoteException;
}
