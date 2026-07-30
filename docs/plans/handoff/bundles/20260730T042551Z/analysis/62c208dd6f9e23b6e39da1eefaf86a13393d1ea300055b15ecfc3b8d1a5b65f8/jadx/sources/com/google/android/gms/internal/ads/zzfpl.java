package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzfpl extends zzaya implements zzfpn {
    public zzfpl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zze(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zza.writeString(null);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zzf() {
        zzda(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zzh(int[] iArr) {
        Parcel zza = zza();
        zza.writeIntArray(null);
        zzda(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zzi(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpn
    public final void zzj(byte[] bArr) {
        Parcel zza = zza();
        zza.writeByteArray(bArr);
        zzda(5, zza);
    }
}
