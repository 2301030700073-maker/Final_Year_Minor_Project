package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import defpackage.C3307m2;
import defpackage.FG;
import defpackage.GG;
import defpackage.InterfaceC3248l2;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzl implements InterfaceC3248l2 {
    private static InterfaceC3248l2 zza;
    private final Context zzb;
    private boolean zzc;
    private final ScheduledExecutorService zzd;
    private final ExecutorService zze;

    public zzl(Context context) {
        this.zzc = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.zzd = newSingleThreadScheduledExecutor;
        this.zze = Executors.newSingleThreadExecutor();
        this.zzb = context;
        if (this.zzc) {
            return;
        }
        newSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this, null), 0L, 86400L, TimeUnit.SECONDS);
        this.zzc = true;
    }

    public static synchronized InterfaceC3248l2 zzc(Context context) {
        InterfaceC3248l2 interfaceC3248l2;
        synchronized (zzl.class) {
            Preconditions.checkNotNull(context, "Context must not be null");
            if (zza == null) {
                zza = new zzl(context.getApplicationContext());
            }
            interfaceC3248l2 = zza;
        }
        return interfaceC3248l2;
    }

    public static final void zze(Context context) {
        if (!zzf(context).edit().remove("app_set_id").commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                "Failed to clear app set ID generated for App ".concat(valueOf);
            }
        }
        if (zzf(context).edit().remove("app_set_id_last_used_time").commit()) {
            return;
        }
        String valueOf2 = String.valueOf(context.getPackageName());
        if (valueOf2.length() != 0) {
            "Failed to clear app set ID last used time for App ".concat(valueOf2);
        }
    }

    private static final SharedPreferences zzf(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    private static final void zzg(Context context) {
        SharedPreferences zzf = zzf(context);
        if (zzf.edit().putLong("app_set_id_last_used_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
            return;
        }
        String valueOf = String.valueOf(context.getPackageName());
        if (valueOf.length() != 0) {
            "Failed to store app set ID last used time for App ".concat(valueOf);
        }
        throw new zzk("Failed to store the app set ID last used time.");
    }

    @Override // defpackage.InterfaceC3248l2
    public final FG<C3307m2> getAppSetIdInfo() {
        final GG gg = new GG();
        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzl.this.zzd(gg);
            }
        });
        return gg.f1160do;
    }

    public final long zza() {
        long j = zzf(this.zzb).getLong("app_set_id_last_used_time", -1L);
        if (j != -1) {
            return j + 33696000000L;
        }
        return -1L;
    }

    public final /* synthetic */ void zzd(GG gg) {
        String string = zzf(this.zzb).getString("app_set_id", null);
        long zza2 = zza();
        if (string == null || DefaultClock.getInstance().currentTimeMillis() > zza2) {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.zzb;
                if (!zzf(context).edit().putString("app_set_id", string).commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    if (valueOf.length() != 0) {
                        "Failed to store app set ID generated for App ".concat(valueOf);
                    }
                    throw new zzk("Failed to store the app set ID.");
                }
                zzg(context);
                Context context2 = this.zzb;
                SharedPreferences zzf = zzf(context2);
                if (!zzf.edit().putLong("app_set_id_creation_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    if (valueOf2.length() != 0) {
                        "Failed to store app set ID creation time for App ".concat(valueOf2);
                    }
                    throw new zzk("Failed to store the app set ID creation time.");
                }
            } catch (zzk e) {
                gg.m719do(e);
                return;
            }
        } else {
            try {
                zzg(this.zzb);
            } catch (zzk e2) {
                gg.m719do(e2);
                return;
            }
        }
        gg.m721if(new C3307m2(string, 1));
    }
}
