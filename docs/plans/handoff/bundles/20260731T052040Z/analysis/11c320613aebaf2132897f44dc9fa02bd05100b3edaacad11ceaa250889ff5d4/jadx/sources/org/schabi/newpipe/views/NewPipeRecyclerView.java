package org.schabi.newpipe.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NewPipeRecyclerView extends RecyclerView {
    public boolean allowDpadScroll;
    public final Rect focusRect;
    public final Rect tempFocus;

    public NewPipeRecyclerView(Context context) {
        super(context);
        this.focusRect = new Rect();
        this.tempFocus = new Rect();
        this.allowDpadScroll = true;
        setFocusable(true);
        setDescendantFocusability(262144);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0067 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c5  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchUnhandledMove(android.view.View r10, int r11) {
        /*
            r9 = this;
            android.graphics.Rect r0 = r9.tempFocus
            r0.setEmpty()
            android.graphics.Rect r1 = r9.focusRect
            if (r10 == 0) goto L12
            android.view.View r2 = r9.findContainingItemView(r10)
            if (r2 == 0) goto L12
            r2.getHitRect(r1)
        L12:
            android.view.View r2 = super.focusSearch(r10, r11)
            r3 = 1
            if (r2 == 0) goto L24
            android.view.View r4 = r9.findContainingItemView(r2)
            if (r4 != 0) goto L20
            goto L24
        L20:
            r2.requestFocus(r11)
            return r3
        L24:
            r4 = 17
            r5 = 130(0x82, float:1.82E-43)
            r6 = -100
            r7 = -1
            r8 = 0
            if (r11 == r4) goto L5f
            r4 = 33
            if (r11 == r4) goto L53
            r4 = 66
            r6 = 100
            if (r11 == r4) goto L47
            if (r11 == r5) goto L3b
            goto L65
        L3b:
            boolean r4 = r9.canScrollVertically(r3)
            if (r4 != 0) goto L42
            goto L65
        L42:
            r9.scrollBy(r8, r6)
            goto Lcd
        L47:
            boolean r4 = r9.canScrollHorizontally(r7)
            if (r4 != 0) goto L4e
            goto L65
        L4e:
            r9.scrollBy(r6, r8)
            goto Lcd
        L53:
            boolean r4 = r9.canScrollVertically(r7)
            if (r4 != 0) goto L5a
            goto L65
        L5a:
            r9.scrollBy(r8, r6)
            goto Lcd
        L5f:
            boolean r4 = r9.canScrollHorizontally(r7)
            if (r4 != 0) goto Lca
        L65:
            if (r10 == r9) goto L75
            if (r11 != r5) goto L75
            boolean r4 = r9.allowDpadScroll
            if (r4 != 0) goto L75
            java.lang.String r9 = "NewPipeRecyclerView"
            java.lang.String r10 = "Consuming downward scroll: content load in progress"
            android.util.Log.i(r9, r10)
            return r3
        L75:
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 28
            if (r4 < r5) goto L7c
            goto Lbf
        L7c:
            android.view.FocusFinder r4 = android.view.FocusFinder.getInstance()
            android.view.View r5 = r9.getRootView()
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            r0.set(r1)
            r5.offsetDescendantRectToMyCoords(r9, r0)
            android.view.View r6 = r4.findNextFocusFromRect(r5, r0, r11)
            if (r6 == 0) goto L9d
            android.view.View r7 = r9.findContainingItemView(r6)
            if (r7 != 0) goto L99
            goto L9d
        L99:
            r6.requestFocus(r11)
            goto Lb7
        L9d:
            android.view.ViewParent r6 = r9.getParent()
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
        La3:
            if (r6 == r5) goto Lbf
            r0.set(r1)
            r6.offsetDescendantRectToMyCoords(r9, r0)
            android.view.View r7 = r4.findNextFocusFromRect(r6, r0, r11)
            if (r7 == 0) goto Lb8
            boolean r7 = r7.requestFocus(r11)
            if (r7 == 0) goto Lb8
        Lb7:
            return r3
        Lb8:
            android.view.ViewParent r6 = r6.getParent()
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            goto La3
        Lbf:
            if (r2 == 0) goto Lc5
            r2.requestFocus(r11)
            return r3
        Lc5:
            boolean r9 = super.dispatchUnhandledMove(r10, r11)
            return r9
        Lca:
            r9.scrollBy(r6, r8)
        Lcd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.views.NewPipeRecyclerView.dispatchUnhandledMove(android.view.View, int):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        if (view.hasFocus()) {
            requestFocus();
        }
        super.removeDetachedView(view, z);
    }

    public void setFocusScrollAllowed(boolean z) {
        this.allowDpadScroll = z;
    }

    public NewPipeRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.focusRect = new Rect();
        this.tempFocus = new Rect();
        this.allowDpadScroll = true;
        setFocusable(true);
        setDescendantFocusability(262144);
    }

    public NewPipeRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.focusRect = new Rect();
        this.tempFocus = new Rect();
        this.allowDpadScroll = true;
        setFocusable(true);
        setDescendantFocusability(262144);
    }
}
