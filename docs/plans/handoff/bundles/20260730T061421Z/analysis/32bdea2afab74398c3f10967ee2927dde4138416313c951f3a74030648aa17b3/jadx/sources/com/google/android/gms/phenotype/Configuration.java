package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.h.c;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class Configuration extends zzbkv implements Comparable {
    public static final Parcelable.Creator CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f3466a;

    /* renamed from: b, reason: collision with root package name */
    public final Flag[] f3467b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f3468c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f3469d = new TreeMap();

    public Configuration(int i, Flag[] flagArr, String[] strArr) {
        this.f3466a = i;
        this.f3467b = flagArr;
        for (Flag flag : flagArr) {
            this.f3469d.put(flag.f3479a, flag);
        }
        this.f3468c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f3466a - ((Configuration) obj).f3466a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Configuration) {
            Configuration configuration = (Configuration) obj;
            if (this.f3466a == configuration.f3466a && a.t0(this.f3469d, configuration.f3469d) && Arrays.equals(this.f3468c, configuration.f3468c)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f3466a);
        sb.append(", ");
        sb.append("(");
        Iterator it = this.f3469d.values().iterator();
        while (it.hasNext()) {
            sb.append((Flag) it.next());
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        String[] strArr = this.f3468c;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 2, this.f3466a);
        a.g0(parcel, 3, this.f3467b, i);
        a.h0(parcel, 4, this.f3468c, false);
        a.H0(parcel, q0);
    }
}
