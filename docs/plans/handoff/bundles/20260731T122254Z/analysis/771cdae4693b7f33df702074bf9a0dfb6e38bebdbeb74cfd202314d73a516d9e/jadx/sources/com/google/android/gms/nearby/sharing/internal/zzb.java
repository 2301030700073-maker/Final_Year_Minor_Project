package com.google.android.gms.nearby.sharing.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.nearby.sharing.SharedContent;
import java.util.List;

/* loaded from: classes.dex */
public interface zzb extends IInterface {

    public static abstract class zza extends Binder implements zzb {

        /* renamed from: com.google.android.gms.nearby.sharing.internal.zzb$zza$zza, reason: collision with other inner class name */
        private static class C0225zza implements zzb {
            private IBinder zznF;

            C0225zza(IBinder iBinder) {
                this.zznF = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zznF;
            }

            @Override // com.google.android.gms.nearby.sharing.internal.zzb
            public List<SharedContent> zzxh() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.sharing.internal.IContentProvider");
                    this.zznF.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(SharedContent.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzb zzdi(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.sharing.internal.IContentProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzb)) ? new C0225zza(iBinder) : (zzb) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.google.android.gms.nearby.sharing.internal.IContentProvider");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.nearby.sharing.internal.IContentProvider");
            List<SharedContent> zzxh = zzxh();
            parcel2.writeNoException();
            parcel2.writeTypedList(zzxh);
            return true;
        }
    }

    List<SharedContent> zzxh() throws RemoteException;
}
