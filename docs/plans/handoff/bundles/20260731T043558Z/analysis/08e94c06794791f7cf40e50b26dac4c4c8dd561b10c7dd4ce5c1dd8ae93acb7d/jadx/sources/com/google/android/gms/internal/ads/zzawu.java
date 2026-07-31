package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzawu {
    protected volatile Boolean zzb;
    private final zzayd zzc;
    private static final ConditionVariable zzd = new ConditionVariable();
    protected static volatile zzfto zza = null;
    private static volatile Random zze = null;

    public zzawu(zzayd zzaydVar) {
        this.zzc = zzaydVar;
        zzaydVar.zzd().execute(new zzawt(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (zze == null) {
                synchronized (zzawu.class) {
                    if (zze == null) {
                        zze = new Random();
                    }
                }
            }
            return zze.nextInt();
        }
    }

    public final void zza(int i, int i2, long j, String str, Exception exc) {
        try {
            zzd.block();
            if (!this.zzb.booleanValue() || zza == null) {
                return;
            }
            zzati zza2 = zzatm.zza();
            zza2.zza(this.zzc.zza.getPackageName());
            zza2.zzb(j);
            if (str != null) {
                zza2.zze(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zza2.zzc(stringWriter.toString());
                zza2.zzd(exc.getClass().getName());
            }
            zzftn zza3 = zza.zza(((zzatm) zza2.zzbu()).zzaN());
            zza3.zzc(i);
            if (i2 != -1) {
                zza3.zzb(i2);
            }
            zza3.zza();
        } catch (Exception unused) {
        }
    }

    final /* synthetic */ zzayd zzb() {
        return this.zzc;
    }
}
