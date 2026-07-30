package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import defpackage.FG;
import defpackage.InterfaceC0487Rv;
import defpackage.LG;
import defpackage.XV;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfob {
    private final Context zza;
    private final Executor zzb;
    private final zzfni zzc;
    private final zzfnk zzd;
    private final zzfoa zze;
    private final zzfoa zzf;
    private FG zzg;
    private FG zzh;

    public zzfob(Context context, Executor executor, zzfni zzfniVar, zzfnk zzfnkVar, zzfny zzfnyVar, zzfnz zzfnzVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfniVar;
        this.zzd = zzfnkVar;
        this.zze = zzfnyVar;
        this.zzf = zzfnzVar;
    }

    public static zzfob zze(Context context, Executor executor, zzfni zzfniVar, zzfnk zzfnkVar) {
        final zzfob zzfobVar = new zzfob(context, executor, zzfniVar, zzfnkVar, new zzfny(), new zzfnz());
        if (zzfobVar.zzd.zzh()) {
            zzfobVar.zzg = zzfobVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfnv
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzfob.this.zzc();
                }
            });
        } else {
            zzfobVar.zzg = LG.m1320try(zzfobVar.zze.zza());
        }
        zzfobVar.zzh = zzfobVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfnw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfob.this.zzd();
            }
        });
        return zzfobVar;
    }

    private static zzasy zzg(FG fg, zzasy zzasyVar) {
        return !fg.mo604throw() ? zzasyVar : (zzasy) fg.mo592class();
    }

    private final FG zzh(Callable callable) {
        XV m1316for = LG.m1316for(callable, this.zzb);
        m1316for.mo605try(this.zzb, new InterfaceC0487Rv() { // from class: com.google.android.gms.internal.ads.zzfnx
            @Override // defpackage.InterfaceC0487Rv
            public final void onFailure(Exception exc) {
                zzfob.this.zzf(exc);
            }
        });
        return m1316for;
    }

    public final zzasy zza() {
        return zzg(this.zzg, this.zze.zza());
    }

    public final zzasy zzb() {
        return zzg(this.zzh, this.zzf.zza());
    }

    public final /* synthetic */ zzasy zzc() {
        zzasc zza = zzasy.zza();
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zza);
        String id = advertisingIdInfo.getId();
        if (id != null && id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID fromString = UUID.fromString(id);
            byte[] bArr = new byte[16];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.putLong(fromString.getMostSignificantBits());
            wrap.putLong(fromString.getLeastSignificantBits());
            id = Base64.encodeToString(bArr, 11);
        }
        if (id != null) {
            zza.zzs(id);
            zza.zzr(advertisingIdInfo.isLimitAdTrackingEnabled());
            zza.zzab(6);
        }
        return (zzasy) zza.zzbr();
    }

    public final /* synthetic */ zzasy zzd() {
        Context context = this.zza;
        return zzfnq.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public final /* synthetic */ void zzf(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }
}
