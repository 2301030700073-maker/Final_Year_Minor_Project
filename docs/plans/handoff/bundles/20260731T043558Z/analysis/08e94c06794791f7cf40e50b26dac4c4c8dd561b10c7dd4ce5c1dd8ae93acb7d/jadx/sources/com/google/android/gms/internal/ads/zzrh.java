package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzrh implements zzqh {
    private static final Object zza = new Object();
    private static ScheduledExecutorService zzb;
    private static int zzc;
    private zzqx zzA;
    private zzav zzB;
    private boolean zzC;
    private long zzD;
    private long zzE;
    private long zzF;
    private long zzG;
    private int zzH;
    private boolean zzI;
    private boolean zzJ;
    private long zzK;
    private float zzL;
    private ByteBuffer zzM;
    private int zzN;
    private ByteBuffer zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private boolean zzS;
    private int zzT;
    private boolean zzU;
    private zze zzV;
    private AudioDeviceInfo zzW;
    private long zzX;
    private boolean zzY;
    private boolean zzZ;
    private Looper zzaa;
    private long zzab;
    private long zzac;
    private Handler zzad;
    private Context zzae;
    private boolean zzaf;
    private int zzag;
    private boolean zzah;
    private final zzqr zzai;
    private final zzqn zzaj;
    private final Context zzd;
    private final zzqm zze;
    private final zzrp zzf;
    private final zzck zzg;
    private final zzro zzh;
    private final zzgpe zzi;
    private final zzql zzj;
    private final ArrayDeque zzk;
    private zzrg zzl;
    private final zzrc zzm;
    private final zzrc zzn;
    private final int zzo;
    private zzpc zzp;
    private zzqe zzq;
    private zzqq zzr;
    private zzqq zzs;
    private zzcc zzt;
    private AudioTrack zzu;
    private zzpe zzv;
    private zzpj zzw;
    private zzrb zzx;
    private zzd zzy;
    private zzqx zzz;

    static /* synthetic */ void zzE(AudioTrack audioTrack, final zzqe zzqeVar, Handler handler, final zzqb zzqbVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzqeVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqu
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzqe.this.zzc(zzqbVar);
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
            if (zzqeVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqv
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzqe.this.zzc(zzqbVar);
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

    static /* synthetic */ boolean zzH() {
        boolean z;
        synchronized (zza) {
            z = zzc > 0;
        }
        return z;
    }

    private final void zzM() {
        zzcc zzccVar = this.zzs.zzi;
        this.zzt = zzccVar;
        zzccVar.zzb(zzce.zza);
    }

    private final AudioTrack zzN(zzqq zzqqVar) throws zzqd {
        Context context;
        try {
            int i = this.zzT;
            int i2 = this.zzo;
            Context context2 = null;
            if (i2 != -1 && (context = this.zzd) != null && Build.VERSION.SDK_INT >= 34) {
                if (this.zzae == null) {
                    this.zzae = context.createDeviceContext(i2);
                }
                context2 = this.zzae;
                i = 0;
            }
            return zzaf(zzqqVar.zza(), this.zzy, i, zzqqVar.zza, context2);
        } catch (zzqd e) {
            zzqe zzqeVar = this.zzq;
            if (zzqeVar != null) {
                zzqeVar.zzb(e);
            }
            throw e;
        }
    }

    private final void zzO(long j) throws zzqg {
        zzR(j);
        if (this.zzO != null) {
            return;
        }
        if (!this.zzt.zzc()) {
            ByteBuffer byteBuffer = this.zzM;
            if (byteBuffer != null) {
                zzQ(byteBuffer);
                zzR(j);
                return;
            }
            return;
        }
        while (!this.zzt.zzg()) {
            do {
                ByteBuffer zze = this.zzt.zze();
                if (zze.hasRemaining()) {
                    zzQ(zze);
                    zzR(j);
                } else {
                    ByteBuffer byteBuffer2 = this.zzM;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.zzt.zzd(this.zzM);
                    }
                }
            } while (this.zzO == null);
            return;
        }
    }

    private final boolean zzP() throws zzqg {
        ByteBuffer byteBuffer;
        if (!this.zzt.zzc()) {
            zzR(Long.MIN_VALUE);
            return this.zzO == null;
        }
        this.zzt.zzf();
        zzO(Long.MIN_VALUE);
        return this.zzt.zzg() && ((byteBuffer = this.zzO) == null || !byteBuffer.hasRemaining());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzQ(java.nio.ByteBuffer r17) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrh.zzQ(java.nio.ByteBuffer):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzR(long r8) throws com.google.android.gms.internal.ads.zzqg {
        /*
            r7 = this;
            java.nio.ByteBuffer r8 = r7.zzO
            if (r8 != 0) goto L6
            goto Lb6
        L6:
            com.google.android.gms.internal.ads.zzrc r8 = r7.zzn
            boolean r9 = r8.zzb()
            if (r9 != 0) goto Lb6
            java.nio.ByteBuffer r9 = r7.zzO
            int r9 = r9.remaining()
            android.media.AudioTrack r0 = r7.zzu
            java.nio.ByteBuffer r1 = r7.zzO
            r2 = 1
            int r0 = r0.write(r1, r9, r2)
            long r3 = android.os.SystemClock.elapsedRealtime()
            r7.zzX = r3
            r3 = 0
            r1 = 0
            if (r0 >= 0) goto L6d
            r9 = -6
            if (r0 == r9) goto L32
            r9 = -32
            if (r0 != r9) goto L30
            goto L32
        L30:
            r2 = r1
            goto L46
        L32:
            long r5 = r7.zzG()
            int r9 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r9 <= 0) goto L3b
            goto L46
        L3b:
            android.media.AudioTrack r9 = r7.zzu
            boolean r9 = zzab(r9)
            if (r9 == 0) goto L30
            r7.zzS()
        L46:
            com.google.android.gms.internal.ads.zzqg r9 = new com.google.android.gms.internal.ads.zzqg
            com.google.android.gms.internal.ads.zzqq r1 = r7.zzs
            com.google.android.gms.internal.ads.zzv r1 = r1.zza
            r9.<init>(r0, r1, r2)
            com.google.android.gms.internal.ads.zzqe r0 = r7.zzq
            if (r0 == 0) goto L56
            r0.zzb(r9)
        L56:
            boolean r0 = r9.zzb
            if (r0 == 0) goto L69
            android.content.Context r0 = r7.zzd
            if (r0 != 0) goto L5f
            goto L69
        L5f:
            com.google.android.gms.internal.ads.zzpe r8 = com.google.android.gms.internal.ads.zzpe.zza
            r7.zzv = r8
            com.google.android.gms.internal.ads.zzpj r0 = r7.zzw
            r0.zza(r8)
            throw r9
        L69:
            r8.zza(r9)
            return
        L6d:
            r8.zzc()
            android.media.AudioTrack r8 = r7.zzu
            boolean r8 = zzab(r8)
            if (r8 == 0) goto L8c
            long r5 = r7.zzG
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 <= 0) goto L80
            r7.zzZ = r1
        L80:
            boolean r8 = r7.zzS
            if (r8 == 0) goto L8c
            com.google.android.gms.internal.ads.zzqe r8 = r7.zzq
            if (r8 == 0) goto L8c
            if (r0 >= r9) goto L8c
            com.google.android.gms.internal.ads.zzrk r8 = (com.google.android.gms.internal.ads.zzrk) r8
        L8c:
            com.google.android.gms.internal.ads.zzqq r8 = r7.zzs
            int r8 = r8.zzc
            if (r8 != 0) goto L98
            long r3 = r7.zzF
            long r5 = (long) r0
            long r3 = r3 + r5
            r7.zzF = r3
        L98:
            if (r0 != r9) goto Lb6
            if (r8 == 0) goto Lb3
            java.nio.ByteBuffer r8 = r7.zzO
            java.nio.ByteBuffer r9 = r7.zzM
            if (r8 != r9) goto La3
            goto La4
        La3:
            r2 = r1
        La4:
            com.google.android.gms.internal.ads.zzgmd.zzh(r2)
            long r8 = r7.zzG
            int r0 = r7.zzH
            long r0 = (long) r0
            int r2 = r7.zzN
            long r2 = (long) r2
            long r0 = r0 * r2
            long r8 = r8 + r0
            r7.zzG = r8
        Lb3:
            r8 = 0
            r7.zzO = r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrh.zzR(long):void");
    }

    private final void zzS() {
        if (this.zzs.zzc == 1) {
            this.zzY = true;
        }
    }

    private final void zzT() {
        if (zzX()) {
            this.zzu.setVolume(this.zzL);
        }
    }

    private final void zzU(zzav zzavVar) {
        zzqx zzqxVar = new zzqx(zzavVar, C.TIME_UNSET, C.TIME_UNSET, null);
        if (zzX()) {
            this.zzz = zzqxVar;
        } else {
            this.zzA = zzqxVar;
        }
    }

    private final void zzV(long j) {
        zzav zzavVar;
        boolean z;
        if (zzW()) {
            zzqr zzqrVar = this.zzai;
            zzavVar = this.zzB;
            zzqrVar.zzb(zzavVar);
        } else {
            zzavVar = zzav.zza;
        }
        zzav zzavVar2 = zzavVar;
        this.zzB = zzavVar2;
        if (zzW()) {
            zzqr zzqrVar2 = this.zzai;
            z = this.zzC;
            zzqrVar2.zzc(z);
        } else {
            z = false;
        }
        this.zzC = z;
        this.zzk.add(new zzqx(zzavVar2, Math.max(0L, j), zzep.zzr(zzG(), this.zzs.zze), null));
        zzM();
        zzqe zzqeVar = this.zzq;
        if (zzqeVar != null) {
            ((zzrk) zzqeVar).zza.zzaw().zzh(this.zzC);
        }
    }

    private final boolean zzW() {
        zzqq zzqqVar = this.zzs;
        if (zzqqVar.zzc != 0) {
            return false;
        }
        int i = zzqqVar.zza.zzI;
        return true;
    }

    private final boolean zzX() {
        return this.zzu != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzY, reason: merged with bridge method [inline-methods] */
    public final long zzF() {
        return this.zzs.zzc == 0 ? this.zzD / r0.zzb : this.zzE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzZ, reason: merged with bridge method [inline-methods] */
    public final long zzG() {
        zzqq zzqqVar = this.zzs;
        if (zzqqVar.zzc != 0) {
            return this.zzG;
        }
        long j = this.zzF;
        long j2 = zzqqVar.zzd;
        String str = zzep.zza;
        return ((j + j2) - 1) / j2;
    }

    @EnsuresNonNull({"audioCapabilities"})
    private final void zzaa() {
        Context context;
        Looper myLooper = Looper.myLooper();
        boolean z = true;
        if (this.zzw != null && this.zzaa != myLooper) {
            z = false;
        }
        zzgmd.zzj(z, "DefaultAudioSink accessed on multiple threads: %s and %s", zzae(this.zzaa), zzae(myLooper));
        if (this.zzw == null && (context = this.zzd) != null) {
            this.zzaa = myLooper;
            zzpj zzpjVar = new zzpj(context, new zzpi() { // from class: com.google.android.gms.internal.ads.zzqs
                @Override // com.google.android.gms.internal.ads.zzpi
                public final /* synthetic */ void zza(zzpe zzpeVar) {
                    zzrh.this.zzC(zzpeVar);
                }
            }, this.zzy, this.zzW);
            this.zzw = zzpjVar;
            this.zzv = zzpjVar.zzd();
        }
        this.zzv.getClass();
    }

    private static boolean zzab(AudioTrack audioTrack) {
        return Build.VERSION.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final void zzac() {
        if (this.zzQ) {
            return;
        }
        this.zzQ = true;
        this.zzj.zzf(zzG());
        if (zzab(this.zzu)) {
            this.zzR = false;
        }
        this.zzu.stop();
    }

    private final boolean zzad(long j) {
        long zzb2 = this.zzj.zzb();
        AudioTrack audioTrack = this.zzu;
        audioTrack.getClass();
        return j > zzep.zzs(zzb2, audioTrack.getSampleRate());
    }

    private static String zzae(Looper looper) {
        return looper == null ? "null" : looper.getThread().getName();
    }

    private static final AudioTrack zzaf(zzqb zzqbVar, zzd zzdVar, int i, zzv zzvVar, Context context) throws zzqd {
        try {
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzdVar.zza()).setAudioFormat(zzep.zzC(zzqbVar.zzb, zzqbVar.zzc, zzqbVar.zza)).setTransferMode(1).setBufferSizeInBytes(zzqbVar.zze).setSessionId(i);
            if (Build.VERSION.SDK_INT >= 29) {
                sessionId.setOffloadedPlayback(zzqbVar.zzd);
            }
            if (Build.VERSION.SDK_INT >= 34 && context != null) {
                sessionId.setContext(context);
            }
            AudioTrack build = sessionId.build();
            int state = build.getState();
            if (state == 1) {
                return build;
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new zzqd(state, zzqbVar.zzb, zzqbVar.zzc, zzqbVar.zza, zzqbVar.zze, zzvVar, zzqbVar.zzd, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new zzqd(0, zzqbVar.zzb, zzqbVar.zzc, zzqbVar.zza, zzqbVar.zze, zzvVar, zzqbVar.zzd, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzA() {
        zzz();
        zzgpe zzgpeVar = this.zzi;
        int size = zzgpeVar.size();
        for (int i = 0; i < size; i++) {
            ((zzcg) zzgpeVar.get(i)).zzj();
        }
        this.zzg.zzj();
        this.zzh.zzj();
        zzcc zzccVar = this.zzt;
        if (zzccVar != null) {
            zzccVar.zzh();
        }
        this.zzS = false;
        this.zzY = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzB() {
        zzpj zzpjVar = this.zzw;
        if (zzpjVar != null) {
            zzpjVar.zze();
        }
    }

    public final void zzC(zzpe zzpeVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zzaa;
        zzgmd.zzj(looper == myLooper, "Current looper (%s) is not the playback looper (%s)", zzae(myLooper), zzae(this.zzaa));
        zzpe zzpeVar2 = this.zzv;
        if (zzpeVar2 == null || zzpeVar.equals(zzpeVar2)) {
            return;
        }
        this.zzv = zzpeVar;
        zzqe zzqeVar = this.zzq;
        if (zzqeVar != null) {
            ((zzrk) zzqeVar).zza.zzR();
        }
    }

    final /* synthetic */ void zzD() {
        if (this.zzac >= 300000) {
            ((zzrk) this.zzq).zza.zzay(true);
            this.zzac = 0L;
        }
    }

    final /* synthetic */ zzqe zzI() {
        return this.zzq;
    }

    final /* synthetic */ AudioTrack zzJ() {
        return this.zzu;
    }

    final /* synthetic */ void zzK(boolean z) {
        this.zzR = true;
    }

    final /* synthetic */ boolean zzL() {
        return this.zzS;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zza(zzqe zzqeVar) {
        this.zzq = zzqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzb(zzpc zzpcVar) {
        this.zzp = zzpcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzc(zzdc zzdcVar) {
        this.zzj.zzi(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final boolean zzd(zzv zzvVar) {
        return zze(zzvVar) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final int zze(zzv zzvVar) {
        zzaa();
        if (!MimeTypes.AUDIO_RAW.equals(zzvVar.zzo)) {
            return this.zzv.zzd(zzvVar, this.zzy) != null ? 2 : 0;
        }
        int i = zzvVar.zzI;
        if (zzep.zzA(i)) {
            return i != 2 ? 1 : 2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 22);
        sb.append("Invalid PCM encoding: ");
        sb.append(i);
        zzdt.zzc("DefaultAudioSink", sb.toString());
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final zzpl zzf(zzv zzvVar) {
        return this.zzY ? zzpl.zza : this.zzaj.zza(zzvVar, this.zzy);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final long zzg(boolean z) {
        ArrayDeque arrayDeque;
        long j;
        if (!zzX() || this.zzJ) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.zzj.zzb(), zzep.zzr(zzG(), this.zzs.zze));
        while (true) {
            arrayDeque = this.zzk;
            if (arrayDeque.isEmpty() || min < ((zzqx) arrayDeque.getFirst()).zzc) {
                break;
            }
            this.zzA = (zzqx) arrayDeque.remove();
        }
        zzqx zzqxVar = this.zzA;
        long j2 = min - zzqxVar.zzc;
        long zzv = zzep.zzv(j2, zzqxVar.zza.zzb);
        if (arrayDeque.isEmpty()) {
            long zzd = this.zzai.zzd(j2);
            zzqx zzqxVar2 = this.zzA;
            j = zzqxVar2.zzb + zzd;
            zzqxVar2.zzd = zzd - zzv;
        } else {
            zzqx zzqxVar3 = this.zzA;
            j = zzqxVar3.zzb + zzv + zzqxVar3.zzd;
        }
        long zze = this.zzai.zze();
        long zzr = j + zzep.zzr(zze, this.zzs.zze);
        long j3 = this.zzab;
        if (zze > j3) {
            long zzr2 = zzep.zzr(zze - j3, this.zzs.zze);
            this.zzab = zze;
            this.zzac += zzr2;
            if (this.zzad == null) {
                this.zzad = new Handler(Looper.myLooper());
            }
            this.zzad.removeCallbacksAndMessages(null);
            this.zzad.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqw
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzrh.this.zzD();
                }
            }, 100L);
        }
        return zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzh(zzv zzvVar, int i, int[] iArr) throws zzqc {
        zzcc zzccVar;
        int i2;
        int i3;
        int intValue;
        int i4;
        int i5;
        int i6;
        zzaa();
        if (MimeTypes.AUDIO_RAW.equals(zzvVar.zzo)) {
            int i7 = zzvVar.zzI;
            zzgmd.zza(zzep.zzA(i7));
            int i8 = zzvVar.zzG;
            i6 = zzep.zzE(i7) * i8;
            zzgpb zzgpbVar = new zzgpb();
            zzgpbVar.zzh(this.zzi);
            zzgpbVar.zzf(this.zzg);
            zzgpbVar.zzg(this.zzai.zza());
            zzcc zzccVar2 = new zzcc(zzgpbVar.zzi());
            if (zzccVar2.equals(this.zzt)) {
                zzccVar2 = this.zzt;
            }
            this.zzf.zzq(zzvVar.zzJ, zzvVar.zzK);
            this.zze.zzq(iArr);
            try {
                zzcd zza2 = zzccVar2.zza(new zzcd(zzvVar.zzH, i8, i7));
                int i9 = zza2.zzd;
                int i10 = zza2.zzb;
                int i11 = zza2.zzc;
                i4 = i9;
                i3 = i10;
                zzccVar = zzccVar2;
                intValue = zzep.zzB(i11);
                i2 = zzep.zzE(i9) * i11;
                i5 = 0;
            } catch (zzcf e) {
                throw new zzqc(e, zzvVar);
            }
        } else {
            zzcc zzccVar3 = new zzcc(zzgpe.zzi());
            int i12 = zzvVar.zzH;
            zzpl zzplVar = zzpl.zza;
            Pair zzd = this.zzv.zzd(zzvVar, this.zzy);
            if (zzd == null) {
                String valueOf = String.valueOf(zzvVar);
                String.valueOf(valueOf);
                throw new zzqc("Unable to configure passthrough for: ".concat(String.valueOf(valueOf)), zzvVar);
            }
            int intValue2 = ((Integer) zzd.first).intValue();
            zzccVar = zzccVar3;
            i2 = -1;
            i3 = i12;
            intValue = ((Integer) zzd.second).intValue();
            i4 = intValue2;
            i5 = 2;
            i6 = -1;
        }
        if (i4 == 0) {
            String valueOf2 = String.valueOf(zzvVar);
            StringBuilder sb = new StringBuilder(String.valueOf(i5).length() + 37 + String.valueOf(valueOf2).length());
            sb.append("Invalid output encoding (mode=");
            sb.append(i5);
            sb.append(") for: ");
            sb.append(valueOf2);
            throw new zzqc(sb.toString(), zzvVar);
        }
        if (intValue == 0) {
            String valueOf3 = String.valueOf(zzvVar);
            StringBuilder sb2 = new StringBuilder(String.valueOf(i5).length() + 43 + String.valueOf(valueOf3).length());
            sb2.append("Invalid output channel config (mode=");
            sb2.append(i5);
            sb2.append(") for: ");
            sb2.append(valueOf3);
            throw new zzqc(sb2.toString(), zzvVar);
        }
        int i13 = zzvVar.zzj;
        if (MimeTypes.AUDIO_DTS_EXPRESS.equals(zzvVar.zzo) && i13 == -1) {
            i13 = 768000;
        }
        int i14 = i13;
        zzgmd.zzh(AudioTrack.getMinBufferSize(i3, intValue, i4) != -2);
        int i15 = i2 != -1 ? i2 : 1;
        this.zzY = false;
        zzqq zzqqVar = new zzqq(zzvVar, i6, i5, i2, i3, intValue, i4, (((Math.max(r11, zzrj.zzb(r11, i4, i5, i15, i3, i14)) + i15) - 1) / i15) * i15, zzccVar, false, false, false);
        if (zzX()) {
            this.zzr = zzqqVar;
        } else {
            this.zzs = zzqqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzi() {
        this.zzS = true;
        if (zzX()) {
            this.zzj.zzc();
            if (!this.zzQ || zzab(this.zzu)) {
                this.zzu.play();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzj() {
        this.zzI = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f1  */
    @Override // com.google.android.gms.internal.ads.zzqh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(java.nio.ByteBuffer r27, long r28, int r30) throws com.google.android.gms.internal.ads.zzqd, com.google.android.gms.internal.ads.zzqg {
        /*
            Method dump skipped, instructions count: 1152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrh.zzk(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzl() throws zzqg {
        if (!this.zzP && zzX() && zzP()) {
            zzac();
            this.zzP = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final boolean zzm() {
        if (zzX()) {
            return this.zzP && !zzn();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final boolean zzn() {
        if (zzX()) {
            return !(Build.VERSION.SDK_INT >= 29 && this.zzu.isOffloadedPlayback() && this.zzR) && zzad(zzG());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzo(zzav zzavVar) {
        float f = zzavVar.zzb;
        String str = zzep.zza;
        this.zzB = new zzav(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(zzavVar.zzc, 8.0f)));
        zzU(zzavVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final zzav zzp() {
        return this.zzB;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzq(boolean z) {
        this.zzC = z;
        zzU(this.zzB);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzr(zzd zzdVar) {
        if (this.zzy.equals(zzdVar)) {
            return;
        }
        this.zzy = zzdVar;
        zzpj zzpjVar = this.zzw;
        if (zzpjVar != null) {
            zzpjVar.zzb(zzdVar);
        }
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzs(int i) {
        if (this.zzU) {
            if (this.zzT != i) {
                return;
            } else {
                this.zzU = false;
            }
        }
        if (this.zzT != i) {
            this.zzT = i;
            zzz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzt(zze zzeVar) {
        if (this.zzV.equals(zzeVar)) {
            return;
        }
        if (this.zzu != null) {
            int i = this.zzV.zza;
        }
        this.zzV = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzu(AudioDeviceInfo audioDeviceInfo) {
        this.zzW = audioDeviceInfo;
        zzpj zzpjVar = this.zzw;
        if (zzpjVar != null) {
            zzpjVar.zzc(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.zzu;
        if (audioTrack != null) {
            audioTrack.setPreferredDevice(this.zzW);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final long zzv() {
        if (!zzX()) {
            return C.TIME_UNSET;
        }
        zzqq zzqqVar = this.zzs;
        if (zzqqVar.zzc == 0) {
            return zzep.zzr(this.zzu.getBufferSizeInFrames(), zzqqVar.zze);
        }
        long bufferSizeInFrames = this.zzu.getBufferSizeInFrames();
        int zzf = zzade.zzf(this.zzs.zzg);
        zzgmd.zzh(zzf != -2147483647);
        return zzep.zzt(bufferSizeInFrames, 1000000L, zzf, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzw(int i, int i2) {
        AudioTrack audioTrack = this.zzu;
        if (audioTrack != null) {
            zzab(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzx(float f) {
        if (this.zzL != f) {
            this.zzL = f;
            zzT();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzy() {
        this.zzS = false;
        if (zzX()) {
            this.zzj.zzg();
            if (!this.zzQ || zzab(this.zzu)) {
                this.zzu.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzz() {
        if (zzX()) {
            this.zzD = 0L;
            this.zzE = 0L;
            this.zzF = 0L;
            this.zzG = 0L;
            this.zzZ = false;
            this.zzH = 0;
            this.zzA = new zzqx(this.zzB, 0L, 0L, null);
            this.zzK = 0L;
            this.zzz = null;
            this.zzk.clear();
            this.zzM = null;
            this.zzN = 0;
            this.zzO = null;
            this.zzQ = false;
            this.zzP = false;
            this.zzR = false;
            this.zzf.zzr();
            zzM();
            zzql zzqlVar = this.zzj;
            if (zzqlVar.zzd()) {
                this.zzu.pause();
            }
            if (zzab(this.zzu)) {
                zzrg zzrgVar = this.zzl;
                zzrgVar.getClass();
                zzrgVar.zzb(this.zzu);
            }
            final zzqb zza2 = this.zzs.zza();
            zzqq zzqqVar = this.zzr;
            if (zzqqVar != null) {
                this.zzs = zzqqVar;
                this.zzr = null;
            }
            zzqlVar.zzh();
            zzrb zzrbVar = this.zzx;
            if (zzrbVar != null) {
                zzrbVar.zza();
                this.zzx = null;
            }
            final AudioTrack audioTrack = this.zzu;
            final zzqe zzqeVar = this.zzq;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                if (zzb == null) {
                    zzb = zzep.zzg("ExoPlayer:AudioTrackReleaseThread");
                }
                zzc++;
                zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqt
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzrh.zzE(audioTrack, zzqeVar, handler, zza2);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            }
            this.zzu = null;
        }
        this.zzn.zzc();
        this.zzm.zzc();
        this.zzab = 0L;
        this.zzac = 0L;
        Handler handler2 = this.zzad;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    /* synthetic */ zzrh(zzqp zzqpVar, byte[] bArr) {
        int deviceId;
        byte[] bArr2 = null;
        Context applicationContext = zzqpVar.zzb() == null ? null : zzqpVar.zzb().getApplicationContext();
        this.zzd = applicationContext;
        this.zzy = zzd.zza;
        this.zzv = applicationContext != null ? null : zzqpVar.zzc();
        this.zzai = zzqpVar.zzd();
        zzqn zze = zzqpVar.zze();
        zze.getClass();
        this.zzaj = zze;
        this.zzj = new zzql(new zzrd(this, bArr2));
        zzqm zzqmVar = new zzqm();
        this.zze = zzqmVar;
        zzrp zzrpVar = new zzrp();
        this.zzf = zzrpVar;
        this.zzg = new zzck();
        this.zzh = new zzro();
        this.zzi = zzgpe.zzk(zzrpVar, zzqmVar);
        this.zzL = 1.0f;
        this.zzT = 0;
        this.zzV = new zze(0, 0.0f);
        zzav zzavVar = zzav.zza;
        this.zzA = new zzqx(zzavVar, 0L, 0L, null);
        this.zzB = zzavVar;
        this.zzC = false;
        this.zzk = new ArrayDeque();
        this.zzm = new zzrc();
        this.zzn = new zzrc();
        int i = -1;
        if (Build.VERSION.SDK_INT >= 34 && zzqpVar.zzb() != null && (deviceId = zzqpVar.zzb().getDeviceId()) != 0 && deviceId != -1) {
            i = deviceId;
        }
        this.zzo = i;
        this.zzaf = true;
    }
}
