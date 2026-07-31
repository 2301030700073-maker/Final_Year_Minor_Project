package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import androidx.room.Room;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory$RuntimeSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.util.Check;
import kotlin.reflect.jvm.internal.impl.util.CheckResult$SuccessCheck;
import kotlin.reflect.jvm.internal.impl.util.Checks;
import kotlin.reflect.jvm.internal.impl.util.OperatorChecks;
import kotlin.text.Regex;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaMethodDescriptor extends SimpleFunctionDescriptorImpl implements JavaCallableMemberDescriptor {
    public final boolean isForRecordComponent;
    public ParameterNamesStatus parameterNamesStatus;
    public static final AnonymousClass1 ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER = new AnonymousClass1();
    public static final AnonymousClass1 HAS_ERASED_VALUE_PARAMETERS = new AnonymousClass1();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor$1, reason: invalid class name */
    public final class AnonymousClass1 implements CallableDescriptor.UserDataKey {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum ParameterNamesStatus {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);

        public final boolean isStable;
        public final boolean isSynthesized;

        ParameterNamesStatus(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 13 || i == 18 || i == 21) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 18 || i == 21) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 15:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "contextReceiverParameters";
                break;
            case 10:
                objArr[0] = "typeParameters";
                break;
            case 11:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case IMAGE_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_COLUMN_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[0] = "newOwner";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case RADIO_ROW_VALUE:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 13) {
            objArr[1] = "initialize";
        } else if (i == 18) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "initialize";
                break;
            case IMAGE_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_COLUMN_VALUE:
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[2] = "createSubstitutedCopy";
                break;
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 13 && i != 18 && i != 21) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaMethodDescriptor(DeclarationDescriptor declarationDescriptor, SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement, boolean z) {
        super(declarationDescriptor, simpleFunctionDescriptorImpl, annotations, name, kind, sourceElement);
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
        this.parameterNamesStatus = null;
        this.isForRecordComponent = z;
    }

    public static JavaMethodDescriptor createJavaMethod(DeclarationDescriptor declarationDescriptor, LazyJavaAnnotations lazyJavaAnnotations, Name name, RuntimeSourceElementFactory$RuntimeSourceElement runtimeSourceElementFactory$RuntimeSourceElement, boolean z) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (name != null) {
            return new JavaMethodDescriptor(declarationDescriptor, null, lazyJavaAnnotations, name, CallableMemberDescriptor.Kind.DECLARATION, runtimeSourceElementFactory$RuntimeSourceElement, z);
        }
        $$$reportNull$$$0(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(14);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(16);
            throw null;
        }
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) functionDescriptor;
        if (name == null) {
            name = getName();
        }
        JavaMethodDescriptor javaMethodDescriptor = new JavaMethodDescriptor(declarationDescriptor, simpleFunctionDescriptorImpl, annotations, name, kind, sourceElement, this.isForRecordComponent);
        ParameterNamesStatus parameterNamesStatus = this.parameterNamesStatus;
        javaMethodDescriptor.setParameterNamesStatus(parameterNamesStatus.isStable, parameterNamesStatus.isSynthesized);
        return javaMethodDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    public final JavaCallableMemberDescriptor enhance(KotlinType kotlinType, ArrayList arrayList, KotlinType kotlinType2, Pair pair) {
        ArrayList copyValueParameters = Room.copyValueParameters(arrayList, getValueParameters(), this);
        ReceiverParameterDescriptorImpl createExtensionReceiverParameterForCallable = kotlinType == null ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(this, kotlinType, Annotations.Companion.EMPTY);
        FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
        newCopyBuilder.newValueParameterDescriptors = copyValueParameters;
        newCopyBuilder.newReturnType = kotlinType2;
        newCopyBuilder.newExtensionReceiverParameter = createExtensionReceiverParameterForCallable;
        newCopyBuilder.dropOriginalInContainingParts = true;
        newCopyBuilder.preserveSourceElement = true;
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) newCopyBuilder.this$0.doSubstitute(newCopyBuilder);
        if (pair != null) {
            CallableDescriptor.UserDataKey userDataKey = (CallableDescriptor.UserDataKey) pair.first;
            Object obj = pair.second;
            Map map = javaMethodDescriptor.userDataMap;
            if (map == null) {
                map = new LinkedHashMap();
                javaMethodDescriptor.userDataMap = map;
            }
            map.put(userDataKey, obj);
        }
        if (javaMethodDescriptor != null) {
            return javaMethodDescriptor;
        }
        $$$reportNull$$$0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final boolean hasSynthesizedParameterNames() {
        return this.parameterNamesStatus.isSynthesized;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl
    public final SimpleFunctionDescriptorImpl initialize(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, Map map) {
        CheckResult$SuccessCheck checkResult$SuccessCheck;
        if (list == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(10);
            throw null;
        }
        if (list3 == null) {
            $$$reportNull$$$0(11);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        super.initialize(receiverParameterDescriptorImpl, receiverParameterDescriptorImpl2, list, list2, list3, kotlinType, modality, anonymousClass1, map);
        for (Checks checks : OperatorChecks.checks) {
            Regex regex = checks.regex;
            Name name = checks.name;
            if (name == null || Intrinsics.areEqual(getName(), name)) {
                if (regex != null) {
                    String asString = getName().asString();
                    asString.getClass();
                    if (!regex.matches(asString)) {
                        continue;
                    }
                }
                Collection collection = checks.nameList;
                if (collection == null || collection.contains(getName())) {
                    Check[] checkArr = checks.checks;
                    int length = checkArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            checkResult$SuccessCheck = ((String) checks.additionalCheck.invoke(this)) != null ? new CheckResult$SuccessCheck(false) : CheckResult$SuccessCheck.INSTANCE;
                        } else {
                            if (checkArr[i].invoke(this) != null) {
                                checkResult$SuccessCheck = new CheckResult$SuccessCheck(false);
                                break;
                            }
                            i++;
                        }
                    }
                    this.isOperator = checkResult$SuccessCheck.endOfPaginationReached;
                    return this;
                }
            }
        }
        checkResult$SuccessCheck = CheckResult$SuccessCheck.INSTANCE$1;
        this.isOperator = checkResult$SuccessCheck.endOfPaginationReached;
        return this;
    }

    public final void setParameterNamesStatus(boolean z, boolean z2) {
        ParameterNamesStatus parameterNamesStatus = z ? z2 ? ParameterNamesStatus.STABLE_SYNTHESIZED : ParameterNamesStatus.STABLE_DECLARED : z2 ? ParameterNamesStatus.NON_STABLE_SYNTHESIZED : ParameterNamesStatus.NON_STABLE_DECLARED;
        if (parameterNamesStatus != null) {
            this.parameterNamesStatus = parameterNamesStatus;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("@NotNull method kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus.get must not return null");
        }
    }
}
