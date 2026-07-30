package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import c.b.a.c.b.a;
import c.b.a.c.h.f;
import com.google.android.gms.internal.zzbkv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ExperimentTokens extends zzbkv {
    public static final Parcelable.Creator CREATOR = new f();
    public static final byte[][] i = new byte[0][];

    /* renamed from: a, reason: collision with root package name */
    public final String f3475a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3476b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[][] f3477c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[][] f3478d;
    public final byte[][] e;
    public final byte[][] f;
    public final int[] g;
    public final byte[][] h;

    public ExperimentTokens(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.f3475a = str;
        this.f3476b = bArr;
        this.f3477c = bArr2;
        this.f3478d = bArr3;
        this.e = bArr4;
        this.f = bArr5;
        this.g = iArr;
        this.h = bArr6;
    }

    public static List h(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void i(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
            return;
        }
        sb.append("(");
        int length = bArr.length;
        boolean z = true;
        int i2 = 0;
        while (i2 < length) {
            byte[] bArr2 = bArr[i2];
            if (!z) {
                sb.append(", ");
            }
            sb.append("'");
            sb.append(Base64.encodeToString(bArr2, 3));
            sb.append("'");
            i2++;
            z = false;
        }
        sb.append(")");
    }

    public static List j(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ExperimentTokens) {
            ExperimentTokens experimentTokens = (ExperimentTokens) obj;
            if (a.t0(this.f3475a, experimentTokens.f3475a) && Arrays.equals(this.f3476b, experimentTokens.f3476b) && a.t0(j(this.f3477c), j(experimentTokens.f3477c)) && a.t0(j(this.f3478d), j(experimentTokens.f3478d)) && a.t0(j(this.e), j(experimentTokens.e)) && a.t0(j(this.f), j(experimentTokens.f)) && a.t0(h(this.g), h(experimentTokens.g)) && a.t0(j(this.h), j(experimentTokens.h))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder("ExperimentTokens");
        sb2.append("(");
        String str = this.f3475a;
        if (str == null) {
            sb = "null";
        } else {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2);
            sb3.append("'");
            sb3.append(str);
            sb3.append("'");
            sb = sb3.toString();
        }
        sb2.append(sb);
        sb2.append(", ");
        byte[] bArr = this.f3476b;
        sb2.append("direct");
        sb2.append("=");
        if (bArr == null) {
            sb2.append("null");
        } else {
            sb2.append("'");
            sb2.append(Base64.encodeToString(bArr, 3));
            sb2.append("'");
        }
        sb2.append(", ");
        i(sb2, "GAIA", this.f3477c);
        sb2.append(", ");
        i(sb2, "PSEUDO", this.f3478d);
        sb2.append(", ");
        i(sb2, "ALWAYS", this.e);
        sb2.append(", ");
        i(sb2, "OTHER", this.f);
        sb2.append(", ");
        int[] iArr = this.g;
        sb2.append("weak");
        sb2.append("=");
        if (iArr == null) {
            sb2.append("null");
        } else {
            sb2.append("(");
            int length = iArr.length;
            boolean z = true;
            int i2 = 0;
            while (i2 < length) {
                int i3 = iArr[i2];
                if (!z) {
                    sb2.append(", ");
                }
                sb2.append(i3);
                i2++;
                z = false;
            }
            sb2.append(")");
        }
        sb2.append(", ");
        i(sb2, "directs", this.h);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 2, this.f3475a, false);
        a.e0(parcel, 3, this.f3476b, false);
        a.i0(parcel, 4, this.f3477c);
        a.i0(parcel, 5, this.f3478d);
        a.i0(parcel, 6, this.e);
        a.i0(parcel, 7, this.f);
        a.f0(parcel, 8, this.g, false);
        a.i0(parcel, 9, this.h);
        a.H0(parcel, q0);
    }
}
