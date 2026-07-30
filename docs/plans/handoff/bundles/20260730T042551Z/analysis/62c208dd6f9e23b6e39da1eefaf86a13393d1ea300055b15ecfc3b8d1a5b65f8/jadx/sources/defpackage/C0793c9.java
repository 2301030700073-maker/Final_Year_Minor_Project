package defpackage;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: c9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0793c9<T> {

    /* renamed from: do, reason: not valid java name */
    public final int f8498do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8499do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<Dy<? super T>> f8500do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3314m9<T> f8501do;

    /* renamed from: for, reason: not valid java name */
    public final Set<Class<?>> f8502for;

    /* renamed from: if, reason: not valid java name */
    public final int f8503if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Set<C0513Td> f8504if;

    public C0793c9(String str, Set<Dy<? super T>> set, Set<C0513Td> set2, int i, int i2, InterfaceC3314m9<T> interfaceC3314m9, Set<Class<?>> set3) {
        this.f8499do = str;
        this.f8500do = DesugarCollections.unmodifiableSet(set);
        this.f8504if = DesugarCollections.unmodifiableSet(set2);
        this.f8498do = i;
        this.f8503if = i2;
        this.f8501do = interfaceC3314m9;
        this.f8502for = DesugarCollections.unmodifiableSet(set3);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Cdo<T> m4888do(Dy<T> dy) {
        return new Cdo<>(dy, new Dy[0]);
    }

    @SafeVarargs
    /* renamed from: for, reason: not valid java name */
    public static <T> C0793c9<T> m4889for(final T t, Class<T> cls, Class<? super T>... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(Dy.m416do(cls));
        for (Class<? super T> cls2 : clsArr) {
            if (cls2 == null) {
                throw new NullPointerException("Null interface");
            }
            hashSet.add(Dy.m416do(cls2));
        }
        return new C0793c9<>(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new InterfaceC3314m9() { // from class: b9
            @Override // defpackage.InterfaceC3314m9
            /* renamed from: try */
            public final Object mo1186try(Xz xz) {
                return t;
            }
        }, hashSet3);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Cdo<T> m4890if(Class<T> cls) {
        return new Cdo<>(cls, new Class[0]);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f8500do.toArray()) + ">{" + this.f8498do + ", type=" + this.f8503if + ", deps=" + Arrays.toString(this.f8504if.toArray()) + "}";
    }

    /* renamed from: c9$do, reason: invalid class name */
    public static class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public int f8505do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f8506do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashSet f8507do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC3314m9<T> f8508do;

        /* renamed from: for, reason: not valid java name */
        public final HashSet f8509for;

        /* renamed from: if, reason: not valid java name */
        public int f8510if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final HashSet f8511if;

        public Cdo(Class cls, Class[] clsArr) {
            HashSet hashSet = new HashSet();
            this.f8507do = hashSet;
            this.f8511if = new HashSet();
            this.f8505do = 0;
            this.f8510if = 0;
            this.f8509for = new HashSet();
            hashSet.add(Dy.m416do(cls));
            for (Class cls2 : clsArr) {
                if (cls2 == null) {
                    throw new NullPointerException("Null interface");
                }
                this.f8507do.add(Dy.m416do(cls2));
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4891do(C0513Td c0513Td) {
            if (!(!this.f8507do.contains(c0513Td.f3717do))) {
                throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
            }
            this.f8511if.add(c0513Td);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4892for(int i) {
            if (!(this.f8505do == 0)) {
                throw new IllegalStateException("Instantiation type has already been set.");
            }
            this.f8505do = i;
        }

        /* renamed from: if, reason: not valid java name */
        public final C0793c9<T> m4893if() {
            if (this.f8508do != null) {
                return new C0793c9<>(this.f8506do, new HashSet(this.f8507do), new HashSet(this.f8511if), this.f8505do, this.f8510if, this.f8508do, this.f8509for);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }

        public Cdo(Dy dy, Dy[] dyArr) {
            HashSet hashSet = new HashSet();
            this.f8507do = hashSet;
            this.f8511if = new HashSet();
            this.f8505do = 0;
            this.f8510if = 0;
            this.f8509for = new HashSet();
            hashSet.add(dy);
            for (Dy dy2 : dyArr) {
                if (dy2 == null) {
                    throw new NullPointerException("Null interface");
                }
            }
            Collections.addAll(this.f8507do, dyArr);
        }
    }
}
