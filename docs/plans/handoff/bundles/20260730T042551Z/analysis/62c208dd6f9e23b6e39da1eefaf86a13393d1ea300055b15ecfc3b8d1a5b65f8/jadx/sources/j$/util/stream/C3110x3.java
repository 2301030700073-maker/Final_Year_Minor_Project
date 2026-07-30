package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.x3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3110x3 extends C3 implements j$.util.V {
    C3110x3(j$.util.V v, long j, long j2) {
        super(v, j, j2);
    }

    C3110x3(j$.util.V v, long j, long j2, long j3, long j4) {
        super(v, j, j2, j3, j4);
    }

    @Override // j$.util.stream.E3
    protected final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C3110x3((j$.util.V) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.C3
    protected final Object b() {
        return new C3105w3(0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.f(this, consumer);
    }
}
