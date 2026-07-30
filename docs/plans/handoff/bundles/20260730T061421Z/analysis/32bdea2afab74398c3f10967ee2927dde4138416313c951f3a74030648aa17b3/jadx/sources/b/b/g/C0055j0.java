package b.b.g;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;

@SuppressLint({"RestrictedAPI"})
/* renamed from: b.b.g.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0055j0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f542a = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f543b = new int[0];

    /* renamed from: c, reason: collision with root package name */
    public static final Rect f544c = new Rect();

    /* renamed from: d, reason: collision with root package name */
    public static Class f545d;

    static {
        try {
            f545d = Class.forName("android.graphics.Insets");
        } catch (ClassNotFoundException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(Drawable drawable) {
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof b.e.d.f.a) {
                return a(((b.e.d.f.a) drawable).a());
            }
            if (drawable instanceof b.b.d.a.a) {
                return a(((b.b.d.a.a) drawable).f326a);
            }
            if (drawable instanceof ScaleDrawable) {
                return a(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!a(drawable2)) {
                return false;
            }
        }
        return true;
    }

    public static void b(Drawable drawable) {
    }

    public static Rect c(Drawable drawable) {
        Insets opticalInsets = drawable.getOpticalInsets();
        Rect rect = new Rect();
        rect.left = opticalInsets.left;
        rect.right = opticalInsets.right;
        rect.top = opticalInsets.top;
        rect.bottom = opticalInsets.bottom;
        return rect;
    }

    public static PorterDuff.Mode d(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
