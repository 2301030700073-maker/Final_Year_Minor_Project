package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzvy implements zzus, zzadd, zzzf, zzzk, zzwi {
    private static final Map zzb;
    private static final zzv zzc;
    private zzvx zzA;
    private zzaed zzB;
    private long zzC;
    private boolean zzD;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    private int zzI;
    private boolean zzJ;
    private long zzK;
    private boolean zzM;
    private int zzN;
    private boolean zzO;
    private boolean zzP;
    private final Uri zzd;
    private final zzgb zze;
    private final zzrz zzf;
    private final zzve zzg;
    private final zzru zzh;
    private final zzvq zzi;
    private final zzyv zzj;
    private final long zzk;
    private final long zzl;
    private final zzvn zzn;
    private zzur zzs;
    private zzagf zzt;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private boolean zzz;
    private final zzzn zzm = new zzzn("ProgressiveMediaPeriod");
    private final zzdf zzo = new zzdf(zzdc.zza);
    private final Runnable zzp = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvu
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            zzvy.this.zzD();
        }
    };
    private final Runnable zzq = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvr
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            zzvy.this.zzE();
        }
    };
    private final Handler zzr = zzep.zzc(null);
    private zzvw[] zzv = new zzvw[0];
    private zzwj[] zzu = new zzwj[0];
    private long zzL = C.TIME_UNSET;
    private int zzE = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        zzb = Collections.unmodifiableMap(hashMap);
        zzt zztVar = new zzt();
        zztVar.zza("icy");
        zztVar.zzm(MimeTypes.APPLICATION_ICY);
        zzc = zztVar.zzM();
    }

    public zzvy(Uri uri, zzgb zzgbVar, zzvn zzvnVar, zzrz zzrzVar, zzru zzruVar, zzze zzzeVar, zzve zzveVar, zzvq zzvqVar, zzyv zzyvVar, String str, int i, int i2, zzv zzvVar, long j, zzzt zzztVar) {
        this.zzd = uri;
        this.zze = zzgbVar;
        this.zzf = zzrzVar;
        this.zzh = zzruVar;
        this.zzg = zzveVar;
        this.zzi = zzvqVar;
        this.zzj = zzyvVar;
        this.zzk = i;
        this.zzn = zzvnVar;
        this.zzl = j;
    }

    private final void zzR(int i) {
        zzaa();
        zzvx zzvxVar = this.zzA;
        boolean[] zArr = zzvxVar.zzd;
        if (zArr[i]) {
            return;
        }
        zzv zza = zzvxVar.zza.zza(i).zza(0);
        this.zzg.zzh(new zzuq(1, zzas.zzg(zza.zzo), zza, 0, null, zzep.zzp(this.zzK), C.TIME_UNSET));
        zArr[i] = true;
    }

    private final void zzS(int i) {
        zzaa();
        if (this.zzM) {
            if ((!this.zzy || this.zzA.zzb[i]) && !this.zzu[i].zzl(false)) {
                this.zzL = 0L;
                this.zzM = false;
                this.zzG = true;
                this.zzK = 0L;
                this.zzN = 0;
                for (zzwj zzwjVar : this.zzu) {
                    zzwjVar.zzb(false);
                }
                zzur zzurVar = this.zzs;
                zzurVar.getClass();
                zzurVar.zzs(this);
            }
        }
    }

    private final boolean zzT() {
        return this.zzG || zzZ();
    }

    private final zzaem zzU(zzvw zzvwVar) {
        int length = this.zzu.length;
        for (int i = 0; i < length; i++) {
            if (zzvwVar.equals(this.zzv[i])) {
                return this.zzu[i];
            }
        }
        if (this.zzw) {
            int i2 = zzvwVar.zza;
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 55);
            sb.append("Extractor added new track (id=");
            sb.append(i2);
            sb.append(") after finishing tracks.");
            zzdt.zzc("ProgressiveMediaPeriod", sb.toString());
            return new zzacx();
        }
        zzwj zzwjVar = new zzwj(this.zzj, this.zzf, this.zzh);
        zzwjVar.zzt(this);
        int i3 = length + 1;
        zzvw[] zzvwVarArr = (zzvw[]) Arrays.copyOf(this.zzv, i3);
        zzvwVarArr[length] = zzvwVar;
        String str = zzep.zza;
        this.zzv = zzvwVarArr;
        zzwj[] zzwjVarArr = (zzwj[]) Arrays.copyOf(this.zzu, i3);
        zzwjVarArr[length] = zzwjVar;
        this.zzu = zzwjVarArr;
        return zzwjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzV, reason: merged with bridge method [inline-methods] */
    public final void zzD() {
        int i;
        if (this.zzP || this.zzx || !this.zzw || this.zzB == null) {
            return;
        }
        for (zzwj zzwjVar : this.zzu) {
            if (zzwjVar.zzi() == null) {
                return;
            }
        }
        this.zzo.zzb();
        int length = this.zzu.length;
        zzbg[] zzbgVarArr = new zzbg[length];
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzv zzi = this.zzu[i2].zzi();
            zzi.getClass();
            String str = zzi.zzo;
            boolean zza = zzas.zza(str);
            boolean z = zza || zzas.zzb(str);
            zArr[i2] = z;
            this.zzy = z | this.zzy;
            this.zzz = this.zzl != C.TIME_UNSET && length == 1 && zzas.zzc(str);
            zzagf zzagfVar = this.zzt;
            if (zzagfVar != null) {
                if (zza || this.zzv[i2].zzb) {
                    zzap zzapVar = zzi.zzl;
                    zzap zzapVar2 = zzapVar == null ? new zzap(C.TIME_UNSET, zzagfVar) : zzapVar.zzg(zzagfVar);
                    zzt zza2 = zzi.zza();
                    zza2.zzk(zzapVar2);
                    zzi = zza2.zzM();
                }
                if (zza && zzi.zzh == -1 && zzi.zzi == -1 && (i = zzagfVar.zza) != -1) {
                    zzt zza3 = zzi.zza();
                    zza3.zzh(i);
                    zzi = zza3.zzM();
                }
            }
            zzv zzb2 = zzi.zzb(this.zzf.zzb(zzi));
            zzbgVarArr[i2] = new zzbg(Integer.toString(i2), zzb2);
            this.zzH = zzb2.zzu | this.zzH;
        }
        this.zzA = new zzvx(new zzwv(zzbgVarArr), zArr);
        if (this.zzz && this.zzC == C.TIME_UNSET) {
            this.zzC = this.zzl;
            this.zzB = new zzvo(this, this.zzB);
        }
        this.zzi.zzb(this.zzC, this.zzB, this.zzD);
        this.zzx = true;
        zzur zzurVar = this.zzs;
        zzurVar.getClass();
        zzurVar.zzp(this);
    }

    private final void zzW() {
        zzvp zzvpVar = new zzvp(this, this.zzd, this.zze, this.zzn, this, this.zzo);
        if (this.zzx) {
            zzgmd.zzh(zzZ());
            long j = this.zzC;
            if (j != C.TIME_UNSET && this.zzL > j) {
                this.zzO = true;
                this.zzL = C.TIME_UNSET;
                return;
            }
            zzaed zzaedVar = this.zzB;
            zzaedVar.getClass();
            zzvpVar.zzd(zzaedVar.zzc(this.zzL).zza.zzc, this.zzL);
            for (zzwj zzwjVar : this.zzu) {
                zzwjVar.zzc(this.zzL);
            }
            this.zzL = C.TIME_UNSET;
        }
        this.zzN = zzX();
        this.zzm.zzd(zzvpVar, this, zzze.zza(this.zzE));
    }

    private final int zzX() {
        int i = 0;
        for (zzwj zzwjVar : this.zzu) {
            i += zzwjVar.zzd();
        }
        return i;
    }

    private final long zzY(boolean z) {
        int i;
        long j = Long.MIN_VALUE;
        while (true) {
            zzwj[] zzwjVarArr = this.zzu;
            if (i >= zzwjVarArr.length) {
                return j;
            }
            if (!z) {
                zzvx zzvxVar = this.zzA;
                zzvxVar.getClass();
                i = zzvxVar.zzc[i] ? 0 : i + 1;
            }
            j = Math.max(j, zzwjVarArr[i].zzj());
        }
    }

    private final boolean zzZ() {
        return this.zzL != C.TIME_UNSET;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void zzaa() {
        zzgmd.zzh(this.zzx);
        this.zzA.getClass();
        this.zzB.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final /* bridge */ /* synthetic */ void zzA(zzzj zzzjVar, long j, long j2, boolean z) {
        zzvp zzvpVar = (zzvp) zzzjVar;
        zzgy zzf = zzvpVar.zzf();
        zzul zzulVar = new zzul(zzvpVar.zze(), zzvpVar.zzh(), zzf.zzg(), zzf.zzh(), j, j2, zzf.zzf());
        zzvpVar.zze();
        this.zzg.zzf(zzulVar, new zzuq(1, -1, null, 0, null, zzep.zzp(zzvpVar.zzg()), zzep.zzp(this.zzC)));
        if (z) {
            return;
        }
        for (zzwj zzwjVar : this.zzu) {
            zzwjVar.zzb(false);
        }
        if (this.zzI > 0) {
            zzur zzurVar = this.zzs;
            zzurVar.getClass();
            zzurVar.zzs(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final /* bridge */ /* synthetic */ void zzB(zzzj zzzjVar, long j, long j2) {
        zzvp zzvpVar = (zzvp) zzzjVar;
        if (this.zzC == C.TIME_UNSET && this.zzB != null) {
            long zzY = zzY(true);
            long j3 = zzY == Long.MIN_VALUE ? 0L : zzY + 10000;
            this.zzC = j3;
            this.zzi.zzb(j3, this.zzB, this.zzD);
        }
        zzgy zzf = zzvpVar.zzf();
        zzul zzulVar = new zzul(zzvpVar.zze(), zzvpVar.zzh(), zzf.zzg(), zzf.zzh(), j, j2, zzf.zzf());
        zzvpVar.zze();
        this.zzg.zze(zzulVar, new zzuq(1, -1, null, 0, null, zzep.zzp(zzvpVar.zzg()), zzep.zzp(this.zzC)));
        this.zzO = true;
        zzur zzurVar = this.zzs;
        zzurVar.getClass();
        zzurVar.zzs(this);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final /* bridge */ /* synthetic */ void zzC(zzzj zzzjVar, long j, long j2, int i) {
        zzvp zzvpVar = (zzvp) zzzjVar;
        zzgy zzf = zzvpVar.zzf();
        this.zzg.zzd(i == 0 ? new zzul(zzvpVar.zze(), zzvpVar.zzh(), j) : new zzul(zzvpVar.zze(), zzvpVar.zzh(), zzf.zzg(), zzf.zzh(), j, j2, zzf.zzf()), new zzuq(1, -1, null, 0, null, zzep.zzp(zzvpVar.zzg()), zzep.zzp(this.zzC)), i);
    }

    final /* synthetic */ void zzG() {
        this.zzJ = true;
    }

    final /* synthetic */ void zzH() {
        this.zzr.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvt
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzvy.this.zzG();
            }
        });
    }

    final /* synthetic */ long zzI(boolean z) {
        return zzY(true);
    }

    final /* synthetic */ long zzL() {
        return this.zzk;
    }

    final /* synthetic */ Runnable zzM() {
        return this.zzq;
    }

    final /* synthetic */ Handler zzN() {
        return this.zzr;
    }

    final /* synthetic */ zzagf zzO() {
        return this.zzt;
    }

    final /* synthetic */ void zzP(zzagf zzagfVar) {
        this.zzt = zzagfVar;
    }

    final /* synthetic */ long zzQ() {
        return this.zzC;
    }

    public final void zza() {
        if (this.zzx) {
            for (zzwj zzwjVar : this.zzu) {
                zzwjVar.zze();
            }
        }
        this.zzm.zzg(this);
        this.zzr.removeCallbacksAndMessages(null);
        this.zzs = null;
        this.zzP = true;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzb(zzur zzurVar, long j) {
        this.zzs = zzurVar;
        this.zzo.zza();
        zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzc() throws IOException {
        zzr();
        if (this.zzO && !this.zzx) {
            throw zzat.zzb("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final zzwv zzd() {
        zzaa();
        return this.zzA.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zze(zzyk[] zzykVarArr, boolean[] zArr, zzwk[] zzwkVarArr, boolean[] zArr2, long j) {
        zzyk zzykVar;
        zzaa();
        zzvx zzvxVar = this.zzA;
        zzwv zzwvVar = zzvxVar.zza;
        boolean[] zArr3 = zzvxVar.zzc;
        int i = this.zzI;
        int i2 = 0;
        for (int i3 = 0; i3 < zzykVarArr.length; i3++) {
            zzwk zzwkVar = zzwkVarArr[i3];
            if (zzwkVar != null && (zzykVarArr[i3] == null || !zArr[i3])) {
                int zza = ((zzvv) zzwkVar).zza();
                zzgmd.zzh(zArr3[zza]);
                this.zzI--;
                zArr3[zza] = false;
                zzwkVarArr[i3] = null;
            }
        }
        boolean z = !this.zzF ? j == 0 || this.zzz : i != 0;
        for (int i4 = 0; i4 < zzykVarArr.length; i4++) {
            if (zzwkVarArr[i4] == null && (zzykVar = zzykVarArr[i4]) != null) {
                zzgmd.zzh(zzykVar.zze() == 1);
                zzgmd.zzh(zzykVar.zzf(0) == 0);
                int zzb2 = zzwvVar.zzb(zzykVar.zza());
                zzgmd.zzh(!zArr3[zzb2]);
                this.zzI++;
                zArr3[zzb2] = true;
                this.zzH = zzykVar.zzc().zzu | this.zzH;
                zzwkVarArr[i4] = new zzvv(this, zzb2);
                zArr2[i4] = true;
                if (!z) {
                    zzwj zzwjVar = this.zzu[zzb2];
                    z = (zzwjVar.zzh() == 0 || zzwjVar.zzo(j, true)) ? false : true;
                }
            }
        }
        if (this.zzI == 0) {
            this.zzM = false;
            this.zzG = false;
            this.zzH = false;
            zzzn zzznVar = this.zzm;
            if (zzznVar.zze()) {
                zzwj[] zzwjVarArr = this.zzu;
                int length = zzwjVarArr.length;
                while (i2 < length) {
                    zzwjVarArr[i2].zzs();
                    i2++;
                }
                zzznVar.zzf();
            } else {
                this.zzO = false;
                for (zzwj zzwjVar2 : this.zzu) {
                    zzwjVar2.zzb(false);
                }
            }
        } else if (z) {
            j = zzj(j);
            while (i2 < zzwkVarArr.length) {
                if (zzwkVarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.zzF = true;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzf(long j, boolean z) {
        if (this.zzz) {
            return;
        }
        zzaa();
        if (zzZ()) {
            return;
        }
        boolean[] zArr = this.zzA.zzc;
        int length = this.zzu.length;
        for (int i = 0; i < length; i++) {
            this.zzu[i].zzr(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final void zzg(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zzh() {
        if (this.zzH) {
            this.zzH = false;
        } else {
            if (!this.zzG) {
                return C.TIME_UNSET;
            }
            if (!this.zzO && zzX() <= this.zzN) {
                return C.TIME_UNSET;
            }
            this.zzG = false;
        }
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final long zzi() {
        long j;
        zzaa();
        if (this.zzO || this.zzI == 0) {
            return Long.MIN_VALUE;
        }
        if (zzZ()) {
            return this.zzL;
        }
        if (this.zzy) {
            int length = this.zzu.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzvx zzvxVar = this.zzA;
                if (zzvxVar.zzb[i] && zzvxVar.zzc[i] && !this.zzu[i].zzk()) {
                    j = Math.min(j, this.zzu[i].zzj());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = zzY(false);
        }
        return j == Long.MIN_VALUE ? this.zzK : j;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zzj(long j) {
        zzaa();
        boolean[] zArr = this.zzA.zzb;
        if (true != this.zzB.zzb()) {
            j = 0;
        }
        this.zzG = false;
        long j2 = this.zzK;
        this.zzK = j;
        if (zzZ()) {
            this.zzL = j;
            return j;
        }
        if (this.zzE != 7 && (this.zzO || this.zzm.zze())) {
            int length = this.zzu.length;
            for (int i = 0; i < length; i++) {
                zzwj zzwjVar = this.zzu[i];
                if (zzwjVar.zzh() != 0 || j2 != j) {
                    if (this.zzz ? zzwjVar.zzn(zzwjVar.zzg()) : zzwjVar.zzo(j, this.zzO)) {
                        continue;
                    } else if (!zArr[i] && this.zzy) {
                    }
                }
            }
            return j;
        }
        this.zzM = false;
        this.zzL = j;
        this.zzO = false;
        this.zzH = false;
        zzzn zzznVar = this.zzm;
        if (zzznVar.zze()) {
            for (zzwj zzwjVar2 : this.zzu) {
                zzwjVar2.zzs();
            }
            zzznVar.zzf();
        } else {
            zzznVar.zzc();
            for (zzwj zzwjVar3 : this.zzu) {
                zzwjVar3.zzb(false);
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x009a, code lost:
    
        if (r23 == Long.MIN_VALUE) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0081  */
    @Override // com.google.android.gms.internal.ads.zzus
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzk(long r28, com.google.android.gms.internal.ads.zzlv r30) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvy.zzk(long, com.google.android.gms.internal.ads.zzlv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final long zzl() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final boolean zzm(zzkn zzknVar) {
        if (this.zzO) {
            return false;
        }
        zzzn zzznVar = this.zzm;
        if (zzznVar.zzb() || this.zzM) {
            return false;
        }
        if (this.zzx && this.zzI == 0) {
            return false;
        }
        boolean zza = this.zzo.zza();
        if (zzznVar.zze()) {
            return zza;
        }
        zzW();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final boolean zzn() {
        return this.zzm.zze() && this.zzo.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzo() {
        for (zzwj zzwjVar : this.zzu) {
            zzwjVar.zza();
        }
        this.zzn.zzb();
    }

    final boolean zzp(int i) {
        return !zzT() && this.zzu[i].zzl(this.zzO);
    }

    final void zzq(int i) throws IOException {
        this.zzu[i].zzf();
        zzr();
    }

    final void zzr() throws IOException {
        this.zzm.zzh(zzze.zza(this.zzE));
    }

    final int zzs(int i, zzkj zzkjVar, zzhh zzhhVar, int i2) {
        if (zzT()) {
            return -3;
        }
        zzR(i);
        int zzm = this.zzu[i].zzm(zzkjVar, zzhhVar, i2, this.zzO);
        if (zzm == -3) {
            zzS(i);
        }
        return zzm;
    }

    final int zzt(int i, long j) {
        if (zzT()) {
            return 0;
        }
        zzR(i);
        zzwj zzwjVar = this.zzu[i];
        int zzp = zzwjVar.zzp(j, this.zzO);
        zzwjVar.zzq(zzp);
        if (zzp != 0) {
            return zzp;
        }
        zzS(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadd
    public final zzaem zzu(int i, int i2) {
        return zzU(new zzvw(i, false));
    }

    @Override // com.google.android.gms.internal.ads.zzadd
    public final void zzv() {
        this.zzw = true;
        this.zzr.post(this.zzp);
    }

    @Override // com.google.android.gms.internal.ads.zzadd
    public final void zzw(final zzaed zzaedVar) {
        this.zzr.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvs
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzvy.this.zzF(zzaedVar);
            }
        });
    }

    final zzaem zzx() {
        return zzU(new zzvw(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void zzy(zzv zzvVar) {
        this.zzr.post(this.zzp);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    @Override // com.google.android.gms.internal.ads.zzzf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzzh zzz(com.google.android.gms.internal.ads.zzzj r23, long r24, long r26, java.io.IOException r28, int r29) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvy.zzz(com.google.android.gms.internal.ads.zzzj, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzzh");
    }

    final /* synthetic */ void zzE() {
        if (this.zzP) {
            return;
        }
        zzur zzurVar = this.zzs;
        zzurVar.getClass();
        zzurVar.zzs(this);
    }

    final /* synthetic */ void zzF(zzaed zzaedVar) {
        this.zzB = this.zzt == null ? zzaedVar : new zzaec(C.TIME_UNSET, 0L);
        this.zzC = zzaedVar.zza();
        boolean z = false;
        if (!this.zzJ && zzaedVar.zza() == C.TIME_UNSET) {
            z = true;
        }
        this.zzD = z;
        this.zzE = true == z ? 7 : 1;
        if (this.zzx) {
            this.zzi.zzb(this.zzC, zzaedVar, z);
        } else {
            zzD();
        }
    }
}
