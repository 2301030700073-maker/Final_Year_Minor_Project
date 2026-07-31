package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import org.apache.commons.io.IOUtils;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzalf {
    public final String zza;
    public final String zzb;
    public final boolean zzc;
    public final long zzd;
    public final long zze;
    public final zzall zzf;
    public final String zzg;
    public final String zzh;
    public final zzalf zzi;
    private final String[] zzj;
    private final HashMap zzk;
    private final HashMap zzl;
    private List zzm;

    public static zzalf zza(String str) {
        return new zzalf(null, str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public static zzalf zzb(String str, long j, long j2, zzall zzallVar, String[] strArr, String str2, String str3, zzalf zzalfVar) {
        return new zzalf(str, null, j, j2, zzallVar, strArr, str2, str3, zzalfVar);
    }

    private final void zzi(TreeSet treeSet, boolean z) {
        String str = this.zza;
        boolean equals = "p".equals(str);
        boolean equals2 = TtmlNode.TAG_DIV.equals(str);
        if (z || equals || (equals2 && this.zzh != null)) {
            long j = this.zzd;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.zze;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.zzm != null) {
            for (int i = 0; i < this.zzm.size(); i++) {
                zzalf zzalfVar = (zzalf) this.zzm.get(i);
                boolean z2 = true;
                if (!z && !equals) {
                    z2 = false;
                }
                zzalfVar.zzi(treeSet, z2);
            }
        }
    }

    private final void zzj(long j, String str, List list) {
        String str2;
        String str3 = this.zzg;
        if (true != "".equals(str3)) {
            str = str3;
        }
        if (zzc(j) && TtmlNode.TAG_DIV.equals(this.zza) && (str2 = this.zzh) != null) {
            list.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < zzf(); i++) {
            zze(i).zzj(j, str, list);
        }
    }

    private final void zzk(long j, boolean z, String str, Map map) {
        HashMap hashMap = this.zzk;
        hashMap.clear();
        HashMap hashMap2 = this.zzl;
        hashMap2.clear();
        String str2 = this.zza;
        if (TtmlNode.TAG_METADATA.equals(str2)) {
            return;
        }
        String str3 = this.zzg;
        String str4 = true != "".equals(str3) ? str3 : str;
        if (this.zzc && z) {
            SpannableStringBuilder zzl = zzl(str4, map);
            String str5 = this.zzb;
            str5.getClass();
            zzl.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            zzl(str4, map).append('\n');
            return;
        }
        if (zzc(j)) {
            for (Map.Entry entry : map.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence zzb = ((zzcl) entry.getValue()).zzb();
                zzb.getClass();
                hashMap.put(str6, Integer.valueOf(zzb.length()));
            }
            boolean equals = "p".equals(str2);
            for (int i = 0; i < zzf(); i++) {
                zze(i).zzk(j, z || equals, str4, map);
            }
            if (equals) {
                SpannableStringBuilder zzl2 = zzl(str4, map);
                int length = zzl2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (zzl2.charAt(length) == ' ');
                if (length >= 0 && zzl2.charAt(length) != '\n') {
                    zzl2.append('\n');
                }
            }
            for (Map.Entry entry2 : map.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence zzb2 = ((zzcl) entry2.getValue()).zzb();
                zzb2.getClass();
                hashMap2.put(str7, Integer.valueOf(zzb2.length()));
            }
        }
    }

    private static SpannableStringBuilder zzl(String str, Map map) {
        if (!map.containsKey(str)) {
            zzcl zzclVar = new zzcl();
            zzclVar.zza(new SpannableStringBuilder());
            map.put(str, zzclVar);
        }
        CharSequence zzb = ((zzcl) map.get(str)).zzb();
        zzb.getClass();
        return (SpannableStringBuilder) zzb;
    }

    private final void zzm(long j, Map map, Map map2, String str, Map map3) {
        Iterator it;
        zzalf zzalfVar;
        zzall zza;
        boolean z;
        int i;
        if (zzc(j)) {
            String str2 = this.zzg;
            String str3 = true != "".equals(str2) ? str2 : str;
            Iterator it2 = this.zzl.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap hashMap = this.zzk;
                int intValue = hashMap.containsKey(str4) ? ((Integer) hashMap.get(str4)).intValue() : 0;
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (intValue != intValue2) {
                    zzcl zzclVar = (zzcl) map3.get(str4);
                    zzclVar.getClass();
                    zzalj zzaljVar = (zzalj) map2.get(str3);
                    zzaljVar.getClass();
                    int i2 = zzaljVar.zzj;
                    zzall zza2 = zzalk.zza(this.zzf, this.zzj, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzclVar.zzb();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        zzclVar.zza(spannableStringBuilder);
                    }
                    if (zza2 != null) {
                        zzalf zzalfVar2 = this.zzi;
                        if (zza2.zza() != -1) {
                            spannableStringBuilder.setSpan(new StyleSpan(zza2.zza()), intValue, intValue2, 33);
                        }
                        if (zza2.zzb()) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzd()) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzl()) {
                            zzcs.zza(spannableStringBuilder, new ForegroundColorSpan(zza2.zzj()), intValue, intValue2, 33);
                        }
                        if (zza2.zzo()) {
                            zzcs.zza(spannableStringBuilder, new BackgroundColorSpan(zza2.zzm()), intValue, intValue2, 33);
                        }
                        if (zza2.zzh() != null) {
                            zzcs.zza(spannableStringBuilder, new TypefaceSpan(zza2.zzh()), intValue, intValue2, 33);
                        }
                        if (zza2.zzE() != null) {
                            zzale zzE = zza2.zzE();
                            zzE.getClass();
                            int i3 = zzE.zza;
                            it = it2;
                            if (i3 == -1) {
                                i3 = (i2 == 2 || i2 == 1) ? 3 : 1;
                                i = 1;
                            } else {
                                i = zzE.zzb;
                            }
                            int i4 = zzE.zzc;
                            if (i4 == -2) {
                                i4 = 1;
                            }
                            zzcs.zza(spannableStringBuilder, new zzct(i3, i, i4), intValue, intValue2, 33);
                        } else {
                            it = it2;
                        }
                        int zzv = zza2.zzv();
                        if (zzv == 2) {
                            while (true) {
                                if (zzalfVar2 == null) {
                                    zzalfVar2 = null;
                                    break;
                                }
                                zzall zza3 = zzalk.zza(zzalfVar2.zzf, zzalfVar2.zzj, map);
                                if (zza3 != null && zza3.zzv() == 1) {
                                    break;
                                } else {
                                    zzalfVar2 = zzalfVar2.zzi;
                                }
                            }
                            if (zzalfVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(zzalfVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        zzalfVar = null;
                                        break;
                                    }
                                    zzalf zzalfVar3 = (zzalf) arrayDeque.pop();
                                    zzall zza4 = zzalk.zza(zzalfVar3.zzf, zzalfVar3.zzj, map);
                                    if (zza4 != null && zza4.zzv() == 3) {
                                        zzalfVar = zzalfVar3;
                                        break;
                                    }
                                    for (int zzf = zzalfVar3.zzf() - 1; zzf >= 0; zzf--) {
                                        arrayDeque.push(zzalfVar3.zze(zzf));
                                    }
                                }
                                if (zzalfVar != null) {
                                    if (zzalfVar.zzf() != 1 || zzalfVar.zze(0).zzb == null) {
                                        zzdt.zzb("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = zzalfVar.zze(0).zzb;
                                        String str6 = zzep.zza;
                                        zzall zza5 = zzalk.zza(zzalfVar.zzf, zzalfVar.zzj, map);
                                        int zzx = zza5 != null ? zza5.zzx() : -1;
                                        if (zzx == -1 && (zza = zzalk.zza(zzalfVar2.zzf, zzalfVar2.zzj, map)) != null) {
                                            zzx = zza.zzx();
                                        }
                                        spannableStringBuilder.setSpan(new zzcr(str5, zzx), intValue, intValue2, 33);
                                    }
                                }
                            }
                        } else if (zzv == 3 || zzv == 4) {
                            spannableStringBuilder.setSpan(new zzald(), intValue, intValue2, 33);
                        }
                        if (zza2.zzC()) {
                            zzcs.zza(spannableStringBuilder, new zzcq(), intValue, intValue2, 33);
                        }
                        int zzI = zza2.zzI();
                        if (zzI != 1) {
                            if (zzI == 2) {
                                zzcs.zza(spannableStringBuilder, new RelativeSizeSpan(zza2.zzJ()), intValue, intValue2, 33);
                            } else if (zzI == 3) {
                                zzcs.zzb(spannableStringBuilder, zza2.zzJ() / 100.0f, intValue, intValue2, 33);
                            }
                            z = true;
                        } else {
                            z = true;
                            zzcs.zza(spannableStringBuilder, new AbsoluteSizeSpan((int) zza2.zzJ(), true), intValue, intValue2, 33);
                        }
                        if ("p".equals(this.zza)) {
                            if (zza2.zzq() != Float.MAX_VALUE) {
                                zzclVar.zzp((zza2.zzq() * (-90.0f)) / 100.0f);
                            }
                            if (zza2.zzy() != null) {
                                zzclVar.zzd(zza2.zzy());
                            }
                            if (zza2.zzA() != null) {
                                zzclVar.zze(zza2.zzA());
                            }
                        }
                        it2 = it;
                    }
                }
            }
            for (int i5 = 0; i5 < zzf(); i5++) {
                zze(i5).zzm(j, map, map2, str3, map3);
            }
        }
    }

    public final boolean zzc(long j) {
        long j2 = this.zzd;
        if (j2 == C.TIME_UNSET) {
            if (this.zze == C.TIME_UNSET) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        if (j2 <= j && this.zze == C.TIME_UNSET) {
            return true;
        }
        if (j2 != C.TIME_UNSET || j >= this.zze) {
            return j2 <= j && j < this.zze;
        }
        return true;
    }

    public final void zzd(zzalf zzalfVar) {
        if (this.zzm == null) {
            this.zzm = new ArrayList();
        }
        this.zzm.add(zzalfVar);
    }

    public final zzalf zze(int i) {
        List list = this.zzm;
        if (list != null) {
            return (zzalf) list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int zzf() {
        List list = this.zzm;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final long[] zzg() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        zzi(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public final List zzh(long j, Map map, Map map2, Map map3) {
        List arrayList = new ArrayList();
        String str = this.zzg;
        zzj(j, str, arrayList);
        TreeMap treeMap = new TreeMap();
        zzk(j, false, str, treeMap);
        zzm(j, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str2 = (String) map3.get(pair.second);
            if (str2 != null) {
                byte[] decode = Base64.decode(str2, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzalj zzaljVar = (zzalj) map2.get(pair.first);
                zzaljVar.getClass();
                zzcl zzclVar = new zzcl();
                zzclVar.zzc(decodeByteArray);
                zzclVar.zzi(zzaljVar.zzb);
                zzclVar.zzj(0);
                zzclVar.zzf(zzaljVar.zzc, 0);
                zzclVar.zzg(zzaljVar.zze);
                zzclVar.zzm(zzaljVar.zzf);
                zzclVar.zzn(zzaljVar.zzg);
                zzclVar.zzo(zzaljVar.zzj);
                arrayList2.add(zzclVar.zzr());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzalj zzaljVar2 = (zzalj) map2.get(entry.getKey());
            zzaljVar2.getClass();
            zzcl zzclVar2 = (zzcl) entry.getValue();
            CharSequence zzb = zzclVar2.zzb();
            zzb.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzb;
            for (zzald zzaldVar : (zzald[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzald.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzaldVar), spannableStringBuilder.getSpanEnd(zzaldVar), (CharSequence) "");
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzclVar2.zzf(zzaljVar2.zzc, zzaljVar2.zzd);
            zzclVar2.zzg(zzaljVar2.zze);
            zzclVar2.zzi(zzaljVar2.zzb);
            zzclVar2.zzm(zzaljVar2.zzf);
            zzclVar2.zzl(zzaljVar2.zzi, zzaljVar2.zzh);
            zzclVar2.zzo(zzaljVar2.zzj);
            arrayList2.add(zzclVar2.zzr());
        }
        return arrayList2;
    }

    private zzalf(String str, String str2, long j, long j2, zzall zzallVar, String[] strArr, String str3, String str4, zzalf zzalfVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzh = str4;
        this.zzf = zzallVar;
        this.zzj = strArr;
        this.zzc = str2 != null;
        this.zzd = j;
        this.zze = j2;
        str3.getClass();
        this.zzg = str3;
        this.zzi = zzalfVar;
        this.zzk = new HashMap();
        this.zzl = new HashMap();
    }
}
