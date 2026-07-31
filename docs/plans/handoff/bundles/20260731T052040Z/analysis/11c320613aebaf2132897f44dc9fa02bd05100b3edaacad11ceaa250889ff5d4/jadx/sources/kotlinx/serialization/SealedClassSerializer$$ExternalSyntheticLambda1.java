package kotlinx.serialization;

import androidx.work.OperationKt;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.internal.StringSerializer;
import org.mozilla.javascript.ES6Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SealedClassSerializer$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SealedClassSerializer f$0;

    public /* synthetic */ SealedClassSerializer$$ExternalSyntheticLambda1(SealedClassSerializer sealedClassSerializer, int i) {
        this.$r8$classId = i;
        this.f$0 = sealedClassSerializer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SealedClassSerializer sealedClassSerializer = this.f$0;
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
        switch (i) {
            case 0:
                classSerialDescriptorBuilder.getClass();
                ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "type", StringSerializer.descriptor);
                ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, ES6Iterator.VALUE_PROPERTY, OperationKt.buildSerialDescriptor("kotlinx.serialization.Sealed<" + sealedClassSerializer.baseClass.getSimpleName() + '>', SerialKind$CONTEXTUAL.INSTANCE, new SerialDescriptor[0], new SealedClassSerializer$$ExternalSyntheticLambda1(sealedClassSerializer, 1)));
                List list = sealedClassSerializer._annotations;
                list.getClass();
                classSerialDescriptorBuilder.annotations = list;
                break;
            default:
                classSerialDescriptorBuilder.getClass();
                for (Map.Entry entry : sealedClassSerializer.serialName2Serializer.entrySet()) {
                    ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, (String) entry.getKey(), ((KSerializer) entry.getValue()).getDescriptor());
                }
                break;
        }
        return unit;
    }
}
