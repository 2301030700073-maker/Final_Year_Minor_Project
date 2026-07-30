package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import c.b.a.c.f.C0437k;
import com.google.android.gms.internal.zzez;

/* loaded from: classes.dex */
public final class zzw extends zzez implements IAccountAccessor {
    public zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account getAccount() {
        Parcel zza = zza(2, a_());
        Account account = (Account) C0437k.a(zza, Account.CREATOR);
        zza.recycle();
        return account;
    }
}
