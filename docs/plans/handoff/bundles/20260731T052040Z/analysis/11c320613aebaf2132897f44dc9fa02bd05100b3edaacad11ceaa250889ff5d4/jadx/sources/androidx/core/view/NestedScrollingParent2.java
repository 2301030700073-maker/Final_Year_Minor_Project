package androidx.core.view;

import android.view.View;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface NestedScrollingParent2 {
    void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3);

    void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5);

    void onNestedScrollAccepted(int i, int i2, View view, View view2);

    boolean onStartNestedScroll(int i, int i2, View view, View view2);

    void onStopNestedScroll(int i, View view);
}
