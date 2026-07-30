package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import com.google.android.gms.ads.internal.offline.buffering.zza;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbq extends zzayb implements zzbr {
    public zzbq() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            zzayc.zzc(parcel);
            boolean zzf = zzf(n, readString, readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zzf ? 1 : 0);
        } else if (i == 2) {
            InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            zze(n2);
            parcel2.writeNoException();
        } else {
            if (i != 3) {
                return false;
            }
            InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zza zzaVar = (zza) zzayc.zza(parcel, zza.CREATOR);
            zzayc.zzc(parcel);
            boolean zzg = zzg(n3, zzaVar);
            parcel2.writeNoException();
            parcel2.writeInt(zzg ? 1 : 0);
        }
        return true;
    }
}
