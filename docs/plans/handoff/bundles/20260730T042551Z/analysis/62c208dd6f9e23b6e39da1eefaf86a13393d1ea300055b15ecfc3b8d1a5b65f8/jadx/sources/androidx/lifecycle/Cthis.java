package androidx.lifecycle;

import androidx.lifecycle.Ctry;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Deprecated
/* renamed from: androidx.lifecycle.this, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cthis {
    Ctry.Cdo value();
}
