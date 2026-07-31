package kotlin.reflect;

import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.KProperty2Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KProperty2 extends KProperty, Function2 {
    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    KProperty2Impl.Getter getGetter();
}
