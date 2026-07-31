package com.fsck.k9.ui.messageview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TouchInterceptView extends FrameLayout {
    public int initialRawX;
    public int initialRawY;
    public float initialX;
    public float initialY;
    public final int touchSlop;
    public final Rect webViewRect;
    public final int[] webViewScreenLocation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TouchInterceptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.webViewScreenLocation = new int[2];
        this.webViewRect = new Rect();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ScrollView scrollView;
        ViewParent parent;
        motionEvent.getClass();
        WebView webView = (WebView) findViewById(R.id.message_content);
        if (webView != null && (scrollView = (ScrollView) findViewById(R.id.message_scrollview)) != null && (parent = scrollView.getParent()) != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.initialX = motionEvent.getX();
                this.initialY = motionEvent.getY();
                this.initialRawX = (int) motionEvent.getRawX();
                this.initialRawY = (int) motionEvent.getRawY();
                parent.requestDisallowInterceptTouchEvent(false);
            } else if (actionMasked == 2) {
                float x = this.initialX - motionEvent.getX();
                float y = this.initialY - motionEvent.getY();
                float abs = Math.abs(x);
                float abs2 = Math.abs(y);
                float f = this.touchSlop;
                if (abs2 > f && abs2 > abs) {
                    int i = (int) y;
                    if (scrollView.canScrollVertically(i) || webView.canScrollVertically(i)) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
                if (abs > f && abs > abs2 && webView.canScrollHorizontally((int) x)) {
                    Rect rect = this.webViewRect;
                    webView.getHitRect(rect);
                    int[] iArr = this.webViewScreenLocation;
                    webView.getLocationOnScreen(iArr);
                    rect.offset(iArr[0], iArr[1]);
                    if (rect.contains(this.initialRawX, this.initialRawY)) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
            } else if (actionMasked == 5) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
