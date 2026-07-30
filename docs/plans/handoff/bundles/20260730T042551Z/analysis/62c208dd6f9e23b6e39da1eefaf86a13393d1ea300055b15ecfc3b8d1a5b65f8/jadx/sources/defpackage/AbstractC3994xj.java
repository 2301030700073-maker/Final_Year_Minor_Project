package defpackage;

/* renamed from: xj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3994xj implements InterfaceC3908wE {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3908wE f16596do;

    public AbstractC3994xj(InterfaceC3908wE interfaceC3908wE) {
        if (interfaceC3908wE == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16596do = interfaceC3908wE;
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16596do.close();
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Flushable
    public final void flush() {
        this.f16596do.flush();
    }

    public final String toString() {
        return getClass().getSimpleName() + "(" + this.f16596do.toString() + ")";
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: try */
    public final C3675sH mo1112try() {
        return this.f16596do.mo1112try();
    }
}
