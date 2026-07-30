package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import defpackage.Cif;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
final class zzjp extends zzg implements zzim {
    public static final /* synthetic */ int zzd = 0;
    private boolean zzA;
    private zzlp zzB;
    private zzil zzC;
    private zzbg zzD;
    private zzav zzE;
    private Object zzF;
    private Surface zzG;
    private int zzH;
    private zzdz zzI;
    private int zzJ;
    private zze zzK;
    private float zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private int zzP;
    private zzav zzQ;
    private zzlb zzR;
    private int zzS;
    private long zzT;
    private final zzix zzU;
    private zzwb zzV;
    final zzyc zzb;
    final zzbg zzc;
    private final zzda zze;
    private final Context zzf;
    private final zzbk zzg;
    private final zzlj[] zzh;
    private final zzyb zzi;
    private final zzdh zzj;
    private final zzkc zzk;
    private final zzdn zzl;
    private final CopyOnWriteArraySet zzm;
    private final zzbo zzn;
    private final List zzo;
    private final boolean zzp;
    private final zzlt zzq;
    private final Looper zzr;
    private final zzyj zzs;
    private final zzcx zzt;
    private final zzjl zzu;
    private final zzjm zzv;
    private final zzhq zzw;
    private final long zzx;
    private int zzy;
    private int zzz;

