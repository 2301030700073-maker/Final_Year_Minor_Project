package kotlin.reflect;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.KMutableProperty;

/* compiled from: KProperty.kt */
/* loaded from: classes2.dex */
public interface KMutableProperty0 extends KProperty0, KMutableProperty {

    /* compiled from: KProperty.kt */
    public interface Setter extends KMutableProperty.Setter, Function1 {
    }

    @Override // kotlin.reflect.KMutableProperty
    Setter getSetter();
}
