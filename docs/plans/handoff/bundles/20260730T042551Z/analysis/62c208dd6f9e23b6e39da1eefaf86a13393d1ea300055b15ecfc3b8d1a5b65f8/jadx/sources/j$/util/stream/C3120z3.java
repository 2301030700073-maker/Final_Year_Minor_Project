package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.z3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3120z3 extends C3 implements j$.util.Y {
    C3120z3(j$.util.Y y, long j, long j2) {
        super(y, j, j2);
    }

    C3120z3(j$.util.Y y, long j, long j2, long j3, long j4) {
        super(y, j, j2, j3, j4);
    }

    @Override // j$.util.stream.E3
    protected final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3120z3((j$.util.Y) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.C3
    protected final Object b() {
        return new C3115y3(0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.g(this, consumer);
    }
}
