package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import c.b.a.c.f.C0437k;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzcmv extends zzez implements zzcmt {
    public zzcmv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.flags.IFlagProvider");
    }

    @Override // com.google.android.gms.internal.zzcmt
    public final boolean getBooleanFlagValue(String str, boolean z, int i) {
        Parcel a_ = a_();
        a_.writeString(str);
        C0437k.d(a_, z);
        a_.writeInt(i);
        Parcel zza = zza(2, a_);
        boolean z2 = zza.readInt() != 0;
        zza.recycle();
        return z2;
    }

    @Override // com.google.android.gms.internal.zzcmt
    public final int getIntFlagValue(String str, int i, int i2) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeInt(i);
        a_.writeInt(i2);
        Parcel zza = zza(3, a_);
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.zzcmt
    public final long getLongFlagValue(String str, long j, int i) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeLong(j);
        a_.writeInt(i);
        Parcel zza = zza(4, a_);
        long readLong = zza.readLong();
        zza.recycle();
        return readLong;
    }

    @Override // com.google.android.gms.internal.zzcmt
    public final String getStringFlagValue(String str, String str2, int i) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeInt(i);
        Parcel zza = zza(5, a_);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzcmt
    public final void init(IObjectWrapper iObjectWrapper) {
        Parcel a_ = a_();
        C0437k.b(a_, iObjectWrapper);
        zzb(1, a_);
    }
}
