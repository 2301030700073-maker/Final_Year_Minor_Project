package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.android.tools.r8.RecordTag;
import com.google.android.material.appbar.AppBarLayout;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlingBehavior extends AppBarLayout.Behavior {
    public boolean allowScroll;
    public final Rect focusScrollRect;
    public final Rect globalRect;
    public final List skipInterceptionOfElements;

    public FlingBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.focusScrollRect = new Rect();
        this.allowScroll = true;
        this.globalRect = new Rect();
        int i = 0;
        Object[] objArr = {Integer.valueOf(R.id.itemsListPanel), Integer.valueOf(R.id.playbackSeekBar), Integer.valueOf(R.id.playPauseButton), Integer.valueOf(R.id.playPreviousButton), Integer.valueOf(R.id.playNextButton)};
        ArrayList arrayList = new ArrayList(5);
        while (i < 5) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        this.skipInterceptionOfElements = DesugarCollections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:23|24|25|(6:27|(3:38|39|(1:41))|29|30|(2:32|33)|(1:36))|45|(0)|29|30|(0)|(0)) */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075 A[Catch: IllegalAccessException | NoSuchFieldException -> 0x0085, TRY_LEAVE, TryCatch #1 {IllegalAccessException | NoSuchFieldException -> 0x0085, blocks: (B:30:0x0067, B:32:0x0075), top: B:29:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r6, android.view.View r7, android.view.MotionEvent r8) {
        /*
            r5 = this;
            com.google.android.material.appbar.AppBarLayout r7 = (com.google.android.material.appbar.AppBarLayout) r7
            java.lang.Class<com.google.android.material.appbar.FlingBehavior> r0 = com.google.android.material.appbar.FlingBehavior.class
            java.util.List r1 = r5.skipInterceptionOfElements
            java.util.Iterator r1 = r1.iterator()
        La:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r1.next()
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            android.view.View r2 = r7.findViewById(r2)
            if (r2 == 0) goto La
            android.graphics.Rect r3 = r5.globalRect
            boolean r2 = r2.getGlobalVisibleRect(r3)
            if (r2 == 0) goto La
            float r2 = r8.getRawX()
            int r2 = (int) r2
            float r4 = r8.getRawY()
            int r4 = (int) r4
            boolean r2 = r3.contains(r2, r4)
            if (r2 == 0) goto La
            r6 = 0
            r5.allowScroll = r6
            return r6
        L3c:
            r1 = 1
            r5.allowScroll = r1
            int r2 = r8.getActionMasked()
            if (r2 == 0) goto L46
            goto L8a
        L46:
            r2 = 0
            java.lang.Class r3 = r0.getSuperclass()     // Catch: java.lang.NoSuchFieldException -> L5b
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.NoSuchFieldException -> L5b
            if (r3 == 0) goto L5b
            java.lang.String r4 = "lastNestedScrollingChildRef"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.NoSuchFieldException -> L5b
            r3.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L5b
            goto L5c
        L5b:
            r3 = r2
        L5c:
            if (r3 == 0) goto L67
            java.lang.Object r4 = r3.get(r5)     // Catch: java.lang.IllegalAccessException -> L67
            if (r4 == 0) goto L67
            r3.set(r5, r2)     // Catch: java.lang.IllegalAccessException -> L67
        L67:
            java.lang.Class r0 = r0.getSuperclass()     // Catch: java.lang.Throwable -> L85
            java.lang.Class r0 = r0.getSuperclass()     // Catch: java.lang.Throwable -> L85
            java.lang.Class r0 = r0.getSuperclass()     // Catch: java.lang.Throwable -> L85
            if (r0 == 0) goto L85
            java.lang.String r3 = "scroller"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L85
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L85
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L85
            android.widget.OverScroller r0 = (android.widget.OverScroller) r0     // Catch: java.lang.Throwable -> L85
            r2 = r0
        L85:
            if (r2 == 0) goto L8a
            r2.forceFinished(r1)
        L8a:
            boolean r5 = super.onInterceptTouchEvent(r6, r7, r8)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.FlingBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final /* bridge */ /* synthetic */ void onNestedFling(View view) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        Rect rect2 = this.focusScrollRect;
        rect2.set(rect);
        coordinatorLayout.offsetDescendantRectToMyCoords(appBarLayout, rect2);
        int height = coordinatorLayout.getHeight();
        int i = rect2.top;
        if (i <= 0 && rect2.bottom >= height) {
            return false;
        }
        int i2 = rect2.bottom;
        if (i2 <= height) {
            if (i >= 0) {
                return false;
            }
            i = -(height - i2);
        }
        return setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, getTopBottomOffsetForScrollingSibling() - i, appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange()), 0) == i;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
        return this.allowScroll && super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i, i2);
    }
}
