package io.ktor.utils.io.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Utils.kt */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final int getIOIntProperty(String name, int i) {
        String str;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            str = System.getProperty("io.ktor.utils.io." + name);
        } catch (SecurityException unused) {
            str = null;
        }
        return (str == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) ? i : intOrNull.intValue();
    }
}
