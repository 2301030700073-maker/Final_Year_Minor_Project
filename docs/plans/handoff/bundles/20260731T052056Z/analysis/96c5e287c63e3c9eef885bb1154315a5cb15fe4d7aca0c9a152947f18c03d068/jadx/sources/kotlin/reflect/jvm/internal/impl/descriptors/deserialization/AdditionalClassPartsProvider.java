package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface AdditionalClassPartsProvider {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class None implements AdditionalClassPartsProvider, PlatformDependentDeclarationFilter {
        public static final None INSTANCE = new None(0);
        public static final None INSTANCE$1 = new None(1);
        public static final None INSTANCE$2 = new None(2);
        public static final None INSTANCE$3 = new None(3);
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ None(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection getConstructors(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
            return EmptyList.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection getFunctions(Name name, ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
            moduleAwareClassDescriptor.getClass();
            return EmptyList.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection getFunctionsNames(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
            moduleAwareClassDescriptor.getClass();
            return EmptyList.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection getSupertypes(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
            return EmptyList.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter
        public boolean isFunctionAvailable(ModuleAwareClassDescriptor moduleAwareClassDescriptor, DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
            int i = this.$r8$classId;
            moduleAwareClassDescriptor.getClass();
            switch (i) {
                case 1:
                    return true;
                default:
                    return !deserializedSimpleFunctionDescriptor.getAnnotations().hasAnnotation(PlatformDependentDeclarationFilterKt.PLATFORM_DEPENDENT_ANNOTATION_FQ_NAME);
            }
        }
    }

    Collection getConstructors(ModuleAwareClassDescriptor moduleAwareClassDescriptor);

    Collection getFunctions(Name name, ModuleAwareClassDescriptor moduleAwareClassDescriptor);

    Collection getFunctionsNames(ModuleAwareClassDescriptor moduleAwareClassDescriptor);

    Collection getSupertypes(ModuleAwareClassDescriptor moduleAwareClassDescriptor);
}
