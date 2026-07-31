package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JvmAbi {
    public static final FqName JVM_FIELD_ANNOTATION_FQ_NAME;
    public static final ClassId REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION;

    static {
        FqName fqName = new FqName("kotlin.jvm.JvmField");
        JVM_FIELD_ANNOTATION_FQ_NAME = fqName;
        ClassId.topLevel(fqName);
        ClassId.topLevel(new FqName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION = ClassId.fromString("kotlin/jvm/internal/RepeatableContainer", false);
    }

    public static final String getterName(String str) {
        str.getClass();
        return startsWithIsPrefix(str) ? str : "get".concat(ResultKt.capitalizeAsciiOnly(str));
    }

    public static final boolean startsWithIsPrefix(String str) {
        str.getClass();
        if (StringsKt__StringsJVMKt.startsWith(str, "is", false) && str.length() != 2) {
            char charAt = str.charAt(2);
            if (Intrinsics.compare(97, (int) charAt) > 0 || Intrinsics.compare((int) charAt, 122) > 0) {
                return true;
            }
        }
        return false;
    }
}
