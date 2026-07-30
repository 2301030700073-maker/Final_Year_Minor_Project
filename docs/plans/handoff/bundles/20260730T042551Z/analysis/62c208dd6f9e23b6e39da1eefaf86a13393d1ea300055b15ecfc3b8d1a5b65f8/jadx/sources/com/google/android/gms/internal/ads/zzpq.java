package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzpq {
    private long zzA;
    private long zzB;
    private long zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private boolean zzG;
    private long zzH;
    private zzcx zzI;
    private final zzpp zza;
    private final long[] zzb;
    private AudioTrack zzc;
    private int zzd;
    private zzpo zze;
    private int zzf;
    private boolean zzg;
    private long zzh;
    private float zzi;
    private boolean zzj;
    private long zzk;
    private long zzl;
    private Method zzm;
    private long zzn;
    private boolean zzo;
    private boolean zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private int zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzpq(zzpp zzppVar) {
        this.zza = zzppVar;
        try {
            this.zzm = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzb = new long[10];
        this.zzI = zzcx.zza;
    }

    private final long zzl() {
        long zzb = this.zzI.zzb();
        int i = 2;
        if (this.zzx != -9223372036854775807L) {
            AudioTrack audioTrack = this.zzc;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2) {
                return this.zzz;
            }
            return Math.min(this.zzA, this.zzz + zzei.zzp(zzei.zzq(zzei.zzs(zzb) - this.zzx, this.zzi), this.zzf));
        }
        if (zzb - this.zzr >= 5) {
            AudioTrack audioTrack2 = this.zzc;
            audioTrack2.getClass();
            int playState = audioTrack2.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack2.getPlaybackHeadPosition() & 4294967295L;
                long j = 0;
                if (this.zzg) {
                    if (playState != 2) {
                        i = playState;
                    } else if (playbackHeadPosition == 0) {
                        this.zzu = this.zzs;
                    }
                    playbackHeadPosition += this.zzu;
                    playState = i;
                }
                if (zzei.zza <= 29) {
                    if (playbackHeadPosition != 0) {
                        j = playbackHeadPosition;
                    } else if (this.zzs > 0 && playState == 3) {
                        if (this.zzy == -9223372036854775807L) {
                            this.zzy = zzb;
                        }
                    }
                    this.zzy = -9223372036854775807L;
                    playbackHeadPosition = j;
                }
                if (this.zzs > playbackHeadPosition) {
                    this.zzt++;
                }
                this.zzs = playbackHeadPosition;
            }
            this.zzr = zzb;
        }
        return this.zzs + this.zzH + (this.zzt << 32);
    }

    private final long zzm() {
        return zzei.zzt(zzl(), this.zzf);
    }

    private final void zzn() {
        this.zzk = 0L;
        this.zzw = 0;
        this.zzv = 0;
        this.zzl = 0L;
        this.zzC = 0L;
        this.zzF = 0L;
        this.zzj = false;
    }

    public final long zza(boolean z) {
        long zzm;
        int i;
        Method method;
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            long zzc = this.zzI.zzc() / 1000;
            if (zzc - this.zzl >= 30000) {
                long zzm2 = zzm();
                if (zzm2 != 0) {
                    this.zzb[this.zzv] = zzei.zzr(zzm2, this.zzi) - zzc;
                    this.zzv = (this.zzv + 1) % 10;
                    int i2 = this.zzw;
                    if (i2 < 10) {
                        this.zzw = i2 + 1;
                    }
                    this.zzl = zzc;
                    this.zzk = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzw;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzk = (this.zzb[i3] / i4) + this.zzk;
                        i3++;
                    }
                }
            }
            if (!this.zzg) {
                zzpo zzpoVar = this.zze;
                zzpoVar.getClass();
                if (zzpoVar.zzg(zzc)) {
                    long zzb = zzpoVar.zzb();
                    long zza = zzpoVar.zza();
                    long zzm3 = zzm();
                    if (Math.abs(zzb - zzc) > 5000000) {
                        i = 0;
                        this.zza.zzd(zza, zzb, zzc, zzm3);
                        zzpoVar.zzd();
                    } else {
                        i = 0;
                        if (Math.abs(zzei.zzt(zza, this.zzf) - zzm3) > 5000000) {
                            this.zza.zzc(zza, zzb, zzc, zzm3);
                            zzpoVar.zzd();
                        } else {
                            zzpoVar.zzc();
                        }
                    }
                } else {
                    i = 0;
                }
                if (this.zzp && (method = this.zzm) != null && zzc - this.zzq >= 500000) {
                    try {
                        AudioTrack audioTrack2 = this.zzc;
                        audioTrack2.getClass();
                        Integer num = (Integer) method.invoke(audioTrack2, new Object[i]);
                        int i5 = zzei.zza;
                        long intValue = (num.intValue() * 1000) - this.zzh;
                        this.zzn = intValue;
                        long max = Math.max(intValue, 0L);
                        this.zzn = max;
                        if (max > 5000000) {
                            this.zza.zza(max);
                            this.zzn = 0L;
                        }
                    } catch (Exception unused) {
                        this.zzm = null;
                    }
                    this.zzq = zzc;
                }
            }
        }
        long zzc2 = this.zzI.zzc() / 1000;
        zzpo zzpoVar2 = this.zze;
        zzpoVar2.getClass();
        boolean zzf = zzpoVar2.zzf();
        if (zzf) {
            zzm = zzei.zzq(zzc2 - zzpoVar2.zzb(), this.zzi) + zzei.zzt(zzpoVar2.zza(), this.zzf);
        } else {
            zzm = this.zzw == 0 ? zzm() : zzei.zzq(this.zzk + zzc2, this.zzi);
            if (!z) {
                zzm = Math.max(0L, zzm - this.zzn);
            }
        }
        if (this.zzD != zzf) {
            this.zzF = this.zzC;
            this.zzE = this.zzB;
        }
        long j = zzc2 - this.zzF;
        if (j < 1000000) {
            long zzq = zzei.zzq(j, this.zzi) + this.zzE;
            long j2 = (j * 1000) / 1000000;
            zzm = (((1000 - j2) * zzq) + (zzm * j2)) / 1000;
        }
        if (!this.zzj) {
            long j3 = this.zzB;
            if (zzm > j3) {
                this.zzj = true;
                int i6 = zzei.zza;
                this.zza.zzb(this.zzI.zza() - zzei.zzv(zzei.zzr(zzei.zzv(zzm - j3), this.zzi)));
            }
        }
        this.zzC = zzc2;
        this.zzB = zzm;
        this.zzD = zzf;
        return zzm;
    }

    public final void zzb(long j) {
        this.zzz = zzl();
        this.zzx = zzei.zzs(this.zzI.zzb());
        this.zzA = j;
    }

    public final void zzc() {
        zzn();
        this.zzc = null;
        this.zze = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.media.AudioTrack r3, boolean r4, int r5, int r6, int r7) {
        /*
            r2 = this;
            r2.zzc = r3
            r2.zzd = r7
            com.google.android.gms.internal.ads.zzpo r0 = new com.google.android.gms.internal.ads.zzpo
            r0.<init>(r3)
            r2.zze = r0
            int r3 = r3.getSampleRate()
            r2.zzf = r3
            r3 = 0
            if (r4 == 0) goto L23
            int r4 = com.google.android.gms.internal.ads.zzei.zza
            r0 = 23
            if (r4 >= r0) goto L23
            r4 = 5
            r0 = 1
            if (r5 == r4) goto L24
            r4 = 6
            if (r5 != r4) goto L23
            r5 = 6
            goto L24
        L23:
            r0 = 0
        L24:
            r2.zzg = r0
            boolean r4 = com.google.android.gms.internal.ads.zzei.zzJ(r5)
            r2.zzp = r4
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L3c
            int r7 = r7 / r6
            long r4 = (long) r7
            int r6 = r2.zzf
            long r4 = com.google.android.gms.internal.ads.zzei.zzt(r4, r6)
            goto L3d
        L3c:
            r4 = r0
        L3d:
            r2.zzh = r4
            r4 = 0
            r2.zzs = r4
            r2.zzt = r4
            r2.zzG = r3
            r2.zzH = r4
            r2.zzu = r4
            r2.zzo = r3
            r2.zzx = r0
            r2.zzy = r0
            r2.zzq = r4
            r2.zzn = r4
            r3 = 1065353216(0x3f800000, float:1.0)
            r2.zzi = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpq.zzd(android.media.AudioTrack, boolean, int, int, int):void");
    }

    public final void zze(zzcx zzcxVar) {
        this.zzI = zzcxVar;
    }

    public final void zzf() {
        if (this.zzx != -9223372036854775807L) {
            this.zzx = zzei.zzs(this.zzI.zzb());
        }
        zzpo zzpoVar = this.zze;
        zzpoVar.getClass();
        zzpoVar.zze();
    }

    public final boolean zzg(long j) {
        if (j > zzei.zzp(zza(false), this.zzf)) {
            return true;
        }
        if (this.zzg) {
            AudioTrack audioTrack = this.zzc;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2 && zzl() == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzh() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zzi(long j) {
        return this.zzy != -9223372036854775807L && j > 0 && this.zzI.zzb() - this.zzy >= 200;
    }

    public final boolean zzj(long j) {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        if (this.zzg) {
            if (playState == 2) {
                this.zzo = false;
                return false;
            }
            if (playState == 1) {
                if (zzl() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z = this.zzo;
        boolean zzg = zzg(j);
        this.zzo = zzg;
        if (z && !zzg && playState != 1) {
            this.zza.zze(this.zzd, zzei.zzv(this.zzh));
        }
        return true;
    }

    public final boolean zzk() {
        zzn();
        if (this.zzx != -9223372036854775807L) {
            this.zzz = zzl();
            return false;
        }
        zzpo zzpoVar = this.zze;
        zzpoVar.getClass();
        zzpoVar.zze();
        return true;
    }
}
