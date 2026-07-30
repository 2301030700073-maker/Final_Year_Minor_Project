package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.like.LikeButton;

/* loaded from: classes3.dex */
public final class CA implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ LikeButton f340do;

    public CA(LikeButton likeButton) {
        this.f340do = likeButton;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis() + 100;
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis2, 0, 0.0f, 0.0f, 0);
        MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, uptimeMillis2, 1, 0.0f, 0.0f, 0);
        LikeButton likeButton = this.f340do;
        if (likeButton != null) {
            likeButton.dispatchTouchEvent(obtain);
        }
        if (likeButton != null) {
            likeButton.dispatchTouchEvent(obtain2);
        }
    }
}
