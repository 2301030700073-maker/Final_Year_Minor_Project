package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.AdRequest;
import defpackage.InterfaceFutureC3942wq;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzerd implements zzetr {
    private final zzgcs zza;
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set zzd;

    public zzerd(zzgcs zzgcsVar, ViewGroup viewGroup, Context context, Set set) {
        this.zza = zzgcsVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerd.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzere zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfM)).booleanValue() && this.zzb != null && this.zzd.contains("banner")) {
            return new zzere(Boolean.valueOf(this.zzb.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfN)).booleanValue() && this.zzd.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
            Context context = this.zzc;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                    try {
                        bool = Boolean.valueOf((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                } else {
                    bool = Boolean.TRUE;
                }
                return new zzere(bool);
            }
        }
        return new zzere(null);
    }
}
