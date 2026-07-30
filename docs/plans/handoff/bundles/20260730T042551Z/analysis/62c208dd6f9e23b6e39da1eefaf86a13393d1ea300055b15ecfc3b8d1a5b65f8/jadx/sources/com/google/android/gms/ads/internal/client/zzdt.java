package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzdt extends zzayb implements zzdu {
    public zzdt() {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        String readString = parcel.readString();
        InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
        InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
        zzayc.zzc(parcel);
        zze(readString, n, n2);
        parcel2.writeNoException();
        return true;
    }
}
