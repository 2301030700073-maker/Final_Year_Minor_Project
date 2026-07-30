package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import defpackage.V1;

/* loaded from: classes.dex */
public final class zam extends com.google.android.gms.internal.base.zaa {
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final InterfaceC0456Qm zae(InterfaceC0456Qm interfaceC0456Qm, zax zaxVar) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.zad(zaa, interfaceC0456Qm);
        com.google.android.gms.internal.base.zac.zac(zaa, zaxVar);
        return V1.m2504new(zab(2, zaa));
    }
}
