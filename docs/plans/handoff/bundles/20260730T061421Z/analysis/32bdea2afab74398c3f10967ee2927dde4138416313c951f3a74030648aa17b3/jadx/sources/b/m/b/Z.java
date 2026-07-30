package b.m.b;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class Z {

    /* renamed from: a, reason: collision with root package name */
    public X f1123a = null;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1124b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public long f1125c = 120;

    /* renamed from: d, reason: collision with root package name */
    public long f1126d = 120;
    public long e = 250;
    public long f = 250;

    public static int b(w0 w0Var) {
        int i = w0Var.mFlags & 14;
        if (w0Var.isInvalid()) {
            return 4;
        }
        if ((i & 4) != 0) {
            return i;
        }
        int i2 = w0Var.mOldPosition;
        int absoluteAdapterPosition = w0Var.getAbsoluteAdapterPosition();
        return (i2 == -1 || absoluteAdapterPosition == -1 || i2 == absoluteAdapterPosition) ? i : i | 2048;
    }

    public abstract boolean a(w0 w0Var, w0 w0Var2, Y y, Y y2);

    public boolean c(w0 w0Var, List list) {
        return !((C0191o) this).g || w0Var.isInvalid();
    }

    public final void d(w0 w0Var) {
        X x = this.f1123a;
        if (x != null) {
            C0166a0 c0166a0 = (C0166a0) x;
            Objects.requireNonNull(c0166a0);
            w0Var.setIsRecyclable(true);
            if (w0Var.mShadowedHolder != null && w0Var.mShadowingHolder == null) {
                w0Var.mShadowedHolder = null;
            }
            w0Var.mShadowingHolder = null;
            if (((w0Var.mFlags & 16) != 0) || c0166a0.f1131a.removeAnimatingView(w0Var.itemView) || !w0Var.isTmpDetached()) {
                return;
            }
            c0166a0.f1131a.removeDetachedView(w0Var.itemView, false);
        }
    }

    public final void e() {
        int size = this.f1124b.size();
        for (int i = 0; i < size; i++) {
            ((W) this.f1124b.get(i)).a();
        }
        this.f1124b.clear();
    }

    public abstract void f(w0 w0Var);

    public abstract void g();

    public abstract boolean h();

    public Y i(w0 w0Var) {
        Y y = new Y();
        View view = w0Var.itemView;
        y.f1121a = view.getLeft();
        y.f1122b = view.getTop();
        view.getRight();
        view.getBottom();
        return y;
    }
}
