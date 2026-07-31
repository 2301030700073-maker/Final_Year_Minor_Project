package org.wikipedia.page;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.views.ViewAnimations;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewHideHandler implements ObservableWebView.OnScrollChangeListener, ObservableWebView.OnUpOrCancelMotionEventListener, ObservableWebView.OnClickListener {
    public boolean enabled = true;
    public final int gravity;
    public final View hideableView;
    public final Function0 shouldAlwaysShow;
    public final boolean updateElevation;
    public ObservableWebView webView;

    public ViewHideHandler(View view, int i, boolean z, Function0 function0) {
        this.hideableView = view;
        this.gravity = i;
        this.updateElevation = z;
        this.shouldAlwaysShow = function0;
    }

    public final void ensureDisplayed() {
        int i = ViewAnimations.$r8$clinit;
        ViewAnimations.ensureTranslationY(this.hideableView, 0, null);
    }

    public final void ensureHidden() {
        int i = this.gravity;
        View view = this.hideableView;
        int height = i == 80 ? view.getHeight() : -view.getHeight();
        int i2 = ViewAnimations.$r8$clinit;
        ViewAnimations.ensureTranslationY(view, height, null);
    }

    @Override // org.wikipedia.views.ObservableWebView.OnClickListener
    public final void onClick() {
        if (this.enabled) {
            View view = this.hideableView;
            if (view.getTranslationY() != RecyclerView.DECELERATION_RATE) {
                ensureDisplayed();
                return;
            }
            int i = this.gravity;
            if (i != 80) {
                if (i != 48) {
                    return;
                }
                ObservableWebView observableWebView = this.webView;
                if (observableWebView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("webView");
                    throw null;
                }
                if (observableWebView.getScrollY() <= view.getHeight()) {
                    return;
                }
            }
            ensureHidden();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
    
        if (r0 > r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003d, code lost:
    
        if (r0 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004b, code lost:
    
        if (r0 < 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        if (r0 < r1) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // org.wikipedia.views.ObservableWebView.OnScrollChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onScrollChanged(int r7, int r8) {
        /*
            r6 = this;
            boolean r0 = r6.enabled
            if (r0 != 0) goto L6
            goto L81
        L6:
            r0 = 48
            int r1 = r6.gravity
            if (r1 != r0) goto L1e
            kotlin.jvm.functions.Function0 r2 = r6.shouldAlwaysShow
            java.lang.Object r2 = r2.invoke()
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L1e
            r6.ensureDisplayed()
            return
        L1e:
            int r2 = r8 - r7
            r3 = 80
            r4 = 0
            android.view.View r5 = r6.hideableView
            if (r1 != r3) goto L41
            if (r7 >= r8) goto L37
            int r0 = r5.getHeight()
            float r1 = r5.getTranslationY()
            int r1 = (int) r1
            int r1 = r1 + r2
            if (r0 <= r1) goto L3f
        L35:
            r0 = r1
            goto L3f
        L37:
            float r0 = r5.getTranslationY()
            int r0 = (int) r0
            int r0 = r0 + r2
            if (r0 <= 0) goto L5c
        L3f:
            r4 = r0
            goto L5c
        L41:
            if (r1 != r0) goto L5c
            if (r7 <= r8) goto L4e
            float r0 = r5.getTranslationY()
            int r0 = (int) r0
            int r0 = r0 - r2
            if (r0 >= 0) goto L5c
            goto L3f
        L4e:
            int r0 = r5.getHeight()
            int r0 = -r0
            float r1 = r5.getTranslationY()
            int r1 = (int) r1
            int r1 = r1 - r2
            if (r0 >= r1) goto L3f
            goto L35
        L5c:
            float r0 = (float) r4
            r5.setTranslationY(r0)
            boolean r6 = r6.updateElevation
            if (r6 == 0) goto L81
            if (r8 != 0) goto L6a
            if (r7 == 0) goto L6a
            r6 = 0
            goto L75
        L6a:
            r6 = 2131166368(0x7f0704a0, float:1.794698E38)
            float r6 = okio.Okio__OkioKt.getDimension(r6)
            float r6 = okio.Okio__OkioKt.dpToPx(r6)
        L75:
            float r7 = r5.getElevation()
            int r7 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r7 != 0) goto L7e
            goto L81
        L7e:
            r5.setElevation(r6)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.ViewHideHandler.onScrollChanged(int, int):void");
    }

    @Override // org.wikipedia.views.ObservableWebView.OnUpOrCancelMotionEventListener
    public final void onUpOrCancelMotionEvent() {
        int i;
        if (this.enabled) {
            View view = this.hideableView;
            int translationY = (int) view.getTranslationY();
            int height = view.getHeight();
            int i2 = this.gravity;
            if (i2 == 80 && translationY != 0 && translationY < height) {
                if (translationY > height / 2) {
                    ensureHidden();
                    return;
                } else {
                    ensureDisplayed();
                    return;
                }
            }
            if (i2 != 48 || translationY == 0 || translationY <= (i = -height)) {
                return;
            }
            if (translationY <= i / 2) {
                ObservableWebView observableWebView = this.webView;
                if (observableWebView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("webView");
                    throw null;
                }
                if (observableWebView.getScrollY() > view.getHeight()) {
                    ensureHidden();
                    return;
                }
            }
            ensureDisplayed();
        }
    }
}
