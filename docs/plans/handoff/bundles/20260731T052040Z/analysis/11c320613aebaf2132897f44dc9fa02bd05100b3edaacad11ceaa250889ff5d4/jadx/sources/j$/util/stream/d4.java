package j$.util.stream;

import j$.util.Spliterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class d4 extends w3 {
    public final /* synthetic */ int h;

    public /* synthetic */ d4(int i) {
        this.h = i;
    }

    @Override // j$.util.stream.w3
    public final r4 Q() {
        switch (this.h) {
            case 0:
                return new v4();
            case 1:
                return new t4();
            case 2:
                return new w4();
            default:
                return new u4();
        }
    }

    @Override // j$.util.stream.w3, j$.util.stream.l8
    public final Object a(a aVar, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.a(aVar, spliterator);
    }

    @Override // j$.util.stream.w3, j$.util.stream.l8
    public final Object b(a aVar, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 1:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            case 2:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
            default:
                if (!d7.SIZED.u(aVar.f)) {
                    break;
                } else {
                    break;
                }
        }
        return (Long) super.b(aVar, spliterator);
    }

    @Override // j$.util.stream.w3, j$.util.stream.l8
    public final int f() {
        switch (this.h) {
        }
        return d7.r;
    }
}
