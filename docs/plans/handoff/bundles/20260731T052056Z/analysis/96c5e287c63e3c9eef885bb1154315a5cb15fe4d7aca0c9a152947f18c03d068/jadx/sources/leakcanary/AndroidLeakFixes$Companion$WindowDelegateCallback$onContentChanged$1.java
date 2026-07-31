package leakcanary;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1 extends Lambda implements Function1 {
    public static final AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1 INSTANCE = new AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((Function0) obj).getClass();
        return Boolean.valueOf(!((Boolean) r1.invoke()).booleanValue());
    }
}
