package defpackage;

import java.io.Serializable;

/* renamed from: oG, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3439oG<T> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public InterfaceC0768bk<? extends T> f14718do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Object f14719do = C0315Kc.f1836if;

    /* renamed from: if, reason: not valid java name */
    public final Object f14720if = this;

    public C3439oG(InterfaceC0768bk interfaceC0768bk) {
        this.f14718do = interfaceC0768bk;
    }

    private final Object writeReplace() {
        return new C0238Gn(m7702do());
    }

    /* renamed from: do, reason: not valid java name */
    public final T m7702do() {
        T t;
        T t2 = (T) this.f14719do;
        C0315Kc c0315Kc = C0315Kc.f1836if;
        if (t2 != c0315Kc) {
            return t2;
        }
        synchronized (this.f14720if) {
            t = (T) this.f14719do;
            if (t == c0315Kc) {
                InterfaceC0768bk<? extends T> interfaceC0768bk = this.f14718do;
                C0173Do.m398if(interfaceC0768bk);
                t = interfaceC0768bk.mo585new();
                this.f14719do = t;
                this.f14718do = null;
            }
        }
        return t;
    }

    public final String toString() {
        return this.f14719do != C0315Kc.f1836if ? String.valueOf(m7702do()) : "Lazy value not initialized yet.";
    }
}
