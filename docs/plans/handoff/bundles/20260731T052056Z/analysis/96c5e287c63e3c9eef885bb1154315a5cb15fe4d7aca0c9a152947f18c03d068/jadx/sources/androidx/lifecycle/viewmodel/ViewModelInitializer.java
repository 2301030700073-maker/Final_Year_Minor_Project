package androidx.lifecycle.viewmodel;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewModelInitializer {
    public final KClass clazz;
    public final Function1 initializer;

    public ViewModelInitializer(KClass kClass, Function1 function1) {
        kClass.getClass();
        function1.getClass();
        this.clazz = kClass;
        this.initializer = function1;
    }
}
