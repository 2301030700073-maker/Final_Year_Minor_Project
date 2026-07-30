package androidx.datastore.preferences.protobuf;

import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import defpackage.BB;
import java.nio.charset.Charset;

/* renamed from: androidx.datastore.preferences.protobuf.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3666s8 f6583do;

    public Celse(AbstractC3666s8 abstractC3666s8) {
        Charset charset = Cthrow.f6655do;
        if (abstractC3666s8 == null) {
            throw new NullPointerException("output");
        }
        this.f6583do = abstractC3666s8;
        abstractC3666s8.f15401do = this;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m3847break(int i, long j) {
        this.f6583do.u(i, j);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3848case(int i, long j) {
        this.f6583do.h(i, j);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m3849catch(int i, BB bb, Object obj) {
        this.f6583do.l(i, (Cfinally) obj, bb);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m3850class(int i, Object obj) {
        boolean z = obj instanceof AbstractC3370n6;
        AbstractC3666s8 abstractC3666s8 = this.f6583do;
        if (z) {
            abstractC3666s8.o(i, (AbstractC3370n6) obj);
        } else {
            abstractC3666s8.n(i, (Cfinally) obj);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m3851const(int i, int i2) {
        this.f6583do.f(i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3852do(int i, boolean z) {
        this.f6583do.b(i, z);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3853else(float f, int i) {
        AbstractC3666s8 abstractC3666s8 = this.f6583do;
        abstractC3666s8.getClass();
        abstractC3666s8.f(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: final, reason: not valid java name */
    public final void m3854final(int i, long j) {
        this.f6583do.h(i, j);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3855for(int i, double d) {
        AbstractC3666s8 abstractC3666s8 = this.f6583do;
        abstractC3666s8.getClass();
        abstractC3666s8.h(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3856goto(int i, BB bb, Object obj) {
        AbstractC3666s8 abstractC3666s8 = this.f6583do;
        abstractC3666s8.r(i, 3);
        bb.mo154this((Cfinally) obj, abstractC3666s8.f15401do);
        abstractC3666s8.r(i, 4);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3857if(int i, AbstractC3370n6 abstractC3370n6) {
        this.f6583do.d(i, abstractC3370n6);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3858import(int i, long j) {
        this.f6583do.u(i, j);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3859new(int i, int i2) {
        this.f6583do.j(i, i2);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m3860super(int i, int i2) {
        this.f6583do.s(i, (i2 >> 31) ^ (i2 << 1));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3861this(int i, int i2) {
        this.f6583do.j(i, i2);
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3862throw(int i, long j) {
        this.f6583do.u(i, (j >> 63) ^ (j << 1));
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3863try(int i, int i2) {
        this.f6583do.f(i, i2);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m3864while(int i, int i2) {
        this.f6583do.s(i, i2);
    }
}
