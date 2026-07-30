package b.e.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import b.b.c.C0020t;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f775a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f776b;

    static {
        new AtomicInteger(1);
        f775a = null;
        f776b = false;
        new WeakHashMap();
    }

    public static void A(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    public static void B(View view) {
        view.requestApplyInsets();
    }

    public static void C(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
    }

    public static void D(View view, C0088b c0088b) {
        if (c0088b == null && (view.getAccessibilityDelegate() instanceof C0087a)) {
            c0088b = new C0088b();
        }
        view.setAccessibilityDelegate(c0088b == null ? null : c0088b.mBridge);
    }

    public static void E(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void F(View view, float f) {
        view.setElevation(f);
    }

    public static void G(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    public static void H(View view, C0020t c0020t) {
        view.setOnApplyWindowInsetsListener(new k(c0020t));
    }

    public static void I(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }

    public static void J(View view, String str) {
        view.setTransitionName(str);
    }

    public static void K(View view, float f) {
        view.setTranslationZ(f);
    }

    public static void L(View view, float f) {
        view.setZ(f);
    }

    public static void M(View view) {
        view.stopNestedScroll();
    }

    public static t a(View view) {
        if (f775a == null) {
            f775a = new WeakHashMap();
        }
        t tVar = (t) f775a.get(view);
        if (tVar != null) {
            return tVar;
        }
        t tVar2 = new t(view);
        f775a.put(view, tVar2);
        return tVar2;
    }

    public static D b(View view, D d2, Rect rect) {
        WindowInsets g = d2.g();
        if (g != null) {
            return D.h(view.computeSystemWindowInsets(g, rect));
        }
        rect.setEmpty();
        return d2;
    }

    public static boolean c(View view, KeyEvent keyEvent) {
        return false;
    }

    public static C0088b d(View view) {
        View.AccessibilityDelegate accessibilityDelegate = view.getAccessibilityDelegate();
        if (accessibilityDelegate == null) {
            return null;
        }
        return accessibilityDelegate instanceof C0087a ? ((C0087a) accessibilityDelegate).f759a : new C0088b(accessibilityDelegate);
    }

    public static ColorStateList e(View view) {
        return view.getBackgroundTintList();
    }

    public static Display f(View view) {
        return view.getDisplay();
    }

    public static int g(View view) {
        return view.getImportantForAccessibility();
    }

    @SuppressLint({"InlinedApi"})
    public static int h(View view) {
        return view.getImportantForAutofill();
    }

    public static int i(View view) {
        return view.getLayoutDirection();
    }

    public static int j(View view) {
        return view.getMinimumHeight();
    }

    public static int k(View view) {
        return view.getMinimumWidth();
    }

    public static D l(View view) {
        return D.h(view.getRootWindowInsets());
    }

    public static String m(View view) {
        return view.getTransitionName();
    }

    public static float n(View view) {
        return view.getTranslationZ();
    }

    public static int o(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static float p(View view) {
        return view.getZ();
    }

    public static boolean q(View view) {
        return view.hasOnClickListeners();
    }

    public static boolean r(View view) {
        return view.hasTransientState();
    }

    public static boolean s(View view) {
        return view.isAttachedToWindow();
    }

    public static boolean t(View view) {
        return view.isLaidOut();
    }

    public static boolean u(View view) {
        Boolean bool = (Boolean) new l(R.id.tag_screen_reader_focusable, Boolean.class, 28).b(view);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static D v(View view, D d2) {
        WindowInsets g = d2.g();
        if (g == null) {
            return d2;
        }
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(g);
        return !onApplyWindowInsets.equals(g) ? new D(onApplyWindowInsets) : d2;
    }

    public static void w(View view, b.e.i.E.d dVar) {
        view.onInitializeAccessibilityNodeInfo(dVar.f753a);
    }

    public static boolean x(View view, int i, Bundle bundle) {
        return view.performAccessibilityAction(i, bundle);
    }

    public static void y(View view) {
        view.postInvalidateOnAnimation();
    }

    public static void z(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
