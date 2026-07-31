package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInsLoader$Companion$Instance$2 extends Lambda implements Function0 {
    public static final BuiltInsLoader$Companion$Instance$2 INSTANCE = new BuiltInsLoader$Companion$Instance$2(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ServiceLoader load = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
        load.getClass();
        BuiltInsLoader builtInsLoader = (BuiltInsLoader) CollectionsKt.firstOrNull(load);
        if (builtInsLoader != null) {
            return builtInsLoader;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
        return null;
    }
}
