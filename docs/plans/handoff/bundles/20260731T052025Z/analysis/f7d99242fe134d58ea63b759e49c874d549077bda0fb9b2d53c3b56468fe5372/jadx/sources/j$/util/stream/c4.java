package j$.util.stream;

import j$.util.Spliterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class c4 extends v3 {
    public final /* synthetic */ int h;

    public /* synthetic */ c4(int i) {
        this.h = i;
    }

    @Override // j$.util.stream.v3
    public final q4 Y() {
        switch (this.h) {
            case 0:
                return new u4();
            case 1:
                return new s4();
            case 2:
                return new v4();
            default:
                return new t4();
        }
    }

    @Override // j$.util.stream.v3, j$.util.stream.f8
    public final Object a(a aVar, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.a(aVar, spliterator);
    }

    @Override // j$.util.stream.v3, j$.util.stream.f8
    public final Object b(a aVar, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!z6.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.b(aVar, spliterator);
    }

    @Override // j$.util.stream.v3, j$.util.stream.f8
    public final int f() {
        switch (this.h) {
        }
        return z6.r;
    }
}
