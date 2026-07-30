package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import c.b.a.c.f.C0437k;

/* loaded from: classes.dex */
public final class zzelt extends zzez implements zzels {
    public zzelt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.internal.zzels
    public final void zza(zzelv zzelvVar, zzelq zzelqVar) {
        Parcel a_ = a_();
        C0437k.c(a_, zzelvVar);
        C0437k.b(a_, zzelqVar);
        zzb(12, a_);
    }
}
