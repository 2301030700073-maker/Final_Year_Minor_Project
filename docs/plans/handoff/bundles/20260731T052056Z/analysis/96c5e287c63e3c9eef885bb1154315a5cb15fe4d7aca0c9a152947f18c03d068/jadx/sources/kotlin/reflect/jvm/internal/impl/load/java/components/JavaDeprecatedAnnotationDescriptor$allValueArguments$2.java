package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Collections;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaDeprecatedAnnotationDescriptor$allValueArguments$2 extends Lambda implements Function0 {
    public static final JavaDeprecatedAnnotationDescriptor$allValueArguments$2 INSTANCE = new JavaDeprecatedAnnotationDescriptor$allValueArguments$2(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Map singletonMap = Collections.singletonMap(JavaAnnotationMapper.DEPRECATED_ANNOTATION_MESSAGE, new StringValue("Deprecated in Java"));
        singletonMap.getClass();
        return singletonMap;
    }
}
