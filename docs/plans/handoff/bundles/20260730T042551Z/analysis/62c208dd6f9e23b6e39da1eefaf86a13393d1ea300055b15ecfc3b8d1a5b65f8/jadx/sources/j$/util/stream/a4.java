package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
abstract class a4 extends b4 implements Consumer {
    final Predicate f;
    Object g;

    a4(Spliterator spliterator, a4 a4Var) {
        super(spliterator, a4Var);
        this.f = a4Var.f;
    }

    a4(Spliterator spliterator, Predicate predicate) {
        super(spliterator);
        this.f = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.e = (this.e + 1) & 63;
        this.g = obj;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
