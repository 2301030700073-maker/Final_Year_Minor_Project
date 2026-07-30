package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import defpackage.AbstractC2838gw;
import defpackage.Bx;
import defpackage.Ccase;

/* loaded from: classes.dex */
public final class zzhi {
    private static volatile AbstractC2838gw<Boolean> zza = Ccase.f8559do;
    private static final Object zzb = new Object();

    private static boolean zza(Context context) {
        return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
    }

    public static boolean zza(Context context, Uri uri) {
        boolean z;
        boolean z2 = false;
        if (!"com.google.android.gms.phenotype".equals(uri.getAuthority())) {
            return false;
        }
        if (zza.mo243if()) {
            return zza.mo242do().booleanValue();
        }
        synchronized (zzb) {
            if (zza.mo243if()) {
                return zza.mo242do().booleanValue();
            }
            if (!"com.google.android.gms".equals(context.getPackageName())) {
                ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                if (resolveContentProvider == null || !"com.google.android.gms".equals(resolveContentProvider.packageName)) {
                    z = false;
                    if (z && zza(context)) {
                        z2 = true;
                    }
                    Boolean valueOf = Boolean.valueOf(z2);
                    valueOf.getClass();
                    zza = new Bx(valueOf);
                    return zza.mo242do().booleanValue();
                }
            }
            z = true;
            if (z) {
                z2 = true;
            }
            Boolean valueOf2 = Boolean.valueOf(z2);
            valueOf2.getClass();
            zza = new Bx(valueOf2);
            return zza.mo242do().booleanValue();
        }
    }
}
