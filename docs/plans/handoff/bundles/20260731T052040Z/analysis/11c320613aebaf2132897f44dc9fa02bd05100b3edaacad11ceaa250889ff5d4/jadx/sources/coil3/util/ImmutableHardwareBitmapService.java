package coil3.util;

import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import coil3.size.Size;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.modules.SerializersModuleCollector;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImmutableHardwareBitmapService implements HardwareBitmapService, SerializersModuleCollector {
    public final boolean allowHardware;

    public ImmutableHardwareBitmapService(JsonConfiguration jsonConfiguration) {
        this.allowHardware = jsonConfiguration.classDiscriminatorMode != ClassDiscriminatorMode.NONE;
    }

    @Override // coil3.util.HardwareBitmapService
    public boolean allowHardwareMainThread(Size size) {
        return this.allowHardware;
    }

    @Override // coil3.util.HardwareBitmapService
    public boolean allowHardwareWorkerThread() {
        return this.allowHardware;
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public void contextual(ClassReference classReference, Function1 function1) {
        classReference.getClass();
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public void polymorphic(ClassReference classReference, ClassReference classReference2, KSerializer kSerializer) {
        Jsoup kind = kSerializer.getDescriptor().getKind();
        if ((kind instanceof PolymorphicKind$OPEN) || Intrinsics.areEqual(kind, SerialKind$CONTEXTUAL.INSTANCE)) {
            DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Serializer for ", classReference2.getSimpleName(), " can't be registered as a subclass for polymorphic serialization because its kind ", kind, " is not concrete. To work with multiple hierarchies, register it as a base class.");
            return;
        }
        if (this.allowHardware) {
            if (Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE$2) || Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE) || (kind instanceof PrimitiveKind$INT) || (kind instanceof SerialKind$ENUM)) {
                DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Serializer for ", classReference2.getSimpleName(), " of kind ", kind, " cannot be serialized polymorphically with class discriminator.");
            }
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public void contextual(ClassReference classReference, KSerializer kSerializer) {
    }

    public ImmutableHardwareBitmapService(boolean z) {
        this.allowHardware = z;
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public void polymorphicDefaultDeserializer(ClassReference classReference, Function1 function1) {
    }

    @Override // kotlinx.serialization.modules.SerializersModuleCollector
    public void polymorphicDefaultSerializer(ClassReference classReference, Function1 function1) {
    }
}
