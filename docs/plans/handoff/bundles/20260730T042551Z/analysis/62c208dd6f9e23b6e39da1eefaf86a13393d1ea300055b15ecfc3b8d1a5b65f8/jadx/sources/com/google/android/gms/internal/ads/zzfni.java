package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.FG;
import defpackage.GG;
import defpackage.InterfaceC0598Xa;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfni {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzf = 1;
    private final Context zzb;
    private final Executor zzc;
    private final FG zzd;
    private final boolean zze;

    public zzfni(Context context, Executor executor, FG fg, boolean z) {
        this.zzb = context;
        this.zzc = executor;
        this.zzd = fg;
        this.zze = z;
    }

    public static zzfni zza(final Context context, Executor executor, boolean z) {
        final GG gg = new GG();
        if (z) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfng
                @Override // java.lang.Runnable
                public final void run() {
                    gg.m721if(zzfpk.zzb(context, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfnh
                @Override // java.lang.Runnable
                public final void run() {
                    GG.this.m721if(zzfpk.zzc());
                }
            });
        }
        return new zzfni(context, executor, gg.f1160do, z);
    }

    public static void zzg(int i) {
        zzf = i;
    }

    private final FG zzh(final int i, long j, Exception exc, String str, Map map, String str2) {
        if (!this.zze) {
            return this.zzd.mo598goto(this.zzc, new InterfaceC0598Xa() { // from class: com.google.android.gms.internal.ads.zzfne
                @Override // defpackage.InterfaceC0598Xa
                public final Object then(FG fg) {
                    return Boolean.valueOf(fg.mo604throw());
                }
            });
        }
        Context context = this.zzb;
        final zzari zza2 = zzarm.zza();
        zza2.zza(context.getPackageName());
        zza2.zze(j);
        zza2.zzg(zzf);
        if (exc != null) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            zza2.zzf(stringWriter.toString());
            zza2.zzd(exc.getClass().getName());
        }
        if (str2 != null) {
            zza2.zzb(str2);
        }
        if (str != null) {
            zza2.zzc(str);
        }
        return this.zzd.mo598goto(this.zzc, new InterfaceC0598Xa() { // from class: com.google.android.gms.internal.ads.zzfnf
            @Override // defpackage.InterfaceC0598Xa
            public final Object then(FG fg) {
                if (!fg.mo604throw()) {
                    return Boolean.FALSE;
                }
                int i2 = i;
                zzfpi zza3 = ((zzfpk) fg.mo592class()).zza(((zzarm) zzari.this.zzbn()).zzaV());
                zza3.zza(i2);
                zza3.zzc();
                return Boolean.TRUE;
            }
        });
    }

    public final FG zzb(int i, String str) {
        return zzh(i, 0L, null, null, null, str);
    }

    public final FG zzc(int i, long j, Exception exc) {
        return zzh(i, j, exc, null, null, null);
    }

    public final FG zzd(int i, long j) {
        return zzh(i, j, null, null, null, null);
    }

    public final FG zze(int i, long j, String str) {
        return zzh(i, j, null, null, null, str);
    }

    public final FG zzf(int i, long j, String str, Map map) {
        return zzh(i, j, null, str, null, null);
    }
}
