package com.google.android.gms.internal.ads;

import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbdc extends zzayb implements zzbdd {
    public zzbdc() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String zzb = zzb();
            parcel2.writeNoException();
            parcel2.writeString(zzb);
        } else if (i == 2) {
            String zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(zzc);
        } else if (i == 3) {
            InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            zzd(n);
            parcel2.writeNoException();
        } else if (i == 4) {
            zze();
            parcel2.writeNoException();
        } else {
            if (i != 5) {
                return false;
            }
            zzf();
            parcel2.writeNoException();
        }
        return true;
    }
}
