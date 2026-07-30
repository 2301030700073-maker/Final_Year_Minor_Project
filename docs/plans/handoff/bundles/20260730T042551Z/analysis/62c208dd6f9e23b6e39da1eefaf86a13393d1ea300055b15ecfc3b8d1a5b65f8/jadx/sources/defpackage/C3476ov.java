package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* renamed from: ov, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3476ov {
    /* renamed from: do, reason: not valid java name */
    public static <T, V> ObjectAnimator m7744do(T t, Property<T, V> property, Path path) {
        return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
    }
}
