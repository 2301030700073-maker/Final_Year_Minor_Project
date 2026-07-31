package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ProvidableCompositionLocal {
    public final LazyValueHolder defaultValueHolder;

    public ProvidableCompositionLocal(Function0 function0) {
        this.defaultValueHolder = new LazyValueHolder(function0);
    }

    public abstract ProvidedValue defaultProvidedValue$runtime(Object obj);

    public ValueHolder getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ValueHolder updatedStateOf$runtime(ProvidedValue providedValue, ValueHolder valueHolder) {
        DynamicValueHolder dynamicValueHolder = null;
        if (valueHolder instanceof DynamicValueHolder) {
            if (providedValue.isDynamic) {
                dynamicValueHolder = (DynamicValueHolder) valueHolder;
                dynamicValueHolder.state.setValue(providedValue.getEffectiveValue$runtime());
            }
        } else if (valueHolder instanceof StaticValueHolder) {
            if ((providedValue.explicitNull || providedValue.providedValue != null) && !providedValue.isDynamic) {
                StaticValueHolder staticValueHolder = (StaticValueHolder) valueHolder;
                if (Intrinsics.areEqual(providedValue.getEffectiveValue$runtime(), staticValueHolder.value)) {
                    dynamicValueHolder = staticValueHolder;
                }
            }
        } else if (valueHolder instanceof ComputedValueHolder) {
            providedValue.getClass();
        }
        if (dynamicValueHolder != null) {
            return dynamicValueHolder;
        }
        if (!providedValue.isDynamic) {
            return new StaticValueHolder(providedValue.getEffectiveValue$runtime());
        }
        Object obj = providedValue.providedValue;
        NeverEqualPolicy neverEqualPolicy = (NeverEqualPolicy) providedValue.mutationPolicy;
        if (neverEqualPolicy == null) {
            neverEqualPolicy = NeverEqualPolicy.INSTANCE$3;
        }
        return new DynamicValueHolder(new ParcelableSnapshotMutableState(obj, neverEqualPolicy));
    }
}
