package com.google.protobuf;

import defpackage.AB;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import java.nio.charset.Charset;

/* renamed from: com.google.protobuf.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3725t8 f12132do;

    public Ctry(AbstractC3725t8 abstractC3725t8) {
        Charset charset = Ccatch.f12045do;
        if (abstractC3725t8 == null) {
            throw new NullPointerException("output");
        }
        this.f12132do = abstractC3725t8;
        abstractC3725t8.f15625do = this;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m6329break(int i, long j) {
        this.f12132do.t(i, j);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6330case(int i, long j) {
        this.f12132do.g(i, j);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m6331catch(int i, AB ab, Object obj) {
        this.f12132do.k(i, (Cstatic) obj, ab);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m6332class(int i, Object obj) {
        boolean z = obj instanceof AbstractC3429o6;
        AbstractC3725t8 abstractC3725t8 = this.f12132do;
        if (z) {
            abstractC3725t8.n(i, (AbstractC3429o6) obj);
        } else {
            abstractC3725t8.m(i, (Cstatic) obj);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6333const(int i, int i2) {
        this.f12132do.e(i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6334do(int i, boolean z) {
        this.f12132do.a(i, z);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6335else(float f, int i) {
        AbstractC3725t8 abstractC3725t8 = this.f12132do;
        abstractC3725t8.getClass();
        abstractC3725t8.e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: final, reason: not valid java name */
    public final void m6336final(int i, long j) {
        this.f12132do.g(i, j);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6337for(int i, double d) {
        AbstractC3725t8 abstractC3725t8 = this.f12132do;
        abstractC3725t8.getClass();
        abstractC3725t8.g(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m6338goto(int i, AB ab, Object obj) {
        AbstractC3725t8 abstractC3725t8 = this.f12132do;
        abstractC3725t8.q(i, 3);
        ab.mo51goto((Cstatic) obj, abstractC3725t8.f15625do);
        abstractC3725t8.q(i, 4);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6339if(int i, AbstractC3429o6 abstractC3429o6) {
        this.f12132do.c(i, abstractC3429o6);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m6340import(int i, long j) {
        this.f12132do.t(i, j);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6341new(int i, int i2) {
        this.f12132do.i(i, i2);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m6342super(int i, int i2) {
        this.f12132do.r(i, (i2 >> 31) ^ (i2 << 1));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m6343this(int i, int i2) {
        this.f12132do.i(i, i2);
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m6344throw(int i, long j) {
        this.f12132do.t(i, (j >> 63) ^ (j << 1));
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6345try(int i, int i2) {
        this.f12132do.e(i, i2);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m6346while(int i, int i2) {
        this.f12132do.r(i, i2);
    }
}
