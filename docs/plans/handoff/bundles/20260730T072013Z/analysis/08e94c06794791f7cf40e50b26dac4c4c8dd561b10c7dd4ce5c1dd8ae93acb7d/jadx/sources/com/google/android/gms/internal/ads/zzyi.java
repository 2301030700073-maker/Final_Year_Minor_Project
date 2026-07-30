package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzyi extends zzyo implements zzlo {
    public static final /* synthetic */ int zzb = 0;
    private static final zzgqy zzc = zzgqy.zzc(zzxo.zza);
    public final Context zza;
    private final Object zzd;
    private zzxt zze;
    private Thread zzf;
    private zzxx zzg;
    private zzd zzh;
    private Boolean zzi;
    private final zzxb zzj;

    public zzyi(Context context) {
        zzxb zzxbVar = new zzxb();
        zzxt zzxtVar = zzxt.zzJ;
        this.zzd = new Object();
        byte[] bArr = null;
        this.zza = context != null ? context.getApplicationContext() : null;
        this.zzj = zzxbVar;
        if (zzxtVar instanceof zzxt) {
            this.zze = zzxtVar;
        } else {
            zzxs zzxsVar = new zzxs(zzxtVar, bArr);
            zzxsVar.zzx((zzbl) zzxtVar);
            this.zze = new zzxt(zzxsVar, bArr);
        }
        this.zzh = zzd.zza;
        if (this.zze.zzU && context == null) {
            zzdt.zzc("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    protected static String zzi(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    protected static int zzj(zzv zzvVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzvVar.zzd)) {
            return 4;
        }
        String zzi = zzi(str);
        String zzi2 = zzi(zzvVar.zzd);
        if (zzi2 == null || zzi == null) {
            return (z && zzi2 == null) ? 1 : 0;
        }
        if (zzi2.startsWith(zzi) || zzi.startsWith(zzi2)) {
            return 3;
        }
        String str2 = zzep.zza;
        return zzi2.split("-", 2)[0].equals(zzi.split("-", 2)[0]) ? 2 : 0;
    }

    static /* synthetic */ int zzm(int i, int i2) {
        if (i == 0 || i != i2) {
            return Integer.bitCount(i & i2);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ int zzn(com.google.android.gms.internal.ads.zzv r5, com.google.android.gms.internal.ads.zzgpe r6) {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r6.size()
            if (r1 >= r2) goto L2a
            r2 = r0
        L9:
            java.util.List r3 = r5.zzc
            int r4 = r3.size()
            if (r2 >= r4) goto L27
            java.lang.Object r3 = r3.get(r2)
            com.google.android.gms.internal.ads.zzx r3 = (com.google.android.gms.internal.ads.zzx) r3
            java.lang.String r3 = r3.zzb
            java.lang.Object r4 = r6.get(r1)
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L24
            goto L2d
        L24:
            int r2 = r2 + 1
            goto L9
        L27:
            int r1 = r1 + 1
            goto L2
        L2a:
            r1 = 2147483647(0x7fffffff, float:NaN)
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzyi.zzn(com.google.android.gms.internal.ads.zzv, com.google.android.gms.internal.ads.zzgpe):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final void zzl() {
        boolean z;
        zzxx zzxxVar;
        synchronized (this.zzd) {
            z = false;
            if (this.zze.zzU && Build.VERSION.SDK_INT >= 32 && (zzxxVar = this.zzg) != null && zzxxVar.zza()) {
                z = true;
            }
        }
        if (z) {
            zzs();
        }
    }

    private static void zzv(zzwv zzwvVar, zzbl zzblVar, Map map) {
        for (int i = 0; i < zzwvVar.zzb; i++) {
            if (((zzbh) zzblVar.zzH.get(zzwvVar.zza(i))) != null) {
                throw null;
            }
        }
    }

    private static final Pair zzw(int i, zzyn zzynVar, int[][][] iArr, zzxz zzxzVar, Comparator comparator) {
        RandomAccess randomAccess;
        boolean z;
        zzyn zzynVar2 = zzynVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 2) {
            if (i == zzynVar2.zza(i2)) {
                zzwv zzb2 = zzynVar2.zzb(i2);
                for (int i3 = 0; i3 < zzb2.zzb; i3++) {
                    zzbg zza = zzb2.zza(i3);
                    List zza2 = zzxzVar.zza(i2, zza, iArr[i2][i3]);
                    int i4 = zza.zza;
                    boolean[] zArr = new boolean[i4];
                    int i5 = 0;
                    while (i5 < i4) {
                        int i6 = i5 + 1;
                        zzya zzyaVar = (zzya) zza2.get(i5);
                        int zza3 = zzyaVar.zza();
                        if (!zArr[i5] && zza3 != 0) {
                            if (zza3 == 1) {
                                randomAccess = zzgpe.zzj(zzyaVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzyaVar);
                                for (int i7 = i6; i7 < i4; i7++) {
                                    zzya zzyaVar2 = (zzya) zza2.get(i7);
                                    if (zzyaVar2.zza() == 2 && zzyaVar.zzc(zzyaVar2)) {
                                        arrayList2.add(zzyaVar2);
                                        z = true;
                                        zArr[i7] = true;
                                    } else {
                                        z = true;
                                    }
                                }
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i5 = i6;
                    }
                }
            }
            i2++;
            zzynVar2 = zzynVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i8 = 0; i8 < list.size(); i8++) {
            iArr2[i8] = ((zzya) list.get(i8)).zzc;
        }
        zzya zzyaVar3 = (zzya) list.get(0);
        return Pair.create(new zzyj(zzyaVar3.zzb, iArr2, 0), Integer.valueOf(zzyaVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final void zza(zzln zzlnVar) {
        synchronized (this.zzd) {
            boolean z = this.zze.zzY;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void zzb() {
        zzxx zzxxVar;
        synchronized (this.zzd) {
            Thread thread = this.zzf;
            if (thread != null) {
                zzgmd.zzi(thread == Thread.currentThread(), "DefaultTrackSelector is accessed on the wrong thread.");
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (zzxxVar = this.zzg) != null) {
            zzxxVar.zze();
            this.zzg = null;
        }
        super.zzb();
    }

    public final zzxt zzc() {
        zzxt zzxtVar;
        synchronized (this.zzd) {
            zzxtVar = this.zze;
        }
        return zzxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final boolean zzd() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void zze(zzd zzdVar) {
        if (this.zzh.equals(zzdVar)) {
            return;
        }
        this.zzh = zzdVar;
        zzl();
    }

    public final void zzf(zzxs zzxsVar) {
        boolean equals;
        zzxt zzxtVar = new zzxt(zzxsVar, null);
        synchronized (this.zzd) {
            equals = this.zze.equals(zzxtVar);
            this.zze = zzxtVar;
        }
        if (equals) {
            return;
        }
        if (zzxtVar.zzU && this.zza == null) {
            zzdt.zzc("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final zzlo zzg() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    protected final Pair zzh(zzyn zzynVar, int[][][] iArr, final int[] iArr2, zzuu zzuuVar, zzbf zzbfVar) throws zzib {
        final zzxt zzxtVar;
        int i;
        final boolean z;
        final String str;
        int i2;
        int[] iArr3;
        int length;
        zzyk zza;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        Context context3;
        synchronized (this.zzd) {
            this.zzf = Thread.currentThread();
            zzxtVar = this.zze;
        }
        if (this.zzi == null && (context3 = this.zza) != null) {
            this.zzi = Boolean.valueOf(zzep.zzN(context3));
        }
        if (zzxtVar.zzU && Build.VERSION.SDK_INT >= 32 && this.zzg == null) {
            this.zzg = new zzxx(this.zza, this, this.zzi);
        }
        int i3 = 2;
        zzyj[] zzyjVarArr = new zzyj[2];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = 1;
            if (i5 >= 2) {
                z = false;
                break;
            }
            if (zzynVar.zza(i5) == 2 && zzynVar.zzb(i5).zzb > 0) {
                z = true;
                break;
            }
            i5++;
        }
        Pair zzw = zzw(1, zzynVar, iArr, new zzxz() { // from class: com.google.android.gms.internal.ads.zzxk
            @Override // com.google.android.gms.internal.ads.zzxz
            public final /* synthetic */ List zza(int i6, zzbg zzbgVar, int[] iArr4) {
                zzxk zzxkVar = this;
                final zzyi zzyiVar = zzyi.this;
                final zzxt zzxtVar2 = zzxtVar;
                zzgme zzgmeVar = new zzgme() { // from class: com.google.android.gms.internal.ads.zzxn
                    @Override // com.google.android.gms.internal.ads.zzgme
                    public final /* synthetic */ boolean zza(Object obj) {
                        return zzyi.this.zzk(zzxtVar2, (zzv) obj);
                    }
                };
                int i7 = iArr2[i6];
                int i8 = zzgpe.zzd;
                zzgpb zzgpbVar = new zzgpb();
                int i9 = 0;
                while (i9 < zzbgVar.zza) {
                    zzgpbVar.zzf(new zzxf(i6, zzbgVar, i9, zzxtVar2, iArr4[i9], z, zzgmeVar, i7));
                    i9++;
                    zzxkVar = this;
                }
                return zzgpbVar.zzi();
            }
        }, zzxg.zza);
        if (zzw != null) {
            zzyjVarArr[((Integer) zzw.second).intValue()] = (zzyj) zzw.first;
        }
        final String str2 = zzw == null ? null : ((zzyj) zzw.first).zza.zza(((zzyj) zzw.first).zzb[0]).zzd;
        int i6 = zzxtVar.zzw.zzb;
        final Point zzP = (!zzxtVar.zzk || (context2 = this.zza) == null) ? null : zzep.zzP(context2);
        Pair zzw2 = zzw(2, zzynVar, iArr, new zzxz() { // from class: com.google.android.gms.internal.ads.zzxp
            /* JADX WARN: Removed duplicated region for block: B:42:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:54:0x005f  */
            @Override // com.google.android.gms.internal.ads.zzxz
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ java.util.List zza(int r20, com.google.android.gms.internal.ads.zzbg r21, int[] r22) {
                /*
                    Method dump skipped, instructions count: 214
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxp.zza(int, com.google.android.gms.internal.ads.zzbg, int[]):java.util.List");
            }
        }, zzxj.zza);
        boolean z2 = zzxtVar.zzE;
        int i7 = 4;
        Pair zzw3 = zzw2 == null ? zzw(4, zzynVar, iArr, new zzxz() { // from class: com.google.android.gms.internal.ads.zzxm
            @Override // com.google.android.gms.internal.ads.zzxz
            public final /* synthetic */ List zza(int i8, zzbg zzbgVar, int[] iArr4) {
                int i9 = zzyi.zzb;
                int i10 = zzgpe.zzd;
                zzgpb zzgpbVar = new zzgpb();
                for (int i11 = 0; i11 < zzbgVar.zza; i11++) {
                    zzgpbVar.zzf(new zzxq(i8, zzbgVar, i11, zzxt.this, iArr4[i11]));
                }
                return zzgpbVar.zzi();
            }
        }, zzxh.zza) : null;
        if (zzw3 != null) {
            zzyjVarArr[((Integer) zzw3.second).intValue()] = (zzyj) zzw3.first;
        } else if (zzw2 != null) {
            zzyjVarArr[((Integer) zzw2.second).intValue()] = (zzyj) zzw2.first;
        }
        if (!zzxtVar.zzB || (context = this.zza) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            str = null;
        } else {
            String str3 = zzep.zza;
            str = locale.toLanguageTag();
        }
        int i8 = 3;
        Pair zzw4 = zzw(3, zzynVar, iArr, new zzxz() { // from class: com.google.android.gms.internal.ads.zzxl
            @Override // com.google.android.gms.internal.ads.zzxz
            public final /* synthetic */ List zza(int i9, zzbg zzbgVar, int[] iArr4) {
                int i10 = zzyi.zzb;
                int i11 = zzgpe.zzd;
                zzgpb zzgpbVar = new zzgpb();
                for (int i12 = 0; i12 < zzbgVar.zza; i12++) {
                    String str4 = str;
                    int i13 = i12;
                    zzgpbVar.zzf(new zzxy(i9, zzbgVar, i13, zzxt.this, iArr4[i12], str2, str4));
                }
                return zzgpbVar.zzi();
            }
        }, zzxi.zza);
        if (zzw4 != null) {
            zzyjVarArr[((Integer) zzw4.second).intValue()] = (zzyj) zzw4.first;
        }
        int i9 = 0;
        while (i9 < i3) {
            int zza2 = zzynVar.zza(i9);
            if (zza2 != i3 && zza2 != i && zza2 != i8 && zza2 != i7) {
                zzwv zzb2 = zzynVar.zzb(i9);
                int[][] iArr4 = iArr[i9];
                int i10 = i4;
                int i11 = i10;
                zzbg zzbgVar = null;
                zzxr zzxrVar = null;
                while (i10 < zzb2.zzb) {
                    zzbg zza3 = zzb2.zza(i10);
                    int[] iArr5 = iArr4[i10];
                    zzxr zzxrVar2 = zzxrVar;
                    for (int i12 = i4; i12 < zza3.zza; i12++) {
                        if (zzlp.zzaa(iArr5[i12], zzxtVar.zzV)) {
                            zzxr zzxrVar3 = new zzxr(zza3.zza(i12), iArr5[i12]);
                            if (zzxrVar2 == null || zzxrVar3.compareTo(zzxrVar2) > 0) {
                                zzbgVar = zza3;
                                i11 = i12;
                                zzxrVar2 = zzxrVar3;
                            }
                        }
                    }
                    i10++;
                    zzxrVar = zzxrVar2;
                    i4 = 0;
                }
                zzyjVarArr[i9] = zzbgVar == null ? null : new zzyj(zzbgVar, new int[]{i11}, 0);
            }
            i9++;
            i3 = 2;
            i4 = 0;
            i8 = 3;
            i = 1;
            i7 = 4;
        }
        HashMap hashMap = new HashMap();
        int i13 = 2;
        for (int i14 = 0; i14 < 2; i14++) {
            zzv(zzynVar.zzb(i14), zzxtVar, hashMap);
        }
        zzv(zzynVar.zze(), zzxtVar, hashMap);
        for (int i15 = 0; i15 < 2; i15++) {
            if (((zzbh) hashMap.get(Integer.valueOf(zzynVar.zza(i15)))) != null) {
                throw null;
            }
        }
        int i16 = 0;
        while (i16 < i13) {
            zzwv zzb3 = zzynVar.zzb(i16);
            if (zzxtVar.zzb(i16, zzb3)) {
                if (zzxtVar.zzc(i16, zzb3) != null) {
                    throw null;
                }
                zzyjVarArr[i16] = null;
            }
            i16++;
            i13 = 2;
        }
        int i17 = 0;
        for (int i18 = i13; i17 < i18; i18 = 2) {
            int zza4 = zzynVar.zza(i17);
            if (zzxtVar.zza(i17) || zzxtVar.zzI.contains(Integer.valueOf(zza4))) {
                zzyjVarArr[i17] = null;
            }
            i17++;
        }
        zzxb zzxbVar = this.zzj;
        zzza zzt = zzt();
        zzgpe zzd = zzxc.zzd(zzyjVarArr);
        int i19 = 2;
        zzyk[] zzykVarArr = new zzyk[2];
        int i20 = 0;
        while (i20 < i19) {
            zzyj zzyjVar = zzyjVarArr[i20];
            if (zzyjVar == null || (length = (iArr3 = zzyjVar.zzb).length) == 0) {
                i2 = i20;
            } else {
                if (length == 1) {
                    zza = new zzyl(zzyjVar.zza, iArr3[0], 0, 0, null);
                    i2 = i20;
                } else {
                    i2 = i20;
                    zza = zzxbVar.zza(zzyjVar.zza, iArr3, 0, zzt, (zzgpe) zzd.get(i20));
                }
                zzykVarArr[i2] = zza;
            }
            i20 = i2 + 1;
            i19 = 2;
        }
        zzlq[] zzlqVarArr = new zzlq[i19];
        for (int i21 = 0; i21 < i19; i21++) {
            zzlqVarArr[i21] = (zzxtVar.zza(i21) || zzxtVar.zzI.contains(Integer.valueOf(zzynVar.zza(i21))) || (zzynVar.zza(i21) != -2 && zzykVarArr[i21] == null)) ? null : zzlq.zza;
        }
        boolean z3 = zzxtVar.zzW;
        return Pair.create(zzlqVarArr, zzykVarArr);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    final /* synthetic */ boolean zzk(zzxt zzxtVar, zzv zzvVar) {
        zzxx zzxxVar;
        zzxx zzxxVar2;
        if (!zzxtVar.zzU) {
            return true;
        }
        Boolean bool = this.zzi;
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        int i = zzvVar.zzG;
        char c = 65535;
        if (i == -1 || i <= 2) {
            return true;
        }
        String str = zzvVar.zzo;
        if (str != null) {
            switch (str.hashCode()) {
                case -2123537834:
                    if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                        c = 2;
                        break;
                    }
                    break;
                case 187078296:
                    if (str.equals(MimeTypes.AUDIO_AC3)) {
                        c = 0;
                        break;
                    }
                    break;
                case 187078297:
                    if (str.equals(MimeTypes.AUDIO_AC4)) {
                        c = 3;
                        break;
                    }
                    break;
                case 1504578661:
                    if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if ((c == 0 || c == 1 || c == 2 || c == 3) && (Build.VERSION.SDK_INT < 32 || (zzxxVar2 = this.zzg) == null || !zzxxVar2.zza())) {
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (zzxxVar = this.zzg) != null && zzxxVar.zza() && zzxxVar.zzb() && this.zzg.zzc()) {
            return this.zzg.zzd(this.zzh, zzvVar);
        }
        return false;
    }
}
