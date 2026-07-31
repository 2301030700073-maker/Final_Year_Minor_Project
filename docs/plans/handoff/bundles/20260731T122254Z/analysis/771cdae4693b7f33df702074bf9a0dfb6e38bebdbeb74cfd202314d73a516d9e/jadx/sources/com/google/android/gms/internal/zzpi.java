package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzph;

/* loaded from: classes.dex */
public interface zzpi extends IInterface {

    public static abstract class zza extends Binder implements zzpi {

        /* renamed from: com.google.android.gms.internal.zzpi$zza$zza, reason: collision with other inner class name */
        private static class C0153zza implements zzpi {
            private IBinder zznF;

            C0153zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.internal.zzpi
            public void zza(zzph zzphVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetService");
                    obtain.writeStrongBinder(zzphVar != null ? zzphVar.asBinder() : null);
                    this.zznF.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzpi
            public void zza(zzph zzphVar, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetService");
                    obtain.writeStrongBinder(zzphVar != null ? zzphVar.asBinder() : null);
                    obtain.writeByteArray(bArr);
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzpi zzdx(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.safetynet.internal.ISafetyNetService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzpi)) ? new C0153zza(iBinder) : (zzpi) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.google.android.gms.safetynet.internal.ISafetyNetService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetService");
                    zza(zzph.zza.zzdw(parcel.readStrongBinder()), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetService");
                    zza(zzph.zza.zzdw(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzph zzphVar) throws RemoteException;

    void zza(zzph zzphVar, byte[] bArr) throws RemoteException;
}
