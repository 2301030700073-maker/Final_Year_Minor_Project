package kotlin.reflect;

import kotlin.reflect.KProperty;

/* compiled from: KProperty.kt */
/* loaded from: classes2.dex */
public interface KMutableProperty extends KProperty {

    /* compiled from: KProperty.kt */
    public interface Setter extends KProperty.Accessor, KFunction {
    }

    Setter getSetter();
}
