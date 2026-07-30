package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzbts extends zzayb implements zzbtt {
    public zzbts() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    public static zzbtt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return queryLocalInterface instanceof zzbtt ? (zzbtt) queryLocalInterface : new zzbtr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
            zzayc.zzc(parcel);
            zzf(createTypedArrayList);
        } else {
            if (i != 2) {
                return false;
            }
            String readString = parcel.readString();
            zzayc.zzc(parcel);
            zze(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
