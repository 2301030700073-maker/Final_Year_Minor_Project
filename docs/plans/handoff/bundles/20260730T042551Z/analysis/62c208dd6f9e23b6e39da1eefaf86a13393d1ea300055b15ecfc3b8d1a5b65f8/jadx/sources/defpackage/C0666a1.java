package defpackage;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: a1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0666a1 {

    /* renamed from: do, reason: not valid java name */
    public static final ViewGroup.MarginLayoutParams f4921do;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f4921do = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m3106do(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m3106do(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }
}
