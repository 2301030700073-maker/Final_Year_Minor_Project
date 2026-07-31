package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzkq;

/* loaded from: classes.dex */
public interface zzkr extends IInterface {

    public static abstract class zza extends Binder implements zzkr {

        /* renamed from: com.google.android.gms.internal.zzkr$zza$zza, reason: collision with other inner class name */
        private static class C0120zza implements zzkr {
            private IBinder zznF;

            C0120zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.internal.zzkr
            public void zza(zzkq zzkqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
                    obtain.writeStrongBinder(zzkqVar != null ? zzkqVar.asBinder() : null);
                    this.zznF.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzkr zzaM(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzkr)) ? new C0120zza(iBinder) : (zzkr) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonService");
                zza(zzkq.zza.zzaL(parcel.readStrongBinder()));
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.gms.common.internal.service.ICommonService");
            return true;
        }
    }

    void zza(zzkq zzkqVar) throws RemoteException;
}
