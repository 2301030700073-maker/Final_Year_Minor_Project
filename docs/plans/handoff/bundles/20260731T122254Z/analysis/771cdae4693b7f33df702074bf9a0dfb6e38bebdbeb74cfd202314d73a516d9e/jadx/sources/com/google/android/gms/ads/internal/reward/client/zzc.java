package com.google.android.gms.ads.internal.reward.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzef;

/* loaded from: classes.dex */
public interface zzc extends IInterface {

    public static abstract class zza extends Binder implements zzc {

        /* renamed from: com.google.android.gms.ads.internal.reward.client.zzc$zza$zza, reason: collision with other inner class name */
        private static class C0021zza implements zzc {
            private IBinder zznF;

            C0021zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzc
            public IBinder zza(com.google.android.gms.dynamic.zzd zzdVar, zzef zzefVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    obtain.writeStrongBinder(zzefVar != null ? zzefVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.zznF.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzc zzY(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzc)) ? new C0021zza(iBinder) : (zzc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
            IBinder zza = zza(zzd.zza.zzbg(parcel.readStrongBinder()), zzef.zza.zzE(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(zza);
            return true;
        }
    }

    IBinder zza(com.google.android.gms.dynamic.zzd zzdVar, zzef zzefVar, int i) throws RemoteException;
}
