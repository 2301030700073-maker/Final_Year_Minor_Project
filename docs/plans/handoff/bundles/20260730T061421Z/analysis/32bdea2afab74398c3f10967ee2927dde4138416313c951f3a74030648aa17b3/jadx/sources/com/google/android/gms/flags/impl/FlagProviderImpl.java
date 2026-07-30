package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import c.b.a.c.b.a;
import c.b.a.c.e.a.b;
import c.b.a.c.e.a.c;
import c.b.a.c.e.a.d;
import c.b.a.c.e.a.e;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzcmu;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends zzcmu {
    public boolean zza = false;
    public SharedPreferences zzb;

    @Override // com.google.android.gms.internal.zzcmt
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        if (!this.zza) {
            return z;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Boolean valueOf = Boolean.valueOf(z);
        try {
            valueOf = (Boolean) a.T(new c.b.a.c.e.a.a(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.booleanValue();
    }

    @Override // com.google.android.gms.internal.zzcmt
    public int getIntFlagValue(String str, int i, int i2) {
        if (!this.zza) {
            return i;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Integer valueOf = Integer.valueOf(i);
        try {
            valueOf = (Integer) a.T(new b(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.intValue();
    }

    @Override // com.google.android.gms.internal.zzcmt
    public long getLongFlagValue(String str, long j, int i) {
        if (!this.zza) {
            return j;
        }
        SharedPreferences sharedPreferences = this.zzb;
        Long valueOf = Long.valueOf(j);
        try {
            valueOf = (Long) a.T(new c(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.longValue();
    }

    @Override // com.google.android.gms.internal.zzcmt
    public String getStringFlagValue(String str, String str2, int i) {
        if (!this.zza) {
            return str2;
        }
        try {
            return (String) a.T(new d(this.zzb, str, str2));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", valueOf.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf) : new String("Flag value not available, returning default: "));
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.zzcmt
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) zzn.zza(iObjectWrapper);
        if (this.zza) {
            return;
        }
        try {
            this.zzb = e.a(context.createPackageContext("com.google.android.gms", 0));
            this.zza = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("FlagProviderImpl", valueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
