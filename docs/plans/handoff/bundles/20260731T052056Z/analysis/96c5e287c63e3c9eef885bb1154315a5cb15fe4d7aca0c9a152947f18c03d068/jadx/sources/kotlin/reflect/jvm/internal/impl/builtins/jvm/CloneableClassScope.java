package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.room.Room;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CloneableClassScope extends GivenFunctionsMemberScope {
    public static final Name CLONE_NAME = Name.identifier("clone");

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    public final List computeDeclaredFunctions() {
        CallableMemberDescriptor.Kind kind = CallableMemberDescriptor.Kind.DECLARATION;
        SourceFile$1 sourceFile$1 = SourceElement.NO_SOURCE;
        AbstractClassDescriptor abstractClassDescriptor = this.containingClass;
        SimpleFunctionDescriptorImpl create = SimpleFunctionDescriptorImpl.create(abstractClassDescriptor, CLONE_NAME, kind, sourceFile$1);
        ReceiverParameterDescriptorImpl thisAsReceiverParameter = abstractClassDescriptor.getThisAsReceiverParameter();
        SimpleType anyType = DescriptorUtilsKt.getBuiltIns(abstractClassDescriptor).getAnyType();
        Modality modality = Modality.OPEN;
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PROTECTED;
        EmptyList emptyList = EmptyList.INSTANCE;
        create.mo829initialize((ReceiverParameterDescriptorImpl) null, thisAsReceiverParameter, (List) emptyList, (List) emptyList, (List) emptyList, (KotlinType) anyType, modality, anonymousClass1);
        return Room.listOf(create);
    }
}
