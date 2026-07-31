package j$.util.stream;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class m extends k5 {
    public final /* synthetic */ int b;
    public Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(a aVar, o5 o5Var, int i) {
        super(o5Var);
        this.b = i;
        this.c = aVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.b;
        o5 o5Var = this.a;
        switch (i) {
            case 0:
                if (!((Set) this.c).contains(obj)) {
                    ((Set) this.c).add(obj);
                    o5Var.accept((o5) obj);
                    break;
                }
                break;
            case 1:
                ((Consumer) ((q) this.c).m).accept(obj);
                o5Var.accept((o5) obj);
                break;
            case 2:
                if (((Predicate) ((q) this.c).m).test(obj)) {
                    o5Var.accept((o5) obj);
                    break;
                }
                break;
            case 3:
                o5Var.accept((o5) ((b5) this.c).m.apply(obj));
                break;
            case 4:
                o5Var.accept(((ToIntFunction) ((v0) this.c).m).applyAsInt(obj));
                break;
            case 5:
                o5Var.accept(((ToLongFunction) ((g1) this.c).m).applyAsLong(obj));
                break;
            default:
                o5Var.accept(((ToDoubleFunction) ((s) this.c).m).applyAsDouble(obj));
                break;
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public void c(long j) {
        switch (this.b) {
            case 0:
                this.c = new HashSet();
                this.a.c(-1L);
                break;
            case 1:
            default:
                super.c(j);
                break;
            case 2:
                this.a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public void end() {
        switch (this.b) {
            case 0:
                this.c = null;
                this.a.end();
                break;
            default:
                super.end();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(o5 o5Var) {
        super(o5Var);
        this.b = 0;
    }
}
