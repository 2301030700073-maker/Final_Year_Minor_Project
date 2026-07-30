package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.c.c;
import c.b.a.c.c.i;
import c.b.a.c.f.L;
import com.google.android.gms.clearcut.internal.PlayLoggerContext;
import com.google.android.gms.internal.zzbkv;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LogEventParcelable extends zzbkv {
    public static final Parcelable.Creator CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    public PlayLoggerContext f3352a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f3353b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f3354c;

    /* renamed from: d, reason: collision with root package name */
    public String[] f3355d;
    public int[] e;
    public byte[][] f;
    public ExperimentTokens[] g;
    public boolean h;
    public final L i;
    public final c j;
    public final c k;

    public LogEventParcelable(PlayLoggerContext playLoggerContext, L l, c cVar, c cVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.f3352a = playLoggerContext;
        this.i = l;
        this.j = cVar;
        this.k = null;
        this.f3354c = iArr;
        this.f3355d = null;
        this.e = iArr2;
        this.f = null;
        this.g = null;
        this.h = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LogEventParcelable) {
            LogEventParcelable logEventParcelable = (LogEventParcelable) obj;
            if (a.p0(this.f3352a, logEventParcelable.f3352a) && Arrays.equals(this.f3353b, logEventParcelable.f3353b) && Arrays.equals(this.f3354c, logEventParcelable.f3354c) && Arrays.equals(this.f3355d, logEventParcelable.f3355d) && a.p0(this.i, logEventParcelable.i) && a.p0(this.j, logEventParcelable.j) && a.p0(this.k, logEventParcelable.k) && Arrays.equals(this.e, logEventParcelable.e) && Arrays.deepEquals(this.f, logEventParcelable.f) && Arrays.equals(this.g, logEventParcelable.g) && this.h == logEventParcelable.h) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3352a, this.f3353b, this.f3354c, this.f3355d, this.i, this.j, this.k, this.e, this.f, this.g, Boolean.valueOf(this.h)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f3352a);
        sb.append(", LogEventBytes: ");
        sb.append(this.f3353b == null ? null : new String(this.f3353b));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f3354c));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f3355d));
        sb.append(", LogEvent: ");
        sb.append(this.i);
        sb.append(", ExtensionProducer: ");
        sb.append(this.j);
        sb.append(", VeProducer: ");
        sb.append(this.k);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.e));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.f));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.g));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.h);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.b0(parcel, 2, this.f3352a, i, false);
        a.e0(parcel, 3, this.f3353b, false);
        a.f0(parcel, 4, this.f3354c, false);
        a.h0(parcel, 5, this.f3355d, false);
        a.f0(parcel, 6, this.e, false);
        a.i0(parcel, 7, this.f);
        a.d0(parcel, 8, this.h);
        a.g0(parcel, 9, this.g, i);
        a.H0(parcel, q0);
    }

    public LogEventParcelable(PlayLoggerContext playLoggerContext, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokens[] experimentTokensArr) {
        this.f3352a = playLoggerContext;
        this.f3353b = bArr;
        this.f3354c = iArr;
        this.f3355d = strArr;
        this.i = null;
        this.j = null;
        this.k = null;
        this.e = iArr2;
        this.f = bArr2;
        this.g = experimentTokensArr;
        this.h = z;
    }
}
