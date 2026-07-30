package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

/* renamed from: v9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3844v9 {

    /* renamed from: do, reason: not valid java name */
    public static Field f16023do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f16024do;

    /* renamed from: v9$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static ColorStateList m8435do(CompoundButton compoundButton) {
            return compoundButton.getButtonTintList();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m8436for(CompoundButton compoundButton, ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        /* renamed from: if, reason: not valid java name */
        public static PorterDuff.Mode m8437if(CompoundButton compoundButton) {
            return compoundButton.getButtonTintMode();
        }

        /* renamed from: new, reason: not valid java name */
        public static void m8438new(CompoundButton compoundButton, PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    /* renamed from: v9$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Drawable m8439do(CompoundButton compoundButton) {
            Drawable buttonDrawable;
            buttonDrawable = compoundButton.getButtonDrawable();
            return buttonDrawable;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Drawable m8434do(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Cif.m8439do(compoundButton);
        }
        if (!f16024do) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f16023do = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f16024do = true;
        }
        Field field = f16023do;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f16023do = null;
            }
        }
        return null;
    }
}
