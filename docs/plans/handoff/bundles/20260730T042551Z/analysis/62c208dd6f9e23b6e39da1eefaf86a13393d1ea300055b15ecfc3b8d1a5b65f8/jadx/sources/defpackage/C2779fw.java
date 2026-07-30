package defpackage;

import java.util.NoSuchElementException;

/* renamed from: fw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2779fw<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f13019do;

    public C2779fw() {
        this.f13019do = null;
    }

    /* renamed from: do, reason: not valid java name */
    public final T m6694do() {
        T t = this.f13019do;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m6695if() {
        return this.f13019do != null;
    }

    public C2779fw(T t) {
        if (t != null) {
            this.f13019do = t;
            return;
        }
        throw new NullPointerException("value for optional is empty.");
    }
}
