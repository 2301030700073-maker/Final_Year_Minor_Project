package defpackage;

import java.util.Locale;

/* loaded from: classes3.dex */
public final class Q0 {

    /* renamed from: do, reason: not valid java name */
    public static volatile Q0 f2855do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0570Vq f2856do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2857do = false;

    public Q0() {
        C0570Vq c0570Vq;
        int i = 0;
        synchronized (C0570Vq.class) {
            if (C0570Vq.f4202do == null) {
                C0570Vq.f4202do = new C0570Vq(i);
            }
            c0570Vq = C0570Vq.f4202do;
        }
        this.f2856do = c0570Vq;
    }

    /* renamed from: new, reason: not valid java name */
    public static Q0 m1818new() {
        if (f2855do == null) {
            synchronized (Q0.class) {
                if (f2855do == null) {
                    f2855do = new Q0();
                }
            }
        }
        return f2855do;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1819case() {
        if (this.f2857do) {
            this.f2856do.getClass();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1820do() {
        if (this.f2857do) {
            this.f2856do.getClass();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1821else(String str, Object... objArr) {
        if (this.f2857do) {
            String.format(Locale.ENGLISH, str, objArr);
            this.f2856do.getClass();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1822for(String str, Object... objArr) {
        if (this.f2857do) {
            String.format(Locale.ENGLISH, str, objArr);
            this.f2856do.getClass();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1823if(String str, Object... objArr) {
        if (this.f2857do) {
            String.format(Locale.ENGLISH, str, objArr);
            this.f2856do.getClass();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1824try(String str, Object... objArr) {
        if (this.f2857do) {
            String.format(Locale.ENGLISH, str, objArr);
            this.f2856do.getClass();
        }
    }
}
