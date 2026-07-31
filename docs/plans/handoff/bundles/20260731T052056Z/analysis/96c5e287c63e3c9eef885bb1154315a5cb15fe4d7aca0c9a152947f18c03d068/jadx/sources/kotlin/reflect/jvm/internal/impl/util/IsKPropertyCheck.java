package kotlin.reflect.jvm.internal.impl.util;

import androidx.collection.internal.Lock;
import androidx.room.Room;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IsKPropertyCheck implements Check {
    public static final IsKPropertyCheck INSTANCE = new IsKPropertyCheck(0);
    public static final IsKPropertyCheck INSTANCE$1 = new IsKPropertyCheck(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ IsKPropertyCheck(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final boolean check(JavaMethodDescriptor javaMethodDescriptor) {
        SimpleType simpleNotNullType;
        switch (this.$r8$classId) {
            case 0:
                ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) javaMethodDescriptor.getValueParameters().get(1);
                Lock lock = ReflectionTypes.Companion;
                valueParameterDescriptorImpl.getClass();
                int i = DescriptorUtilsKt.$r8$clinit;
                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(valueParameterDescriptorImpl);
                containingModule.getClass();
                lock.getClass();
                ModuleAwareClassDescriptor findClassAcrossModuleDependencies = DescriptorUtilKt.findClassAcrossModuleDependencies(containingModule, StandardNames.FqNames.kProperty);
                if (findClassAcrossModuleDependencies == null) {
                    simpleNotNullType = null;
                } else {
                    TypeAttributes.Companion.getClass();
                    TypeAttributes typeAttributes = TypeAttributes.Empty;
                    List parameters = findClassAcrossModuleDependencies.getTypeConstructor().getParameters();
                    parameters.getClass();
                    Object single = CollectionsKt.single(parameters);
                    single.getClass();
                    simpleNotNullType = KotlinTypeKt.simpleNotNullType(typeAttributes, findClassAcrossModuleDependencies, Room.listOf(new StarProjectionImpl((TypeParameterDescriptor) single)));
                }
                if (simpleNotNullType == null) {
                    return false;
                }
                KotlinType type = valueParameterDescriptorImpl.getType();
                type.getClass();
                return KotlinTypeChecker.DEFAULT.isSubtypeOf(simpleNotNullType, TypeUtils.makeNullableAsSpecified(type, false));
            default:
                List<ValueParameterDescriptorImpl> valueParameters = javaMethodDescriptor.getValueParameters();
                valueParameters.getClass();
                if (!valueParameters.isEmpty()) {
                    for (ValueParameterDescriptorImpl valueParameterDescriptorImpl2 : valueParameters) {
                        valueParameterDescriptorImpl2.getClass();
                        if (DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptorImpl2) || valueParameterDescriptorImpl2.varargElementType != null) {
                            return false;
                        }
                    }
                }
                return true;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        switch (this.$r8$classId) {
            case 0:
                return "second parameter must be of type KProperty<*> or its supertype";
            default:
                return "should not have varargs or parameters with default values";
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String invoke(JavaMethodDescriptor javaMethodDescriptor) {
        switch (this.$r8$classId) {
        }
        return ContextsKt.invoke(this, javaMethodDescriptor);
    }
}
