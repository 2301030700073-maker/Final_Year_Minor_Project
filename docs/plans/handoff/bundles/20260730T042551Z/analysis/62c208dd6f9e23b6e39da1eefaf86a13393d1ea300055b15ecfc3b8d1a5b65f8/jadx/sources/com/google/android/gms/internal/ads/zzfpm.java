package com.google.android.gms.internal.ads;

import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzfpm extends zzayb implements zzfpn {
    public zzfpm() {
        super("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                parcel.readString();
                zzayc.zzc(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                zzayc.zzc(parcel);
                break;
            case 5:
                parcel.createByteArray();
                zzayc.zzc(parcel);
                break;
            case 6:
                parcel.readInt();
                zzayc.zzc(parcel);
                break;
            case 7:
                parcel.readInt();
                zzayc.zzc(parcel);
                break;
            case 8:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                zzayc.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
