package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;

/* loaded from: classes.dex */
public final class zzrl implements zzsb {
    private final zzfvf zza;
    private final zzfvf zzb;
    private boolean zzc;

    public zzrl(int i) {
        zzrj zzrjVar = new zzrj(i);
        zzrk zzrkVar = new zzrk(i);
        this.zza = zzrjVar;
        this.zzb = zzrkVar;
        this.zzc = true;
    }

    public static /* synthetic */ HandlerThread zza(int i) {
        String zzt;
        zzt = zzrn.zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:");
        return new HandlerThread(zzt);
    }

    public static /* synthetic */ HandlerThread zzb(int i) {
        String zzt;
        zzt = zzrn.zzt(i, "ExoPlayer:MediaCodecQueueingThread:");
        return new HandlerThread(zzt);
    }

    public final zzrn zzc(zzsa zzsaVar) {
        MediaCodec mediaCodec;
        zzse zzrrVar;
        int i;
        zzrn zzrnVar;
        Surface surface;
        String str = zzsaVar.zza.zza;
        zzrn zzrnVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
            mediaCodec = null;
        }
        try {
            if (this.zzc) {
                zzab zzabVar = zzsaVar.zzc;
                int i2 = zzei.zza;
                if (i2 >= 34 && (i2 >= 35 || zzbb.zzi(zzabVar.zzo))) {
                    zzrrVar = new zztd(mediaCodec);
                    i = 4;
                    zzrnVar = new zzrn(mediaCodec, zza(((zzrj) this.zza).zza), zzrrVar, zzsaVar.zzf, null);
                    Trace.endSection();
                    surface = zzsaVar.zzd;
                    if (surface == null && zzsaVar.zza.zzh && zzei.zza >= 35) {
                        i |= 8;
                    }
                    zzrn.zzh(zzrnVar, zzsaVar.zzb, surface, null, i);
                    return zzrnVar;
                }
            }
            Trace.endSection();
            surface = zzsaVar.zzd;
            if (surface == null) {
                i |= 8;
            }
            zzrn.zzh(zzrnVar, zzsaVar.zzb, surface, null, i);
            return zzrnVar;
        } catch (Exception e3) {
            e = e3;
            zzrnVar2 = zzrnVar;
            if (zzrnVar2 != null) {
                zzrnVar2.zzm();
            } else if (mediaCodec != null) {
                mediaCodec.release();
            }
            throw e;
        }
        zzrrVar = new zzrr(mediaCodec, zzb(((zzrk) this.zzb).zza));
        i = 0;
        zzrnVar = new zzrn(mediaCodec, zza(((zzrj) this.zza).zza), zzrrVar, zzsaVar.zzf, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsb
    public final /* bridge */ /* synthetic */ zzsd zzd(zzsa zzsaVar) {
        throw null;
    }

    public final void zze(boolean z) {
        this.zzc = true;
    }
}
