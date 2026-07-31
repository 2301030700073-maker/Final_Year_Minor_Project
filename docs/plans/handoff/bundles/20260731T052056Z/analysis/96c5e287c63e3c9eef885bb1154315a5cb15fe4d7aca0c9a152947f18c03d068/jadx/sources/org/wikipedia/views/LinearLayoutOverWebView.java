package org.wikipedia.views;

import android.view.ViewConfiguration;
import android.widget.LinearLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LinearLayoutOverWebView extends LinearLayout {
    public int amountScrolled;
    public boolean slopReached;
    public float startY;
    public int touchSlop;
    public boolean viewPressed;
    public ObservableWebView webView;

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if (r0 != 3) goto L48;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r10.getClass()
            int r0 = r10.getActionMasked()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Lad
            if (r0 == r1) goto La8
            r3 = 2
            r4 = 3
            if (r0 == r3) goto L17
            if (r0 == r4) goto La8
            goto Lb9
        L17:
            boolean r0 = r9.viewPressed
            if (r0 == 0) goto Lb9
            org.wikipedia.views.ObservableWebView r0 = r9.webView
            r3 = 0
            java.lang.String r5 = "webView"
            if (r0 == 0) goto La4
            int r0 = r0.getContentHeight()
            float r0 = (float) r0
            org.wikipedia.WikipediaApp r6 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r6 = org.jsoup.Jsoup.getInstance()
            android.content.res.Resources r6 = r6.getResources()
            r6.getClass()
            android.util.DisplayMetrics r6 = r6.getDisplayMetrics()
            r6.getClass()
            float r6 = r6.density
            float r0 = r0 * r6
            int r0 = (int) r0
            org.wikipedia.views.ObservableWebView r6 = r9.webView
            if (r6 == 0) goto La0
            int r6 = r6.getScrollY()
            int r6 = -r6
            org.wikipedia.views.ObservableWebView r7 = r9.webView
            if (r7 == 0) goto L9c
            int r7 = r7.getScrollY()
            int r0 = r0 - r7
            org.wikipedia.views.ObservableWebView r7 = r9.webView
            if (r7 == 0) goto L98
            int r7 = r7.getHeight()
            int r0 = r0 - r7
            float r7 = r9.startY
            float r8 = r10.getY()
            float r7 = r7 - r8
            int r7 = (int) r7
            if (r7 <= r0) goto L66
            goto L67
        L66:
            r0 = r7
        L67:
            if (r6 >= r0) goto L6a
            r6 = r0
        L6a:
            int r0 = r9.amountScrolled
            int r0 = r0 + r6
            r9.amountScrolled = r0
            int r0 = java.lang.Math.abs(r0)
            int r7 = r9.touchSlop
            if (r0 <= r7) goto L88
            boolean r0 = r9.slopReached
            if (r0 != 0) goto L88
            r9.slopReached = r1
            android.view.MotionEvent r10 = android.view.MotionEvent.obtain(r10)
            r10.setAction(r4)
            super.dispatchTouchEvent(r10)
            return r1
        L88:
            boolean r0 = r9.slopReached
            if (r0 == 0) goto Lb9
            org.wikipedia.views.ObservableWebView r0 = r9.webView
            if (r0 == 0) goto L94
            r0.scrollBy(r2, r6)
            goto Lb9
        L94:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r3
        L98:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r3
        L9c:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r3
        La0:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r3
        La4:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r5)
            throw r3
        La8:
            r9.viewPressed = r2
            r9.slopReached = r2
            goto Lb9
        Lad:
            r9.viewPressed = r1
            r9.slopReached = r2
            float r0 = r10.getY()
            r9.startY = r0
            r9.amountScrolled = r2
        Lb9:
            boolean r0 = r9.slopReached
            if (r0 != 0) goto Lc5
            boolean r9 = super.dispatchTouchEvent(r10)
            if (r9 == 0) goto Lc4
            goto Lc5
        Lc4:
            return r2
        Lc5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.views.LinearLayoutOverWebView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setWebView(ObservableWebView observableWebView) {
        observableWebView.getClass();
        this.webView = observableWebView;
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}
