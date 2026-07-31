package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.braze.models.Banner;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzevi implements zzeya {
    private final zzgus zza;
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set zzd;

    public zzevi(zzgus zzgusVar, ViewGroup viewGroup, Context context, Set set) {
        this.zza = zzgusVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzevh
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzevi.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 22;
    }

    final /* synthetic */ zzevj zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgw)).booleanValue() && this.zzb != null && this.zzd.contains(Banner.BANNER_KEY)) {
            return new zzevj(Boolean.valueOf(this.zzb.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgx)).booleanValue() && this.zzd.contains("native")) {
            Context context = this.zzc;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                boolean z = true;
                if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                    try {
                        if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) == 0) {
                            z = false;
                        }
                        bool = Boolean.valueOf(z);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                } else {
                    bool = true;
                }
                return new zzevj(bool);
            }
        }
        return new zzevj(null);
    }
}
