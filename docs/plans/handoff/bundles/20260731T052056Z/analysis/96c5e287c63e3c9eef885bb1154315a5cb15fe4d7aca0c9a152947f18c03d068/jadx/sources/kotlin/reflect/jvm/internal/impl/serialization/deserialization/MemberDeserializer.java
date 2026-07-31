package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt$createAndroidViewNodeFactory$1$1;
import androidx.room.Room;
import coil3.ImageLoader$Builder;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.NonEmptyDeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.text.UStringsKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberDeserializer {
    public final FormBody.Builder annotationDeserializer;
    public final HCaptcha c;

    public MemberDeserializer(HCaptcha hCaptcha) {
        this.c = hCaptcha;
        ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) hCaptcha.result;
        this.annotationDeserializer = new FormBody.Builder((ModuleDescriptor) activityGalleryBinding.licenseIcon, (ImageLoader$Builder) activityGalleryBinding.ctaButtonText);
    }

    public final AbstractApplier asProtoContainer(DeclarationDescriptor declarationDescriptor) {
        if (!(declarationDescriptor instanceof PackageFragmentDescriptor)) {
            if (declarationDescriptor instanceof DeserializedClassDescriptor) {
                return ((DeserializedClassDescriptor) declarationDescriptor).thisAsProtoContainer;
            }
            return null;
        }
        final FqName fqName = ((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) declarationDescriptor)).fqName;
        HCaptcha hCaptcha = this.c;
        final NameResolver nameResolver = (NameResolver) hCaptcha.hCaptchaException;
        final Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        final DeserializedContainerSource deserializedContainerSource = (DeserializedContainerSource) hCaptcha.activity;
        return new AbstractApplier(fqName, nameResolver, dispatcher$promoteAndExecute$Effects, deserializedContainerSource) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Package
            public final FqName fqName;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(nameResolver, dispatcher$promoteAndExecute$Effects, deserializedContainerSource);
                fqName.getClass();
                nameResolver.getClass();
                this.fqName = fqName;
            }

            @Override // androidx.compose.runtime.AbstractApplier
            public final FqName debugFqName() {
                return this.fqName;
            }
        };
    }

    public final Annotations getAnnotations(AbstractMessageLite abstractMessageLite, int i, AnnotatedCallableKind annotatedCallableKind) {
        return !Flags.HAS_ANNOTATIONS.get(i).booleanValue() ? Annotations.Companion.EMPTY : new NonEmptyDeserializedAnnotations((LockBasedStorageManager) ((ActivityGalleryBinding) this.c.result).captionEditButton, new MemberDeserializer$getAnnotations$1(this, abstractMessageLite, annotatedCallableKind, 0));
    }

    public final Annotations getPropertyFieldAnnotations(ProtoBuf$Property protoBuf$Property, boolean z) {
        return !Flags.HAS_ANNOTATIONS.get(protoBuf$Property.flags_).booleanValue() ? Annotations.Companion.EMPTY : new NonEmptyDeserializedAnnotations((LockBasedStorageManager) ((ActivityGalleryBinding) this.c.result).captionEditButton, new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(this, z, protoBuf$Property));
    }

    public final DeserializedClassConstructorDescriptor loadConstructor(ProtoBuf$Constructor protoBuf$Constructor, boolean z) {
        HCaptcha childContext;
        DescriptorVisibilities.AnonymousClass1 anonymousClass1;
        HCaptcha hCaptcha = this.c;
        DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) hCaptcha.onSuccessListeners;
        declarationDescriptor.getClass();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) declarationDescriptor;
        int i = protoBuf$Constructor.flags_;
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        DeserializedClassConstructorDescriptor deserializedClassConstructorDescriptor = new DeserializedClassConstructorDescriptor(moduleAwareClassDescriptor, null, getAnnotations(protoBuf$Constructor, i, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, protoBuf$Constructor, (NameResolver) hCaptcha.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners, (VersionRequirementTable) hCaptcha.onOpenListeners, (DeserializedContainerSource) hCaptcha.activity, null);
        childContext = hCaptcha.childContext(deserializedClassConstructorDescriptor, EmptyList.INSTANCE, (NameResolver) hCaptcha.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners, (VersionRequirementTable) hCaptcha.onOpenListeners, (BinaryVersion) hCaptcha.handler);
        MemberDeserializer memberDeserializer = (MemberDeserializer) childContext.internalConfig;
        List list = protoBuf$Constructor.valueParameter_;
        list.getClass();
        List valueParameters = memberDeserializer.valueParameters(list, protoBuf$Constructor, annotatedCallableKind);
        ProtoBuf$Visibility protoBuf$Visibility = (ProtoBuf$Visibility) Flags.VISIBILITY.get(protoBuf$Constructor.flags_);
        switch (protoBuf$Visibility == null ? -1 : ProtoEnumFlagsUtilsKt$WhenMappings.$EnumSwitchMapping$2[protoBuf$Visibility.ordinal()]) {
            case 1:
                anonymousClass1 = DescriptorVisibilities.INTERNAL;
                anonymousClass1.getClass();
                break;
            case 2:
                anonymousClass1 = DescriptorVisibilities.PRIVATE;
                anonymousClass1.getClass();
                break;
            case 3:
                anonymousClass1 = DescriptorVisibilities.PRIVATE_TO_THIS;
                anonymousClass1.getClass();
                break;
            case 4:
                anonymousClass1 = DescriptorVisibilities.PROTECTED;
                anonymousClass1.getClass();
                break;
            case 5:
                anonymousClass1 = DescriptorVisibilities.PUBLIC;
                anonymousClass1.getClass();
                break;
            case 6:
                anonymousClass1 = DescriptorVisibilities.LOCAL;
                anonymousClass1.getClass();
                break;
            default:
                anonymousClass1 = DescriptorVisibilities.PRIVATE;
                anonymousClass1.getClass();
                break;
        }
        deserializedClassConstructorDescriptor.initialize(valueParameters, anonymousClass1);
        deserializedClassConstructorDescriptor.setReturnType(moduleAwareClassDescriptor.getDefaultType());
        deserializedClassConstructorDescriptor.isExpect = moduleAwareClassDescriptor.isExpect();
        deserializedClassConstructorDescriptor.hasStableParameterNames = !Flags.IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES.get(protoBuf$Constructor.flags_).booleanValue();
        return deserializedClassConstructorDescriptor;
    }

    public final DeserializedSimpleFunctionDescriptor loadFunction(ProtoBuf$Function protoBuf$Function) {
        int i;
        HCaptcha childContext;
        KotlinType type;
        HCaptcha hCaptcha = this.c;
        NameResolver nameResolver = (NameResolver) hCaptcha.hCaptchaException;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        int i2 = 1;
        if ((protoBuf$Function.bitField0_ & 1) == 1) {
            i = protoBuf$Function.flags_;
        } else {
            int i3 = protoBuf$Function.oldFlags_;
            i = ((i3 >> 8) << 6) + (i3 & 63);
        }
        int i4 = i;
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        Annotations annotations = getAnnotations(protoBuf$Function, i4, annotatedCallableKind);
        int i5 = protoBuf$Function.bitField0_;
        int i6 = i5 & 32;
        Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$1 = Annotations.Companion.EMPTY;
        Annotations deserializedAnnotations = (i6 == 32 || (i5 & 64) == 64) ? new DeserializedAnnotations((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha.result).captionEditButton, new MemberDeserializer$getAnnotations$1(this, protoBuf$Function, annotatedCallableKind, i2)) : annotations$Companion$EMPTY$1;
        VersionRequirementTable versionRequirementTable = DescriptorUtilsKt.getFqNameSafe((DeclarationDescriptor) hCaptcha.onSuccessListeners).child(Room.getName(nameResolver, protoBuf$Function.name_)).equals(SuspendFunctionTypeUtilKt.KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME) ? VersionRequirementTable.EMPTY : (VersionRequirementTable) hCaptcha.onOpenListeners;
        DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) hCaptcha.onSuccessListeners;
        Name name = Room.getName(nameResolver, protoBuf$Function.name_);
        ProtoBuf$MemberKind protoBuf$MemberKind = (ProtoBuf$MemberKind) Flags.MEMBER_KIND.get(i4);
        int i7 = protoBuf$MemberKind == null ? -1 : ProtoEnumFlagsUtilsKt$WhenMappings.$EnumSwitchMapping$0[protoBuf$MemberKind.ordinal()];
        Annotations annotations2 = deserializedAnnotations;
        DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor = new DeserializedSimpleFunctionDescriptor(declarationDescriptor, null, annotations, name, i7 != 1 ? i7 != 2 ? i7 != 3 ? i7 != 4 ? CallableMemberDescriptor.Kind.DECLARATION : CallableMemberDescriptor.Kind.SYNTHESIZED : CallableMemberDescriptor.Kind.DELEGATION : CallableMemberDescriptor.Kind.FAKE_OVERRIDE : CallableMemberDescriptor.Kind.DECLARATION, protoBuf$Function, (NameResolver) hCaptcha.hCaptchaException, dispatcher$promoteAndExecute$Effects, versionRequirementTable, (DeserializedContainerSource) hCaptcha.activity, null);
        List list = protoBuf$Function.typeParameter_;
        list.getClass();
        childContext = hCaptcha.childContext(deserializedSimpleFunctionDescriptor, list, (NameResolver) hCaptcha.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners, (VersionRequirementTable) hCaptcha.onOpenListeners, (BinaryVersion) hCaptcha.handler);
        GsonBuilder gsonBuilder = (GsonBuilder) childContext.captchaVerifier;
        int i8 = protoBuf$Function.bitField0_;
        ProtoBuf$Type protoBuf$Type = (i8 & 32) == 32 ? protoBuf$Function.receiverType_ : (i8 & 64) == 64 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$Function.receiverTypeId_) : null;
        ReceiverParameterDescriptorImpl createExtensionReceiverParameterForCallable = (protoBuf$Type == null || (type = gsonBuilder.type(protoBuf$Type)) == null) ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(deserializedSimpleFunctionDescriptor, type, annotations2);
        DeclarationDescriptor declarationDescriptor2 = (DeclarationDescriptor) hCaptcha.onSuccessListeners;
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor2 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor2 : null;
        ReceiverParameterDescriptorImpl thisAsReceiverParameter = moduleAwareClassDescriptor != null ? moduleAwareClassDescriptor.getThisAsReceiverParameter() : null;
        List list2 = protoBuf$Function.contextReceiverType_;
        if (list2.isEmpty()) {
            list2 = null;
        }
        if (list2 == null) {
            List<Integer> list3 = protoBuf$Function.contextReceiverTypeId_;
            list3.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
            for (Integer num : list3) {
                num.getClass();
                arrayList.add(dispatcher$promoteAndExecute$Effects.get(num.intValue()));
            }
            list2 = arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        int i9 = 0;
        for (Object obj : list2) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            ReceiverParameterDescriptorImpl createContextReceiverParameterForCallable = DescriptorFactory.createContextReceiverParameterForCallable(deserializedSimpleFunctionDescriptor, gsonBuilder.type((ProtoBuf$Type) obj), null, annotations$Companion$EMPTY$1, i9);
            if (createContextReceiverParameterForCallable != null) {
                arrayList2.add(createContextReceiverParameterForCallable);
            }
            i9 = i10;
        }
        List ownTypeParameters = gsonBuilder.getOwnTypeParameters();
        MemberDeserializer memberDeserializer = (MemberDeserializer) childContext.internalConfig;
        List list4 = protoBuf$Function.valueParameter_;
        list4.getClass();
        deserializedSimpleFunctionDescriptor.initialize(createExtensionReceiverParameterForCallable, thisAsReceiverParameter, arrayList2, ownTypeParameters, memberDeserializer.valueParameters(list4, protoBuf$Function, AnnotatedCallableKind.FUNCTION), gsonBuilder.type(DpKt.returnType(protoBuf$Function, dispatcher$promoteAndExecute$Effects)), ProtoEnumFlags.modality((ProtoBuf$Modality) Flags.MODALITY.get(i4)), UStringsKt.descriptorVisibility((ProtoBuf$Visibility) Flags.VISIBILITY.get(i4)), EmptyMap.INSTANCE);
        deserializedSimpleFunctionDescriptor.isOperator = Flags.IS_OPERATOR.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isInfix = Flags.IS_INFIX.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isExternal = Flags.IS_EXTERNAL_FUNCTION.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isInline = Flags.IS_INLINE.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isTailrec = Flags.IS_TAILREC.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isSuspend = Flags.IS_SUSPEND.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.isExpect = Flags.IS_EXPECT_FUNCTION.get(i4).booleanValue();
        deserializedSimpleFunctionDescriptor.hasStableParameterNames = !Flags.IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES.get(i4).booleanValue();
        ((ProtoEnumFlags) ((ActivityGalleryBinding) hCaptcha.result).ctaContainer).getClass();
        return deserializedSimpleFunctionDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0225  */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl] */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r2v30, types: [kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedLazyValue] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor loadProperty(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r28) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer.loadProperty(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property):kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [kotlin.reflect.jvm.internal.impl.types.KotlinType] */
    /* JADX WARN: Type inference failed for: r21v2 */
    public final List valueParameters(List list, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind) {
        int i;
        ProtoBuf$Type protoBuf$Type;
        Annotations annotations;
        MemberDeserializer memberDeserializer = this;
        HCaptcha hCaptcha = memberDeserializer.c;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        GsonBuilder gsonBuilder = (GsonBuilder) hCaptcha.captchaVerifier;
        DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) hCaptcha.onSuccessListeners;
        declarationDescriptor.getClass();
        CallableDescriptor callableDescriptor = (CallableDescriptor) declarationDescriptor;
        DeclarationDescriptor containingDeclaration = callableDescriptor.getContainingDeclaration();
        containingDeclaration.getClass();
        AbstractApplier asProtoContainer = memberDeserializer.asProtoContainer(containingDeclaration);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) obj;
            int i4 = (protoBuf$ValueParameter.bitField0_ & 1) == 1 ? protoBuf$ValueParameter.flags_ : 0;
            if (asProtoContainer == null || !Flags.HAS_ANNOTATIONS.get(i4).booleanValue()) {
                i = i2;
                protoBuf$Type = null;
                annotations = Annotations.Companion.EMPTY;
            } else {
                i = i2;
                protoBuf$Type = null;
                annotations = new NonEmptyDeserializedAnnotations((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha.result).captionEditButton, new AndroidView_androidKt$createAndroidViewNodeFactory$1$1(i, 1, memberDeserializer, asProtoContainer, abstractMessageLite, annotatedCallableKind, protoBuf$ValueParameter));
            }
            Name name = Room.getName((NameResolver) hCaptcha.hCaptchaException, protoBuf$ValueParameter.name_);
            KotlinType type = gsonBuilder.type(DpKt.type(protoBuf$ValueParameter, dispatcher$promoteAndExecute$Effects));
            boolean booleanValue = Flags.DECLARES_DEFAULT_VALUE.get(i4).booleanValue();
            boolean booleanValue2 = Flags.IS_CROSSINLINE.get(i4).booleanValue();
            boolean booleanValue3 = Flags.IS_NOINLINE.get(i4).booleanValue();
            int i5 = protoBuf$ValueParameter.bitField0_;
            ProtoBuf$Type protoBuf$Type2 = (i5 & 16) == 16 ? protoBuf$ValueParameter.varargElementType_ : (i5 & 32) == 32 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$ValueParameter.varargElementTypeId_) : protoBuf$Type;
            ?? type2 = protoBuf$Type2 != null ? gsonBuilder.type(protoBuf$Type2) : protoBuf$Type;
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(callableDescriptor, null, i, annotations, name, type, booleanValue, booleanValue2, booleanValue3, type2, SourceElement.NO_SOURCE));
            memberDeserializer = this;
            arrayList = arrayList2;
            i2 = i3;
        }
        return CollectionsKt.toList(arrayList);
    }
}
