package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class j5 implements n5 {
    public final o5 a;

    public j5(o5 o5Var) {
        this.a = (o5) Objects.requireNonNull(o5Var);
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void accept(double d) {
        w3.c();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.o5
    public void c(long j) {
        this.a.c(j);
    }

    @Override // j$.util.stream.o5
    public boolean e() {
        return this.a.e();
    }

    @Override // j$.util.stream.o5
    public void end() {
        this.a.end();
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void o(Long l) {
        w3.i(this, l);
    }

    @Override // j$.util.stream.o5
    public final /* synthetic */ void accept(int i) {
        w3.k();
        throw null;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.a0.a(this, longConsumer);
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        o((Long) obj);
    }
}
