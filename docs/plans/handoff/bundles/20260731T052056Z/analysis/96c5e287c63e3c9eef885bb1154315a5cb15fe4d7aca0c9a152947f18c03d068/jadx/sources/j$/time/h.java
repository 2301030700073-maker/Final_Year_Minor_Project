package j$.time;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class h {
    public static /* synthetic */ void a(long j) {
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static /* synthetic */ void b(Object obj, String str) {
        throw new j$.time.temporal.p(str + obj);
    }

    public static /* synthetic */ void c(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void d(String str, int i) {
        throw new c(str + i);
    }

    public static /* synthetic */ void e(String str, int i, Object obj) {
        throw new c(str + i + obj);
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2) {
        throw new ClassCastException(str + obj + ((Object) ", actual: ") + obj2);
    }

    public static /* synthetic */ void g(String str, Object obj, Object obj2, Object obj3) {
        throw new c(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Throwable th) {
        throw new c(str + obj + ((Object) " of type ") + obj2, th);
    }

    public static /* synthetic */ void i(String str, Object[] objArr) {
        throw new IllegalStateException(String.format(str, objArr));
    }

    public static /* synthetic */ void j(Object obj, String str) {
        throw new c(str + obj);
    }

    public static /* synthetic */ void k(String str) {
        throw new c(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void l(String str, int i) {
        throw new IllegalArgumentException(str + ((char) i));
    }

    public static /* synthetic */ void m(String str, int i) {
        throw new IllegalArgumentException(str + i);
    }
}
