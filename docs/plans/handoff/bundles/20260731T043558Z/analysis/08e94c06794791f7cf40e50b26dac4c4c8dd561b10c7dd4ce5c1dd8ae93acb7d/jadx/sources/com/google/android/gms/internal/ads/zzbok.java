package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbok extends zzbam implements zzbol {
    public zzbok() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzboo zzbomVar;
        if (i == 3) {
            com.google.android.gms.ads.internal.client.zzed zzb = zzb();
            parcel2.writeNoException();
            zzban.zze(parcel2, zzb);
            return true;
        }
        if (i == 4) {
            zzc();
            parcel2.writeNoException();
            return true;
        }
        if (i == 5) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbomVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbomVar = queryLocalInterface instanceof zzboo ? (zzboo) queryLocalInterface : new zzbom(readStrongBinder);
            }
            zzban.zzh(parcel);
            zzd(asInterface, zzbomVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 6) {
            IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzban.zzh(parcel);
            zze(asInterface2);
            parcel2.writeNoException();
            return true;
        }
        if (i != 7) {
            return false;
        }
        zzbif zzf = zzf();
        parcel2.writeNoException();
        zzban.zze(parcel2, zzf);
        return true;
    }
}
