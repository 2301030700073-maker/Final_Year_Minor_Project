package j$.util.stream;

import j$.util.C2979f;
import j$.util.stream.IntStream;
import java.util.function.IntFunction;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final /* synthetic */ class P0 implements LongFunction, IntFunction {
    public IntFunction a;

    public /* synthetic */ P0(IntFunction intFunction) {
        this.a = intFunction;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i) {
        Object apply = this.a.apply(i);
        if (apply == null) {
            return null;
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        C2979f.a(apply.getClass(), "java.util.stream.IntStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public final Object apply(long j) {
        IntFunction intFunction = this.a;
        int i = N0.l;
        return AbstractC3117z0.Z(j, intFunction);
    }
}
