package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbgf extends zzayb implements zzbgg {
    public zzbgf() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzbgg zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof zzbgg ? (zzbgg) queryLocalInterface : new zzbge(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            zzc(n);
        } else if (i == 2) {
            zzd();
        } else {
            if (i != 3) {
                return false;
            }
            InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            zzb(n2);
        }
        parcel2.writeNoException();
        return true;
    }
}
