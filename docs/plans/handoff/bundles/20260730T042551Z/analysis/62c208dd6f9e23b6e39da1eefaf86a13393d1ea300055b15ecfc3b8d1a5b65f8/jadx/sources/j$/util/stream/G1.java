package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
final class G1 extends AbstractC3117z0 {
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G1(EnumC3031h3 enumC3031h3, int i) {
        super(enumC3031h3);
        this.h = i;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final /* bridge */ /* synthetic */ U1 F0() {
        switch (this.h) {
        }
        return L0();
    }

    public final Long J0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.k(abstractC3117z0, spliterator);
    }

    public final Long K0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
            default:
                if (!EnumC3026g3.SIZED.n(abstractC3117z0.r0())) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.y(abstractC3117z0, spliterator);
    }

    public final AbstractC2995a2 L0() {
        switch (this.h) {
            case 0:
                return new Y1();
            case 1:
                return new W1();
            case 2:
                return new Z1();
            default:
                return new X1();
        }
    }

    @Override // j$.util.stream.AbstractC3117z0, j$.util.stream.P3
    public final /* bridge */ /* synthetic */ Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        switch (this.h) {
        }
        return J0(abstractC3117z0, spliterator);
    }

    @Override // j$.util.stream.AbstractC3117z0, j$.util.stream.P3
    public final int o() {
        switch (this.h) {
        }
        return EnumC3026g3.r;
    }

    @Override // j$.util.stream.AbstractC3117z0, j$.util.stream.P3
    public final /* bridge */ /* synthetic */ Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        switch (this.h) {
        }
        return K0(abstractC3117z0, spliterator);
    }
}
