package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes3.dex */
public abstract class NO {

    /* renamed from: do, reason: not valid java name */
    public Boolean f2368do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Long f2369do;

    /* renamed from: if, reason: not valid java name */
    public Boolean f2370if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Long f2371if;

    public NO(String str, int i) {
    }

    /* renamed from: for, reason: not valid java name */
    public static Boolean m1523for(String str, zzfo.zzf zzfVar, C3156jS c3156jS) {
        List<String> zzf;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zzj() || zzfVar.zzb() == zzfo.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        zzfo.zzf.zzb zzb = zzfVar.zzb();
        zzfo.zzf.zzb zzbVar = zzfo.zzf.zzb.IN_LIST;
        if (zzb == zzbVar) {
            if (zzfVar.zza() == 0) {
                return null;
            }
        } else if (!zzfVar.zzi()) {
            return null;
        }
        zzfo.zzf.zzb zzb2 = zzfVar.zzb();
        boolean zzg = zzfVar.zzg();
        String zze = (zzg || zzb2 == zzfo.zzf.zzb.REGEXP || zzb2 == zzbVar) ? zzfVar.zze() : zzfVar.zze().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zza() == 0) {
            zzf = null;
        } else {
            zzf = zzfVar.zzf();
            if (!zzg) {
                ArrayList arrayList = new ArrayList(zzf.size());
                Iterator<String> it = zzf.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                zzf = DesugarCollections.unmodifiableList(arrayList);
            }
        }
        zzfo.zzf.zzb zzbVar2 = zzfo.zzf.zzb.REGEXP;
        String str2 = zzb2 == zzbVar2 ? zze : null;
        if (zzb2 == zzfo.zzf.zzb.IN_LIST) {
            if (zzf == null || zzf.isEmpty()) {
                return null;
            }
        } else if (zze == null) {
            return null;
        }
        if (!zzg && zzb2 != zzbVar2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (WV.f4387do[zzb2.ordinal()]) {
            case 1:
                if (str2 != null) {
                    try {
                        break;
                    } catch (PatternSyntaxException unused) {
                        c3156jS.f13722new.m7368for("Invalid regular expression in REGEXP audience filter. expression", str2);
                        return null;
                    }
                }
                break;
            case 6:
                if (zzf != null) {
                    break;
                }
                break;
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public static Boolean m1524if(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0080, code lost:
    
        if (r3 != null) goto L36;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m1525new(java.math.BigDecimal r8, com.google.android.gms.internal.measurement.zzfo.zzd r9, double r10) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.NO.m1525new(java.math.BigDecimal, com.google.android.gms.internal.measurement.zzfo$zzd, double):java.lang.Boolean");
    }

    /* renamed from: case, reason: not valid java name */
    public abstract boolean mo1526case();

    /* renamed from: do, reason: not valid java name */
    public abstract int mo1527do();

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo1528try();
}
