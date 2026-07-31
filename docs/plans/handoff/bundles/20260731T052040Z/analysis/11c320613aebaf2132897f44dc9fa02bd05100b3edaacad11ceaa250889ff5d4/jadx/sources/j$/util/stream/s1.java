package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class s1 implements o5 {
    public boolean a;
    public boolean b;

    public s1(t1 t1Var) {
        this.b = !t1Var.b;
    }

    @Override // j$.util.stream.o5
    public /* synthetic */ void accept(double d) {
        w3.c();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.o5
    public final boolean e() {
        return this.a;
    }

    @Override // j$.util.stream.o5
    public /* synthetic */ void accept(int i) {
        w3.k();
        throw null;
    }

    @Override // j$.util.stream.o5
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
