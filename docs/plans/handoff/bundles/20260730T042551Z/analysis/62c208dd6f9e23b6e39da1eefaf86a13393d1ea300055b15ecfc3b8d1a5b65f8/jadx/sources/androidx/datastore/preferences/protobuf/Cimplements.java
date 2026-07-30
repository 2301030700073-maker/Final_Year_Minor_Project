package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cwhile;
import defpackage.AbstractC3370n6;

/* renamed from: androidx.datastore.preferences.protobuf.implements, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cimplements<T, B> {
    /* renamed from: break, reason: not valid java name */
    public abstract void mo3884break(Object obj);

    /* renamed from: case, reason: not valid java name */
    public abstract Cinstanceof mo3885case(Object obj);

    /* renamed from: catch, reason: not valid java name */
    public abstract Cinstanceof mo3886catch(Object obj, Object obj2);

    /* renamed from: class, reason: not valid java name */
    public final boolean m3887class(B b, Cvolatile cvolatile) {
        int mo3799static = cvolatile.mo3799static();
        int i = mo3799static >>> 3;
        int i2 = mo3799static & 7;
        if (i2 == 0) {
            mo3901try(b, i, cvolatile.mo3796protected());
            return true;
        }
        if (i2 == 1) {
            mo3894if(b, i, cvolatile.mo3787if());
            return true;
        }
        if (i2 == 2) {
            mo3897new(b, i, cvolatile.mo3792native());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                mo3889do(i, cvolatile.mo3776class(), b);
                return true;
            }
            int i3 = Cwhile.f6695for;
            throw new Cwhile.Cdo();
        }
        Cinstanceof mo3888const = mo3888const();
        int i4 = (i << 3) | 4;
        while (cvolatile.mo3782extends() != Integer.MAX_VALUE && m3887class(mo3888const, cvolatile)) {
        }
        if (i4 != cvolatile.mo3799static()) {
            throw new Cwhile("Protocol message end-group tag did not match expected tag.");
        }
        mo3892for(i, b, mo3902while(mo3888const));
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public abstract Cinstanceof mo3888const();

    /* renamed from: do, reason: not valid java name */
    public abstract void mo3889do(int i, int i2, Object obj);

    /* renamed from: else, reason: not valid java name */
    public abstract Cinstanceof mo3890else(Object obj);

    /* renamed from: final, reason: not valid java name */
    public abstract void mo3891final(Object obj, B b);

    /* renamed from: for, reason: not valid java name */
    public abstract void mo3892for(int i, Object obj, Object obj2);

    /* renamed from: goto, reason: not valid java name */
    public abstract int mo3893goto(T t);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo3894if(B b, int i, long j);

    /* renamed from: import, reason: not valid java name */
    public abstract void mo3895import(Object obj, Celse celse);

    /* renamed from: native, reason: not valid java name */
    public abstract void mo3896native(Object obj, Celse celse);

    /* renamed from: new, reason: not valid java name */
    public abstract void mo3897new(B b, int i, AbstractC3370n6 abstractC3370n6);

    /* renamed from: super, reason: not valid java name */
    public abstract void mo3898super(Object obj, T t);

    /* renamed from: this, reason: not valid java name */
    public abstract int mo3899this(T t);

    /* renamed from: throw, reason: not valid java name */
    public abstract void mo3900throw();

    /* renamed from: try, reason: not valid java name */
    public abstract void mo3901try(B b, int i, long j);

    /* renamed from: while, reason: not valid java name */
    public abstract Cinstanceof mo3902while(Object obj);
}
