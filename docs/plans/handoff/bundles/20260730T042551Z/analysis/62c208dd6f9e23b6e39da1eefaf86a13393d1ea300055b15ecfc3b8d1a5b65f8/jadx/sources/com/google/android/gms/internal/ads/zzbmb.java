package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbmb extends zzayb implements zzbmc {
    public zzbmb() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbmf zzbmdVar;
        if (i == 3) {
            com.google.android.gms.ads.internal.client.zzeb zzb = zzb();
            parcel2.writeNoException();
            zzayc.zzf(parcel2, zzb);
            return true;
        }
        if (i == 4) {
            zzd();
            parcel2.writeNoException();
            return true;
        }
        if (i == 5) {
            InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbmdVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbmdVar = queryLocalInterface instanceof zzbmf ? (zzbmf) queryLocalInterface : new zzbmd(readStrongBinder);
            }
            zzayc.zzc(parcel);
            zzf(n, zzbmdVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 6) {
            InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            zze(n2);
            parcel2.writeNoException();
            return true;
        }
        if (i != 7) {
            return false;
        }
        zzbft zzc = zzc();
        parcel2.writeNoException();
        zzayc.zzf(parcel2, zzc);
        return true;
    }
}
