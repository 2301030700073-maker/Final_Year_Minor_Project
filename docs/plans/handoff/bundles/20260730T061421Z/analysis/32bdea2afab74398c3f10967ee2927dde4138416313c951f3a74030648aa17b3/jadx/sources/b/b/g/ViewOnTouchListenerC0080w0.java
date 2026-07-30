package b.b.g;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

/* renamed from: b.b.g.w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnTouchListenerC0080w0 implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f591a;

    public ViewOnTouchListenerC0080w0(C0084y0 c0084y0) {
        this.f591a = c0084y0;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && (popupWindow = this.f591a.B) != null && popupWindow.isShowing() && x >= 0 && x < this.f591a.B.getWidth() && y >= 0 && y < this.f591a.B.getHeight()) {
            C0084y0 c0084y0 = this.f591a;
            c0084y0.x.postDelayed(c0084y0.t, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        C0084y0 c0084y02 = this.f591a;
        c0084y02.x.removeCallbacks(c0084y02.t);
        return false;
    }
}
