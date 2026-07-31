package kotlin.reflect.jvm.internal.impl.resolve;

import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.text.Regex;
import kotlinx.coroutines.internal.Symbol;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DescriptorFactory {
    public static final Symbol RESOLUTION_ANCHOR_PROVIDER_CAPABILITY = new Symbol(8, "ResolutionAnchorProvider");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DefaultClassConstructorDescriptor extends ClassConstructorDescriptorImpl {
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 12 || i == 23 || i == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 23 || i == 25) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
            case 8:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case 31:
            case 33:
            case 35:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case IMAGE_VALUE:
            case 15:
            case VERTICAL_GRID_ITEM_VALUE:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case RADIO_BUTTON_VALUE:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case RADIO_ROW_VALUE:
                objArr[0] = "containingClass";
                break;
            case RADIO_COLUMN_VALUE:
                objArr[0] = "source";
                break;
            case SIZE_BOX_VALUE:
            case 24:
            case 26:
                objArr[0] = "enumClass";
                break;
            case 27:
            case 28:
            case 29:
                objArr[0] = "descriptor";
                break;
            case 30:
            case 32:
            case 34:
                objArr[0] = "owner";
                break;
        }
        if (i == 12) {
            objArr[1] = "createSetter";
        } else if (i == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
                objArr[2] = "createGetter";
                break;
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case SIZE_BOX_VALUE:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "createEnumEntriesProperty";
                break;
            case 27:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 28:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 29:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 30:
            case 31:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            case 32:
            case 33:
                objArr[2] = "createContextReceiverParameterForCallable";
                break;
            case 34:
            case 35:
                objArr[2] = "createContextReceiverParameterForClass";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 12 && i != 23 && i != 25) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public static final void computeSealedSubclasses$collectSubclasses(ModuleAwareClassDescriptor moduleAwareClassDescriptor, LinkedHashSet linkedHashSet, MemberScope memberScope, boolean z) {
        for (DeclarationDescriptor declarationDescriptor : UtilsKt.getContributedDescriptors$default(memberScope, DescriptorKindFilter.CLASSIFIERS, 2)) {
            if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
                ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = (ModuleAwareClassDescriptor) declarationDescriptor;
                if (moduleAwareClassDescriptor2.isExpect()) {
                    Name name = moduleAwareClassDescriptor2.getName();
                    name.getClass();
                    ClassifierDescriptor contributedClassifier = memberScope.getContributedClassifier(name, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                    moduleAwareClassDescriptor2 = contributedClassifier instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) contributedClassifier : contributedClassifier instanceof DeserializedTypeAliasDescriptor ? ((DeserializedTypeAliasDescriptor) contributedClassifier).getClassDescriptor() : null;
                }
                if (moduleAwareClassDescriptor2 != null) {
                    int i = DescriptorUtils.$r8$clinit;
                    Iterator it = moduleAwareClassDescriptor2.getTypeConstructor().getSupertypes().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (DescriptorUtils.isSameClass((KotlinType) it.next(), moduleAwareClassDescriptor.getOriginal())) {
                                linkedHashSet.add(moduleAwareClassDescriptor2);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (z) {
                        MemberScope unsubstitutedInnerClassesScope = moduleAwareClassDescriptor2.getUnsubstitutedInnerClassesScope();
                        unsubstitutedInnerClassesScope.getClass();
                        computeSealedSubclasses$collectSubclasses(moduleAwareClassDescriptor, linkedHashSet, unsubstitutedInnerClassesScope, z);
                    }
                }
            }
        }
    }

    public static ReceiverParameterDescriptorImpl createContextReceiverParameterForCallable(CallableDescriptor callableDescriptor, KotlinType kotlinType, Name name, Annotations annotations, int i) {
        if (annotations == null) {
            $$$reportNull$$$0(33);
            throw null;
        }
        if (kotlinType == null) {
            return null;
        }
        ContextReceiver contextReceiver = new ContextReceiver(callableDescriptor, kotlinType, name);
        Regex regex = NameUtils.SANITIZE_AS_JAVA_INVALID_CHARACTERS;
        return new ReceiverParameterDescriptorImpl(callableDescriptor, contextReceiver, annotations, Name.identifier("_context_receiver_" + i));
    }

    public static PropertyGetterDescriptorImpl createDefaultGetter(PropertyDescriptor propertyDescriptor, Annotations annotations) {
        return createGetter(propertyDescriptor, annotations, true, propertyDescriptor.getSource());
    }

    public static PropertySetterDescriptorImpl createDefaultSetter(PropertyDescriptor propertyDescriptor, Annotations annotations) {
        SourceElement source = propertyDescriptor.getSource();
        if (source != null) {
            return createSetter(propertyDescriptor, annotations, Annotations.Companion.EMPTY, true, propertyDescriptor.getVisibility(), source);
        }
        $$$reportNull$$$0(6);
        throw null;
    }

    public static PropertyDescriptorImpl createEnumEntriesProperty(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(26);
            throw null;
        }
        ModuleAwareClassDescriptor findClassAcrossModuleDependencies = DescriptorUtilKt.findClassAcrossModuleDependencies(DescriptorUtils.getContainingModule(moduleAwareClassDescriptor), StandardClassIds.EnumEntries);
        if (findClassAcrossModuleDependencies == null) {
            return null;
        }
        Modality modality = Modality.FINAL;
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
        Name name = StandardNames.ENUM_ENTRIES;
        CallableMemberDescriptor.Kind kind = CallableMemberDescriptor.Kind.SYNTHESIZED;
        PropertyDescriptorImpl create = PropertyDescriptorImpl.create(moduleAwareClassDescriptor, modality, anonymousClass1, false, name, kind, moduleAwareClassDescriptor.getSource());
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl = new PropertyGetterDescriptorImpl(create, Annotations.Companion.EMPTY, modality, anonymousClass1, false, false, false, kind, null, moduleAwareClassDescriptor.getSource());
        create.initialize(propertyGetterDescriptorImpl, null, null, null);
        TypeAttributes.Companion.getClass();
        TypeAttributes typeAttributes = TypeAttributes.Empty;
        TypeConstructor typeConstructor = findClassAcrossModuleDependencies.getTypeConstructor();
        List singletonList = Collections.singletonList(new StarProjectionImpl(moduleAwareClassDescriptor.getDefaultType()));
        typeAttributes.getClass();
        typeConstructor.getClass();
        singletonList.getClass();
        SimpleType simpleType$default = KotlinTypeKt.simpleType$default(singletonList, typeAttributes, typeConstructor, false);
        List list = Collections.EMPTY_LIST;
        create.setType(simpleType$default, list, null, null, list);
        propertyGetterDescriptorImpl.initialize(create.getReturnType());
        return create;
    }

    public static SimpleFunctionDescriptorImpl createEnumValueOfMethod(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(24);
            throw null;
        }
        SimpleFunctionDescriptorImpl create = SimpleFunctionDescriptorImpl.create(moduleAwareClassDescriptor, StandardNames.ENUM_VALUE_OF, CallableMemberDescriptor.Kind.SYNTHESIZED, moduleAwareClassDescriptor.getSource());
        ValueParameterDescriptorImpl valueParameterDescriptorImpl = new ValueParameterDescriptorImpl(create, null, 0, Annotations.Companion.EMPTY, Name.identifier("value"), DescriptorUtilsKt.getBuiltIns(moduleAwareClassDescriptor).getStringType(), false, false, false, null, moduleAwareClassDescriptor.getSource());
        List list = Collections.EMPTY_LIST;
        return create.mo829initialize((ReceiverParameterDescriptorImpl) null, (ReceiverParameterDescriptorImpl) null, list, list, Collections.singletonList(valueParameterDescriptorImpl), (KotlinType) moduleAwareClassDescriptor.getDefaultType(), Modality.FINAL, DescriptorVisibilities.PUBLIC);
    }

    public static SimpleFunctionDescriptorImpl createEnumValuesMethod(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(22);
            throw null;
        }
        SimpleFunctionDescriptorImpl create = SimpleFunctionDescriptorImpl.create(moduleAwareClassDescriptor, StandardNames.ENUM_VALUES, CallableMemberDescriptor.Kind.SYNTHESIZED, moduleAwareClassDescriptor.getSource());
        List list = Collections.EMPTY_LIST;
        return create.mo829initialize((ReceiverParameterDescriptorImpl) null, (ReceiverParameterDescriptorImpl) null, list, list, list, (KotlinType) DescriptorUtilsKt.getBuiltIns(moduleAwareClassDescriptor).getArrayType(Variance.INVARIANT, moduleAwareClassDescriptor.getDefaultType()), Modality.FINAL, DescriptorVisibilities.PUBLIC);
    }

    public static ReceiverParameterDescriptorImpl createExtensionReceiverParameterForCallable(CallableDescriptor callableDescriptor, KotlinType kotlinType, Annotations annotations) {
        if (kotlinType == null) {
            return null;
        }
        return new ReceiverParameterDescriptorImpl(callableDescriptor, new ExtensionReceiver(callableDescriptor, kotlinType), annotations);
    }

    public static PropertyGetterDescriptorImpl createGetter(PropertyDescriptor propertyDescriptor, Annotations annotations, boolean z, SourceElement sourceElement) {
        if (annotations == null) {
            $$$reportNull$$$0(18);
            throw null;
        }
        if (sourceElement != null) {
            return new PropertyGetterDescriptorImpl(propertyDescriptor, annotations, propertyDescriptor.getModality(), propertyDescriptor.getVisibility(), z, false, false, CallableMemberDescriptor.Kind.DECLARATION, null, sourceElement);
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    public static PropertySetterDescriptorImpl createSetter(PropertyDescriptor propertyDescriptor, Annotations annotations, Annotations annotations2, boolean z, DescriptorVisibilities.AnonymousClass1 anonymousClass1, SourceElement sourceElement) {
        if (annotations == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        if (annotations2 == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(10);
            throw null;
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(11);
            throw null;
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(propertyDescriptor, annotations, propertyDescriptor.getModality(), anonymousClass1, z, false, false, CallableMemberDescriptor.Kind.DECLARATION, null, sourceElement);
        propertySetterDescriptorImpl.parameter = PropertySetterDescriptorImpl.createSetterParameter(propertySetterDescriptorImpl, propertyDescriptor.getType(), annotations2);
        return propertySetterDescriptorImpl;
    }

    public static boolean isEnumSpecialMethod(FunctionDescriptor functionDescriptor) {
        return functionDescriptor.getKind() == CallableMemberDescriptor.Kind.SYNTHESIZED && DescriptorUtils.isKindOf(functionDescriptor.getContainingDeclaration(), ClassKind.ENUM_CLASS);
    }

    public static final Collection selectMostSpecificInEachOverridableGroup(Collection collection, Function1 function1) {
        collection.getClass();
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        SmartSet smartSet = new SmartSet();
        while (!linkedList.isEmpty()) {
            Object first = CollectionsKt.first((List) linkedList);
            SmartSet smartSet2 = new SmartSet();
            ArrayList extractMembersOverridableInBothWays = OverridingUtil.extractMembersOverridableInBothWays(first, linkedList, function1, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(17, smartSet2));
            if (extractMembersOverridableInBothWays.size() == 1 && smartSet2.isEmpty()) {
                Object single = CollectionsKt.single((Iterable) extractMembersOverridableInBothWays);
                single.getClass();
                smartSet.add(single);
            } else {
                Object selectMostSpecificMember = OverridingUtil.selectMostSpecificMember(extractMembersOverridableInBothWays, function1);
                CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(selectMostSpecificMember);
                Iterator it = extractMembersOverridableInBothWays.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    next.getClass();
                    if (!OverridingUtil.isMoreSpecific(callableDescriptor, (CallableDescriptor) function1.invoke(next))) {
                        smartSet2.add(next);
                    }
                }
                if (!smartSet2.isEmpty()) {
                    smartSet.addAll(smartSet2);
                }
                smartSet.add(selectMostSpecificMember);
            }
        }
        return smartSet;
    }

    public abstract void addFakeOverride(CallableMemberDescriptor callableMemberDescriptor);

    public abstract void conflict(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2);

    public void setOverriddenDescriptors(CallableMemberDescriptor callableMemberDescriptor, Collection collection) {
        callableMemberDescriptor.getClass();
        callableMemberDescriptor.setOverriddenDescriptors(collection);
    }
}
