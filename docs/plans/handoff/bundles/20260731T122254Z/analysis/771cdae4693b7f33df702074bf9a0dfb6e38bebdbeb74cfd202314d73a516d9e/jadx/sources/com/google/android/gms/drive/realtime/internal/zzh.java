package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface zzh extends IInterface {

    public static abstract class zza extends Binder implements zzh {

        /* renamed from: com.google.android.gms.drive.realtime.internal.zzh$zza$zza, reason: collision with other inner class name */
        private static class C0052zza implements zzh {
            private IBinder zznF;

            C0052zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.drive.realtime.internal.zzh
            public void zzc(boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzh zzaX(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzh)) ? new C0052zza(iBinder) : (zzh) queryLocalInterface;
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
                parcel2.writeString("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDocumentSaveStateEventCallback");
            zzc(parcel.readInt() != 0, parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void zzc(boolean z, boolean z2) throws RemoteException;
}
