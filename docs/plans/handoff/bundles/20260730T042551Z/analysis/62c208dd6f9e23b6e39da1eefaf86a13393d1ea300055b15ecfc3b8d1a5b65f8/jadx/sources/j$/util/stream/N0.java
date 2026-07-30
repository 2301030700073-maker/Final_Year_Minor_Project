package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class N0 extends Q0 {
    public static final /* synthetic */ int l = 0;
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N0(int i, Spliterator spliterator, AbstractC3117z0 abstractC3117z0) {
        super(abstractC3117z0, spliterator, new C2997b(25), new C2997b(26));
        this.k = i;
        if (i == 1) {
            super(abstractC3117z0, spliterator, new C2997b(27), new C2997b(28));
        } else if (i != 2) {
        } else {
            super(abstractC3117z0, spliterator, new C2997b(29), new O0(0));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N0(Spliterator spliterator, AbstractC3117z0 abstractC3117z0, IntFunction intFunction) {
        super(abstractC3117z0, spliterator, new P0(intFunction), new O0(1));
        this.k = 3;
    }

    @Override // j$.util.stream.Q0, j$.util.stream.AbstractC3017f
    protected final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
        }
        return a();
    }

    @Override // j$.util.stream.Q0, j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        switch (this.k) {
        }
        return new Q0(this, spliterator);
    }
}
