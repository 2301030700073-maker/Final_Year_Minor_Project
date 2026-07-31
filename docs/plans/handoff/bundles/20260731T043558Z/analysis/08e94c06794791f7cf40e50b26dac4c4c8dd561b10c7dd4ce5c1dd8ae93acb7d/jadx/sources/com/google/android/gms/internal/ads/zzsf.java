package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzsf implements zzst {
    private final zzgmv zza;
    private final zzgmv zzb;

    public zzsf(final int i) {
        zzgmv zzgmvVar = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzse
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                String zzt;
                zzt = zzsg.zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:");
                return new HandlerThread(zzt);
            }
        };
        zzgmv zzgmvVar2 = new zzgmv() { // from class: com.google.android.gms.internal.ads.zzsd
            @Override // com.google.android.gms.internal.ads.zzgmv
            public final /* synthetic */ Object zza() {
                String zzt;
                zzt = zzsg.zzt(i, "ExoPlayer:MediaCodecQueueingThread:");
                return new HandlerThread(zzt);
            }
        };
        this.zza = zzgmvVar;
        this.zzb = zzgmvVar2;
    }

    public final zzsg zza(zzss zzssVar) throws IOException {
        MediaCodec mediaCodec;
        zzsg zzsgVar;
        zzsy zzsyVar = zzssVar.zza;
        String str = zzsyVar.zza;
        zzsg zzsgVar2 = null;
        try {
            StringBuilder sb = new StringBuilder(str.length() + 12);
            sb.append("createCodec:");
            sb.append(str);
            Trace.beginSection(sb.toString());
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                zzsgVar = new zzsg(mediaCodec, (HandlerThread) this.zza.zza(), new zzsj(mediaCodec, (HandlerThread) this.zzb.zza()), zzssVar.zzf, null);
            } catch (Exception e) {
                e = e;
            }
            try {
                Trace.endSection();
                Surface surface = zzssVar.zzd;
                int i = 0;
                if (surface == null && zzsyVar.zzh && Build.VERSION.SDK_INT >= 35) {
                    i = 8;
                }
                zzsgVar.zzq(zzssVar.zzb, surface, null, i);
                return zzsgVar;
            } catch (Exception e2) {
                e = e2;
                zzsgVar2 = zzsgVar;
                if (zzsgVar2 != null) {
                    zzsgVar2.zzk();
                } else if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodec = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzst
    public final /* bridge */ /* synthetic */ zzsv zzb(zzss zzssVar) throws IOException {
        throw null;
    }
}
