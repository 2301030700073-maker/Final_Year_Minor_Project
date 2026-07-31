package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import java.lang.reflect.Method;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzql {
    private long zzA;
    private boolean zzB;
    private long zzC;
    private zzdc zzD;
    boolean zza;
    private final zzqk zzb;
    private final long[] zzc;
    private AudioTrack zzd;
    private zzqj zze;
    private int zzf;
    private long zzg;
    private float zzh;
    private boolean zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private Method zzm;
    private long zzn;
    private boolean zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private int zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzql(zzqk zzqkVar) {
        this.zzb = zzqkVar;
        try {
            this.zzm = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzc = new long[10];
        this.zzA = C.TIME_UNSET;
        this.zzz = C.TIME_UNSET;
        this.zzD = zzdc.zza;
    }

    private final void zzj(long j) {
        if (this.zza) {
            long j2 = this.zzj;
            if (j2 == C.TIME_UNSET || j < j2) {
                return;
            }
            long zza = this.zzD.zza() - zzep.zzp(zzep.zzw(j - j2, this.zzh));
            this.zzj = C.TIME_UNSET;
            this.zzb.zza(zza);
        }
    }

    private final long zzk(long j) {
        long max = Math.max(0L, (this.zzu == 0 ? this.zzv != C.TIME_UNSET ? zzep.zzr(zzo(), this.zzf) : zzm() : zzep.zzv(j + this.zzk, this.zzh)) - this.zzn);
        return this.zzv != C.TIME_UNSET ? Math.min(zzep.zzr(this.zzy, this.zzf), max) : max;
    }

    private final void zzl() {
        this.zzk = 0L;
        this.zzu = 0;
        this.zzt = 0;
        this.zzl = 0L;
        this.zzz = C.TIME_UNSET;
        this.zzA = C.TIME_UNSET;
        this.zzi = false;
    }

    private final long zzm() {
        return zzep.zzr(zzn(), this.zzf);
    }

    private final long zzn() {
        if (this.zzv != C.TIME_UNSET) {
            return Math.min(this.zzy, zzo());
        }
        long zzb = this.zzD.zzb();
        if (zzb - this.zzq >= 5) {
            AudioTrack audioTrack = this.zzd;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition();
                int i = Build.VERSION.SDK_INT;
                long j = playbackHeadPosition & BodyPartID.bodyIdMax;
                if (i <= 29) {
                    if (j != 0 || this.zzr <= 0 || playState != 3) {
                        this.zzw = C.TIME_UNSET;
                    } else if (this.zzw == C.TIME_UNSET) {
                        this.zzw = zzb;
                    }
                }
                if (this.zzr > j) {
                    this.zzs++;
                }
                this.zzr = j;
            }
            this.zzq = zzb;
        }
        return this.zzr + this.zzC + (this.zzs << 32);
    }

    private final long zzo() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.zzx;
        }
        return this.zzx + zzep.zzs(zzep.zzv(zzep.zzq(this.zzD.zzb()) - this.zzv, this.zzh), this.zzf);
    }

    public final void zza(AudioTrack audioTrack, int i, int i2, int i3, boolean z) {
        this.zzd = audioTrack;
        this.zze = new zzqj(audioTrack, this.zzb);
        this.zzf = audioTrack.getSampleRate();
        boolean zzA = zzep.zzA(i);
        this.zzo = zzA;
        this.zzg = zzA ? zzep.zzr(i3 / i2, this.zzf) : -9223372036854775807L;
        this.zzr = 0L;
        this.zzs = 0L;
        this.zzB = false;
        this.zzC = 0L;
        this.zzv = C.TIME_UNSET;
        this.zzw = C.TIME_UNSET;
        this.zzp = 0L;
        this.zzn = 0L;
        this.zzh = 1.0f;
        this.zzj = C.TIME_UNSET;
        this.zza = z;
    }

    public final long zzb() {
        Method method;
        AudioTrack audioTrack;
        AudioTrack audioTrack2 = this.zzd;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long zzc = this.zzD.zzc() / 1000;
            if (zzc - this.zzl >= 30000) {
                long zzm = zzm();
                if (zzm != 0) {
                    long[] jArr = this.zzc;
                    jArr[this.zzt] = zzep.zzw(zzm, this.zzh) - zzc;
                    this.zzt = (this.zzt + 1) % 10;
                    int i = this.zzu;
                    if (i < 10) {
                        this.zzu = i + 1;
                    }
                    this.zzl = zzc;
                    this.zzk = 0L;
                    int i2 = 0;
                    while (true) {
                        int i3 = this.zzu;
                        if (i2 >= i3) {
                            break;
                        }
                        this.zzk += jArr[i2] / i3;
                        i2++;
                    }
                }
            }
            if (this.zzo && (method = this.zzm) != null && zzc - this.zzp >= 500000) {
                try {
                    audioTrack = this.zzd;
                } catch (Exception unused) {
                    this.zzm = null;
                }
                if (audioTrack == null) {
                    throw null;
                }
                Integer num = (Integer) method.invoke(audioTrack, new Object[0]);
                String str = zzep.zza;
                Integer num2 = num;
                long intValue = (num.intValue() * 1000) - this.zzg;
                this.zzn = intValue;
                long max = Math.max(intValue, 0L);
                this.zzn = max;
                if (max > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                    this.zzb.zzd(max);
                    this.zzn = 0L;
                }
                this.zzp = zzc;
            }
            zzqj zzqjVar = this.zze;
            zzqjVar.getClass();
            zzqjVar.zza(zzc, this.zzh, zzk(zzc));
        }
        long zzc2 = this.zzD.zzc() / 1000;
        zzqj zzqjVar2 = this.zze;
        zzqjVar2.getClass();
        boolean zzb = zzqjVar2.zzb();
        long zze = zzb ? zzqjVar2.zze(zzc2, this.zzh) : zzk(zzc2);
        int playState = audioTrack2.getPlayState();
        if (playState == 3) {
            if (zzb || !zzqjVar2.zzc()) {
                zzj(zze);
            }
            long j = this.zzA;
            if (j != C.TIME_UNSET) {
                long j2 = zze - this.zzz;
                long zzv = zzep.zzv(zzc2 - j, this.zzh);
                long j3 = this.zzz + zzv;
                long abs = Math.abs(j3 - zze);
                if (j2 != 0 && abs < 1000000) {
                    long j4 = (zzv * 10) / 100;
                    zze = Math.max(j3 - j4, Math.min(zze, j3 + j4));
                }
            }
            if (!this.zza && !this.zzi) {
                long j5 = this.zzz;
                if (j5 != C.TIME_UNSET && zze > j5) {
                    this.zzi = true;
                    String str2 = zzep.zza;
                    this.zzb.zza(this.zzD.zza() - zzep.zzp(zzep.zzw(zzep.zzp(zze - j5), this.zzh)));
                }
            }
            this.zzA = zzc2;
            this.zzz = zze;
        } else if (playState == 1) {
            zzj(zze);
            return zze;
        }
        return zze;
    }

    public final void zzc() {
        if (this.zzv != C.TIME_UNSET) {
            this.zzv = zzep.zzq(this.zzD.zzb());
        }
        this.zzj = zzm();
        zzqj zzqjVar = this.zze;
        zzqjVar.getClass();
        zzqjVar.zzd();
    }

    public final boolean zzd() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zze(long j) {
        return this.zzw != C.TIME_UNSET && j > 0 && this.zzD.zzb() - this.zzw >= 200;
    }

    public final void zzf(long j) {
        this.zzx = zzn();
        this.zzv = zzep.zzq(this.zzD.zzb());
        this.zzy = j;
    }

    public final void zzg() {
        zzl();
        if (this.zzv == C.TIME_UNSET) {
            zzqj zzqjVar = this.zze;
            zzqjVar.getClass();
            zzqjVar.zzd();
        }
        this.zzx = zzn();
    }

    public final void zzh() {
        zzl();
        this.zzd = null;
        this.zze = null;
    }

    public final void zzi(zzdc zzdcVar) {
        this.zzD = zzdcVar;
    }
}
