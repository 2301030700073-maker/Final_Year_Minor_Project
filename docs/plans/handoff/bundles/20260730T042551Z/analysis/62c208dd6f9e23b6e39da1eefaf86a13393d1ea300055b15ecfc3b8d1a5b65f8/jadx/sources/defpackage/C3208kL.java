package defpackage;

import android.view.View;
import android.view.ViewParent;

/* renamed from: kL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3208kL {
    /* renamed from: case, reason: not valid java name */
    public static boolean m7231case(ViewParent viewParent, View view, View view2, int i) {
        return viewParent.onStartNestedScroll(view, view2, i);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m7232do(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return viewParent.onNestedFling(view, f, f2, z);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7233else(ViewParent viewParent, View view) {
        viewParent.onStopNestedScroll(view);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7234for(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        viewParent.onNestedPreScroll(view, i, i2, iArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m7235if(ViewParent viewParent, View view, float f, float f2) {
        return viewParent.onNestedPreFling(view, f, f2);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7236new(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        viewParent.onNestedScroll(view, i, i2, i3, i4);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7237try(ViewParent viewParent, View view, View view2, int i) {
        viewParent.onNestedScrollAccepted(view, view2, i);
    }
}
