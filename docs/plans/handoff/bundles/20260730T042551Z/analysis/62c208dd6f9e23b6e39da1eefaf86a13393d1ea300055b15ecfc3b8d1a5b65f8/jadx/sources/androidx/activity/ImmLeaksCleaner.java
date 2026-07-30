package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Ctry;
import defpackage.InterfaceC2714eq;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements Celse {

    /* renamed from: do, reason: not valid java name */
    public static Field f5116do;

    /* renamed from: for, reason: not valid java name */
    public static int f5117for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static Field f5118for;

    /* renamed from: if, reason: not valid java name */
    public static Field f5119if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f5120do;

    public ImmLeaksCleaner(Activity activity) {
        this.f5120do = activity;
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        if (cdo != Ctry.Cdo.ON_DESTROY) {
            return;
        }
        if (f5117for == 0) {
            try {
                f5117for = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f5119if = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f5118for = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f5116do = declaredField3;
                declaredField3.setAccessible(true);
                f5117for = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f5117for == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f5120do.getSystemService("input_method");
            try {
                Object obj = f5116do.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f5119if.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f5118for.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused3) {
                    } catch (IllegalAccessException unused4) {
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
