package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.internal.zzjk;

/* loaded from: classes.dex */
public interface zzjl extends IInterface {

    public static abstract class zza extends Binder implements zzjl {

        /* renamed from: com.google.android.gms.internal.zzjl$zza$zza, reason: collision with other inner class name */
        private static class C0111zza implements zzjl {
            private IBinder zznF;

            C0111zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.internal.zzjl
            public void zza(zzjk zzjkVar, ProxyRequest proxyRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(zzjkVar != null ? zzjkVar.asBinder() : null);
                    if (proxyRequest != null) {
                        obtain.writeInt(1);
                        proxyRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzjl zzat(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzjl)) ? new C0111zza(iBinder) : (zzjl) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
            zza(zzjk.zza.zzas(parcel.readStrongBinder()), parcel.readInt() != 0 ? ProxyRequest.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void zza(zzjk zzjkVar, ProxyRequest proxyRequest) throws RemoteException;
}
