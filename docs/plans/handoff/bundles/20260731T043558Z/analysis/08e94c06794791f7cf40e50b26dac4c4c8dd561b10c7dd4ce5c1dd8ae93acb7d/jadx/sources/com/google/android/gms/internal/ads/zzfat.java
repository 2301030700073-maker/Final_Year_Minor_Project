package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzfat implements Callable {
    static final /* synthetic */ zzfat zza = new zzfat();

    private /* synthetic */ zzfat() {
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        HashMap hashMap = new HashMap();
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzae);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaf)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, com.google.android.gms.ads.internal.util.zzch.zza(str2));
                }
            }
        }
        return new zzfav(hashMap);
    }
}
