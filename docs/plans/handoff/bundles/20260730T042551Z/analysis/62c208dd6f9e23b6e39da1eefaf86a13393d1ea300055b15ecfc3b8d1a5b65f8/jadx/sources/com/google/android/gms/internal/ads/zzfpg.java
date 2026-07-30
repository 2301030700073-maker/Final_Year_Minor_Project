package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.AdError;
import com.google.android.gms.wearable.WearableStatusCodes;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzfpg {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfph zzc;
    private final zzfni zzd;
    private final zzfnd zze;
    private zzfov zzf;
    private final Object zzg = new Object();

    public zzfpg(Context context, zzfph zzfphVar, zzfni zzfniVar, zzfnd zzfndVar) {
        this.zzb = context;
        this.zzc = zzfphVar;
        this.zzd = zzfniVar;
        this.zze = zzfndVar;
    }

    private final synchronized Class zzd(zzfow zzfowVar) {
        String zzk = zzfowVar.zza().zzk();
        HashMap hashMap = zza;
        Class cls = (Class) hashMap.get(zzk);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.zze.zza(zzfowVar.zzc())) {
                throw new zzfpf(2026, "VM did not pass signature verification");
            }
            try {
                File zzb = zzfowVar.zzb();
                if (!zzb.exists()) {
                    zzb.mkdirs();
                }
                Class<?> loadClass = new DexClassLoader(zzfowVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                hashMap.put(zzk, loadClass);
                return loadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                throw new zzfpf(AdError.REMOTE_ADS_SERVICE_ERROR, e);
            }
        } catch (GeneralSecurityException e2) {
            throw new zzfpf(2026, e2);
        }
    }

    public final zzfnl zza() {
        zzfov zzfovVar;
        synchronized (this.zzg) {
            zzfovVar = this.zzf;
        }
        return zzfovVar;
    }

    public final zzfow zzb() {
        synchronized (this.zzg) {
            zzfov zzfovVar = this.zzf;
            if (zzfovVar == null) {
                return null;
            }
            return zzfovVar.zzf();
        }
    }

    public final boolean zzc(zzfow zzfowVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfov zzfovVar = new zzfov(zzd(zzfowVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfowVar.zze(), null, new Bundle(), 2), zzfowVar, this.zzc, this.zzd);
                if (!zzfovVar.zzh()) {
                    throw new zzfpf(WearableStatusCodes.TARGET_NODE_NOT_CONNECTED, "init failed");
                }
                int zze = zzfovVar.zze();
                if (zze != 0) {
                    throw new zzfpf(WearableStatusCodes.DUPLICATE_LISTENER, "ci: " + zze);
                }
                synchronized (this.zzg) {
                    zzfov zzfovVar2 = this.zzf;
                    if (zzfovVar2 != null) {
                        try {
                            zzfovVar2.zzg();
                        } catch (zzfpf e) {
                            this.zzd.zzc(e.zza(), -1L, e);
                        }
                    }
                    this.zzf = zzfovVar;
                }
                this.zzd.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzfpf(AdError.INTERNAL_ERROR_2004, e2);
            }
        } catch (zzfpf e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(WearableStatusCodes.ACCOUNT_KEY_CREATION_FAILED, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }
}