    static {
        zzas.zzb("media3.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public zzjp(zzik zzikVar, zzbk zzbkVar) {
        zzog zzogVar;
        LogSessionId logSessionId;
        zzda zzdaVar = new zzda(zzcx.zza);
        this.zze = zzdaVar;
        try {
            zzdo.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.5.0-beta01] [" + zzei.zze + "]");
            Context applicationContext = zzikVar.zza.getApplicationContext();
            this.zzf = applicationContext;
            zzlt zzltVar = (zzlt) zzikVar.zzh.apply(zzikVar.zzb);
            this.zzq = zzltVar;
            this.zzP = zzikVar.zzj;
            this.zzK = zzikVar.zzk;
            this.zzH = zzikVar.zzl;
            this.zzM = false;
            this.zzx = zzikVar.zzp;
            zzjo zzjoVar = null;
            zzjl zzjlVar = new zzjl(this, zzjoVar);
            this.zzu = zzjlVar;
            zzjm zzjmVar = new zzjm(zzjoVar);
            this.zzv = zzjmVar;
            Handler handler = new Handler(zzikVar.zzi);
            zzlj[] zza = ((zzid) zzikVar.zzc).zza.zza(handler, zzjlVar, zzjlVar, zzjlVar, zzjlVar);
            this.zzh = zza;
            int length = zza.length;
            zzyb zzybVar = (zzyb) zzikVar.zze.zza();
            this.zzi = zzybVar;
            zzik.zza(((zzie) zzikVar.zzd).zza);
            zzyn zzh = zzyn.zzh(((zzih) zzikVar.zzg).zza);
            this.zzs = zzh;
            this.zzp = zzikVar.zzm;
            this.zzB = zzikVar.zzn;
            Looper looper = zzikVar.zzi;
            this.zzr = looper;
            zzcx zzcxVar = zzikVar.zzb;
            this.zzt = zzcxVar;
            this.zzg = zzbkVar;
            zzdn zzdnVar = new zzdn(looper, zzcxVar, new zzdl(this) { // from class: com.google.android.gms.internal.ads.zziw
                @Override // com.google.android.gms.internal.ads.zzdl
                public final void zza(Object obj, zzx zzxVar) {
                }
            });
            this.zzl = zzdnVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzm = copyOnWriteArraySet;
            this.zzo = new ArrayList();
            this.zzV = new zzwb(0);
            this.zzC = zzil.zza;
            int length2 = zza.length;
            zzyc zzycVar = new zzyc(new zzln[2], new zzxv[2], zzby.zza, null);
            this.zzb = zzycVar;
            this.zzn = new zzbo();
            zzbf zzbfVar = new zzbf();
            zzbfVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzybVar.zzn();
            zzbfVar.zzd(29, true);
            zzbfVar.zzd(23, false);
            zzbfVar.zzd(25, false);
            zzbfVar.zzd(33, false);
            zzbfVar.zzd(26, false);
            zzbfVar.zzd(34, false);
            zzbg zze = zzbfVar.zze();
            this.zzc = zze;
            zzbf zzbfVar2 = new zzbf();
            zzbfVar2.zzb(zze);
            zzbfVar2.zza(4);
            zzbfVar2.zza(10);
            this.zzD = zzbfVar2.zze();
            this.zzj = zzcxVar.zzd(looper, null);
            zzix zzixVar = new zzix(this);
            this.zzU = zzixVar;
            this.zzR = zzlb.zzg(zzycVar);
            zzltVar.zzS(zzbkVar, looper);
            if (zzei.zza < 31) {
                zzogVar = new zzog(zzikVar.zzs);
            } else {
                boolean z = zzikVar.zzq;
                String str = zzikVar.zzs;
                zzoc zzb = zzoc.zzb(applicationContext);
                if (zzb == null) {
                    zzdo.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
                    logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
                    zzogVar = new zzog(logSessionId, str);
                } else {
                    if (z) {
                        zzy(zzb);
                    }
                    zzogVar = new zzog(zzb.zza(), str);
                }
            }
            this.zzk = new zzkc(zza, zzybVar, zzycVar, (zzkg) zzikVar.zzf.zza(), zzh, 0, false, zzltVar, this.zzB, zzikVar.zzt, zzikVar.zzo, false, false, looper, zzcxVar, zzixVar, zzogVar, null, this.zzC);
            this.zzL = 1.0f;
            zzav zzavVar = zzav.zza;
            this.zzE = zzavVar;
            this.zzQ = zzavVar;
            this.zzS = -1;
            AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
            this.zzJ = audioManager == null ? -1 : audioManager.generateAudioSessionId();
            int i = zzcp.zza;
            this.zzN = true;
            zzltVar.getClass();
            zzdnVar.zzb(zzltVar);
            zzh.zzf(new Handler(looper), zzltVar);
            copyOnWriteArraySet.add(zzjlVar);
            new zzhl(zzikVar.zza, handler, zzjlVar);
            this.zzw = new zzhq(zzikVar.zza, handler, zzjlVar);
            zzikVar.zza.getApplicationContext();
            zzikVar.zza.getApplicationContext();
            new zzo(0).zza();
            zzcd zzcdVar = zzcd.zza;
            this.zzI = zzdz.zza;
            zzybVar.zzk(this.zzK);
            zzaa(1, 10, Integer.valueOf(this.zzJ));
            zzaa(2, 10, Integer.valueOf(this.zzJ));
            zzaa(1, 3, this.zzK);
            zzaa(2, 4, Integer.valueOf(this.zzH));
            zzaa(2, 5, 0);
            zzaa(1, 9, Boolean.valueOf(this.zzM));
            zzaa(2, 7, zzjmVar);
            zzaa(6, 8, zzjmVar);
            zzaa(-1, 16, Integer.valueOf(this.zzP));
            zzdaVar.zze();
        } catch (Throwable th) {
            this.zze.zze();
            throw th;
        }
    }

    public static /* bridge */ /* synthetic */ void zzK(zzjp zzjpVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzjpVar.zzac(surface);
        zzjpVar.zzG = surface;
    }

