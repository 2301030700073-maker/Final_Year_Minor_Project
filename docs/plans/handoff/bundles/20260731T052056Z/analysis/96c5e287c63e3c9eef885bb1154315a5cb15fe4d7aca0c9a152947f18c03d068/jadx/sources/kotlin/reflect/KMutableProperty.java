package kotlin.reflect;

import kotlin.reflect.jvm.internal.KPropertyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KMutableProperty extends KProperty {
    KPropertyImpl.Setter getSetter();
}
