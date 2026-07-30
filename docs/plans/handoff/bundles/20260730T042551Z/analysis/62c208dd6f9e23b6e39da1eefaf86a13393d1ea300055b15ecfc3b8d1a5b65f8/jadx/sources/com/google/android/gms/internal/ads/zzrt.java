package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import defpackage.J7;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
final class zzrt extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;
    private MediaFormat zzh;
    private MediaFormat zzi;
    private MediaCodec.CodecException zzj;
    private MediaCodec.CryptoException zzk;
    private long zzl;
    private boolean zzm;
    private IllegalStateException zzn;
    private zzsc zzo;
    private final Object zza = new Object();
    private final J7 zzd = new J7();
    private final J7 zze = new J7();
    private final ArrayDeque zzf = new ArrayDeque();
    private final ArrayDeque zzg = new ArrayDeque();

    public zzrt(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    public static /* synthetic */ void zzd(zzrt zzrtVar) {
        synchronized (zzrtVar.zza) {
            if (zzrtVar.zzm) {
                return;
            }
            long j = zzrtVar.zzl - 1;
            zzrtVar.zzl = j;
            if (j > 0) {
                return;
            }
            if (j >= 0) {
                zzrtVar.zzj();
                return;
            }
            IllegalStateException illegalStateException = new IllegalStateException();
            synchronized (zzrtVar.zza) {
                zzrtVar.zzn = illegalStateException;
            }
        }
    }

    private final void zzi(MediaFormat mediaFormat) {
        this.zze.m1009do(-2);
        this.zzg.add(mediaFormat);
    }

    private final void zzj() {
        if (!this.zzg.isEmpty()) {
            this.zzi = (MediaFormat) this.zzg.getLast();
        }
        J7 j7 = this.zzd;
        j7.f1593if = j7.f1590do;
        J7 j72 = this.zze;
        j72.f1593if = j72.f1590do;
        this.zzf.clear();
        this.zzg.clear();
    }

    private final void zzk() {
        IllegalStateException illegalStateException = this.zzn;
        if (illegalStateException != null) {
            this.zzn = null;
            throw illegalStateException;
        }
        MediaCodec.CodecException codecException = this.zzj;
        if (codecException != null) {
            this.zzj = null;
            throw codecException;
        }
        MediaCodec.CryptoException cryptoException = this.zzk;
        if (cryptoException == null) {
            return;
        }
        this.zzk = null;
        throw cryptoException;
    }

    private final boolean zzl() {
        return this.zzl > 0 || this.zzm;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.zza) {
            this.zzk = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        zzli zzliVar;
        zzli zzliVar2;
        synchronized (this.zza) {
            this.zzd.m1009do(i);
            zzsc zzscVar = this.zzo;
            if (zzscVar != null) {
                zzsn zzsnVar = ((zzsk) zzscVar).zza;
                zzliVar = zzsnVar.zzo;
                if (zzliVar != null) {
                    zzliVar2 = zzsnVar.zzo;
                    zzliVar2.zza();
                }
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        zzli zzliVar;
        zzli zzliVar2;
        synchronized (this.zza) {
            MediaFormat mediaFormat = this.zzi;
            if (mediaFormat != null) {
                zzi(mediaFormat);
                this.zzi = null;
            }
            this.zze.m1009do(i);
            this.zzf.add(bufferInfo);
            zzsc zzscVar = this.zzo;
            if (zzscVar != null) {
                zzsn zzsnVar = ((zzsk) zzscVar).zza;
                zzliVar = zzsnVar.zzo;
                if (zzliVar != null) {
                    zzliVar2 = zzsnVar.zzo;
                    zzliVar2.zza();
                }
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzi(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            zzk();
            int i = -1;
            if (zzl()) {
                return -1;
            }
            J7 j7 = this.zzd;
            int i2 = j7.f1590do;
            int i3 = j7.f1593if;
            if (!(i2 == i3)) {
                if (i2 == i3) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                i = j7.f1591do[i2];
                j7.f1590do = (i2 + 1) & j7.f1592for;
            }
            return i;
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            zzk();
            if (zzl()) {
                return -1;
            }
            J7 j7 = this.zze;
            int i = j7.f1590do;
            int i2 = j7.f1593if;
            if (i == i2) {
                return -1;
            }
            if (i == i2) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = j7.f1591do[i];
            j7.f1590do = (i + 1) & j7.f1592for;
            if (i3 >= 0) {
                zzcw.zzb(this.zzh);
                MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.zzf.remove();
                bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
            } else if (i3 == -2) {
                this.zzh = (MediaFormat) this.zzg.remove();
                i3 = -2;
            }
            return i3;
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            mediaFormat = this.zzh;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public final void zze() {
        synchronized (this.zza) {
            this.zzl++;
            Handler handler = this.zzc;
            int i = zzei.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrs
                @Override // java.lang.Runnable
                public final void run() {
                    zzrt.zzd(zzrt.this);
                }
            });
        }
    }

    public final void zzf(MediaCodec mediaCodec) {
        zzcw.zzf(this.zzc == null);
        this.zzb.start();
        Handler handler = new Handler(this.zzb.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final void zzg(zzsc zzscVar) {
        synchronized (this.zza) {
            this.zzo = zzscVar;
        }
    }

    public final void zzh() {
        synchronized (this.zza) {
            this.zzm = true;
            this.zzb.quit();
            zzj();
        }
    }
}
