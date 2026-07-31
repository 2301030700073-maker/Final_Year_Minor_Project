package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComputedValueHolder implements ValueHolder {
    public final Function1 compute;

    public ComputedValueHolder(Function1 function1) {
        this.compute = function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ComputedValueHolder) && this.compute.equals(((ComputedValueHolder) obj).compute);
    }

    public final int hashCode() {
        return this.compute.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object readValue(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        return this.compute.invoke(persistentCompositionLocalHashMap);
    }

    public final String toString() {
        return "ComputedValueHolder(compute=" + this.compute + ')';
    }
}
