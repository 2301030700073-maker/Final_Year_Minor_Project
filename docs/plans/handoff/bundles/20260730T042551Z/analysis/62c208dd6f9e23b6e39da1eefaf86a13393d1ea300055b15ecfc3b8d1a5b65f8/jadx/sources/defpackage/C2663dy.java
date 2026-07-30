package defpackage;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* renamed from: dy, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2663dy {
    /* renamed from: do, reason: not valid java name */
    public static <V> PropertyValuesHolder m6479do(Property<?, V> property, Path path) {
        return PropertyValuesHolder.ofObject(property, (TypeConverter) null, path);
    }
}
