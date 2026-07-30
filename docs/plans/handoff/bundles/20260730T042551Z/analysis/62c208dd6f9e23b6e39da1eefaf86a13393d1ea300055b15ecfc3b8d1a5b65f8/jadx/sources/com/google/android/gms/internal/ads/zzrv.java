package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzrv implements zzsb {
    private final Context zza;

    @Deprecated
    public zzrv() {
        this.zza = null;
    }

    public zzrv(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzsb
    public final zzsd zzd(zzsa zzsaVar) {
        MediaCodec createByCodecName;
        Context context;
        int i = zzei.zza;
        if (i >= 23 && (i >= 31 || ((context = this.zza) != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen")))) {
            int zzb = zzbb.zzb(zzsaVar.zzc.zzo);
            zzdo.zze("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(zzei.zzD(zzb)));
            zzrl zzrlVar = new zzrl(zzb);
            zzrlVar.zze(true);
            return zzrlVar.zzc(zzsaVar);
        }
        MediaCodec mediaCodec = null;
        try {
            String str = zzsaVar.zza.zza;
            Trace.beginSection("createCodec:".concat(str));
            createByCodecName = MediaCodec.createByCodecName(str);
            Trace.endSection();
        } catch (IOException e) {
            e = e;
        } catch (RuntimeException e2) {
            e = e2;
        }
        try {
            Trace.beginSection("configureCodec");
            Surface surface = zzsaVar.zzd;
            int i2 = 0;
            if (surface == null && zzsaVar.zza.zzh && i >= 35) {
                i2 = 8;
            }
            createByCodecName.configure(zzsaVar.zzb, surface, (MediaCrypto) null, i2);
            Trace.endSection();
            Trace.beginSection("startCodec");
            createByCodecName.start();
            Trace.endSection();
            return new zztc(createByCodecName, zzsaVar.zzf, null);
        } catch (IOException | RuntimeException e3) {
            e = e3;
            mediaCodec = createByCodecName;
            if (mediaCodec != null) {
                mediaCodec.release();
            }
            throw e;
        }
    }
}
