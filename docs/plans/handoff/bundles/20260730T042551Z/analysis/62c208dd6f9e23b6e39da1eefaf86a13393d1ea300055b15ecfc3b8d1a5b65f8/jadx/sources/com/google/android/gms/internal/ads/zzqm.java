package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import defpackage.Cpublic;
import defpackage.V1;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzqm implements zzpm {
    private static final Object zza = new Object();
    private static ScheduledExecutorService zzb;
    private static int zzc;
    private zzbe zzA;
    private boolean zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzF;
    private int zzG;
    private boolean zzH;
    private boolean zzI;
    private long zzJ;
    private float zzK;
    private ByteBuffer zzL;
    private int zzM;
    private ByteBuffer zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private zzf zzT;
    private zzoo zzU;
    private long zzV;
    private boolean zzW;
    private boolean zzX;
    private Looper zzY;
    private long zzZ;
    private long zzaa;
    private Handler zzab;
    private final zzqc zzac;
    private final zzps zzad;
    private final Context zzd;
    private final zzpr zze;
    private final zzqw zzf;
    private final zzfxn zzg;
    private final zzfxn zzh;
    private final zzpq zzi;
    private final ArrayDeque zzj;
    private zzqk zzk;
    private final zzqg zzl;
    private final zzqg zzm;
    private final zzpz zzn;
    private zzog zzo;
    private zzpj zzp;
    private zzqb zzq;
    private zzqb zzr;
    private zzce zzs;
    private AudioTrack zzt;
    private zzoi zzu;
    private zzon zzv;
    private zzqf zzw;
    private zze zzx;
    private zzqd zzy;
    private zzqd zzz;

    public /* synthetic */ zzqm(zzqa zzqaVar, zzql zzqlVar) {
        Context context;
        zzoi zzoiVar;
        zzqc zzqcVar;
        zzps zzpsVar;
        zzpz zzpzVar;
        context = zzqaVar.zza;
        this.zzd = context;
        zze zzeVar = zze.zza;
        this.zzx = zzeVar;
        zzql zzqlVar2 = null;
        if (context != null) {
            zzoi zzoiVar2 = zzoi.zza;
            int i = zzei.zza;
            zzoiVar = zzoi.zzc(context, zzeVar, null);
        } else {
            zzoiVar = zzqaVar.zzb;
        }
        this.zzu = zzoiVar;
        zzqcVar = zzqaVar.zzf;
        this.zzac = zzqcVar;
        int i2 = zzei.zza;
        zzpsVar = zzqaVar.zzg;
        zzpsVar.getClass();
        this.zzad = zzpsVar;
        this.zzi = new zzpq(new zzqh(this, zzqlVar2));
        zzpr zzprVar = new zzpr();
        this.zze = zzprVar;
        zzqw zzqwVar = new zzqw();
        this.zzf = zzqwVar;
        this.zzg = zzfxn.zzq(new zzcl(), zzprVar, zzqwVar);
        this.zzh = zzfxn.zzo(new zzqv());
        this.zzK = 1.0f;
        this.zzS = 0;
        this.zzT = new zzf(0, 0.0f);
        zzbe zzbeVar = zzbe.zza;
        this.zzz = new zzqd(zzbeVar, 0L, 0L, null);
        this.zzA = zzbeVar;
        this.zzB = false;
        this.zzj = new ArrayDeque();
        this.zzl = new zzqg();
        this.zzm = new zzqg();
        zzpzVar = zzqaVar.zze;
        this.zzn = zzpzVar;
    }

    public static /* synthetic */ void zzG(zzqm zzqmVar) {
        if (zzqmVar.zzaa >= 300000) {
            ((zzqq) zzqmVar.zzp).zza.zzn = true;
            zzqmVar.zzaa = 0L;
        }
    }

    public static /* synthetic */ void zzI(AudioTrack audioTrack, final zzpj zzpjVar, Handler handler, final zzpg zzpgVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzpjVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzpe zzpeVar;
                        zzpeVar = ((zzqq) zzpj.this).zza.zzc;
                        zzpeVar.zzd(zzpgVar);
                    }
                });
            }
            synchronized (zza) {
                int i = zzc - 1;
                zzc = i;
                if (i == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
            }
        } catch (Throwable th) {
            if (zzpjVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzpe zzpeVar;
                        zzpeVar = ((zzqq) zzpj.this).zza.zzc;
                        zzpeVar.zzd(zzpgVar);
                    }
                });
            }
            synchronized (zza) {
                int i2 = zzc - 1;
                zzc = i2;
                if (i2 == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzK() {
        boolean z;
        synchronized (zza) {
            z = zzc > 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzL() {
        return this.zzr.zzc == 0 ? this.zzC / r0.zzb : this.zzD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzM() {
        zzqb zzqbVar = this.zzr;
        if (zzqbVar.zzc != 0) {
            return this.zzF;
        }
        long j = this.zzE;
        long j2 = zzqbVar.zzd;
        int i = zzei.zza;
        return ((j + j2) - 1) / j2;
    }

    private final AudioTrack zzN(zzqb zzqbVar) {
        try {
            return zzac(zzqbVar.zza(), this.zzx, this.zzS, zzqbVar.zza);
        } catch (zzpi e) {
            zzpj zzpjVar = this.zzp;
            if (zzpjVar != null) {
                zzpjVar.zza(e);
            }
            throw e;
        }
    }

    private final void zzO(long j) {
        zzbe zzbeVar;
        boolean z;
        zzpe zzpeVar;
        if (zzab()) {
            zzqc zzqcVar = this.zzac;
            zzbeVar = this.zzA;
            zzqcVar.zzc(zzbeVar);
        } else {
            zzbeVar = zzbe.zza;
        }
        zzbe zzbeVar2 = zzbeVar;
        this.zzA = zzbeVar2;
        if (zzab()) {
            zzqc zzqcVar2 = this.zzac;
            z = this.zzB;
            zzqcVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzB = z;
        this.zzj.add(new zzqd(zzbeVar2, Math.max(0L, j), zzei.zzt(zzM(), this.zzr.zze), null));
        zzX();
        zzpj zzpjVar = this.zzp;
        if (zzpjVar != null) {
            boolean z2 = this.zzB;
            zzpeVar = ((zzqq) zzpjVar).zza.zzc;
            zzpeVar.zzw(z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzP(long r8) {
        /*
            r7 = this;
            java.nio.ByteBuffer r8 = r7.zzN
            if (r8 != 0) goto L6
            goto Lb6
        L6:
            com.google.android.gms.internal.ads.zzqg r8 = r7.zzm
            boolean r8 = r8.zzc()
            if (r8 != 0) goto Lb6
            java.nio.ByteBuffer r8 = r7.zzN
            int r8 = r8.remaining()
            android.media.AudioTrack r9 = r7.zzt
            java.nio.ByteBuffer r0 = r7.zzN
            r1 = 1
            int r9 = r9.write(r0, r8, r1)
            long r2 = android.os.SystemClock.elapsedRealtime()
            r7.zzV = r2
            r2 = 0
            r0 = 0
            if (r9 >= 0) goto L6a
            int r8 = com.google.android.gms.internal.ads.zzei.zza
            r4 = 24
            if (r8 < r4) goto L31
            r8 = -6
            if (r9 == r8) goto L35
        L31:
            r8 = -32
            if (r9 != r8) goto L4a
        L35:
            long r4 = r7.zzM()
            int r8 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r8 <= 0) goto L3e
            goto L4b
        L3e:
            android.media.AudioTrack r8 = r7.zzt
            boolean r8 = zzaa(r8)
            if (r8 == 0) goto L4a
            r7.zzQ()
            goto L4b
        L4a:
            r1 = 0
        L4b:
            com.google.android.gms.internal.ads.zzpl r8 = new com.google.android.gms.internal.ads.zzpl
            com.google.android.gms.internal.ads.zzqb r0 = r7.zzr
            com.google.android.gms.internal.ads.zzab r0 = r0.zza
            r8.<init>(r9, r0, r1)
            com.google.android.gms.internal.ads.zzpj r9 = r7.zzp
            if (r9 == 0) goto L5b
            r9.zza(r8)
        L5b:
            boolean r9 = r8.zzb
            if (r9 != 0) goto L65
            com.google.android.gms.internal.ads.zzqg r9 = r7.zzm
            r9.zzb(r8)
            return
        L65:
            com.google.android.gms.internal.ads.zzoi r9 = com.google.android.gms.internal.ads.zzoi.zza
            r7.zzu = r9
            throw r8
        L6a:
            com.google.android.gms.internal.ads.zzqg r4 = r7.zzm
            r4.zza()
            android.media.AudioTrack r4 = r7.zzt
            boolean r4 = zzaa(r4)
            if (r4 == 0) goto L8b
            long r4 = r7.zzF
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 <= 0) goto L7f
            r7.zzX = r0
        L7f:
            boolean r2 = r7.zzR
            if (r2 == 0) goto L8b
            com.google.android.gms.internal.ads.zzpj r2 = r7.zzp
            if (r2 == 0) goto L8b
            if (r9 >= r8) goto L8b
            com.google.android.gms.internal.ads.zzqq r2 = (com.google.android.gms.internal.ads.zzqq) r2
        L8b:
            com.google.android.gms.internal.ads.zzqb r2 = r7.zzr
            int r2 = r2.zzc
            if (r2 != 0) goto L97
            long r3 = r7.zzE
            long r5 = (long) r9
            long r3 = r3 + r5
            r7.zzE = r3
        L97:
            if (r9 != r8) goto Lb6
            if (r2 == 0) goto Lb3
            java.nio.ByteBuffer r8 = r7.zzN
            java.nio.ByteBuffer r9 = r7.zzL
            if (r8 != r9) goto La2
            goto La3
        La2:
            r1 = 0
        La3:
            com.google.android.gms.internal.ads.zzcw.zzf(r1)
            long r8 = r7.zzF
            int r0 = r7.zzG
            long r0 = (long) r0
            int r2 = r7.zzM
            long r2 = (long) r2
            long r0 = r0 * r2
            long r0 = r0 + r8
            r7.zzF = r0
        Lb3:
            r8 = 0
            r7.zzN = r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqm.zzP(long):void");
    }

    private final void zzQ() {
        if (this.zzr.zzc == 1) {
            this.zzW = true;
        }
    }

    private final void zzR() {
        if (this.zzv != null || this.zzd == null) {
            return;
        }
        this.zzY = Looper.myLooper();
        zzon zzonVar = new zzon(this.zzd, new zzpw(this), this.zzx, this.zzU);
        this.zzv = zzonVar;
        this.zzu = zzonVar.zzc();
    }

    private final void zzS() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        this.zzi.zzb(zzM());
        if (zzaa(this.zzt)) {
            this.zzQ = false;
        }
        this.zzt.stop();
    }

    private final void zzT(long j) {
        zzP(j);
        if (this.zzN != null) {
            return;
        }
        if (!this.zzs.zzh()) {
            ByteBuffer byteBuffer = this.zzL;
            if (byteBuffer != null) {
                zzV(byteBuffer);
                zzP(j);
                return;
            }
            return;
        }
        while (!this.zzs.zzg()) {
            do {
                ByteBuffer zzb2 = this.zzs.zzb();
                if (zzb2.hasRemaining()) {
                    zzV(zzb2);
                    zzP(j);
                } else {
                    ByteBuffer byteBuffer2 = this.zzL;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.zzs.zze(this.zzL);
                    }
                }
            } while (this.zzN == null);
            return;
        }
    }

    private final void zzU(zzbe zzbeVar) {
        long j = -9223372036854775807L;
        zzqd zzqdVar = new zzqd(zzbeVar, j, j, null);
        if (zzZ()) {
            this.zzy = zzqdVar;
        } else {
            this.zzz = zzqdVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzV(java.nio.ByteBuffer r17) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqm.zzV(java.nio.ByteBuffer):void");
    }

    private final void zzW() {
        if (zzZ()) {
            this.zzt.setVolume(this.zzK);
        }
    }

    private final void zzX() {
        zzce zzceVar = this.zzr.zzi;
        this.zzs = zzceVar;
        zzceVar.zzc();
    }

    private final boolean zzY() {
        ByteBuffer byteBuffer;
        if (!this.zzs.zzh()) {
            zzP(Long.MIN_VALUE);
            return this.zzN == null;
        }
        this.zzs.zzd();
        zzT(Long.MIN_VALUE);
        return this.zzs.zzg() && ((byteBuffer = this.zzN) == null || !byteBuffer.hasRemaining());
    }

    private final boolean zzZ() {
        return this.zzt != null;
    }

    private static boolean zzaa(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (zzei.zza < 29) {
            return false;
        }
        isOffloadedPlayback = audioTrack.isOffloadedPlayback();
        return isOffloadedPlayback;
    }

    private final boolean zzab() {
        zzqb zzqbVar = this.zzr;
        if (zzqbVar.zzc != 0) {
            return false;
        }
        int i = zzqbVar.zza.zzF;
        return true;
    }

    private static final AudioTrack zzac(zzpg zzpgVar, zze zzeVar, int i, zzab zzabVar) {
        AudioTrack audioTrack;
        try {
            int i2 = zzei.zza;
            if (i2 >= 23) {
                AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzeVar.zza().zza).setAudioFormat(zzei.zzx(zzpgVar.zzb, zzpgVar.zzc, zzpgVar.zza)).setTransferMode(1).setBufferSizeInBytes(zzpgVar.zze).setSessionId(i);
                if (i2 >= 29) {
                    sessionId.setOffloadedPlayback(zzpgVar.zzd);
                }
                audioTrack = sessionId.build();
            } else {
                AudioAttributes audioAttributes = zzeVar.zza().zza;
                int i3 = zzpgVar.zzb;
                int i4 = zzpgVar.zzc;
                int i5 = zzpgVar.zza;
                audioTrack = new AudioTrack(audioAttributes, zzei.zzx(i3, i4, i5), zzpgVar.zze, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new zzpi(state, zzpgVar.zzb, zzpgVar.zzc, zzpgVar.zza, zzabVar, zzpgVar.zzd, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new zzpi(0, zzpgVar.zzb, zzpgVar.zzc, zzpgVar.zza, zzabVar, zzpgVar.zzd, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final boolean zzA(zzab zzabVar) {
        return zza(zzabVar) != 0;
    }

    public final void zzJ(zzoi zzoiVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zzY;
        if (looper != myLooper) {
            throw new IllegalStateException(V1.m2499else("Current looper (", myLooper != null ? myLooper.getThread().getName() : "null", ") is not the playback looper (", looper == null ? "null" : looper.getThread().getName(), ")"));
        }
        if (zzoiVar.equals(this.zzu)) {
            return;
        }
        this.zzu = zzoiVar;
        zzpj zzpjVar = this.zzp;
        if (zzpjVar != null) {
            ((zzqq) zzpjVar).zza.zzB();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final int zza(zzab zzabVar) {
        zzR();
        if (!"audio/raw".equals(zzabVar.zzo)) {
            return this.zzu.zzb(zzabVar, this.zzx) != null ? 2 : 0;
        }
        if (zzei.zzJ(zzabVar.zzF)) {
            return zzabVar.zzF != 2 ? 1 : 2;
        }
        Cpublic.m7824goto("Invalid PCM encoding: ", zzabVar.zzF, "DefaultAudioSink");
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final long zzb(boolean z) {
        long zzq;
        if (!zzZ() || this.zzI) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.zzi.zza(z), zzei.zzt(zzM(), this.zzr.zze));
        while (!this.zzj.isEmpty() && min >= ((zzqd) this.zzj.getFirst()).zzc) {
            this.zzz = (zzqd) this.zzj.remove();
        }
        long j = min - this.zzz.zzc;
        if (this.zzj.isEmpty()) {
            zzq = this.zzz.zzb + this.zzac.zza(j);
        } else {
            zzqd zzqdVar = (zzqd) this.zzj.getFirst();
            zzq = zzqdVar.zzb - zzei.zzq(zzqdVar.zzc - min, this.zzz.zza.zzb);
        }
        long zzb2 = this.zzac.zzb();
        long zzt = zzei.zzt(zzb2, this.zzr.zze) + zzq;
        long j2 = this.zzZ;
        if (zzb2 > j2) {
            long zzt2 = zzei.zzt(zzb2 - j2, this.zzr.zze);
            this.zzZ = zzb2;
            this.zzaa += zzt2;
            if (this.zzab == null) {
                this.zzab = new Handler(Looper.myLooper());
            }
            this.zzab.removeCallbacksAndMessages(null);
            this.zzab.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpu
                @Override // java.lang.Runnable
                public final void run() {
                    zzqm.zzG(zzqm.this);
                }
            }, 100L);
        }
        return zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final zzbe zzc() {
        return this.zzA;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final zzor zzd(zzab zzabVar) {
        return this.zzW ? zzor.zza : this.zzad.zza(zzabVar, this.zzx);
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zze(zzab zzabVar, int i, int[] iArr) {
        int intValue;
        zzce zzceVar;
        int i2;
        int intValue2;
        int i3;
        int i4;
        int i5;
        int i6;
        int max;
        zzR();
        if ("audio/raw".equals(zzabVar.zzo)) {
            zzcw.zzd(zzei.zzJ(zzabVar.zzF));
            i3 = zzei.zzk(zzabVar.zzF) * zzabVar.zzD;
            zzfxk zzfxkVar = new zzfxk();
            zzfxkVar.zzh(this.zzg);
            zzfxkVar.zzg(this.zzac.zze());
            zzce zzceVar2 = new zzce(zzfxkVar.zzi());
            if (zzceVar2.equals(this.zzs)) {
                zzceVar2 = this.zzs;
            }
            this.zzf.zzq(zzabVar.zzG, zzabVar.zzH);
            this.zze.zzo(iArr);
            try {
                zzcf zza2 = zzceVar2.zza(new zzcf(zzabVar.zzE, zzabVar.zzD, zzabVar.zzF));
                intValue = zza2.zzd;
                i2 = zza2.zzb;
                int i7 = zza2.zzc;
                intValue2 = zzei.zzi(i7);
                zzceVar = zzceVar2;
                i5 = zzei.zzk(intValue) * i7;
                i4 = 0;
            } catch (zzcg e) {
                throw new zzph(e, zzabVar);
            }
        } else {
            zzce zzceVar3 = new zzce(zzfxn.zzn());
            int i8 = zzabVar.zzE;
            zzor zzorVar = zzor.zza;
            Pair zzb2 = this.zzu.zzb(zzabVar, this.zzx);
            if (zzb2 == null) {
                throw new zzph("Unable to configure passthrough for: ".concat(String.valueOf(zzabVar)), zzabVar);
            }
            intValue = ((Integer) zzb2.first).intValue();
            zzceVar = zzceVar3;
            i2 = i8;
            intValue2 = ((Integer) zzb2.second).intValue();
            i3 = -1;
            i4 = 2;
            i5 = -1;
        }
        if (intValue == 0) {
            throw new zzph("Invalid output encoding (mode=" + i4 + ") for: " + String.valueOf(zzabVar), zzabVar);
        }
        if (intValue2 == 0) {
            throw new zzph("Invalid output channel config (mode=" + i4 + ") for: " + String.valueOf(zzabVar), zzabVar);
        }
        int i9 = zzabVar.zzj;
        if ("audio/vnd.dts.hd;profile=lbr".equals(zzabVar.zzo) && i9 == -1) {
            i9 = 768000;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i2, intValue2, intValue);
        zzcw.zzf(minBufferSize != -2);
        int i10 = i5 != -1 ? i5 : 1;
        int i11 = 250000;
        if (i4 == 0) {
            i6 = i4;
            max = Math.max(zzqo.zza(250000, i2, i10), Math.min(minBufferSize * 4, zzqo.zza(750000, i2, i10)));
        } else if (i4 != 1) {
            if (intValue == 5) {
                i11 = 500000;
            } else if (intValue == 8) {
                i11 = 1000000;
                intValue = 8;
            }
            i6 = i4;
            max = zzgaq.zzb((i11 * (i9 != -1 ? zzgaj.zzb(i9, 8, RoundingMode.CEILING) : zzqo.zzb(intValue))) / 1000000);
        } else {
            i6 = i4;
            max = zzgaq.zzb((zzqo.zzb(intValue) * 50000000) / 1000000);
        }
        this.zzW = false;
        zzqb zzqbVar = new zzqb(zzabVar, i3, i6, i5, i2, intValue2, intValue, (((Math.max(minBufferSize, max) + i10) - 1) / i10) * i10, zzceVar, false, false, false);
        if (zzZ()) {
            this.zzq = zzqbVar;
        } else {
            this.zzr = zzqbVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzf() {
        zzqf zzqfVar;
        if (zzZ()) {
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzE = 0L;
            this.zzF = 0L;
            this.zzX = false;
            this.zzG = 0;
            this.zzz = new zzqd(this.zzA, 0L, 0L, null);
            this.zzJ = 0L;
            this.zzy = null;
            this.zzj.clear();
            this.zzL = null;
            this.zzM = 0;
            this.zzN = null;
            this.zzP = false;
            this.zzO = false;
            this.zzQ = false;
            this.zzf.zzp();
            zzX();
            if (this.zzi.zzh()) {
                this.zzt.pause();
            }
            if (zzaa(this.zzt)) {
                zzqk zzqkVar = this.zzk;
                zzqkVar.getClass();
                zzqkVar.zzb(this.zzt);
            }
            final zzpg zza2 = this.zzr.zza();
            zzqb zzqbVar = this.zzq;
            if (zzqbVar != null) {
                this.zzr = zzqbVar;
                this.zzq = null;
            }
            this.zzi.zzc();
            if (zzei.zza >= 24 && (zzqfVar = this.zzw) != null) {
                zzqfVar.zzb();
                this.zzw = null;
            }
            final AudioTrack audioTrack = this.zzt;
            final zzpj zzpjVar = this.zzp;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                if (zzb == null) {
                    final String str = "ExoPlayer:AudioTrackReleaseThread";
                    zzb = Executors.newSingleThreadScheduledExecutor(new ThreadFactory(str) { // from class: com.google.android.gms.internal.ads.zzeh
                        public final /* synthetic */ String zza = "ExoPlayer:AudioTrackReleaseThread";

                        @Override // java.util.concurrent.ThreadFactory
                        public final Thread newThread(Runnable runnable) {
                            return new Thread(runnable, this.zza);
                        }
                    });
                }
                zzc++;
                zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqm.zzI(audioTrack, zzpjVar, handler, zza2);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            }
            this.zzt = null;
        }
        this.zzm.zza();
        this.zzl.zza();
        this.zzZ = 0L;
        this.zzaa = 0L;
        Handler handler2 = this.zzab;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzg() {
        this.zzH = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzh() {
        this.zzR = false;
        if (zzZ()) {
            if (this.zzi.zzk() || zzaa(this.zzt)) {
                this.zzt.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzi() {
        this.zzR = true;
        if (zzZ()) {
            this.zzi.zzf();
            this.zzt.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzj() {
        if (!this.zzO && zzZ() && zzY()) {
            zzS();
            this.zzO = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzk() {
        zzon zzonVar = this.zzv;
        if (zzonVar != null) {
            zzonVar.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzl() {
        zzf();
        zzfxn zzfxnVar = this.zzg;
        int size = zzfxnVar.size();
        for (int i = 0; i < size; i++) {
            ((zzch) zzfxnVar.get(i)).zzf();
        }
        zzfxn zzfxnVar2 = this.zzh;
        int size2 = zzfxnVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzch) zzfxnVar2.get(i2)).zzf();
        }
        zzce zzceVar = this.zzs;
        if (zzceVar != null) {
            zzceVar.zzf();
        }
        this.zzR = false;
        this.zzW = false;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzm(zze zzeVar) {
        if (this.zzx.equals(zzeVar)) {
            return;
        }
        this.zzx = zzeVar;
        zzon zzonVar = this.zzv;
        if (zzonVar != null) {
            zzonVar.zzg(zzeVar);
        }
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzn(int i) {
        if (this.zzS != i) {
            this.zzS = i;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzo(zzf zzfVar) {
        if (this.zzT.equals(zzfVar)) {
            return;
        }
        if (this.zzt != null) {
            int i = this.zzT.zza;
        }
        this.zzT = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzp(zzcx zzcxVar) {
        this.zzi.zze(zzcxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzq(zzpj zzpjVar) {
        this.zzp = zzpjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzr(int i, int i2) {
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzaa(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzs(zzbe zzbeVar) {
        this.zzA = new zzbe(Math.max(0.1f, Math.min(zzbeVar.zzb, 8.0f)), Math.max(0.1f, Math.min(zzbeVar.zzc, 8.0f)));
        zzU(zzbeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzt(zzog zzogVar) {
        this.zzo = zzogVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzu(AudioDeviceInfo audioDeviceInfo) {
        this.zzU = audioDeviceInfo == null ? null : new zzoo(audioDeviceInfo);
        zzon zzonVar = this.zzv;
        if (zzonVar != null) {
            zzonVar.zzh(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzpx.zza(audioTrack, this.zzU);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzv(boolean z) {
        this.zzB = z;
        zzU(this.zzA);
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final void zzw(float f) {
        if (this.zzK != f) {
            this.zzK = f;
            zzW();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x026a  */
    @Override // com.google.android.gms.internal.ads.zzpm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzx(java.nio.ByteBuffer r24, long r25, int r27) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqm.zzx(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final boolean zzy() {
        boolean isOffloadedPlayback;
        if (!zzZ()) {
            return false;
        }
        if (zzei.zza >= 29) {
            isOffloadedPlayback = this.zzt.isOffloadedPlayback();
            if (isOffloadedPlayback && this.zzQ) {
                return false;
            }
        }
        return this.zzi.zzg(zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzpm
    public final boolean zzz() {
        if (zzZ()) {
            return this.zzO && !zzy();
        }
        return true;
    }
}
