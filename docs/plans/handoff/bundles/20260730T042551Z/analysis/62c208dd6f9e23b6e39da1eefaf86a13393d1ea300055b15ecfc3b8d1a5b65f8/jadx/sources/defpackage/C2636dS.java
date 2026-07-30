package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbe;
import com.google.android.gms.measurement.internal.zzbf;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: dS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2636dS {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0174Dp f12487do;

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReference<String[]> f12484do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    public static final AtomicReference<String[]> f12486if = new AtomicReference<>();

    /* renamed from: for, reason: not valid java name */
    public static final AtomicReference<String[]> f12485for = new AtomicReference<>();

    public C2636dS(C0174Dp c0174Dp) {
        this.f12487do = c0174Dp;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6448new(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (Objects.equals(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    /* renamed from: case, reason: not valid java name */
    public final String m6449case(String str) {
        if (str == null) {
            return null;
        }
        return !this.f12487do.m404for() ? str : m6448new(str, C0315Kc.f1838if, C0315Kc.f1831do, f12486if);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m6450do(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f12487do.m404for()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m6449case(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? m6454try(new Object[]{obj}) : obj instanceof Object[] ? m6454try((Object[]) obj) : obj instanceof ArrayList ? m6454try(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public final String m6451else(String str) {
        if (str == null) {
            return null;
        }
        return !this.f12487do.m404for() ? str : str.startsWith("_exp_") ? Cif.m6908case("experiment_id(", str, ")") : m6448new(str, C3645ro.f15323for, C3645ro.f15326if, f12485for);
    }

    /* renamed from: for, reason: not valid java name */
    public final String m6452for(String str) {
        if (str == null) {
            return null;
        }
        return !this.f12487do.m404for() ? str : m6448new(str, O4.f2547for, O4.f2538do, f12484do);
    }

    /* renamed from: if, reason: not valid java name */
    public final String m6453if(zzbf zzbfVar) {
        C0174Dp c0174Dp = this.f12487do;
        if (!c0174Dp.m404for()) {
            return zzbfVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(zzbfVar.f10314catch);
        sb.append(",name=");
        sb.append(m6452for(zzbfVar.f10313break));
        sb.append(",params=");
        zzbe zzbeVar = zzbfVar.f10316do;
        sb.append(zzbeVar == null ? null : !c0174Dp.m404for() ? zzbeVar.toString() : m6450do(zzbeVar.j()));
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final String m6454try(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String m6450do = obj instanceof Bundle ? m6450do((Bundle) obj) : String.valueOf(obj);
            if (m6450do != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(m6450do);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
