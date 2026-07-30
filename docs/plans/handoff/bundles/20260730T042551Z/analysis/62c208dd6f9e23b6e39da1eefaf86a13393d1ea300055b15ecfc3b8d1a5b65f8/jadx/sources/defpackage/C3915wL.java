package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: wL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3915wL {

    /* renamed from: do, reason: not valid java name */
    public static final Method f16320do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f16321do;

    static {
        f16321do = Build.VERSION.SDK_INT >= 27;
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f16320do = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m8568do(View view) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return view.getLayoutDirection() == 1;
    }
}
