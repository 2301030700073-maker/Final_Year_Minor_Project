package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* renamed from: oH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnTouchListenerC3440oH implements View.OnTouchListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ GestureDetector f14721do;

    public ViewOnTouchListenerC3440oH(GestureDetector gestureDetector) {
        this.f14721do = gestureDetector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f14721do.onTouchEvent(motionEvent);
        }
        return false;
    }
}
