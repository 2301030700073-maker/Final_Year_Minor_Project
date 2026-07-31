package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class SimpleFunctionDescriptorImpl extends FunctionDescriptorImpl {
    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 13 || i == 18 || i == 23 || i == 24 || i == 29 || i == 30) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 18 || i == 23 || i == 24 || i == 29 || i == 30) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 27:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 26:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 28:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 15:
            case RADIO_ROW_VALUE:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_COLUMN_VALUE:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case VERTICAL_GRID_ITEM_VALUE:
            case SIZE_BOX_VALUE:
                objArr[0] = "visibility";
                break;
            case IMAGE_VALUE:
            case RADIO_GROUP_VALUE:
            case 23:
            case 24:
            case 29:
            case 30:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case RADIO_BUTTON_VALUE:
                objArr[0] = "contextReceiverParameters";
                break;
            case 25:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 13 || i == 18 || i == 23) {
            objArr[1] = "initialize";
        } else if (i == 24) {
            objArr[1] = "getOriginal";
        } else if (i == 29) {
            objArr[1] = "copy";
        } else if (i != 30) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
                objArr[2] = "initialize";
                break;
            case IMAGE_VALUE:
            case RADIO_GROUP_VALUE:
            case 23:
            case 24:
            case 29:
            case 30:
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 13 && i != 18 && i != 23 && i != 24 && i != 29 && i != 30) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleFunctionDescriptorImpl(DeclarationDescriptor declarationDescriptor, SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        super(kind, declarationDescriptor, simpleFunctionDescriptorImpl, sourceElement, annotations, name);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (sourceElement != null) {
        } else {
            $$$reportNull$$$0(4);
            throw null;
        }
    }

    public static SimpleFunctionDescriptorImpl create(DeclarationDescriptor declarationDescriptor, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        if (name == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        if (sourceElement != null) {
            return new SimpleFunctionDescriptorImpl(declarationDescriptor, null, Annotations.Companion.EMPTY, name, kind, sourceElement);
        }
        $$$reportNull$$$0(9);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public FunctionDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(25);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(26);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(27);
            throw null;
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) functionDescriptor;
        if (name == null) {
            name = getName();
        }
        return new SimpleFunctionDescriptorImpl(declarationDescriptor, simpleFunctionDescriptorImpl, annotations, name, kind, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final SimpleFunctionDescriptorImpl getOriginal() {
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) super.getOriginal();
        if (simpleFunctionDescriptorImpl != null) {
            return simpleFunctionDescriptorImpl;
        }
        $$$reportNull$$$0(24);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* renamed from: initialize, reason: merged with bridge method [inline-methods] */
    public final SimpleFunctionDescriptorImpl mo829initialize(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1) {
        if (list == null) {
            $$$reportNull$$$0(14);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        if (list3 == null) {
            $$$reportNull$$$0(16);
            throw null;
        }
        if (anonymousClass1 != null) {
            return initialize(receiverParameterDescriptorImpl, receiverParameterDescriptorImpl2, list, list2, list3, kotlinType, modality, anonymousClass1, null);
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public FunctionDescriptor.CopyBuilder newCopyBuilder() {
        return newCopyBuilder(TypeSubstitutor.EMPTY);
    }

    public SimpleFunctionDescriptorImpl initialize(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, Map map) {
        if (list == null) {
            $$$reportNull$$$0(19);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(20);
            throw null;
        }
        if (list3 == null) {
            $$$reportNull$$$0(21);
            throw null;
        }
        if (anonymousClass1 != null) {
            super.mo829initialize(receiverParameterDescriptorImpl, receiverParameterDescriptorImpl2, list, list2, list3, kotlinType, modality, anonymousClass1);
            if (map != null && !map.isEmpty()) {
                this.userDataMap = new LinkedHashMap(map);
            }
            return this;
        }
        $$$reportNull$$$0(22);
        throw null;
    }
}
