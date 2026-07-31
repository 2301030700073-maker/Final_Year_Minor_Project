package kotlin.reflect;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.KProperty1Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KProperty1 extends KProperty, Function1 {
    Object get(Object obj);

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    KProperty1Impl.Getter getGetter();
}
