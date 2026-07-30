package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import c.b.a.c.b.a;
import c.b.a.c.d.q;
import c.b.a.c.d.r;
import c.b.a.c.d.w;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzbkv;

/* loaded from: classes.dex */
public final class zzl extends zzbkv {
    public static final Parcelable.Creator CREATOR = new w();

    /* renamed from: a, reason: collision with root package name */
    public final String f3443a;

    /* renamed from: b, reason: collision with root package name */
    public final q f3444b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3445c;

    public zzl(String str, IBinder iBinder, boolean z) {
        this.f3443a = str;
        r rVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper zzb = q.zza(iBinder).zzb();
                byte[] bArr = zzb == null ? null : (byte[]) zzn.zza(zzb);
                if (bArr != null) {
                    rVar = new r(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            }
        }
        this.f3444b = rVar;
        this.f3445c = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        int q0 = a.q0(parcel);
        a.c0(parcel, 1, this.f3443a, false);
        q qVar = this.f3444b;
        if (qVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            asBinder = null;
        } else {
            asBinder = qVar.asBinder();
        }
        a.a0(parcel, 2, asBinder);
        a.d0(parcel, 3, this.f3445c);
        a.H0(parcel, q0);
    }
}
