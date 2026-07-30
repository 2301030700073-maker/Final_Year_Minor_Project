package defpackage;

import android.view.View;
import java.lang.ref.WeakReference;

/* renamed from: nL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3385nL {

    /* renamed from: do, reason: not valid java name */
    public final WeakReference<View> f14510do;

    public C3385nL(View view) {
        this.f14510do = new WeakReference<>(view);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7563do(float f) {
        View view = this.f14510do.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7564for(long j) {
        View view = this.f14510do.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7565if() {
        View view = this.f14510do.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7566new(InterfaceC3503pL interfaceC3503pL) {
        View view = this.f14510do.get();
        if (view != null) {
            if (interfaceC3503pL != null) {
                view.animate().setListener(new C3326mL(interfaceC3503pL, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m7567try(float f) {
        View view = this.f14510do.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
