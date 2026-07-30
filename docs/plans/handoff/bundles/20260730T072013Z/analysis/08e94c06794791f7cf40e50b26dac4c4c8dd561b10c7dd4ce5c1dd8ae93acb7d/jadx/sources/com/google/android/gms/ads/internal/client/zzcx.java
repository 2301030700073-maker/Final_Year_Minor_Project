package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbrj;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzcx extends zzbam implements zzcy {
    public zzcx() {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    public static zzcy asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        return queryLocalInterface instanceof zzcy ? (zzcy) queryLocalInterface : new zzcw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzfc liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            zzban.zzd(parcel2, liteSdkVersion);
        } else {
            if (i != 2) {
                return false;
            }
            zzbrj adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            zzban.zze(parcel2, adapterCreator);
        }
        return true;
    }
}
