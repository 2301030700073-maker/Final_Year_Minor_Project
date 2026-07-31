package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgdm extends zzgdh {
    private final DisplayMetrics zza;
    private final View zzb;

    zzgdm(zzauc zzaucVar, zzgcd zzgcdVar, DisplayMetrics displayMetrics, View view, zzgjd zzgjdVar) {
        super("P6F0ZRwWAQfQFwxv0Pq3Kr7GsgVJK2iuMjcPK+Aq3kgEIqqz95IgzklzBsNVE1/z", "noWWhxc3WlXlb4cqOg7NtD3uZWHj+L+uVXJvY7XilyA=", zzaucVar, zzgcdVar, zzgjdVar.zza(124));
        this.zza = displayMetrics;
        this.zzb = view;
    }

    @Override // com.google.android.gms.internal.ads.zzgdh
    protected final void zza(Method method, zzauc zzaucVar) throws IllegalAccessException, InvocationTargetException {
        View view = this.zzb;
        if (view == null) {
            return;
        }
        Object invoke = method.invoke("", this.zza, view);
        invoke.getClass();
        Long[] lArr = (Long[]) invoke;
        zzaux zza = zzauy.zza();
        zza.zzb(lArr[2].longValue());
        zza.zzc(lArr[1].longValue());
        zza.zzd(lArr[0].longValue());
        zza.zza(lArr[3].longValue());
        zza.zze(lArr[4].longValue());
        zzaucVar.zzM((zzauy) zza.zzbu());
    }
}
