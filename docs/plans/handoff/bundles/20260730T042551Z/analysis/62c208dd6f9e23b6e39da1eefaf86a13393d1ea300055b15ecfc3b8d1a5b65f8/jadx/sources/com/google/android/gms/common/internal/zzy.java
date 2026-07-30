package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zzy extends com.google.android.gms.internal.common.zza implements zzaa {
    public zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        Parcel zzB = zzB(2, zza());
        int readInt = zzB.readInt();
        zzB.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final InterfaceC0456Qm zzd() {
        return V1.m2504new(zzB(1, zza()));
    }
}
