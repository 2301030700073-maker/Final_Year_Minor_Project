package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.internal.ads.zzbpa;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: do, reason: not valid java name */
    public static volatile zzci f10140do;

    public static zzci zza(Context context) {
        if (f10140do == null) {
            synchronized (zzb.class) {
                if (f10140do == null) {
                    f10140do = zzbc.zza().zzg(context.getApplicationContext(), new zzbpa());
                }
            }
        }
        return f10140do;
    }
}
