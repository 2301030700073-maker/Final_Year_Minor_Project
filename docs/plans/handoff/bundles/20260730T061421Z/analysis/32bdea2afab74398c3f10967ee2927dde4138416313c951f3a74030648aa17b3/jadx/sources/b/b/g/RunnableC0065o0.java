package b.b.g;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.android.quickstep.fallback.RecentsState;

/* renamed from: b.b.g.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0065o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC0067p0 f565a;

    public RunnableC0065o0(AbstractViewOnTouchListenerC0067p0 abstractViewOnTouchListenerC0067p0) {
        this.f565a = abstractViewOnTouchListenerC0067p0;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractViewOnTouchListenerC0067p0 abstractViewOnTouchListenerC0067p0 = this.f565a;
        abstractViewOnTouchListenerC0067p0.a();
        View view = abstractViewOnTouchListenerC0067p0.f570d;
        if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC0067p0.c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            abstractViewOnTouchListenerC0067p0.g = true;
        }
    }
}
