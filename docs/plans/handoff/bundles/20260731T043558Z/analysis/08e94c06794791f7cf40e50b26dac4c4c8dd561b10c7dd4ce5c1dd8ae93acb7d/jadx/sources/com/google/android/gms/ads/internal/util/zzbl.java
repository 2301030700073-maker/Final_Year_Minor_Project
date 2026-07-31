package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzapc;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzaqz;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzcca;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbl {
    private static zzapx zza;
    private static final Object zzb = new Object();

    public zzbl(Context context) {
        zzapx zza2;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (zzb) {
            if (zza == null) {
                zzbeu.zza(context);
                if (!ClientLibraryUtils.isPackageSide()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeY)).booleanValue()) {
                        zza2 = zzay.zzb(context);
                        zza = zza2;
                    }
                }
                zza2 = zzaqz.zza(context, null);
                zza = zza2;
            }
        }
    }

    public final ListenableFuture zza(String str) {
        zzcca zzccaVar = new zzcca();
        zza.zzb(new zzbk(str, null, zzccaVar));
        return zzccaVar;
    }

    public final ListenableFuture zzb(int i, String str, Map map, byte[] bArr) {
        zzbi zzbiVar = new zzbi(null);
        zzbg zzbgVar = new zzbg(this, str, zzbiVar);
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        zzbh zzbhVar = new zzbh(this, i, str, zzbiVar, zzbgVar, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            try {
                zzlVar.zzb(str, "GET", zzbhVar.zzm(), zzbhVar.zzn());
            } catch (zzapc e) {
                String message = e.getMessage();
                int i2 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(message);
            }
        }
        zza.zzb(zzbhVar);
        return zzbiVar;
    }
}
