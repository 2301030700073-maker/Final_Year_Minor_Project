package defpackage;

import java.io.Serializable;

/* renamed from: z6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC4077z6 implements InterfaceC3764tp, Serializable {

    /* renamed from: break, reason: not valid java name */
    public final String f16864break;

    /* renamed from: catch, reason: not valid java name */
    public final String f16865catch;

    /* renamed from: do, reason: not valid java name */
    public final Class f16866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16867do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient InterfaceC3764tp f16868do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16869do;

    /* renamed from: z6$do, reason: invalid class name */
    public static class Cdo implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f16870do = new Cdo();

        private Object readResolve() {
            return f16870do;
        }
    }

    public AbstractC4077z6(Object obj, Class cls, String str, String str2, boolean z) {
        this.f16867do = obj;
        this.f16866do = cls;
        this.f16864break = str;
        this.f16865catch = str2;
        this.f16869do = z;
    }

    /* renamed from: do */
    public abstract InterfaceC3764tp mo288do();

    /* renamed from: if, reason: not valid java name */
    public final Q7 m8786if() {
        Class cls = this.f16866do;
        if (cls == null) {
            return null;
        }
        if (!this.f16869do) {
            return C2782fz.m6697do(cls);
        }
        C2782fz.f13022do.getClass();
        return new C3477ow(cls);
    }
}
