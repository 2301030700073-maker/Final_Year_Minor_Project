package androidx.lifecycle.viewmodel;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewModelInitializer {
    public final ClassReference clazz;
    public final Function1 initializer;

    public ViewModelInitializer(ClassReference classReference, Function1 function1) {
        this.clazz = classReference;
        this.initializer = function1;
    }
}
