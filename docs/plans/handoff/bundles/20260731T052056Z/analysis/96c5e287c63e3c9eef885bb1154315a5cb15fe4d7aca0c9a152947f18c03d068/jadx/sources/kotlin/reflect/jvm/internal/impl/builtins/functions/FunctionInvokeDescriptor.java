package kotlin.reflect.jvm.internal.impl.builtins.functions;

import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.util.OperatorNameConventions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FunctionInvokeDescriptor extends SimpleFunctionDescriptorImpl {
    public FunctionInvokeDescriptor(DeclarationDescriptor declarationDescriptor, FunctionInvokeDescriptor functionInvokeDescriptor, CallableMemberDescriptor.Kind kind, boolean z) {
        super(declarationDescriptor, functionInvokeDescriptor, Annotations.Companion.EMPTY, OperatorNameConventions.INVOKE, kind, SourceElement.NO_SOURCE);
        this.isOperator = true;
        this.isSuspend = z;
        this.hasStableParameterNames = false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        declarationDescriptor.getClass();
        kind.getClass();
        annotations.getClass();
        return new FunctionInvokeDescriptor(declarationDescriptor, (FunctionInvokeDescriptor) functionDescriptor, kind, this.isSuspend);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl doSubstitute(FunctionDescriptorImpl.CopyConfiguration copyConfiguration) {
        Name name;
        FunctionInvokeDescriptor functionInvokeDescriptor = (FunctionInvokeDescriptor) super.doSubstitute(copyConfiguration);
        if (functionInvokeDescriptor == null) {
            return null;
        }
        List valueParameters = functionInvokeDescriptor.getValueParameters();
        valueParameters.getClass();
        if (valueParameters.isEmpty()) {
            return functionInvokeDescriptor;
        }
        Iterator it = valueParameters.iterator();
        while (it.hasNext()) {
            KotlinType type = ((ValueParameterDescriptorImpl) it.next()).getType();
            type.getClass();
            if (ContextsKt.extractParameterNameFromFunctionTypeArgument(type) != null) {
                List valueParameters2 = functionInvokeDescriptor.getValueParameters();
                valueParameters2.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(valueParameters2, 10));
                Iterator it2 = valueParameters2.iterator();
                while (it2.hasNext()) {
                    KotlinType type2 = ((ValueParameterDescriptorImpl) it2.next()).getType();
                    type2.getClass();
                    arrayList.add(ContextsKt.extractParameterNameFromFunctionTypeArgument(type2));
                }
                int size = functionInvokeDescriptor.getValueParameters().size() - arrayList.size();
                boolean z = true;
                if (size == 0) {
                    List valueParameters3 = functionInvokeDescriptor.getValueParameters();
                    valueParameters3.getClass();
                    ArrayList zip = CollectionsKt.zip(arrayList, valueParameters3);
                    if (zip.isEmpty()) {
                        return functionInvokeDescriptor;
                    }
                    Iterator it3 = zip.iterator();
                    while (it3.hasNext()) {
                        Pair pair = (Pair) it3.next();
                        if (!Intrinsics.areEqual((Name) pair.first, ((ValueParameterDescriptorImpl) pair.second).getName())) {
                        }
                    }
                    return functionInvokeDescriptor;
                }
                List<ValueParameterDescriptorImpl> valueParameters4 = functionInvokeDescriptor.getValueParameters();
                valueParameters4.getClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(valueParameters4, 10));
                for (ValueParameterDescriptorImpl valueParameterDescriptorImpl : valueParameters4) {
                    Name name2 = valueParameterDescriptorImpl.getName();
                    name2.getClass();
                    int i = valueParameterDescriptorImpl.index;
                    int i2 = i - size;
                    if (i2 >= 0 && (name = (Name) arrayList.get(i2)) != null) {
                        name2 = name;
                    }
                    arrayList2.add(valueParameterDescriptorImpl.copy(functionInvokeDescriptor, name2, i));
                }
                FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = functionInvokeDescriptor.newCopyBuilder(TypeSubstitutor.EMPTY);
                if (!arrayList.isEmpty()) {
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        if (((Name) it4.next()) == null) {
                            break;
                        }
                    }
                }
                z = false;
                newCopyBuilder.newHasSynthesizedParameterNames = Boolean.valueOf(z);
                newCopyBuilder.newValueParameterDescriptors = arrayList2;
                newCopyBuilder.original = functionInvokeDescriptor.getOriginal();
                FunctionDescriptorImpl doSubstitute = super.doSubstitute(newCopyBuilder);
                doSubstitute.getClass();
                return doSubstitute;
            }
        }
        return functionInvokeDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isTailrec() {
        return false;
    }
}
