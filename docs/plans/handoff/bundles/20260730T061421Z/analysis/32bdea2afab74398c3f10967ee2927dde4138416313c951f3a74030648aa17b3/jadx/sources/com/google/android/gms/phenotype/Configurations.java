package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import c.b.a.c.b.a;
import c.b.a.c.h.d;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class Configurations extends zzbkv {
    public static final Parcelable.Creator CREATOR = new d();

    /* renamed from: a, reason: collision with root package name */
    public final String f3470a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3471b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3472c;

    /* renamed from: d, reason: collision with root package name */
    public final Configuration[] f3473d;
    public final Map e = new TreeMap();
    public final boolean f;
    public final long g;

    public Configurations(String str, String str2, Configuration[] configurationArr, boolean z, byte[] bArr, long j) {
        this.f3470a = str;
        this.f3472c = str2;
        this.f3473d = configurationArr;
        this.f = z;
        this.f3471b = bArr;
        this.g = j;
        for (Configuration configuration : configurationArr) {
            this.e.put(Integer.valueOf(configuration.f3466a), configuration);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof Configurations) {
            Configurations configurations = (Configurations) obj;
            if (a.t0(this.f3470a, configurations.f3470a) && a.t0(this.f3472c, configurations.f3472c) && this.e.equals(configurations.e) && this.f == configurations.f && Arrays.equals(this.f3471b, configurations.f3471b) && this.g == configurations.g) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3470a, this.f3472c, this.e, Boolean.valueOf(this.f), this.f3471b, Long.valueOf(this.g)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        sb.append(this.f3470a);
        sb.append('\'');
        sb.append(", ");
        sb.append('\'');
        sb.append(this.f3472c);
        sb.append('\'');
        sb.append(", ");
        sb.append('(');
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            sb.append((Configuration) it.next());
            sb.append(", ");
        }
        sb.append(')');
        sb.append(", ");
        sb.append(this.f);
        sb.append(", ");
        byte[] bArr = this.f3471b;
        sb.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        sb.append(", ");
        sb.append(this.g);
        sb.append(')');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 2, this.f3470a, false);
        a.c0(parcel, 3, this.f3472c, false);
        a.g0(parcel, 4, this.f3473d, i);
        a.d0(parcel, 5, this.f);
        a.e0(parcel, 6, this.f3471b, false);
        a.Y(parcel, 7, this.g);
        a.H0(parcel, q0);
    }
}
