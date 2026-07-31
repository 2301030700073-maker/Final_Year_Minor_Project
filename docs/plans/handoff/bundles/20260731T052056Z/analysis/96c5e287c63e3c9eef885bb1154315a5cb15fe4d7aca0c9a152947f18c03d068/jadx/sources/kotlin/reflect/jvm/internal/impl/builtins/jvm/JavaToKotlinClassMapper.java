package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaToKotlinClassMapper implements DFS.Neighbors {
    public static final JavaToKotlinClassMapper INSTANCE = new JavaToKotlinClassMapper();

    public static ModuleAwareClassDescriptor convertReadOnlyToMutable(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        FqNameUnsafe fqName = DescriptorUtils.getFqName(moduleAwareClassDescriptor);
        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
        FqName fqName2 = (FqName) JavaToKotlinClassMap.readOnlyToMutable.get(fqName);
        if (fqName2 == null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1(moduleAwareClassDescriptor, " is not a read-only collection", "Given class ");
            return null;
        }
        ModuleAwareClassDescriptor builtInClassByFqName = DescriptorUtilsKt.getBuiltIns(moduleAwareClassDescriptor).getBuiltInClassByFqName(fqName2);
        builtInClassByFqName.getClass();
        return builtInClassByFqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    public Iterable getNeighbors(Object obj) {
        KProperty[] kPropertyArr = JvmBuiltInsCustomizer.$$delegatedProperties;
        return ((CallableMemberDescriptor) obj).getOriginal().getOverriddenDescriptors();
    }
}
