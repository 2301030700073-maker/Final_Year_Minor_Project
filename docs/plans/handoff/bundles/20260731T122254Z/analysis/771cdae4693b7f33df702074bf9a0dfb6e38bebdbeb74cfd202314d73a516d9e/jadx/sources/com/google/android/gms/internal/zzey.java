package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;

/* loaded from: classes.dex */
public interface zzey extends IInterface {

    public static abstract class zza extends Binder implements zzey {

        /* renamed from: com.google.android.gms.internal.zzey$zza$zza, reason: collision with other inner class name */
        private static class C0093zza implements zzey {
            private IBinder zznF;

            C0093zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.internal.zzey
            public IBinder zzc(com.google.android.gms.dynamic.zzd zzdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzey zzJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzey)) ? new C0093zza(iBinder) : (zzey) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            IBinder zzc = zzc(zzd.zza.zzbg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeStrongBinder(zzc);
            return true;
        }
    }

    IBinder zzc(com.google.android.gms.dynamic.zzd zzdVar) throws RemoteException;
}
