package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedClassDescriptor$annotations$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DeserializedClassDescriptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DeserializedClassDescriptor$annotations$1(DeserializedClassDescriptor deserializedClassDescriptor, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = deserializedClassDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.Iterable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.util.ArrayList] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object obj;
        DescriptorVisibilities.AnonymousClass1 anonymousClass1;
        ValueClassRepresentation valueClassRepresentation;
        SimpleType valueClassPropertyType;
        ?? r2;
        int i = this.$r8$classId;
        DeserializedClassDescriptor deserializedClassDescriptor = this.this$0;
        switch (i) {
            case 0:
                return CollectionsKt.toList(((AnnotationAndConstantLoader) ((ActivityGalleryBinding) deserializedClassDescriptor.c.result).transitionReceiver).loadClassAnnotations(deserializedClassDescriptor.thisAsProtoContainer));
            case 1:
                return DescriptorUtilKt.computeConstructorTypeParameters(deserializedClassDescriptor);
            case 2:
                ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.classProto;
                if ((protoBuf$Class.bitField0_ & 4) != 4) {
                    return null;
                }
                ClassifierDescriptor contributedClassifier = deserializedClassDescriptor.getMemberScope().getContributedClassifier(Room.getName((NameResolver) deserializedClassDescriptor.c.hCaptchaException, protoBuf$Class.companionObjectName_), NoLookupLocation.FROM_DESERIALIZATION);
                if (contributedClassifier instanceof ModuleAwareClassDescriptor) {
                    return (ModuleAwareClassDescriptor) contributedClassifier;
                }
                return null;
            case 3:
                HCaptcha hCaptcha = deserializedClassDescriptor.c;
                List list = deserializedClassDescriptor.classProto.constructor_;
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (Flags.IS_SECONDARY.get(((ProtoBuf$Constructor) obj2).flags_).booleanValue()) {
                        arrayList.add(obj2);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) it.next();
                    MemberDeserializer memberDeserializer = (MemberDeserializer) hCaptcha.internalConfig;
                    protoBuf$Constructor.getClass();
                    arrayList2.add(memberDeserializer.loadConstructor(protoBuf$Constructor, false));
                }
                return CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) arrayList2, (Iterable) Room.listOfNotNull(deserializedClassDescriptor.getUnsubstitutedPrimaryConstructor())), (Iterable) ((AdditionalClassPartsProvider) ((ActivityGalleryBinding) hCaptcha.result).toolbarContainer).getConstructors(deserializedClassDescriptor));
            case 4:
                DeserializedClassDescriptor deserializedClassDescriptor2 = this.this$0;
                ClassKind classKind = deserializedClassDescriptor2.kind;
                if (!classKind.isSingleton()) {
                    List list2 = deserializedClassDescriptor2.classProto.constructor_;
                    list2.getClass();
                    Iterator it2 = list2.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            obj = it2.next();
                            if (!Flags.IS_SECONDARY.get(((ProtoBuf$Constructor) obj).flags_).booleanValue()) {
                            }
                        } else {
                            obj = null;
                        }
                    }
                    ProtoBuf$Constructor protoBuf$Constructor2 = (ProtoBuf$Constructor) obj;
                    if (protoBuf$Constructor2 != null) {
                        return ((MemberDeserializer) deserializedClassDescriptor2.c.internalConfig).loadConstructor(protoBuf$Constructor2, true);
                    }
                    return null;
                }
                DescriptorFactory.DefaultClassConstructorDescriptor defaultClassConstructorDescriptor = new DescriptorFactory.DefaultClassConstructorDescriptor(deserializedClassDescriptor2, null, Annotations.Companion.EMPTY, true, CallableMemberDescriptor.Kind.DECLARATION, SourceElement.NO_SOURCE);
                List list3 = Collections.EMPTY_LIST;
                int i2 = DescriptorUtils.$r8$clinit;
                if (classKind == ClassKind.ENUM_CLASS || classKind.isSingleton()) {
                    anonymousClass1 = DescriptorVisibilities.PRIVATE;
                    if (anonymousClass1 == null) {
                        DescriptorUtils.$$$reportNull$$$0(49);
                        throw null;
                    }
                } else if (DescriptorUtils.isSealedClass(deserializedClassDescriptor2)) {
                    anonymousClass1 = DescriptorVisibilities.PRIVATE;
                    if (anonymousClass1 == null) {
                        DescriptorUtils.$$$reportNull$$$0(51);
                        throw null;
                    }
                } else if (DescriptorUtils.isAnonymousObject(deserializedClassDescriptor2)) {
                    anonymousClass1 = DescriptorVisibilities.DEFAULT_VISIBILITY;
                    if (anonymousClass1 == null) {
                        DescriptorUtils.$$$reportNull$$$0(52);
                        throw null;
                    }
                } else {
                    anonymousClass1 = DescriptorVisibilities.PUBLIC;
                    if (anonymousClass1 == null) {
                        DescriptorUtils.$$$reportNull$$$0(53);
                        throw null;
                    }
                }
                defaultClassConstructorDescriptor.initialize(list3, anonymousClass1);
                defaultClassConstructorDescriptor.unsubstitutedReturnType = deserializedClassDescriptor2.getDefaultType();
                return defaultClassConstructorDescriptor;
            case 5:
                Modality modality = deserializedClassDescriptor.modality;
                Modality modality2 = Modality.SEALED;
                if (modality == modality2) {
                    List<Integer> list4 = deserializedClassDescriptor.classProto.sealedSubclassFqName_;
                    list4.getClass();
                    if (!list4.isEmpty()) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Integer num : list4) {
                            HCaptcha hCaptcha2 = deserializedClassDescriptor.c;
                            ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) hCaptcha2.result;
                            NameResolver nameResolver = (NameResolver) hCaptcha2.hCaptchaException;
                            num.getClass();
                            ClassId classId = Room.getClassId(nameResolver, num.intValue());
                            ClassDeserializer classDeserializer = (ClassDeserializer) activityGalleryBinding.toolbar;
                            Set set = ClassDeserializer.BLACK_LIST;
                            ModuleAwareClassDescriptor deserializeClass = classDeserializer.deserializeClass(classId, null);
                            if (deserializeClass != null) {
                                arrayList3.add(deserializeClass);
                            }
                        }
                        return arrayList3;
                    }
                    if (modality == modality2) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        DeclarationDescriptor declarationDescriptor = deserializedClassDescriptor.containingDeclaration;
                        if (declarationDescriptor instanceof PackageFragmentDescriptor) {
                            DescriptorFactory.computeSealedSubclasses$collectSubclasses(deserializedClassDescriptor, linkedHashSet, ((PackageFragmentDescriptor) declarationDescriptor).getMemberScope(), false);
                        }
                        DescriptorFactory.computeSealedSubclasses$collectSubclasses(deserializedClassDescriptor, linkedHashSet, deserializedClassDescriptor.getUnsubstitutedInnerClassesScope(), true);
                        return CollectionsKt.sortedWith(linkedHashSet, new MemberComparator$NameAndTypeMemberComparator(1));
                    }
                }
                return EmptyList.INSTANCE;
            default:
                HCaptcha hCaptcha3 = deserializedClassDescriptor.c;
                if (!deserializedClassDescriptor.isInline() && !deserializedClassDescriptor.isValue()) {
                    return null;
                }
                ProtoBuf$Class protoBuf$Class2 = deserializedClassDescriptor.classProto;
                NameResolver nameResolver2 = (NameResolver) hCaptcha3.hCaptchaException;
                Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha3.onFailureListeners;
                GsonBuilder gsonBuilder = (GsonBuilder) hCaptcha3.captchaVerifier;
                protoBuf$Class2.getClass();
                nameResolver2.getClass();
                if (protoBuf$Class2.multiFieldValueClassUnderlyingName_.size() > 0) {
                    List<Integer> list5 = protoBuf$Class2.multiFieldValueClassUnderlyingName_;
                    list5.getClass();
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list5, 10));
                    for (Integer num2 : list5) {
                        num2.getClass();
                        arrayList4.add(Name.guessByFirstCharacter(nameResolver2.getString(num2.intValue())));
                    }
                    Pair pair = new Pair(Integer.valueOf(protoBuf$Class2.multiFieldValueClassUnderlyingTypeId_.size()), Integer.valueOf(protoBuf$Class2.multiFieldValueClassUnderlyingType_.size()));
                    if (pair.equals(new Pair(Integer.valueOf(arrayList4.size()), 0))) {
                        List<Integer> list6 = protoBuf$Class2.multiFieldValueClassUnderlyingTypeId_;
                        list6.getClass();
                        r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list6, 10));
                        for (Integer num3 : list6) {
                            num3.getClass();
                            r2.add(dispatcher$promoteAndExecute$Effects.get(num3.intValue()));
                        }
                    } else {
                        if (!pair.equals(new Pair(0, Integer.valueOf(arrayList4.size())))) {
                            throw new IllegalStateException(("class " + Name.guessByFirstCharacter(nameResolver2.getString(protoBuf$Class2.fqName_)) + " has illegal multi-field value class representation").toString());
                        }
                        r2 = protoBuf$Class2.multiFieldValueClassUnderlyingType_;
                    }
                    r2.getClass();
                    ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r2, 10));
                    for (ProtoBuf$Type protoBuf$Type : r2) {
                        protoBuf$Type.getClass();
                        arrayList5.add(gsonBuilder.simpleType(protoBuf$Type, true));
                    }
                    valueClassRepresentation = new MultiFieldValueClassRepresentation(CollectionsKt.zip(arrayList4, arrayList5));
                } else if ((protoBuf$Class2.bitField0_ & 8) == 8) {
                    Name guessByFirstCharacter = Name.guessByFirstCharacter(nameResolver2.getString(protoBuf$Class2.inlineClassUnderlyingPropertyName_));
                    int i3 = protoBuf$Class2.bitField0_;
                    ProtoBuf$Type protoBuf$Type2 = (i3 & 16) == 16 ? protoBuf$Class2.inlineClassUnderlyingType_ : (i3 & 32) == 32 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$Class2.inlineClassUnderlyingTypeId_) : null;
                    if ((protoBuf$Type2 == null || (valueClassPropertyType = gsonBuilder.simpleType(protoBuf$Type2, true)) == null) && (valueClassPropertyType = deserializedClassDescriptor.getValueClassPropertyType(guessByFirstCharacter)) == null) {
                        throw new IllegalStateException(("cannot determine underlying type for value class " + Name.guessByFirstCharacter(nameResolver2.getString(protoBuf$Class2.fqName_)) + " with property " + guessByFirstCharacter).toString());
                    }
                    valueClassRepresentation = new InlineClassRepresentation(guessByFirstCharacter, valueClassPropertyType);
                } else {
                    valueClassRepresentation = null;
                }
                if (valueClassRepresentation != null) {
                    return valueClassRepresentation;
                }
                if (deserializedClassDescriptor.metadataVersion.isAtLeast(1, 5, 1)) {
                    return null;
                }
                ClassConstructorDescriptorImpl unsubstitutedPrimaryConstructor = deserializedClassDescriptor.getUnsubstitutedPrimaryConstructor();
                if (unsubstitutedPrimaryConstructor == null) {
                    Gson$$ExternalSyntheticBUOutline0.m$8("Inline class has no primary constructor: ", deserializedClassDescriptor);
                    return null;
                }
                List valueParameters = unsubstitutedPrimaryConstructor.getValueParameters();
                valueParameters.getClass();
                Name name = ((ValueParameterDescriptorImpl) CollectionsKt.first(valueParameters)).getName();
                name.getClass();
                SimpleType valueClassPropertyType2 = deserializedClassDescriptor.getValueClassPropertyType(name);
                if (valueClassPropertyType2 != null) {
                    return new InlineClassRepresentation(name, valueClassPropertyType2);
                }
                Gson$$ExternalSyntheticBUOutline0.m$8("Value class has no underlying property: ", deserializedClassDescriptor);
                return null;
        }
    }
}
