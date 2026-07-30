package defpackage;

import android.view.Choreographer;
import java.util.ArrayList;

/* renamed from: f1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2726f1 {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<C2726f1> f12784do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f12787do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2680eE<Cif, Long> f12785do = new C2680eE<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f12788do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12786do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12789do = false;

    /* renamed from: f1$do, reason: invalid class name */
    public class Cdo {
        public Cdo() {
        }
    }

    /* renamed from: f1$for, reason: invalid class name */
    public static abstract class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Cdo f12791do;

        public Cfor(Cdo cdo) {
            this.f12791do = cdo;
        }
    }

    /* renamed from: f1$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do, reason: not valid java name */
        boolean mo6629do(long j);
    }

    /* renamed from: f1$new, reason: invalid class name */
    public static class Cnew extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Choreographer f12792do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f12793do;

        /* renamed from: f1$new$do, reason: invalid class name */
        public class Cdo implements Choreographer.FrameCallback {
            public Cdo() {
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[SYNTHETIC] */
            @Override // android.view.Choreographer.FrameCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void doFrame(long r11) {
                /*
                    r10 = this;
                    f1$new r11 = defpackage.C2726f1.Cnew.this
                    f1$do r11 = r11.f12791do
                    r11.getClass()
                    long r0 = android.os.SystemClock.uptimeMillis()
                    f1 r11 = defpackage.C2726f1.this
                    r11.getClass()
                    long r2 = android.os.SystemClock.uptimeMillis()
                    r12 = 0
                    r4 = 0
                L16:
                    java.util.ArrayList<f1$if> r5 = r11.f12788do
                    int r6 = r5.size()
                    if (r4 >= r6) goto L49
                    java.lang.Object r5 = r5.get(r4)
                    f1$if r5 = (defpackage.C2726f1.Cif) r5
                    if (r5 != 0) goto L27
                    goto L46
                L27:
                    eE<f1$if, java.lang.Long> r6 = r11.f12785do
                    r7 = 0
                    java.lang.Object r7 = r6.getOrDefault(r5, r7)
                    java.lang.Long r7 = (java.lang.Long) r7
                    if (r7 != 0) goto L33
                    goto L3e
                L33:
                    long r7 = r7.longValue()
                    int r9 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
                    if (r9 >= 0) goto L40
                    r6.remove(r5)
                L3e:
                    r6 = 1
                    goto L41
                L40:
                    r6 = 0
                L41:
                    if (r6 == 0) goto L46
                    r5.mo6629do(r0)
                L46:
                    int r4 = r4 + 1
                    goto L16
                L49:
                    boolean r0 = r11.f12789do
                    if (r0 == 0) goto L61
                    int r0 = r5.size()
                L51:
                    int r0 = r0 + (-1)
                    if (r0 < 0) goto L5f
                    java.lang.Object r1 = r5.get(r0)
                    if (r1 != 0) goto L51
                    r5.remove(r0)
                    goto L51
                L5f:
                    r11.f12789do = r12
                L61:
                    int r12 = r5.size()
                    if (r12 <= 0) goto L7d
                    f1$new r12 = r11.f12787do
                    if (r12 != 0) goto L74
                    f1$new r12 = new f1$new
                    f1$do r0 = r11.f12786do
                    r12.<init>(r0)
                    r11.f12787do = r12
                L74:
                    f1$new r11 = r11.f12787do
                    f1$new$do r12 = r11.f12793do
                    android.view.Choreographer r11 = r11.f12792do
                    r11.postFrameCallback(r12)
                L7d:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.C2726f1.Cnew.Cdo.doFrame(long):void");
            }
        }

        public Cnew(Cdo cdo) {
            super(cdo);
            this.f12792do = Choreographer.getInstance();
            this.f12793do = new Cdo();
        }
    }
}
