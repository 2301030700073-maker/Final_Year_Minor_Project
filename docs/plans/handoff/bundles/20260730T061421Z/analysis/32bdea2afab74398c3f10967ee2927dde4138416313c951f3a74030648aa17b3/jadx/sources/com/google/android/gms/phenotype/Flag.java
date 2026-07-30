package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import c.b.a.c.b.a;
import c.b.a.c.h.g;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Flag extends zzbkv implements Comparable {
    public static final Parcelable.Creator CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public final String f3479a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3480b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3481c;

    /* renamed from: d, reason: collision with root package name */
    public final double f3482d;
    public final String e;
    public final byte[] f;
    public final int g;
    public final int h;

    public Flag(String str, long j, boolean z, double d2, String str2, byte[] bArr, int i, int i2) {
        this.f3479a = str;
        this.f3480b = j;
        this.f3481c = z;
        this.f3482d = d2;
        this.e = str2;
        this.f = bArr;
        this.g = i;
        this.h = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
    
        if (r7 == r8) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00aa, code lost:
    
        if (r7 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b6, code lost:
    
        if (r5 == r7) goto L41;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.phenotype.Flag.compareTo(java.lang.Object):int");
    }

    public boolean equals(Object obj) {
        int i;
        if (obj instanceof Flag) {
            Flag flag = (Flag) obj;
            if (a.t0(this.f3479a, flag.f3479a) && (i = this.g) == flag.g && this.h == flag.h) {
                if (i != 1) {
                    if (i == 2) {
                        return this.f3481c == flag.f3481c;
                    }
                    if (i == 3) {
                        return this.f3482d == flag.f3482d;
                    }
                    if (i == 4) {
                        return a.t0(this.e, flag.e);
                    }
                    if (i == 5) {
                        return Arrays.equals(this.f, flag.f);
                    }
                    int i2 = this.g;
                    StringBuilder sb = new StringBuilder(31);
                    sb.append("Invalid enum value: ");
                    sb.append(i2);
                    throw new AssertionError(sb.toString());
                }
                if (this.f3480b == flag.f3480b) {
                    return true;
                }
            }
        }
        return false;
    }

    public String h(StringBuilder sb) {
        sb.append("Flag(");
        sb.append(this.f3479a);
        sb.append(", ");
        int i = this.g;
        if (i == 1) {
            sb.append(this.f3480b);
        } else if (i == 2) {
            sb.append(this.f3481c);
        } else if (i == 3) {
            sb.append(this.f3482d);
        } else if (i == 4) {
            sb.append("'");
            sb.append(this.e);
            sb.append("'");
        } else {
            if (i != 5) {
                String str = this.f3479a;
                int i2 = this.g;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str);
                sb2.append(", ");
                sb2.append(i2);
                throw new AssertionError(sb2.toString());
            }
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append("'");
                sb.append(Base64.encodeToString(this.f, 3));
                sb.append("'");
            }
        }
        sb.append(", ");
        sb.append(this.g);
        sb.append(", ");
        sb.append(this.h);
        sb.append(")");
        return sb.toString();
    }

    public String toString() {
        return h(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.c0(parcel, 2, this.f3479a, false);
        a.Y(parcel, 3, this.f3480b);
        a.d0(parcel, 4, this.f3481c);
        double d2 = this.f3482d;
        a.B0(parcel, 5, 8);
        parcel.writeDouble(d2);
        a.c0(parcel, 6, this.e, false);
        a.e0(parcel, 7, this.f, false);
        a.s0(parcel, 8, this.g);
        a.s0(parcel, 9, this.h);
        a.H0(parcel, q0);
    }
}
