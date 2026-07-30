package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class zzxt extends zzxy implements zzll {
    public static final /* synthetic */ int zzb = 0;
    private static final zzfyy zzc = zzfyy.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzwt
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzxt.zzb;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    public final Context zza;
    private final Object zzd;
    private final boolean zze;
    private zzxh zzf;
    private zzxl zzg;
    private zze zzh;
    private final zzwp zzi;

    public zzxt(Context context) {
        zzwp zzwpVar = new zzwp();
        zzxh zzd = zzxh.zzd(context);
        this.zzd = new Object();
        this.zza = context != null ? context.getApplicationContext() : null;
        this.zzi = zzwpVar;
        this.zzf = zzd;
        this.zzh = zze.zza;
        boolean z = false;
        if (context != null && zzei.zzM(context)) {
            z = true;
        }
        this.zze = z;
        if (!z && context != null && zzei.zza >= 32) {
            this.zzg = zzxl.zza(context);
        }
        if (this.zzf.zzN && context == null) {
            zzdo.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static /* bridge */ /* synthetic */ int zzb(int i, int i2) {
        return (i == 0 || i != i2) ? Integer.bitCount(i & i2) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static int zzc(zzab zzabVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzabVar.zzd)) {
            return 4;
        }
        String zzh = zzh(str);
        String zzh2 = zzh(zzabVar.zzd);
        if (zzh2 == null || zzh == null) {
            return (z && zzh2 == null) ? 1 : 0;
        }
        if (zzh2.startsWith(zzh) || zzh.startsWith(zzh2)) {
            return 3;
        }
        int i = zzei.zza;
        return zzh2.split("-", 2)[0].equals(zzh.split("-", 2)[0]) ? 2 : 0;
    }

    public static String zzh(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0054, code lost:
    
        if (r3 != 3) goto L43;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ boolean zzm(com.google.android.gms.internal.ads.zzxt r9, com.google.android.gms.internal.ads.zzab r10) {
        /*
            java.lang.Object r0 = r9.zzd
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzxh r1 = r9.zzf     // Catch: java.lang.Throwable -> L90
            boolean r1 = r1.zzN     // Catch: java.lang.Throwable -> L90
            r2 = 1
            if (r1 == 0) goto L8e
            boolean r1 = r9.zze     // Catch: java.lang.Throwable -> L90
            if (r1 != 0) goto L8e
            int r1 = r10.zzD     // Catch: java.lang.Throwable -> L90
            r3 = -1
            if (r1 == r3) goto L8e
            r4 = 2
            if (r1 <= r4) goto L8e
            java.lang.String r1 = r10.zzo     // Catch: java.lang.Throwable -> L90
            r5 = 32
            r6 = 0
            if (r1 != 0) goto L1e
            goto L66
        L1e:
            int r7 = r1.hashCode()     // Catch: java.lang.Throwable -> L90
            r8 = 3
            switch(r7) {
                case -2123537834: goto L45;
                case 187078296: goto L3b;
                case 187078297: goto L31;
                case 1504578661: goto L27;
                default: goto L26;
            }
        L26:
            goto L4e
        L27:
            java.lang.String r7 = "audio/eac3"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L4e
            r3 = 1
            goto L4e
        L31:
            java.lang.String r7 = "audio/ac4"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L4e
            r3 = 3
            goto L4e
        L3b:
            java.lang.String r7 = "audio/ac3"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L4e
            r3 = 0
            goto L4e
        L45:
            java.lang.String r7 = "audio/eac3-joc"
            boolean r1 = r1.equals(r7)
            if (r1 == 0) goto L4e
            r3 = 2
        L4e:
            if (r3 == 0) goto L57
            if (r3 == r2) goto L57
            if (r3 == r4) goto L57
            if (r3 == r8) goto L57
            goto L66
        L57:
            int r1 = com.google.android.gms.internal.ads.zzei.zza     // Catch: java.lang.Throwable -> L90
            if (r1 < r5) goto L8e
            com.google.android.gms.internal.ads.zzxl r1 = r9.zzg     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8e
            boolean r1 = r1.zzg()     // Catch: java.lang.Throwable -> L90
            if (r1 != 0) goto L66
            goto L8e
        L66:
            int r1 = com.google.android.gms.internal.ads.zzei.zza     // Catch: java.lang.Throwable -> L90
            if (r1 < r5) goto L8d
            com.google.android.gms.internal.ads.zzxl r1 = r9.zzg     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8d
            boolean r3 = r1.zzg()     // Catch: java.lang.Throwable -> L90
            if (r3 == 0) goto L8d
            boolean r1 = r1.zze()     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8d
            com.google.android.gms.internal.ads.zzxl r1 = r9.zzg     // Catch: java.lang.Throwable -> L90
            boolean r1 = r1.zzf()     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8d
            com.google.android.gms.internal.ads.zzxl r1 = r9.zzg     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.ads.zze r9 = r9.zzh     // Catch: java.lang.Throwable -> L90
            boolean r9 = r1.zzd(r9, r10)     // Catch: java.lang.Throwable -> L90
            if (r9 == 0) goto L8d
            goto L8e
        L8d:
            r2 = 0
        L8e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
            return r2
        L90:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxt.zzm(com.google.android.gms.internal.ads.zzxt, com.google.android.gms.internal.ads.zzab):boolean");
    }

    private static void zzt(zzwj zzwjVar, zzbw zzbwVar, Map map) {
        for (int i = 0; i < zzwjVar.zzb; i++) {
            if (((zzbs) zzbwVar.zzB.get(zzwjVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzu() {
        boolean z;
        zzxl zzxlVar;
        synchronized (this.zzd) {
            z = false;
            if (this.zzf.zzN && !this.zze && zzei.zza >= 32 && (zzxlVar = this.zzg) != null && zzxlVar.zzg()) {
                z = true;
            }
        }
        if (z) {
            zzs();
        }
    }

    private static final Pair zzv(int i, zzxx zzxxVar, int[][][] iArr, zzxn zzxnVar, Comparator comparator) {
        RandomAccess randomAccess;
        zzxx zzxxVar2 = zzxxVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 2) {
            if (i == zzxxVar2.zzc(i2)) {
                zzwj zzd = zzxxVar2.zzd(i2);
                for (int i3 = 0; i3 < zzd.zzb; i3++) {
                    zzbr zzb2 = zzd.zzb(i3);
                    List zza = zzxnVar.zza(i2, zzb2, iArr[i2][i3]);
                    boolean[] zArr = new boolean[zzb2.zza];
                    int i4 = 0;
                    while (i4 < zzb2.zza) {
                        int i5 = i4 + 1;
                        zzxo zzxoVar = (zzxo) zza.get(i4);
                        int zzb3 = zzxoVar.zzb();
                        if (!zArr[i4] && zzb3 != 0) {
                            if (zzb3 == 1) {
                                randomAccess = zzfxn.zzo(zzxoVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzxoVar);
                                for (int i6 = i5; i6 < zzb2.zza; i6++) {
                                    zzxo zzxoVar2 = (zzxo) zza.get(i6);
                                    if (zzxoVar2.zzb() == 2 && zzxoVar.zzc(zzxoVar2)) {
                                        arrayList2.add(zzxoVar2);
                                        zArr[i6] = true;
                                    }
                                }
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i4 = i5;
                    }
                }
            }
            i2++;
            zzxxVar2 = zzxxVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i7 = 0; i7 < list.size(); i7++) {
            iArr2[i7] = ((zzxo) list.get(i7)).zzc;
        }
        zzxo zzxoVar3 = (zzxo) list.get(0);
        return Pair.create(new zzxu(zzxoVar3.zzb, iArr2, 0), Integer.valueOf(zzxoVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void zza(zzlj zzljVar) {
        synchronized (this.zzd) {
            boolean z = this.zzf.zzR;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final Pair zzd(zzxx zzxxVar, int[][][] iArr, final int[] iArr2, zzug zzugVar, zzbq zzbqVar) {
        final zzxh zzxhVar;
        int i;
        final boolean z;
        final String str;
        int[] iArr3;
        int length;
        zzxl zzxlVar;
        synchronized (this.zzd) {
            zzxhVar = this.zzf;
            if (zzxhVar.zzN && zzei.zza >= 32 && (zzxlVar = this.zzg) != null) {
                Looper myLooper = Looper.myLooper();
                zzcw.zzb(myLooper);
                zzxlVar.zzb(this, myLooper);
            }
        }
        int i2 = 2;
        zzxu[] zzxuVarArr = new zzxu[2];
        int i3 = 0;
        while (true) {
            i = 1;
            if (i3 >= 2) {
                z = false;
                break;
            }
            if (zzxxVar.zzc(i3) == 2 && zzxxVar.zzd(i3).zzb > 0) {
                z = true;
                break;
            }
            i3++;
        }
        Pair zzv = zzv(1, zzxxVar, iArr, new zzxn() { // from class: com.google.android.gms.internal.ads.zzwy
            @Override // com.google.android.gms.internal.ads.zzxn
            public final List zza(int i4, zzbr zzbrVar, int[] iArr4) {
                final zzxt zzxtVar = zzxt.this;
                zzfuo zzfuoVar = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzxa
                    @Override // com.google.android.gms.internal.ads.zzfuo
                    public final boolean zza(Object obj) {
                        return zzxt.zzm(zzxt.this, (zzab) obj);
                    }
                };
                int i5 = iArr2[i4];
                zzfxk zzfxkVar = new zzfxk();
                for (int i6 = 0; i6 < zzbrVar.zza; i6++) {
                    int i7 = i6;
                    zzfxkVar.zzf(new zzxd(i4, zzbrVar, i7, zzxhVar, iArr4[i6], z, zzfuoVar, i5));
                }
                return zzfxkVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzwz
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxd) Collections.max((List) obj)).zza((zzxd) Collections.max((List) obj2));
            }
        });
        if (zzv != null) {
            zzxuVarArr[((Integer) zzv.second).intValue()] = (zzxu) zzv.first;
        }
        if (zzv == null) {
            str = null;
        } else {
            Object obj = zzv.first;
            str = ((zzxu) obj).zza.zzb(((zzxu) obj).zzb[0]).zzd;
        }
        Pair zzv2 = zzv(2, zzxxVar, iArr, new zzxn() { // from class: com.google.android.gms.internal.ads.zzww
            /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
            @Override // com.google.android.gms.internal.ads.zzxn
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List zza(int r20, com.google.android.gms.internal.ads.zzbr r21, int[] r22) {
                /*
                    Method dump skipped, instructions count: 214
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzww.zza(int, com.google.android.gms.internal.ads.zzbr, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzwx
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                List list = (List) obj2;
                List list2 = (List) obj3;
                return zzfxc.zzj().zzc((zzxr) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxp
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zzd((zzxr) obj4, (zzxr) obj5);
                    }
                }), (zzxr) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxp
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zzd((zzxr) obj4, (zzxr) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzxp
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zzd((zzxr) obj4, (zzxr) obj5);
                    }
                }).zzb(list.size(), list2.size()).zzc((zzxr) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zza((zzxr) obj4, (zzxr) obj5);
                    }
                }), (zzxr) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zza((zzxr) obj4, (zzxr) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzxq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzxr.zza((zzxr) obj4, (zzxr) obj5);
                    }
                }).zza();
            }
        });
        int i4 = 4;
        Pair zzv3 = zzv2 == null ? zzv(4, zzxxVar, iArr, new zzxn() { // from class: com.google.android.gms.internal.ads.zzwu
            @Override // com.google.android.gms.internal.ads.zzxn
            public final List zza(int i5, zzbr zzbrVar, int[] iArr4) {
                int i6 = zzxt.zzb;
                zzfxk zzfxkVar = new zzfxk();
                for (int i7 = 0; i7 < zzbrVar.zza; i7++) {
                    zzfxkVar.zzf(new zzxe(i5, zzbrVar, i7, zzxh.this, iArr4[i7]));
                }
                return zzfxkVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzwv
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzxe) ((List) obj2).get(0)).compareTo((zzxe) ((List) obj3).get(0));
            }
        }) : null;
        if (zzv3 != null) {
            zzxuVarArr[((Integer) zzv3.second).intValue()] = (zzxu) zzv3.first;
        } else if (zzv2 != null) {
            zzxuVarArr[((Integer) zzv2.second).intValue()] = (zzxu) zzv2.first;
        }
        int i5 = 3;
        Pair zzv4 = zzv(3, zzxxVar, iArr, new zzxn() { // from class: com.google.android.gms.internal.ads.zzxb
            @Override // com.google.android.gms.internal.ads.zzxn
            public final List zza(int i6, zzbr zzbrVar, int[] iArr4) {
                int i7 = zzxt.zzb;
                zzfxk zzfxkVar = new zzfxk();
                for (int i8 = 0; i8 < zzbrVar.zza; i8++) {
                    int i9 = i8;
                    zzfxkVar.zzf(new zzxm(i6, zzbrVar, i9, zzxh.this, iArr4[i8], str));
                }
                return zzfxkVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxc
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzxm) ((List) obj2).get(0)).zza((zzxm) ((List) obj3).get(0));
            }
        });
        if (zzv4 != null) {
            zzxuVarArr[((Integer) zzv4.second).intValue()] = (zzxu) zzv4.first;
        }
        int i6 = 0;
        while (i6 < i2) {
            int zzc2 = zzxxVar.zzc(i6);
            if (zzc2 != i2 && zzc2 != i && zzc2 != i5 && zzc2 != i4) {
                zzwj zzd = zzxxVar.zzd(i6);
                int[][] iArr4 = iArr[i6];
                int i7 = 0;
                zzbr zzbrVar = null;
                int i8 = 0;
                zzxf zzxfVar = null;
                while (i7 < zzd.zzb) {
                    zzbr zzb2 = zzd.zzb(i7);
                    int[] iArr5 = iArr4[i7];
                    zzxf zzxfVar2 = zzxfVar;
                    for (int i9 = 0; i9 < zzb2.zza; i9++) {
                        if (zzlk.zza(iArr5[i9], zzxhVar.zzO)) {
                            zzxf zzxfVar3 = new zzxf(zzb2.zzb(i9), iArr5[i9]);
                            if (zzxfVar2 == null || zzxfVar3.compareTo(zzxfVar2) > 0) {
                                zzxfVar2 = zzxfVar3;
                                i8 = i9;
                                zzbrVar = zzb2;
                            }
                        }
                    }
                    i7++;
                    zzxfVar = zzxfVar2;
                }
                zzxuVarArr[i6] = zzbrVar == null ? null : new zzxu(zzbrVar, new int[]{i8}, 0);
            }
            i6++;
            i2 = 2;
            i = 1;
            i4 = 4;
            i5 = 3;
        }
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < 2; i10++) {
            zzt(zzxxVar.zzd(i10), zzxhVar, hashMap);
        }
        zzt(zzxxVar.zze(), zzxhVar, hashMap);
        for (int i11 = 0; i11 < 2; i11++) {
            if (((zzbs) hashMap.get(Integer.valueOf(zzxxVar.zzc(i11)))) != null) {
                throw null;
            }
        }
        int i12 = 0;
        for (int i13 = 2; i12 < i13; i13 = 2) {
            zzwj zzd2 = zzxxVar.zzd(i12);
            if (zzxhVar.zzg(i12, zzd2)) {
                if (zzxhVar.zze(i12, zzd2) != null) {
                    throw null;
                }
                zzxuVarArr[i12] = null;
            }
            i12++;
        }
        int i14 = 0;
        for (int i15 = 2; i14 < i15; i15 = 2) {
            int zzc3 = zzxxVar.zzc(i14);
            if (zzxhVar.zzf(i14) || zzxhVar.zzC.contains(Integer.valueOf(zzc3))) {
                zzxuVarArr[i14] = null;
            }
            i14++;
        }
        zzwp zzwpVar = this.zzi;
        zzyj zzq = zzq();
        zzfxn zzh = zzwq.zzh(zzxuVarArr);
        int i16 = 2;
        zzxv[] zzxvVarArr = new zzxv[2];
        int i17 = 0;
        while (i17 < i16) {
            zzxu zzxuVar = zzxuVarArr[i17];
            if (zzxuVar != null && (length = (iArr3 = zzxuVar.zzb).length) != 0) {
                zzxvVarArr[i17] = length == 1 ? new zzxw(zzxuVar.zza, iArr3[0], 0, 0, null) : zzwpVar.zza(zzxuVar.zza, iArr3, 0, zzq, (zzfxn) zzh.get(i17));
            }
            i17++;
            i16 = 2;
        }
        zzln[] zzlnVarArr = new zzln[i16];
        for (int i18 = 0; i18 < i16; i18++) {
            zzlnVarArr[i18] = (zzxhVar.zzf(i18) || zzxhVar.zzC.contains(Integer.valueOf(zzxxVar.zzc(i18))) || (zzxxVar.zzc(i18) != -2 && zzxvVarArr[i18] == null)) ? null : zzln.zza;
        }
        return Pair.create(zzlnVarArr, zzxvVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final zzll zze() {
        return this;
    }

    public final zzxh zzf() {
        zzxh zzxhVar;
        synchronized (this.zzd) {
            zzxhVar = this.zzf;
        }
        return zzxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzj() {
        zzxl zzxlVar;
        synchronized (this.zzd) {
            if (zzei.zza >= 32 && (zzxlVar = this.zzg) != null) {
                zzxlVar.zzc();
            }
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final void zzk(zze zzeVar) {
        boolean z;
        synchronized (this.zzd) {
            z = !this.zzh.equals(zzeVar);
            this.zzh = zzeVar;
        }
        if (z) {
            zzu();
        }
    }

    public final void zzl(zzxg zzxgVar) {
        boolean z;
        zzxh zzxhVar = new zzxh(zzxgVar);
        synchronized (this.zzd) {
            z = !this.zzf.equals(zzxhVar);
            this.zzf = zzxhVar;
        }
        if (z) {
            if (zzxhVar.zzN && this.zza == null) {
                zzdo.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyb
    public final boolean zzn() {
        return true;
    }
}
