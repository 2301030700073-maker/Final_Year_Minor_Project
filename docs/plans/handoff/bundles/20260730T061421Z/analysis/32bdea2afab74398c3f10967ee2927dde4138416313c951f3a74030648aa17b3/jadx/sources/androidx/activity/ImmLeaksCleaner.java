package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Lifecycle$Event;
import b.j.InterfaceC0138h;
import b.j.j;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class ImmLeaksCleaner implements InterfaceC0138h {

    /* renamed from: b, reason: collision with root package name */
    public static int f6b;

    /* renamed from: c, reason: collision with root package name */
    public static Field f7c;

    /* renamed from: d, reason: collision with root package name */
    public static Field f8d;
    public static Field e;

    /* renamed from: a, reason: collision with root package name */
    public Activity f9a;

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_DESTROY) {
            return;
        }
        if (f6b == 0) {
            try {
                f6b = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f8d = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                e = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f7c = declaredField3;
                declaredField3.setAccessible(true);
                f6b = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f6b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f9a.getSystemService("input_method");
            try {
                Object obj = f7c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f8d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (ClassCastException unused3) {
                        } catch (IllegalAccessException unused4) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
