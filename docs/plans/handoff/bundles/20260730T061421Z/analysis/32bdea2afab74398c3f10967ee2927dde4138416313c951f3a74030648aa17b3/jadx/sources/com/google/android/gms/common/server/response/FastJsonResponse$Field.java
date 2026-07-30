package com.google.android.gms.common.server.response;

import android.os.Parcel;
import c.b.a.c.d.j.q;
import c.b.a.c.d.k.a.a;
import c.b.a.c.d.k.a.c;
import com.google.android.gms.internal.zzbkv;
import com.google.android.gms.internal.zzbly;
import com.google.android.gms.internal.zzbma;

/* loaded from: classes.dex */
public class FastJsonResponse$Field extends zzbkv {
    public static final c CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f3422a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3423b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3424c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3425d;
    public final boolean e;
    public final String f;
    public final int g;
    public final Class h;
    public final String i;
    public FieldMappingDictionary j;
    public a k;

    public FastJsonResponse$Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zzbly zzblyVar) {
        this.f3422a = i;
        this.f3423b = i2;
        this.f3424c = z;
        this.f3425d = i3;
        this.e = z2;
        this.f = str;
        this.g = i4;
        if (str2 == null) {
            this.h = null;
            this.i = null;
        } else {
            this.h = zzl.class;
            this.i = str2;
        }
        if (zzblyVar == null) {
            this.k = null;
            return;
        }
        zzbma zzbmaVar = zzblyVar.f3447b;
        if (zzbmaVar == null) {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
        this.k = zzbmaVar;
    }

    public String toString() {
        q Q = c.b.a.c.b.a.Q(this);
        Q.a("versionCode", Integer.valueOf(this.f3422a));
        Q.a("typeIn", Integer.valueOf(this.f3423b));
        Q.a("typeInArray", Boolean.valueOf(this.f3424c));
        Q.a("typeOut", Integer.valueOf(this.f3425d));
        Q.a("typeOutArray", Boolean.valueOf(this.e));
        Q.a("outputFieldName", this.f);
        Q.a("safeParcelFieldId", Integer.valueOf(this.g));
        String str = this.i;
        if (str == null) {
            str = null;
        }
        Q.a("concreteTypeName", str);
        Class cls = this.h;
        if (cls != null) {
            Q.a("concreteType.class", cls.getCanonicalName());
        }
        a aVar = this.k;
        if (aVar != null) {
            Q.a("converterName", aVar.getClass().getCanonicalName());
        }
        return Q.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = c.b.a.c.b.a.q0(parcel);
        c.b.a.c.b.a.s0(parcel, 1, this.f3422a);
        c.b.a.c.b.a.s0(parcel, 2, this.f3423b);
        c.b.a.c.b.a.d0(parcel, 3, this.f3424c);
        c.b.a.c.b.a.s0(parcel, 4, this.f3425d);
        c.b.a.c.b.a.d0(parcel, 5, this.e);
        c.b.a.c.b.a.c0(parcel, 6, this.f, false);
        c.b.a.c.b.a.s0(parcel, 7, this.g);
        String str = this.i;
        zzbly zzblyVar = null;
        if (str == null) {
            str = null;
        }
        c.b.a.c.b.a.c0(parcel, 8, str, false);
        a aVar = this.k;
        if (aVar != null) {
            if (!(aVar instanceof zzbma)) {
                throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
            }
            zzblyVar = new zzbly((zzbma) aVar);
        }
        c.b.a.c.b.a.b0(parcel, 9, zzblyVar, i, false);
        c.b.a.c.b.a.H0(parcel, q0);
    }
}