    private final int zzR(zzlb zzlbVar) {
        return zzlbVar.zza.zzo() ? this.zzS : zzlbVar.zza.zzn(zzlbVar.zzb.zza, this.zzn).zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzS(int i) {
        return i == -1 ? 2 : 1;
    }

    private final long zzT(zzlb zzlbVar) {
        if (!zzlbVar.zzb.zzb()) {
            return zzei.zzv(zzU(zzlbVar));
        }
        zzlbVar.zza.zzn(zzlbVar.zzb.zza, this.zzn);
        long j = zzlbVar.zzc;
        if (j != -9223372036854775807L) {
            return zzei.zzv(j) + zzei.zzv(0L);
        }
        long j2 = zzlbVar.zza.zze(zzR(zzlbVar), this.zza, 0L).zzl;
        return zzei.zzv(0L);
    }

    private final long zzU(zzlb zzlbVar) {
        if (zzlbVar.zza.zzo()) {
            return zzei.zzs(this.zzT);
        }
        long j = zzlbVar.zzs;
        if (zzlbVar.zzb.zzb()) {
            return j;
        }
        zzW(zzlbVar.zza, zzlbVar.zzb, j);
        return j;
    }

    private static long zzV(zzlb zzlbVar) {
        zzbp zzbpVar = new zzbp();
        zzbo zzboVar = new zzbo();
        zzlbVar.zza.zzn(zzlbVar.zzb.zza, zzboVar);
        long j = zzlbVar.zzc;
        if (j != -9223372036854775807L) {
            return j;
        }
        long j2 = zzlbVar.zza.zze(zzboVar.zzc, zzbpVar, 0L).zzl;
        return 0L;
    }

    private final long zzW(zzbq zzbqVar, zzug zzugVar, long j) {
        zzbqVar.zzn(zzugVar.zza, this.zzn);
        return j;
    }

    private final Pair zzX(zzbq zzbqVar, int i, long j) {
        if (zzbqVar.zzo()) {
            this.zzS = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.zzT = j;
            return null;
        }
        if (i == -1 || i >= zzbqVar.zzc()) {
            i = zzbqVar.zzg(false);
            long j2 = zzbqVar.zze(i, this.zza, 0L).zzl;
            j = zzei.zzv(0L);
        }
        return zzbqVar.zzl(this.zza, this.zzn, i, zzei.zzs(j));
    }

    private final zzlb zzY(zzlb zzlbVar, zzbq zzbqVar, Pair pair) {
        zzcw.zzd(zzbqVar.zzo() || pair != null);
        zzbq zzbqVar2 = zzlbVar.zza;
        long zzT = zzT(zzlbVar);
        zzlb zzf = zzlbVar.zzf(zzbqVar);
        if (zzbqVar.zzo()) {
            zzug zzh = zzlb.zzh();
            long zzs = zzei.zzs(this.zzT);
            zzlb zza = zzf.zzb(zzh, zzs, zzs, zzs, 0L, zzwj.zza, this.zzb, zzfxn.zzn()).zza(zzh);
            zza.zzq = zza.zzs;
            return zza;
        }
        Object obj = zzf.zzb.zza;
        int i = zzei.zza;
        boolean z = !obj.equals(pair.first);
        zzug zzugVar = z ? new zzug(pair.first, -1L) : zzf.zzb;
        long longValue = ((Long) pair.second).longValue();
        long zzs2 = zzei.zzs(zzT);
        if (!zzbqVar2.zzo()) {
            zzbqVar2.zzn(obj, this.zzn);
        }
        if (z || longValue < zzs2) {
            zzcw.zzf(!zzugVar.zzb());
            zzlb zza2 = zzf.zzb(zzugVar, longValue, longValue, longValue, 0L, z ? zzwj.zza : zzf.zzh, z ? this.zzb : zzf.zzi, z ? zzfxn.zzn() : zzf.zzj).zza(zzugVar);
            zza2.zzq = longValue;
            return zza2;
        }
        if (longValue != zzs2) {
            zzcw.zzf(!zzugVar.zzb());
            long max = Math.max(0L, zzf.zzr - (longValue - zzs2));
            long j = zzf.zzq;
            if (zzf.zzk.equals(zzf.zzb)) {
                j = longValue + max;
            }
            zzlb zzb = zzf.zzb(zzugVar, longValue, longValue, longValue, max, zzf.zzh, zzf.zzi, zzf.zzj);
            zzb.zzq = j;
            return zzb;
        }
        int zza3 = zzbqVar.zza(zzf.zzk.zza);
        if (zza3 != -1 && zzbqVar.zzd(zza3, this.zzn, false).zzc == zzbqVar.zzn(zzugVar.zza, this.zzn).zzc) {
            return zzf;
        }
        zzbqVar.zzn(zzugVar.zza, this.zzn);
        long zzf2 = zzugVar.zzb() ? this.zzn.zzf(zzugVar.zzb, zzugVar.zzc) : this.zzn.zzd;
        zzlb zza4 = zzf.zzb(zzugVar, zzf.zzs, zzf.zzs, zzf.zzd, zzf2 - zzf.zzs, zzf.zzh, zzf.zzi, zzf.zzj).zza(zzugVar);
        zza4.zzq = zzf2;
        return zza4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzZ(final int i, final int i2) {
        if (i == this.zzI.zzb() && i2 == this.zzI.zza()) {
            return;
        }
        this.zzI = new zzdz(i, i2);
        zzdn zzdnVar = this.zzl;
        zzdnVar.zzd(24, new zzdk() { // from class: com.google.android.gms.internal.ads.zzit
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                int i3 = zzjp.zzd;
                ((zzbh) obj).zzo(i, i2);
            }
        });
        zzdnVar.zzc();
        zzaa(2, 14, new zzdz(i, i2));
    }

    private final void zzaa(int i, int i2, Object obj) {
        zzlj[] zzljVarArr = this.zzh;
        int length = zzljVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzlj zzljVar = zzljVarArr[i3];
            if (i == -1 || zzljVar.zzb() == i) {
                int zzR = zzR(this.zzR);
                zzkc zzkcVar = this.zzk;
                zzlf zzlfVar = new zzlf(zzkcVar, zzljVar, this.zzR.zza, zzR == -1 ? 0 : zzR, this.zzt, zzkcVar.zzc());
                zzlfVar.zzf(i2);
                zzlfVar.zze(obj);
                zzlfVar.zzd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzab() {
        zzaa(1, 2, Float.valueOf(this.zzL * this.zzw.zza()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(Object obj) {
        Object obj2 = this.zzF;
        boolean z = false;
        if (obj2 != null && obj2 != obj) {
            z = true;
        }
        boolean zzq = this.zzk.zzq(obj, z ? this.zzx : -9223372036854775807L);
        if (z) {
            Object obj3 = this.zzF;
            Surface surface = this.zzG;
            if (obj3 == surface) {
                surface.release();
                this.zzG = null;
            }
        }
        this.zzF = obj;
        if (zzq) {
            return;
        }
        zzad(zzib.zzd(new zzkd(3), 1003));
    }

    private final void zzad(zzib zzibVar) {
        zzlb zzlbVar = this.zzR;
        zzlb zza = zzlbVar.zza(zzlbVar.zzb);
        zza.zzq = zza.zzs;
        zza.zzr = 0L;
        zzlb zze = zza.zze(1);
        if (zzibVar != null) {
            zze = zze.zzd(zzibVar);
        }
        this.zzy++;
        this.zzk.zzo();
        zzaf(zze, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzae(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        int i3 = i == 0 ? 1 : 0;
        zzlb zzlbVar = this.zzR;
        if (zzlbVar.zzl == z2 && zzlbVar.zzn == i3 && zzlbVar.zzm == i2) {
            return;
        }
        this.zzy++;
        zzlb zzc = zzlbVar.zzc(z2, i2, i3);
        this.zzk.zzn(z2, i2, i3);
        zzaf(zzc, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0476 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0480 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x048b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x049c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x04bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04e5  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00eb  */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf(final com.google.android.gms.internal.ads.zzlb r43, final int r44, boolean r45, int r46, long r47, int r49, boolean r50) {
        /*
            Method dump skipped, instructions count: 1271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjp.zzaf(com.google.android.gms.internal.ads.zzlb, int, boolean, int, long, int, boolean):void");
    }

    private final void zzag() {
        int zzf = zzf();
        if (zzf == 2 || zzf == 3) {
            zzah();
            boolean z = this.zzR.zzp;
            zzu();
            zzu();
        }
    }

    private final void zzah() {
        this.zze.zzb();
        if (Thread.currentThread() != this.zzr.getThread()) {
            String format = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.zzr.getThread().getName());
            if (this.zzN) {
                throw new IllegalStateException(format);
            }
            zzdo.zzg("ExoPlayerImpl", format, this.zzO ? null : new IllegalStateException());
            this.zzO = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final void zzA(zzlw zzlwVar) {
        zzah();
        this.zzq.zzR(zzlwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final void zzB(zzui zzuiVar) {
        zzah();
        List singletonList = Collections.singletonList(zzuiVar);
        zzah();
        zzah();
        zzR(this.zzR);
        zzk();
        this.zzy++;
        boolean z = false;
        if (!this.zzo.isEmpty()) {
            int size = this.zzo.size();
            for (int i = size - 1; i >= 0; i--) {
                this.zzo.remove(i);
            }
            this.zzV = this.zzV.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < singletonList.size(); i2++) {
            zzky zzkyVar = new zzky((zzui) singletonList.get(i2), this.zzp);
            arrayList.add(zzkyVar);
            this.zzo.add(i2, new zzjn(zzkyVar.zzb, zzkyVar.zza));
        }
        this.zzV = this.zzV.zzg(0, arrayList.size());
        zzlh zzlhVar = new zzlh(this.zzo, this.zzV);
        if (!zzlhVar.zzo() && zzlhVar.zzc() < 0) {
            throw new zzac(zzlhVar, -1, -9223372036854775807L);
        }
        int zzg = zzlhVar.zzg(false);
        zzlb zzY = zzY(this.zzR, zzlhVar, zzX(zzlhVar, zzg, -9223372036854775807L));
        int i3 = zzY.zze;
        if (zzg != -1 && i3 != 1) {
            i3 = 4;
            if (!zzlhVar.zzo() && zzg < zzlhVar.zzc()) {
                i3 = 2;
            }
        }
        zzlb zze = zzY.zze(i3);
        this.zzk.zzr(arrayList, zzg, zzei.zzs(-9223372036854775807L), this.zzV);
        if (!this.zzR.zzb.zza.equals(zze.zzb.zza) && !this.zzR.zza.zzo()) {
            z = true;
        }
        zzaf(zze, 0, z, 4, zzU(zze), -1, false);
    }

    public final zzib zzE() {
        zzah();
        return this.zzR.zzf;
    }

    public final /* synthetic */ void zzN(final zzjz zzjzVar) {
        this.zzj.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zziy
            @Override // java.lang.Runnable
            public final void run() {
                zzjp.this.zzO(zzjzVar);
            }
        });
    }

    public final /* synthetic */ void zzO(zzjz zzjzVar) {
        long j;
        int i = this.zzy - zzjzVar.zzb;
        this.zzy = i;
        boolean z = true;
        if (zzjzVar.zzc) {
            this.zzz = zzjzVar.zzd;
            this.zzA = true;
        }
        if (i == 0) {
            zzbq zzbqVar = zzjzVar.zza.zza;
            if (!this.zzR.zza.zzo() && zzbqVar.zzo()) {
                this.zzS = -1;
                this.zzT = 0L;
            }
            if (!zzbqVar.zzo()) {
                List zzw = ((zzlh) zzbqVar).zzw();
                zzcw.zzf(zzw.size() == this.zzo.size());
                for (int i2 = 0; i2 < zzw.size(); i2++) {
                    ((zzjn) this.zzo.get(i2)).zzc((zzbq) zzw.get(i2));
                }
            }
            long j2 = -9223372036854775807L;
            if (this.zzA) {
                if (zzjzVar.zza.zzb.equals(this.zzR.zzb) && zzjzVar.zza.zzd == this.zzR.zzs) {
                    z = false;
                }
                if (z) {
                    if (zzbqVar.zzo() || zzjzVar.zza.zzb.zzb()) {
                        j = zzjzVar.zza.zzd;
                    } else {
                        zzlb zzlbVar = zzjzVar.zza;
                        zzug zzugVar = zzlbVar.zzb;
                        j = zzlbVar.zzd;
                        zzW(zzbqVar, zzugVar, j);
                    }
                    j2 = j;
                }
            } else {
                z = false;
            }
            this.zzA = false;
            zzaf(zzjzVar.zza, 1, z, this.zzz, j2, -1, false);
        }
    }

    public final /* synthetic */ void zzP(zzbh zzbhVar) {
        zzbhVar.zza(this.zzD);
    }

    @Override // com.google.android.gms.internal.ads.zzg
    public final void zza(int i, long j, int i2, boolean z) {
        zzah();
        if (i == -1) {
            return;
        }
        zzcw.zzd(i >= 0);
        zzbq zzbqVar = this.zzR.zza;
        if (zzbqVar.zzo() || i < zzbqVar.zzc()) {
            this.zzq.zzu();
            this.zzy++;
            if (zzw()) {
                zzdo.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzjz zzjzVar = new zzjz(this.zzR);
                zzjzVar.zza(1);
                this.zzU.zza.zzN(zzjzVar);
                return;
            }
            zzlb zzlbVar = this.zzR;
            int i3 = zzlbVar.zze;
            if (i3 == 3 || (i3 == 4 && !zzbqVar.zzo())) {
                zzlbVar = this.zzR.zze(2);
            }
            int zzd2 = zzd();
            zzlb zzY = zzY(zzlbVar, zzbqVar, zzX(zzbqVar, i, j));
            this.zzk.zzl(zzbqVar, i, zzei.zzs(j));
            zzaf(zzY, 0, true, 1, zzU(zzY), zzd2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzb() {
        zzah();
        if (zzw()) {
            return this.zzR.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzc() {
        zzah();
        if (zzw()) {
            return this.zzR.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzd() {
        zzah();
        int zzR = zzR(this.zzR);
        if (zzR == -1) {
            return 0;
        }
        return zzR;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zze() {
        zzah();
        if (this.zzR.zza.zzo()) {
            return 0;
        }
        zzlb zzlbVar = this.zzR;
        return zzlbVar.zza.zza(zzlbVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzf() {
        zzah();
        return this.zzR.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzg() {
        zzah();
        return this.zzR.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final int zzh() {
        zzah();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final long zzi() {
        zzah();
        if (zzw()) {
            zzlb zzlbVar = this.zzR;
            return zzlbVar.zzk.equals(zzlbVar.zzb) ? zzei.zzv(this.zzR.zzq) : zzl();
        }
        zzah();
        if (this.zzR.zza.zzo()) {
            return this.zzT;
        }
        zzlb zzlbVar2 = this.zzR;
        long j = 0;
        if (zzlbVar2.zzk.zzd != zzlbVar2.zzb.zzd) {
            return zzei.zzv(zzlbVar2.zza.zze(zzd(), this.zza, 0L).zzm);
        }
        long j2 = zzlbVar2.zzq;
        if (this.zzR.zzk.zzb()) {
            zzlb zzlbVar3 = this.zzR;
            zzlbVar3.zza.zzn(zzlbVar3.zzk.zza, this.zzn).zzg(this.zzR.zzk.zzb);
        } else {
            j = j2;
        }
        zzlb zzlbVar4 = this.zzR;
        zzW(zzlbVar4.zza, zzlbVar4.zzk, j);
        return zzei.zzv(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final long zzj() {
        zzah();
        return zzT(this.zzR);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final long zzk() {
        zzah();
        return zzei.zzv(zzU(this.zzR));
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final long zzl() {
        zzah();
        if (zzw()) {
            zzlb zzlbVar = this.zzR;
            zzug zzugVar = zzlbVar.zzb;
            zzlbVar.zza.zzn(zzugVar.zza, this.zzn);
            return zzei.zzv(this.zzn.zzf(zzugVar.zzb, zzugVar.zzc));
        }
        zzbq zzn = zzn();
        if (zzn.zzo()) {
            return -9223372036854775807L;
        }
        return zzei.zzv(zzn.zze(zzd(), this.zza, 0L).zzm);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final long zzm() {
        zzah();
        return zzei.zzv(this.zzR.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final zzbq zzn() {
        zzah();
        return this.zzR.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final zzby zzo() {
        zzah();
        return this.zzR.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzp() {
        zzah();
        zzhq zzhqVar = this.zzw;
        boolean zzu = zzu();
        zzhqVar.zzb(zzu, 2);
        zzae(zzu, 1, zzS(1));
        zzlb zzlbVar = this.zzR;
        if (zzlbVar.zze != 1) {
            return;
        }
        zzlb zzd2 = zzlbVar.zzd(null);
        zzlb zze = zzd2.zze(true == zzd2.zza.zzo() ? 4 : 2);
        this.zzy++;
        this.zzk.zzk();
        zzaf(zze, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzq(boolean z) {
        zzah();
        this.zzw.zzb(z, zzf());
        zzae(z, 1, zzS(1));
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzr(Surface surface) {
        zzah();
        zzac(surface);
        int i = surface == null ? 0 : -1;
        zzZ(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzs(float f) {
        zzah();
        final float max = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.zzL == max) {
            return;
        }
        this.zzL = max;
        zzab();
        zzdn zzdnVar = this.zzl;
        zzdnVar.zzd(22, new zzdk() { // from class: com.google.android.gms.internal.ads.zzis
            @Override // com.google.android.gms.internal.ads.zzdk
            public final void zza(Object obj) {
                int i = zzjp.zzd;
                ((zzbh) obj).zzs(max);
            }
        });
        zzdnVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzt() {
        zzah();
        this.zzw.zzb(zzu(), 1);
        zzad(null);
        int i = zzcp.zza;
        zzfxn zzn = zzfxn.zzn();
        long j = this.zzR.zzs;
        zzfxn.zzl(zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final boolean zzu() {
        zzah();
        return this.zzR.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final boolean zzv() {
        zzah();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final boolean zzw() {
        zzah();
        return this.zzR.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final int zzx() {
        zzah();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final void zzy(zzlw zzlwVar) {
        this.zzq.zzt(zzlwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final void zzz() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzei.zze;
        String zza = zzas.zza();
        StringBuilder m6919this = Cif.m6919this("Release ", hexString, " [AndroidXMedia3/1.5.0-beta01] [", str, "] [");
        m6919this.append(zza);
        m6919this.append("]");
        zzdo.zze("ExoPlayerImpl", m6919this.toString());
        zzah();
        this.zzw.zzd();
        if (!this.zzk.zzp()) {
            zzdn zzdnVar = this.zzl;
            zzdnVar.zzd(10, new zzdk() { // from class: com.google.android.gms.internal.ads.zziu
                @Override // com.google.android.gms.internal.ads.zzdk
                public final void zza(Object obj) {
                    ((zzbh) obj).zzj(zzib.zzd(new zzkd(1), 1003));
                }
            });
            zzdnVar.zzc();
        }
        this.zzl.zze();
        this.zzj.zze(null);
        this.zzs.zzg(this.zzq);
        zzlb zzlbVar = this.zzR;
        boolean z = zzlbVar.zzp;
        zzlb zze = zzlbVar.zze(1);
        this.zzR = zze;
        zzlb zza2 = zze.zza(zze.zzb);
        this.zzR = zza2;
        zza2.zzq = zza2.zzs;
        this.zzR.zzr = 0L;
        this.zzq.zzQ();
        this.zzi.zzj();
        Surface surface = this.zzG;
        if (surface != null) {
            surface.release();
            this.zzG = null;
        }
        int i = zzcp.zza;
    }
}
