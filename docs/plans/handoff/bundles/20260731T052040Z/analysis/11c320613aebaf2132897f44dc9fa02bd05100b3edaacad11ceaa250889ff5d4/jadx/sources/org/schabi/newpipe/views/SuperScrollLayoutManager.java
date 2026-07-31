package org.schabi.newpipe.views;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuperScrollLayoutManager extends LinearLayoutManager {
    public final ArrayList focusables;
    public final Rect handy;

    public SuperScrollLayoutManager(Context context) {
        super(context);
        this.handy = new Rect();
        this.focusables = new ArrayList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        if (r5 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if (r5 != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
    
        if (r5 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        if (r5 != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0037  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onInterceptFocusSearch(int r11, android.view.View r12) {
        /*
            r10 = this;
            android.view.View r0 = r10.findContainingItemView(r12)
            r1 = 0
            if (r0 != 0) goto L8
            goto L45
        L8:
            r2 = -1
            r3 = 1
            if (r11 == r3) goto L20
            r4 = 2
            if (r11 == r4) goto L34
            int r4 = r10.mOrientation
            boolean r5 = r10.mReverseLayout
            if (r4 != 0) goto L25
            r4 = 17
            if (r11 == r4) goto L22
            r4 = 66
            if (r11 == r4) goto L1e
            goto L2d
        L1e:
            if (r5 == 0) goto L34
        L20:
            r3 = r2
            goto L34
        L22:
            if (r5 == 0) goto L20
            goto L34
        L25:
            r4 = 33
            if (r11 == r4) goto L32
            r4 = 130(0x82, float:1.82E-43)
            if (r11 == r4) goto L2f
        L2d:
            r3 = 0
            goto L34
        L2f:
            if (r5 == 0) goto L34
            goto L20
        L32:
            if (r5 == 0) goto L20
        L34:
            if (r3 != 0) goto L37
            goto L45
        L37:
            android.view.ViewParent r4 = r0.getParent()
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r0)
            if (r5 != 0) goto L46
            if (r3 >= 0) goto L46
        L45:
            return r1
        L46:
            java.util.ArrayList r6 = r10.focusables
            r6.clear()
            boolean r7 = r4.isInTouchMode()
            r4.addFocusables(r6, r11, r7)
            java.util.Iterator r11 = r6.iterator()     // Catch: java.lang.Throwable -> L83
            r7 = 2147483647(0x7fffffff, float:NaN)
        L59:
            boolean r8 = r11.hasNext()     // Catch: java.lang.Throwable -> L83
            if (r8 == 0) goto L85
            java.lang.Object r8 = r11.next()     // Catch: java.lang.Throwable -> L83
            android.view.View r8 = (android.view.View) r8     // Catch: java.lang.Throwable -> L83
            if (r8 == r12) goto L59
            if (r8 != r4) goto L6a
            goto L59
        L6a:
            if (r8 != r0) goto L6d
            goto L59
        L6d:
            android.view.View r9 = r10.findContainingItemView(r8)     // Catch: java.lang.Throwable -> L83
            if (r9 != 0) goto L75
            r9 = r2
            goto L7b
        L75:
            int r9 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r9)     // Catch: java.lang.Throwable -> L83
            int r9 = r9 - r5
            int r9 = r9 * r3
        L7b:
            if (r9 >= 0) goto L7e
            goto L59
        L7e:
            if (r9 >= r7) goto L59
            r1 = r8
            r7 = r9
            goto L59
        L83:
            r10 = move-exception
            goto L89
        L85:
            r6.clear()
            return r1
        L89:
            r6.clear()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.views.SuperScrollLayoutManager.onInterceptFocusSearch(int, android.view.View):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        if (!recyclerView.isInTouchMode() && (!z2 || getFocusedChild() == view)) {
            Rect rect2 = this.handy;
            rect2.set(rect);
            recyclerView.offsetDescendantRectToMyCoords(view, rect2);
            recyclerView.requestRectangleOnScreen(rect2, z);
        }
        return super.requestChildRectangleOnScreen(recyclerView, view, rect, z, z2);
    }
}
