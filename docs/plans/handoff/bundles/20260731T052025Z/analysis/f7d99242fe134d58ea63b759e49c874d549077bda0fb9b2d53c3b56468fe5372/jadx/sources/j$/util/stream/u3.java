package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public class u3 extends CountedCompleter {
    public final g2 a;
    public final int b;
    public final /* synthetic */ int c;
    public final Object d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u3(u3 u3Var, g2 g2Var, int i) {
        this(u3Var, g2Var, i, (byte) 0);
        this.c = 1;
        this.d = (Object[]) u3Var.d;
    }

    public final u3 a(int i, int i2) {
        switch (this.c) {
            case 0:
                return new u3(this, ((f2) this.a).a(i), i2);
            default:
                return new u3(this, this.a.a(i), i2);
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        int i;
        while (this.a.s() != 0) {
            this.setPendingCount(this.a.s() - 1);
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int s = this.a.s() - 1;
                i = this.b;
                if (i2 < s) {
                    u3 a = this.a(i2, i + i3);
                    i3 = (int) (a.a.count() + i3);
                    a.fork();
                    i2++;
                }
            }
            this = this.a(i2, i + i3);
        }
        switch (this.c) {
            case 0:
                ((f2) this.a).f(this.b, this.d);
                break;
            default:
                this.a.m((Object[]) this.d, this.b);
                break;
        }
        this.propagateCompletion();
    }

    public u3(u3 u3Var, g2 g2Var, int i, byte b) {
        super(u3Var);
        this.a = g2Var;
        this.b = i;
    }

    public u3(g2 g2Var, Object obj, int i) {
        this.c = i;
        this.a = g2Var;
        this.b = 0;
        this.d = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u3(u3 u3Var, f2 f2Var, int i) {
        this(u3Var, f2Var, i, (byte) 0);
        this.c = 0;
        this.d = u3Var.d;
    }
}
