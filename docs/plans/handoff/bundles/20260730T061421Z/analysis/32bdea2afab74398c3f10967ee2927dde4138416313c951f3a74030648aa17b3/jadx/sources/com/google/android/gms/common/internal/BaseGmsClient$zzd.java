package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import c.b.a.c.b.a;
import c.b.a.c.d.j.C0426g;
import c.b.a.c.d.j.z;
import c.b.a.c.f.C0437k;
import com.google.android.gms.internal.zzfa;

/* loaded from: classes.dex */
public final class BaseGmsClient$zzd extends zzfa implements IGmsCallbacks {
    public z zza;
    public final int zzb;

    public BaseGmsClient$zzd(z zVar, int i) {
        attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
        this.zza = zVar;
        this.zzb = i;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) C0437k.a(parcel, Bundle.CREATOR);
            a.S(this.zza, "onPostInitComplete can be called only once per call to getRemoteService");
            z zVar = this.zza;
            int i3 = this.zzb;
            Handler handler = zVar.f2988d;
            handler.sendMessage(handler.obtainMessage(1, i3, -1, new C0426g(zVar, readInt, readStrongBinder, bundle)));
            this.zza = null;
        } else {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }
        parcel2.writeNoException();
        return true;
    }
}
