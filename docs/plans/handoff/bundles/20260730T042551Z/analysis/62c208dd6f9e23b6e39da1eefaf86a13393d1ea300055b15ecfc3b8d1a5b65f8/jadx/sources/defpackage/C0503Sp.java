package defpackage;

/* renamed from: Sp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0503Sp<T> implements InterfaceC3655ry<T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f3554if = new Object();

    /* renamed from: do, reason: not valid java name */
    public volatile Object f3555do = f3554if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile InterfaceC3655ry<T> f3556do;

    public C0503Sp(InterfaceC3655ry<T> interfaceC3655ry) {
        this.f3556do = interfaceC3655ry;
    }

    @Override // defpackage.InterfaceC3655ry
    public final T get() {
        T t = (T) this.f3555do;
        Object obj = f3554if;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.f3555do;
                if (t == obj) {
                    t = this.f3556do.get();
                    this.f3555do = t;
                    this.f3556do = null;
                }
            }
        }
        return t;
    }
}
