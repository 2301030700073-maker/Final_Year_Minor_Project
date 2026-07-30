package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.facebook.appevents.AppEventsConstants;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzvk implements zzue, zzacq, zzyq, zzyu, zzvv {
    private static final Map zzb;
    private static final zzab zzc;
    private zzadm zzA;
    private long zzB;
    private boolean zzC;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private int zzH;
    private boolean zzI;
    private long zzJ;
    private boolean zzL;
    private int zzM;
    private boolean zzN;
    private boolean zzO;
    private final zzyk zzP;
    private final Uri zzd;
    private final zzfy zze;
    private final zzrf zzf;
    private final zzuq zzg;
    private final zzra zzh;
    private final zzvg zzi;
    private final long zzj;
    private final long zzk;
    private final zzuz zzm;
    private zzud zzr;
    private zzafr zzs;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private zzvj zzz;
    private final zzyy zzl = new zzyy("ProgressiveMediaPeriod");
    private final zzda zzn = new zzda(zzcx.zza);
    private final Runnable zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvb
        @Override // java.lang.Runnable
        public final void run() {
            zzvk.this.zzU();
        }
    };
    private final Runnable zzp = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvc
        @Override // java.lang.Runnable
        public final void run() {
            zzvk.this.zzE();
        }
    };
    private final Handler zzq = zzei.zzy(null);
    private zzvi[] zzu = new zzvi[0];
    private zzvx[] zzt = new zzvx[0];
    private long zzK = -9223372036854775807L;
    private int zzD = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzb = DesugarCollections.unmodifiableMap(hashMap);
        zzz zzzVar = new zzz();
        zzzVar.zzM("icy");
        zzzVar.zzaa("application/x-icy");
        zzc = zzzVar.zzag();
    }

    public zzvk(Uri uri, zzfy zzfyVar, zzuz zzuzVar, zzrf zzrfVar, zzra zzraVar, zzyo zzyoVar, zzuq zzuqVar, zzvg zzvgVar, zzyk zzykVar, String str, int i, boolean z, long j, zzzg zzzgVar) {
        this.zzd = uri;
        this.zze = zzfyVar;
        this.zzf = zzrfVar;
        this.zzh = zzraVar;
        this.zzg = zzuqVar;
        this.zzi = zzvgVar;
        this.zzP = zzykVar;
        this.zzj = i;
        this.zzm = zzuzVar;
        this.zzk = j;
    }

    public static /* bridge */ /* synthetic */ void zzC(final zzvk zzvkVar) {
        zzvkVar.zzq.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzva
            @Override // java.lang.Runnable
            public final void run() {
                zzvk.this.zzF();
            }
        });
    }

    private final int zzQ() {
        int i = 0;
        for (zzvx zzvxVar : this.zzt) {
            i += zzvxVar.zzd();
        }
        return i;
    }

    private final long zzR(boolean z) {
        int i;
        long j = Long.MIN_VALUE;
        while (true) {
            zzvx[] zzvxVarArr = this.zzt;
            if (i >= zzvxVarArr.length) {
                return j;
            }
            if (!z) {
                zzvj zzvjVar = this.zzz;
                zzvjVar.getClass();
                i = zzvjVar.zzc[i] ? 0 : i + 1;
            }
            j = Math.max(j, zzvxVarArr[i].zzh());
        }
    }

    private final zzadt zzS(zzvi zzviVar) {
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            if (zzviVar.equals(this.zzu[i])) {
                return this.zzt[i];
            }
        }
        if (this.zzv) {
            zzdo.zzf("ProgressiveMediaPeriod", "Extractor added new track (id=" + zzviVar.zza + ") after finishing tracks.");
            return new zzaci();
        }
        zzvx zzvxVar = new zzvx(this.zzP, this.zzf, this.zzh);
        zzvxVar.zzv(this);
        int i2 = length + 1;
        zzvi[] zzviVarArr = (zzvi[]) Arrays.copyOf(this.zzu, i2);
        zzviVarArr[length] = zzviVar;
        int i3 = zzei.zza;
        this.zzu = zzviVarArr;
        zzvx[] zzvxVarArr = (zzvx[]) Arrays.copyOf(this.zzt, i2);
        zzvxVarArr[length] = zzvxVar;
        this.zzt = zzvxVarArr;
        return zzvxVar;
    }

    private final void zzT() {
        zzcw.zzf(this.zzw);
        this.zzz.getClass();
        this.zzA.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzU() {
        int i;
        if (this.zzO || this.zzw || !this.zzv || this.zzA == null) {
            return;
        }
        for (zzvx zzvxVar : this.zzt) {
            if (zzvxVar.zzi() == null) {
                return;
            }
        }
        this.zzn.zzc();
        int length = this.zzt.length;
        zzbr[] zzbrVarArr = new zzbr[length];
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzab zzi = this.zzt[i2].zzi();
            zzi.getClass();
            String str = zzi.zzo;
            boolean zzg = zzbb.zzg(str);
            boolean z = zzg || zzbb.zzi(str);
            zArr[i2] = z;
            this.zzx = z | this.zzx;
            this.zzy = this.zzk != -9223372036854775807L && length == 1 && zzbb.zzh(str);
            zzafr zzafrVar = this.zzs;
            if (zzafrVar != null) {
                if (zzg || this.zzu[i2].zzb) {
                    zzay zzayVar = zzi.zzl;
                    zzay zzayVar2 = zzayVar == null ? new zzay(-9223372036854775807L, zzafrVar) : zzayVar.zzc(zzafrVar);
                    zzz zzb2 = zzi.zzb();
                    zzb2.zzT(zzayVar2);
                    zzi = zzb2.zzag();
                }
                if (zzg && zzi.zzh == -1 && zzi.zzi == -1 && (i = zzafrVar.zza) != -1) {
                    zzz zzb3 = zzi.zzb();
                    zzb3.zzy(i);
                    zzi = zzb3.zzag();
                }
            }
            zzab zzc2 = zzi.zzc(this.zzf.zza(zzi));
            zzbrVarArr[i2] = new zzbr(Integer.toString(i2), zzc2);
            this.zzG = zzc2.zzu | this.zzG;
        }
        this.zzz = new zzvj(new zzwj(zzbrVarArr), zArr);
        if (this.zzy && this.zzB == -9223372036854775807L) {
            this.zzB = this.zzk;
            this.zzA = new zzve(this, this.zzA);
        }
        this.zzi.zza(this.zzB, this.zzA.zzh(), this.zzC);
        this.zzw = true;
        zzud zzudVar = this.zzr;
        zzudVar.getClass();
        zzudVar.zzi(this);
    }

    private final void zzV(int i) {
        zzT();
        zzvj zzvjVar = this.zzz;
        boolean[] zArr = zzvjVar.zzd;
        if (zArr[i]) {
            return;
        }
        zzab zzb2 = zzvjVar.zza.zzb(i).zzb(0);
        this.zzg.zzd(new zzuc(1, zzbb.zzb(zzb2.zzo), zzb2, 0, null, zzei.zzv(this.zzJ), -9223372036854775807L));
        zArr[i] = true;
    }

    private final void zzW(int i) {
        zzT();
        boolean[] zArr = this.zzz.zzb;
        if (this.zzL && zArr[i] && !this.zzt[i].zzy(false)) {
            this.zzK = 0L;
            this.zzL = false;
            this.zzF = true;
            this.zzJ = 0L;
            this.zzM = 0;
            for (zzvx zzvxVar : this.zzt) {
                zzvxVar.zzq(false);
            }
            zzud zzudVar = this.zzr;
            zzudVar.getClass();
            zzudVar.zzg(this);
        }
    }

    private final void zzX() {
        zzgd zzgdVar;
        long j;
        long j2;
        zzvf zzvfVar = new zzvf(this, this.zzd, this.zze, this.zzm, this, this.zzn);
        if (this.zzw) {
            zzcw.zzf(zzY());
            long j3 = this.zzB;
            if (j3 != -9223372036854775807L && this.zzK > j3) {
                this.zzN = true;
                this.zzK = -9223372036854775807L;
                return;
            }
            zzadm zzadmVar = this.zzA;
            zzadmVar.getClass();
            zzvf.zzf(zzvfVar, zzadmVar.zzg(this.zzK).zza.zzc, this.zzK);
            for (zzvx zzvxVar : this.zzt) {
                zzvxVar.zzu(this.zzK);
            }
            this.zzK = -9223372036854775807L;
        }
        this.zzM = zzQ();
        long zza = this.zzl.zza(zzvfVar, this, zzyo.zza(this.zzD));
        zzgdVar = zzvfVar.zzl;
        zzuq zzuqVar = this.zzg;
        j = zzvfVar.zzb;
        zztx zztxVar = new zztx(j, zzgdVar, zza);
        j2 = zzvfVar.zzk;
        zzuqVar.zzh(zztxVar, new zzuc(1, -1, null, 0, null, zzei.zzv(j2), zzei.zzv(this.zzB)));
    }

    private final boolean zzY() {
        return this.zzK != -9223372036854775807L;
    }

    private final boolean zzZ() {
        return this.zzF || zzY();
    }

    public static /* bridge */ /* synthetic */ long zzr(zzvk zzvkVar, boolean z) {
        return zzvkVar.zzR(true);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zzD() {
        this.zzv = true;
        this.zzq.post(this.zzo);
    }

    public final /* synthetic */ void zzE() {
        if (this.zzO) {
            return;
        }
        zzud zzudVar = this.zzr;
        zzudVar.getClass();
        zzudVar.zzg(this);
    }

    public final /* synthetic */ void zzF() {
        this.zzI = true;
    }

    public final /* synthetic */ void zzG(zzadm zzadmVar) {
        this.zzA = this.zzs == null ? zzadmVar : new zzadl(-9223372036854775807L, 0L);
        this.zzB = zzadmVar.zza();
        boolean z = false;
        if (!this.zzI && zzadmVar.zza() == -9223372036854775807L) {
            z = true;
        }
        this.zzC = z;
        this.zzD = true == z ? 7 : 1;
        if (this.zzw) {
            this.zzi.zza(this.zzB, zzadmVar.zzh(), this.zzC);
        } else {
            zzU();
        }
    }

    public final void zzH() {
        this.zzl.zzi(zzyo.zza(this.zzD));
    }

    public final void zzI(int i) {
        this.zzt[i].zzn();
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final /* bridge */ /* synthetic */ void zzJ(zzyt zzytVar, long j, long j2, boolean z) {
        zzgx zzgxVar;
        long j3;
        zzgd zzgdVar;
        long j4;
        long unused;
        zzvf zzvfVar = (zzvf) zzytVar;
        zzgxVar = zzvfVar.zzd;
        j3 = zzvfVar.zzb;
        zzgdVar = zzvfVar.zzl;
        zztx zztxVar = new zztx(j3, zzgdVar, zzgxVar.zzh(), zzgxVar.zzi(), j, j2, zzgxVar.zzg());
        unused = zzvfVar.zzb;
        j4 = zzvfVar.zzk;
        this.zzg.zze(zztxVar, new zzuc(1, -1, null, 0, null, zzei.zzv(j4), zzei.zzv(this.zzB)));
        if (z) {
            return;
        }
        for (zzvx zzvxVar : this.zzt) {
            zzvxVar.zzq(false);
        }
        if (this.zzH > 0) {
            zzud zzudVar = this.zzr;
            zzudVar.getClass();
            zzudVar.zzg(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyq
    public final /* bridge */ /* synthetic */ void zzK(zzyt zzytVar, long j, long j2) {
        zzgx zzgxVar;
        long j3;
        zzgd zzgdVar;
        long j4;
        zzadm zzadmVar;
        long unused;
        zzvf zzvfVar = (zzvf) zzytVar;
        if (this.zzB == -9223372036854775807L && (zzadmVar = this.zzA) != null) {
            boolean zzh = zzadmVar.zzh();
            long zzR = zzR(true);
            long j5 = zzR == Long.MIN_VALUE ? 0L : zzR + 10000;
            this.zzB = j5;
            this.zzi.zza(j5, zzh, this.zzC);
        }
        zzgxVar = zzvfVar.zzd;
        j3 = zzvfVar.zzb;
        zzgdVar = zzvfVar.zzl;
        zztx zztxVar = new zztx(j3, zzgdVar, zzgxVar.zzh(), zzgxVar.zzi(), j, j2, zzgxVar.zzg());
        unused = zzvfVar.zzb;
        zzuq zzuqVar = this.zzg;
        j4 = zzvfVar.zzk;
        zzuqVar.zzf(zztxVar, new zzuc(1, -1, null, 0, null, zzei.zzv(j4), zzei.zzv(this.zzB)));
        this.zzN = true;
        zzud zzudVar = this.zzr;
        zzudVar.getClass();
        zzudVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final void zzL() {
        for (zzvx zzvxVar : this.zzt) {
            zzvxVar.zzp();
        }
        this.zzm.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzvv
    public final void zzM(zzab zzabVar) {
        this.zzq.post(this.zzo);
    }

    public final void zzN() {
        if (this.zzw) {
            for (zzvx zzvxVar : this.zzt) {
                zzvxVar.zzo();
            }
        }
        this.zzl.zzj(this);
        this.zzq.removeCallbacksAndMessages(null);
        this.zzr = null;
        this.zzO = true;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zzO(final zzadm zzadmVar) {
        this.zzq.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvd
            @Override // java.lang.Runnable
            public final void run() {
                zzvk.this.zzG(zzadmVar);
            }
        });
    }

    public final boolean zzP(int i) {
        return !zzZ() && this.zzt[i].zzy(this.zzN);
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final long zza(long j, zzlp zzlpVar) {
        zzT();
        if (!this.zzA.zzh()) {
            return 0L;
        }
        zzadk zzg = this.zzA.zzg(j);
        zzadn zzadnVar = zzg.zza;
        zzadn zzadnVar2 = zzg.zzb;
        long j2 = zzlpVar.zzc;
        if (j2 == 0) {
            if (zzlpVar.zzd == 0) {
                return j;
            }
            j2 = 0;
        }
        long j3 = zzadnVar.zzb;
        int i = zzei.zza;
        long j4 = j - j2;
        long j5 = zzlpVar.zzd;
        long j6 = j + j5;
        long j7 = j ^ j6;
        long j8 = j5 ^ j6;
        if (((j ^ j2) & (j ^ j4)) < 0) {
            j4 = Long.MIN_VALUE;
        }
        if ((j7 & j8) < 0) {
            j6 = Long.MAX_VALUE;
        }
        boolean z = j4 <= j3 && j3 <= j6;
        long j9 = zzadnVar2.zzb;
        boolean z2 = j4 <= j9 && j9 <= j6;
        if (z && z2) {
            if (Math.abs(j3 - j) > Math.abs(j9 - j)) {
                return j9;
            }
        } else if (!z) {
            return z2 ? j9 : j4;
        }
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.zzue, com.google.android.gms.internal.ads.zzwa
    public final long zzb() {
        long j;
        zzT();
        if (this.zzN || this.zzH == 0) {
            return Long.MIN_VALUE;
        }
        if (zzY()) {
            return this.zzK;
        }
        if (this.zzx) {
            int length = this.zzt.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzvj zzvjVar = this.zzz;
                if (zzvjVar.zzb[i] && zzvjVar.zzc[i] && !this.zzt[i].zzx()) {
                    j = Math.min(j, this.zzt[i].zzh());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = zzR(false);
        }
        return j == Long.MIN_VALUE ? this.zzJ : j;
    }

    @Override // com.google.android.gms.internal.ads.zzue, com.google.android.gms.internal.ads.zzwa
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final long zzd() {
        if (this.zzG) {
            this.zzG = false;
        } else {
            if (!this.zzF) {
                return -9223372036854775807L;
            }
            if (!this.zzN && zzQ() <= this.zzM) {
                return -9223372036854775807L;
            }
            this.zzF = false;
        }
        return this.zzJ;
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final long zze(long j) {
        zzT();
        boolean[] zArr = this.zzz.zzb;
        if (true != this.zzA.zzh()) {
            j = 0;
        }
        this.zzF = false;
        long j2 = this.zzJ;
        this.zzJ = j;
        if (zzY()) {
            this.zzK = j;
            return j;
        }
        if (this.zzD != 7 && (this.zzN || this.zzl.zzl())) {
            int length = this.zzt.length;
            for (int i = 0; i < length; i++) {
                zzvx zzvxVar = this.zzt[i];
                if (zzvxVar.zzb() != 0 || j2 != j) {
                    if (this.zzy ? zzvxVar.zzz(zzvxVar.zza()) : zzvxVar.zzA(j, false)) {
                        continue;
                    } else if (!zArr[i] && this.zzx) {
                    }
                }
            }
            return j;
        }
        this.zzL = false;
        this.zzK = j;
        this.zzN = false;
        this.zzG = false;
        zzyy zzyyVar = this.zzl;
        if (zzyyVar.zzl()) {
            for (zzvx zzvxVar2 : this.zzt) {
                zzvxVar2.zzk();
            }
            this.zzl.zzg();
        } else {
            zzyyVar.zzh();
            for (zzvx zzvxVar3 : this.zzt) {
                zzvxVar3.zzq(false);
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final long zzf(zzxv[] zzxvVarArr, boolean[] zArr, zzvy[] zzvyVarArr, boolean[] zArr2, long j) {
        zzxv zzxvVar;
        int i;
        zzT();
        zzvj zzvjVar = this.zzz;
        zzwj zzwjVar = zzvjVar.zza;
        boolean[] zArr3 = zzvjVar.zzc;
        int i2 = this.zzH;
        int i3 = 0;
        for (int i4 = 0; i4 < zzxvVarArr.length; i4++) {
            zzvy zzvyVar = zzvyVarArr[i4];
            if (zzvyVar != null && (zzxvVarArr[i4] == null || !zArr[i4])) {
                i = ((zzvh) zzvyVar).zzb;
                zzcw.zzf(zArr3[i]);
                this.zzH--;
                zArr3[i] = false;
                zzvyVarArr[i4] = null;
            }
        }
        boolean z = !this.zzE ? j == 0 || this.zzy : i2 != 0;
        for (int i5 = 0; i5 < zzxvVarArr.length; i5++) {
            if (zzvyVarArr[i5] == null && (zzxvVar = zzxvVarArr[i5]) != null) {
                zzcw.zzf(zzxvVar.zzd() == 1);
                zzcw.zzf(zzxvVar.zza(0) == 0);
                int zza = zzwjVar.zza(zzxvVar.zzg());
                zzcw.zzf(!zArr3[zza]);
                this.zzH++;
                zArr3[zza] = true;
                this.zzG = zzxvVar.zzf().zzu | this.zzG;
                zzvyVarArr[i5] = new zzvh(this, zza);
                zArr2[i5] = true;
                if (!z) {
                    zzvx zzvxVar = this.zzt[zza];
                    z = (zzvxVar.zzb() == 0 || zzvxVar.zzA(j, true)) ? false : true;
                }
            }
        }
        if (this.zzH == 0) {
            this.zzL = false;
            this.zzF = false;
            this.zzG = false;
            if (this.zzl.zzl()) {
                zzvx[] zzvxVarArr = this.zzt;
                int length = zzvxVarArr.length;
                while (i3 < length) {
                    zzvxVarArr[i3].zzk();
                    i3++;
                }
                this.zzl.zzg();
            } else {
                this.zzN = false;
                for (zzvx zzvxVar2 : this.zzt) {
                    zzvxVar2.zzq(false);
                }
            }
        } else if (z) {
            j = zze(j);
            while (i3 < zzvyVarArr.length) {
                if (zzvyVarArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.zzE = true;
        return j;
    }

    public final int zzg(int i, zzke zzkeVar, zzhh zzhhVar, int i2) {
        if (zzZ()) {
            return -3;
        }
        zzV(i);
        int zze = this.zzt[i].zze(zzkeVar, zzhhVar, i2, this.zzN);
        if (zze == -3) {
            zzW(i);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final zzwj zzh() {
        zzT();
        return this.zzz.zza;
    }

    public final int zzi(int i, long j) {
        if (zzZ()) {
            return 0;
        }
        zzV(i);
        zzvx zzvxVar = this.zzt[i];
        int zzc2 = zzvxVar.zzc(j, this.zzN);
        zzvxVar.zzw(zzc2);
        if (zzc2 != 0) {
            return zzc2;
        }
        zzW(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zzj(long j, boolean z) {
        if (this.zzy) {
            return;
        }
        zzT();
        if (zzY()) {
            return;
        }
        boolean[] zArr = this.zzz.zzc;
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            this.zzt[i].zzj(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zzk() {
        try {
            zzH();
            if (this.zzN && !this.zzw) {
                throw zzbc.zza("Loading finished before preparation is complete.", null);
            }
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zzl(zzud zzudVar, long j) {
        this.zzr = zzudVar;
        this.zzn.zze();
        zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzue, com.google.android.gms.internal.ads.zzwa
    public final void zzm(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzue, com.google.android.gms.internal.ads.zzwa
    public final boolean zzo(zzkj zzkjVar) {
        if (this.zzN) {
            return false;
        }
        zzyy zzyyVar = this.zzl;
        if (zzyyVar.zzk() || this.zzL) {
            return false;
        }
        if (this.zzw && this.zzH == 0) {
            return false;
        }
        boolean zze = this.zzn.zze();
        if (zzyyVar.zzl()) {
            return zze;
        }
        zzX();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzue, com.google.android.gms.internal.ads.zzwa
    public final boolean zzp() {
        return this.zzl.zzl() && this.zzn.zzd();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    @Override // com.google.android.gms.internal.ads.zzyq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzyr zzu(com.google.android.gms.internal.ads.zzyt r22, long r23, long r25, java.io.IOException r27, int r28) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvk.zzu(com.google.android.gms.internal.ads.zzyt, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzyr");
    }

    public final zzadt zzv() {
        return zzS(new zzvi(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzadt zzw(int i, int i2) {
        return zzS(new zzvi(i, false));
    }
}
