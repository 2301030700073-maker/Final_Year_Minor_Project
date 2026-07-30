package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* renamed from: wj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC3935wj implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final float f16384do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f16385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f16386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f16387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16388do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f16389do = new int[2];

    /* renamed from: for, reason: not valid java name */
    public final int f16390for;

    /* renamed from: new, reason: not valid java name */
    public final int f16391new;

    /* renamed from: try, reason: not valid java name */
    public int f16392try;

    /* renamed from: wj$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = AbstractViewOnTouchListenerC3935wj.this.f16385do.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: wj$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractViewOnTouchListenerC3935wj abstractViewOnTouchListenerC3935wj = AbstractViewOnTouchListenerC3935wj.this;
            abstractViewOnTouchListenerC3935wj.m8582do();
            View view = abstractViewOnTouchListenerC3935wj.f16385do;
            if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC3935wj.mo3311for()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(obtain);
                obtain.recycle();
                abstractViewOnTouchListenerC3935wj.f16388do = true;
            }
        }
    }

    public AbstractViewOnTouchListenerC3935wj(View view) {
        this.f16385do = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f16384do = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f16390for = tapTimeout;
        this.f16391new = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8582do() {
        Cif cif = this.f16387do;
        View view = this.f16385do;
        if (cif != null) {
            view.removeCallbacks(cif);
        }
        Cdo cdo = this.f16386do;
        if (cdo != null) {
            view.removeCallbacks(cdo);
        }
    }

    /* renamed from: for */
    public abstract boolean mo3311for();

    /* renamed from: if */
    public abstract UD mo3312if();

    /* renamed from: new */
    public boolean mo3395new() {
        UD mo3312if = mo3312if();
        if (mo3312if == null || !mo3312if.mo2367do()) {
            return true;
        }
        mo3312if.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r4 != 3) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractViewOnTouchListenerC3935wj.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f16388do = false;
        this.f16392try = -1;
        Cdo cdo = this.f16386do;
        if (cdo != null) {
            this.f16385do.removeCallbacks(cdo);
        }
    }
}
