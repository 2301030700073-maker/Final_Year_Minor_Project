package b.b.g;

import android.view.View;
import android.view.ViewConfiguration;

/* renamed from: b.b.g.p0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0067p0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final float f567a;

    /* renamed from: b, reason: collision with root package name */
    public final int f568b;

    /* renamed from: c, reason: collision with root package name */
    public final int f569c;

    /* renamed from: d, reason: collision with root package name */
    public final View f570d;
    public Runnable e;
    public Runnable f;
    public boolean g;
    public int h;
    public final int[] i = new int[2];

    public AbstractViewOnTouchListenerC0067p0(View view) {
        this.f570d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f567a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f568b = tapTimeout;
        this.f569c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        Runnable runnable = this.f;
        if (runnable != null) {
            this.f570d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.e;
        if (runnable2 != null) {
            this.f570d.removeCallbacks(runnable2);
        }
    }

    public abstract b.b.f.m.G b();

    public abstract boolean c();

    public boolean d() {
        b.b.f.m.G b2 = b();
        if (b2 == null || !b2.b()) {
            return true;
        }
        b2.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
    
        if (r4 != 3) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0113  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.AbstractViewOnTouchListenerC0067p0.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.g = false;
        this.h = -1;
        Runnable runnable = this.e;
        if (runnable != null) {
            this.f570d.removeCallbacks(runnable);
        }
    }
}
