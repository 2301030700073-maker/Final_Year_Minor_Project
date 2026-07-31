package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class r0 implements l8, m8 {
    public final boolean a;

    public r0(boolean z) {
        this.a = z;
    }

    public /* synthetic */ void accept(double d) {
        w3.c();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.l8
    public final int f() {
        if (this.a) {
            return 0;
        }
        return d7.r;
    }

    public final void g(a aVar, Spliterator spliterator) {
        if (this.a) {
            new s0(aVar, spliterator, this).invoke();
        } else {
            new t0(aVar, spliterator, aVar.O(this)).invoke();
        }
    }

    public /* synthetic */ void accept(int i) {
        w3.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        w3.l();
        throw null;
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void end() {
    }
}
