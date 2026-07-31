package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.media3.common.PlaybackException;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzftl {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzftm zzc;
    private final zzfrs zzd;
    private final zzfrn zze;
    private final boolean zzf;
    private zzfta zzg;
    private final Object zzh = new Object();

    public zzftl(Context context, zzftm zzftmVar, zzfrs zzfrsVar, zzfrn zzfrnVar, boolean z) {
        this.zzb = context;
        this.zzc = zzftmVar;
        this.zzd = zzfrsVar;
        this.zze = zzfrnVar;
        this.zzf = z;
    }

    private final synchronized Class zzd(zzftb zzftbVar) throws zzftk {
        if (zzftbVar.zza() == null) {
            throw new zzftk(4010, "mc");
        }
        String zza2 = zzftbVar.zza().zza();
        HashMap hashMap = zza;
        Class cls = (Class) hashMap.get(zza2);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.zze.zza(zzftbVar.zzb())) {
                throw new zzftk(2026, "VM did not pass signature verification");
            }
            try {
                File zzc = zzftbVar.zzc();
                if (!zzc.exists()) {
                    zzc.mkdirs();
                }
                Class loadClass = new DexClassLoader(zzftbVar.zzb().getAbsolutePath(), zzc.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                hashMap.put(zza2, loadClass);
                return loadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                throw new zzftk(2008, e);
            }
        } catch (GeneralSecurityException e2) {
            throw new zzftk(2026, e2);
        }
    }

    public final boolean zza(zzftb zzftbVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfta zzftaVar = new zzfta(zzd(zzftbVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzftbVar.zzd(), null, new Bundle(), 2), zzftbVar, this.zzc, this.zzd, this.zzf);
                if (!zzftaVar.zzf()) {
                    throw new zzftk(4000, "init failed");
                }
                int zzh = zzftaVar.zzh();
                if (zzh != 0) {
                    StringBuilder sb = new StringBuilder(String.valueOf(zzh).length() + 4);
                    sb.append("ci: ");
                    sb.append(zzh);
                    throw new zzftk(PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, sb.toString());
                }
                synchronized (this.zzh) {
                    zzfta zzftaVar2 = this.zzg;
                    if (zzftaVar2 != null) {
                        try {
                            zzftaVar2.zzg();
                        } catch (zzftk e) {
                            this.zzd.zzc(e.zza(), -1L, e);
                        }
                    }
                    this.zzg = zzftaVar;
                }
                this.zzd.zzb(3000, System.currentTimeMillis() - currentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzftk(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS, e2);
            }
        } catch (zzftk e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }

    public final zzfrv zzb() {
        zzfta zzftaVar;
        synchronized (this.zzh) {
            zzftaVar = this.zzg;
        }
        return zzftaVar;
    }

    public final zzftb zzc() {
        synchronized (this.zzh) {
            zzfta zzftaVar = this.zzg;
            if (zzftaVar == null) {
                return null;
            }
            return zzftaVar.zze();
        }
    }
}
