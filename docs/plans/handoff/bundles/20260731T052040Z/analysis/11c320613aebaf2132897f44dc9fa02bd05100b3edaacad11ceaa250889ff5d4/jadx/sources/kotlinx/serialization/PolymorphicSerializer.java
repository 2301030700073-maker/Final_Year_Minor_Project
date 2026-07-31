package kotlinx.serialization;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.ClassReference;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PolymorphicSerializer extends AbstractPolymorphicSerializer {
    public final ClassReference baseClass;
    public final Lazy descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Worker$$ExternalSyntheticLambda0(this, 28));

    public PolymorphicSerializer(ClassReference classReference) {
        this.baseClass = classReference;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final ClassReference getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    public final String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + this.baseClass + ')';
    }
}
