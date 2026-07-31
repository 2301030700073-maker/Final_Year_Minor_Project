package kotlin.reflect.jvm.internal.impl.resolve;

import androidx.work.Operation$State;
import java.util.Comparator;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberComparator$NameAndTypeMemberComparator implements Comparator {
    public static final MemberComparator$NameAndTypeMemberComparator INSTANCE = new MemberComparator$NameAndTypeMemberComparator(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MemberComparator$NameAndTypeMemberComparator(int i) {
        this.$r8$classId = i;
    }

    public static int getDeclarationPriority(DeclarationDescriptor declarationDescriptor) {
        if (DescriptorUtils.isEnumEntry(declarationDescriptor)) {
            return 8;
        }
        if (declarationDescriptor instanceof ConstructorDescriptor) {
            return 7;
        }
        if (declarationDescriptor instanceof PropertyDescriptor) {
            return ((PropertyDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 6 : 5;
        }
        if (declarationDescriptor instanceof FunctionDescriptor) {
            return ((FunctionDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 4 : 3;
        }
        if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
            return 2;
        }
        return declarationDescriptor instanceof DeserializedTypeAliasDescriptor ? 1 : 0;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Integer valueOf;
        switch (this.$r8$classId) {
            case 0:
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                DeclarationDescriptor declarationDescriptor2 = (DeclarationDescriptor) obj2;
                int declarationPriority = getDeclarationPriority(declarationDescriptor2) - getDeclarationPriority(declarationDescriptor);
                if (declarationPriority != 0) {
                    valueOf = Integer.valueOf(declarationPriority);
                } else if (DescriptorUtils.isEnumEntry(declarationDescriptor) && DescriptorUtils.isEnumEntry(declarationDescriptor2)) {
                    valueOf = 0;
                } else {
                    int compareTo = declarationDescriptor.getName().name.compareTo(declarationDescriptor2.getName().name);
                    valueOf = compareTo != 0 ? Integer.valueOf(compareTo) : null;
                }
                if (valueOf != null) {
                    return valueOf.intValue();
                }
                return 0;
            default:
                return Operation$State.compareValues(DescriptorUtilsKt.getFqNameSafe((ModuleAwareClassDescriptor) obj).asString(), DescriptorUtilsKt.getFqNameSafe((ModuleAwareClassDescriptor) obj2).asString());
        }
    }
}
