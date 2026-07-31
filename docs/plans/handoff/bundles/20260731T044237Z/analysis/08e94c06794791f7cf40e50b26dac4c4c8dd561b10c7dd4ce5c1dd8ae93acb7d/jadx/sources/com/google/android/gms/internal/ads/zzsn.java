package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzsn implements zzst {
    private final Context zza;

    @Deprecated
    public zzsn() {
        this.zza = null;
    }

    public zzsn(Context context, zzgmv zzgmvVar, zzgmv zzgmvVar2) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzst
    public final zzsv zzb(zzss zzssVar) throws IOException {
        Context context;
        if (Build.VERSION.SDK_INT >= 31 || ((context = this.zza) != null && Build.VERSION.SDK_INT >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))) {
            int zzg = zzas.zzg(zzssVar.zzc.zzo);
            zzdt.zzb("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(zzep.zzQ(zzg)));
            return new zzsf(zzg).zza(zzssVar);
        }
        MediaCodec mediaCodec = null;
        try {
            zzsy zzsyVar = zzssVar.zza;
            String str = zzsyVar.zza;
            Trace.beginSection("createCodec:".concat(str));
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            Trace.endSection();
            try {
                Trace.beginSection("configureCodec");
                Surface surface = zzssVar.zzd;
                int i = 0;
                if (surface == null && zzsyVar.zzh && Build.VERSION.SDK_INT >= 35) {
                    i = 8;
                }
                createByCodecName.configure(zzssVar.zzb, surface, (MediaCrypto) null, i);
                Trace.endSection();
                Trace.beginSection("startCodec");
                createByCodecName.start();
                Trace.endSection();
                return new zztr(createByCodecName, zzssVar.zzf, null);
            } catch (IOException | RuntimeException e) {
                e = e;
                mediaCodec = createByCodecName;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        } catch (IOException e2) {
            e = e2;
        } catch (RuntimeException e3) {
            e = e3;
        }
    }
}
