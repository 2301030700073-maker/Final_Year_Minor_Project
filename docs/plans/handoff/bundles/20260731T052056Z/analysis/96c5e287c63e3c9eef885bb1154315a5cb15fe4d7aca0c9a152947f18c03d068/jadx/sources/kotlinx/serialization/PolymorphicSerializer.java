package kotlinx.serialization;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PolymorphicSerializer extends AbstractPolymorphicSerializer {
    public final List _annotations;
    public final KClass baseClass;
    public final Lazy descriptor$delegate;

    public PolymorphicSerializer(KClass kClass) {
        kClass.getClass();
        this.baseClass = kClass;
        this._annotations = EmptyList.INSTANCE;
        this.descriptor$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Worker$$ExternalSyntheticLambda0(23, this));
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KClass getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    public final String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + this.baseClass + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PolymorphicSerializer(KClass kClass, Annotation[] annotationArr) {
        this(kClass);
        kClass.getClass();
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }
}
