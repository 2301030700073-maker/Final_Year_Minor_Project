package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class q0 implements f8, g8 {
    public final boolean a;

    public q0(boolean z) {
        this.a = z;
    }

    public /* synthetic */ void accept(double d) {
        v3.c();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.f8
    public final int f() {
        if (this.a) {
            return 0;
        }
        return z6.r;
    }

    public final void g(a aVar, Spliterator spliterator) {
        if (this.a) {
            new r0(aVar, spliterator, this).invoke();
        } else {
            new s0(aVar, spliterator, aVar.R(this)).invoke();
        }
    }

    public /* synthetic */ void accept(int i) {
        v3.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        v3.l();
        throw null;
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ void end() {
    }
}
