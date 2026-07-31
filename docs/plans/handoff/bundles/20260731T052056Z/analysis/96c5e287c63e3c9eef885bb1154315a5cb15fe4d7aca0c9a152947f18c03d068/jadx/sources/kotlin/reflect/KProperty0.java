package kotlin.reflect;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.KProperty0Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KProperty0 extends KProperty, Function0 {
    Object get();

    KProperty0Impl.Getter getGetter();
}
