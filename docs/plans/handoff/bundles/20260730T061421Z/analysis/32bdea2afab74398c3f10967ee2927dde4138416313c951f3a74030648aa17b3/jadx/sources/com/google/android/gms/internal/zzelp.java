package com.google.android.gms.internal;

import android.os.Parcel;
import c.b.a.c.d.g.u.y;
import c.b.a.c.f.C0437k;
import com.google.android.gms.common.api.internal.zzdb;

/* loaded from: classes.dex */
public class zzelp extends zzfa implements zzelq {
    public zzelp() {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 3) {
        } else if (i == 4) {
        } else if (i == 6) {
        } else if (i == 7) {
        } else {
            if (i != 8) {
                return false;
            }
            zzdb zzdbVar = (zzdb) this;
            zzdbVar.zzc.post(new y(zzdbVar, (zzelx) C0437k.a(parcel, zzelx.CREATOR)));
        }
        parcel2.writeNoException();
        return true;
    }
}
