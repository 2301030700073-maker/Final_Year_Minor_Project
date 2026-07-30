package defpackage;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* renamed from: Xn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnTouchListenerC0611Xn implements View.OnTouchListener {

    /* renamed from: do, reason: not valid java name */
    public final Dialog f4600do;

    /* renamed from: for, reason: not valid java name */
    public final int f4601for;

    /* renamed from: new, reason: not valid java name */
    public final int f4602new;

    /* renamed from: try, reason: not valid java name */
    public final int f4603try;

    public ViewOnTouchListenerC0611Xn(Dialog dialog, Rect rect) {
        this.f4600do = dialog;
        this.f4601for = rect.left;
        this.f4602new = rect.top;
        this.f4603try = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.f4601for;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.f4602new, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f4603try;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f4600do.onTouchEvent(obtain);
    }
}
