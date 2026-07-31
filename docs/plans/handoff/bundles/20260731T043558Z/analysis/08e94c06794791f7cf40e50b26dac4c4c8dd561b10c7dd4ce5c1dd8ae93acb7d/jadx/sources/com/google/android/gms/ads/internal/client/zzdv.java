package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzdv extends zzbam implements zzdw {
    public zzdv() {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        String readString = parcel.readString();
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        zzban.zzh(parcel);
        zze(readString, asInterface, asInterface2);
        parcel2.writeNoException();
        return true;
    }
}
