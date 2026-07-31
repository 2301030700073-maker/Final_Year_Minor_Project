package org.mozilla.javascript;

import j$.util.function.BiFunction$CC;
import java.lang.reflect.Method;
import java.util.function.BiFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class JavaMembers$$ExternalSyntheticLambda0 implements BiFunction {
    public /* synthetic */ BiFunction andThen(java.util.function.Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Method moreConcreteMethod;
        moreConcreteMethod = JavaMembers.getMoreConcreteMethod((Method) obj, (Method) obj2);
        return moreConcreteMethod;
    }
}
