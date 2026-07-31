package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import androidx.compose.ui.unit.DpKt;
import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$size$3$1;
import com.caverock.androidsvg.SVG;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$1$1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt$WhenMappings;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.SequencesKt;
import kotlin.uuid.UuidKt;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DeserializedMemberScope extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final HCaptcha c;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue classNames$delegate;
    public final LockBasedStorageManager.LockBasedLazyValue classifierNamesLazy$delegate;
    public final OptimizedImplementation impl;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OptimizedImplementation {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final LockBasedStorageManager.LockBasedNotNullLazyValue functionNames$delegate;
        public final LinkedHashMap functionProtosBytes;
        public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull functions;
        public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull properties;
        public final LinkedHashMap propertyProtosBytes;
        public final /* synthetic */ DeserializedMemberScope this$0;
        public final ViewSizeResolver$size$3$1 typeAliasByName;
        public final LinkedHashMap typeAliasBytes;
        public final LockBasedStorageManager.LockBasedNotNullLazyValue variableNames$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(OptimizedImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(OptimizedImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        }

        public OptimizedImplementation(DeserializedMemberScope deserializedMemberScope, List list, List list2, List list3) {
            list.getClass();
            list2.getClass();
            list3.getClass();
            this.this$0 = deserializedMemberScope;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                Name name = Room.getName((NameResolver) deserializedMemberScope.c.hCaptchaException, ((ProtoBuf$Function) ((AbstractMessageLite) obj)).name_);
                Object obj2 = linkedHashMap.get(name);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(name, obj2);
                }
                ((List) obj2).add(obj);
            }
            this.functionProtosBytes = packToByteArray(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope2 = this.this$0;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : list2) {
                Name name2 = Room.getName((NameResolver) deserializedMemberScope2.c.hCaptchaException, ((ProtoBuf$Property) ((AbstractMessageLite) obj3)).name_);
                Object obj4 = linkedHashMap2.get(name2);
                if (obj4 == null) {
                    obj4 = new ArrayList();
                    linkedHashMap2.put(name2, obj4);
                }
                ((List) obj4).add(obj3);
            }
            this.propertyProtosBytes = packToByteArray(linkedHashMap2);
            ((ProtoEnumFlags) ((ActivityGalleryBinding) this.this$0.c.result).licenseIconBy).getClass();
            DeserializedMemberScope deserializedMemberScope3 = this.this$0;
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Object obj5 : list3) {
                Name name3 = Room.getName((NameResolver) deserializedMemberScope3.c.hCaptchaException, ((ProtoBuf$TypeAlias) ((AbstractMessageLite) obj5)).name_);
                Object obj6 = linkedHashMap3.get(name3);
                if (obj6 == null) {
                    obj6 = new ArrayList();
                    linkedHashMap3.put(name3, obj6);
                }
                ((List) obj6).add(obj5);
            }
            this.typeAliasBytes = packToByteArray(linkedHashMap3);
            final int i = 0;
            this.functions = ((LockBasedStorageManager) ((ActivityGalleryBinding) this.this$0.c.result).captionEditButton).createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functions$1
                public final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj7) {
                    DescriptorVisibilities.AnonymousClass1 anonymousClass1;
                    HCaptcha childContext;
                    ProtoBuf$Type protoBuf$Type;
                    ProtoBuf$Type protoBuf$Type2;
                    int i2 = i;
                    Collection<ProtoBuf$Property> collection = EmptyList.INSTANCE;
                    int i3 = 3;
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.this$0;
                    switch (i2) {
                        case 0:
                            Name name4 = (Name) obj7;
                            name4.getClass();
                            LinkedHashMap linkedHashMap4 = optimizedImplementation.functionProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass12 = ProtoBuf$Function.PARSER;
                            anonymousClass12.getClass();
                            DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.this$0;
                            byte[] bArr = (byte[]) linkedHashMap4.get(name4);
                            if (bArr != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass12, new ByteArrayInputStream(bArr), deserializedMemberScope4, i3)));
                            }
                            ArrayList arrayList = new ArrayList(collection.size());
                            for (ProtoBuf$Function protoBuf$Function : collection) {
                                MemberDeserializer memberDeserializer = (MemberDeserializer) deserializedMemberScope4.c.internalConfig;
                                protoBuf$Function.getClass();
                                DeserializedSimpleFunctionDescriptor loadFunction = memberDeserializer.loadFunction(protoBuf$Function);
                                if (!deserializedMemberScope4.isDeclaredFunctionAvailable(loadFunction)) {
                                    loadFunction = null;
                                }
                                if (loadFunction != null) {
                                    arrayList.add(loadFunction);
                                }
                            }
                            deserializedMemberScope4.computeNonDeclaredFunctions(arrayList, name4);
                            return DFS.compact(arrayList);
                        case 1:
                            Name name5 = (Name) obj7;
                            name5.getClass();
                            LinkedHashMap linkedHashMap5 = optimizedImplementation.propertyProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass13 = ProtoBuf$Property.PARSER;
                            anonymousClass13.getClass();
                            DeserializedMemberScope deserializedMemberScope5 = optimizedImplementation.this$0;
                            byte[] bArr2 = (byte[]) linkedHashMap5.get(name5);
                            if (bArr2 != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass13, new ByteArrayInputStream(bArr2), deserializedMemberScope5, i3)));
                            }
                            ArrayList arrayList2 = new ArrayList(collection.size());
                            for (ProtoBuf$Property protoBuf$Property : collection) {
                                MemberDeserializer memberDeserializer2 = (MemberDeserializer) deserializedMemberScope5.c.internalConfig;
                                protoBuf$Property.getClass();
                                arrayList2.add(memberDeserializer2.loadProperty(protoBuf$Property));
                            }
                            deserializedMemberScope5.computeNonDeclaredProperties$1(arrayList2, name5);
                            return DFS.compact(arrayList2);
                        default:
                            Name name6 = (Name) obj7;
                            name6.getClass();
                            HCaptcha hCaptcha = optimizedImplementation.this$0.c;
                            byte[] bArr3 = (byte[]) optimizedImplementation.typeAliasBytes.get(name6);
                            if (bArr3 == null) {
                                return null;
                            }
                            ProtoBuf$TypeAlias protoBuf$TypeAlias = (ProtoBuf$TypeAlias) ProtoBuf$TypeAlias.PARSER.parseDelimitedFrom(new ByteArrayInputStream(bArr3), (ExtensionRegistryLite) ((ActivityGalleryBinding) hCaptcha.result).infoGradient);
                            if (protoBuf$TypeAlias == null) {
                                return null;
                            }
                            MemberDeserializer memberDeserializer3 = (MemberDeserializer) hCaptcha.internalConfig;
                            HCaptcha hCaptcha2 = memberDeserializer3.c;
                            NameResolver nameResolver = (NameResolver) hCaptcha2.hCaptchaException;
                            Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners;
                            List<ProtoBuf$Annotation> list4 = protoBuf$TypeAlias.annotation_;
                            list4.getClass();
                            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                            for (ProtoBuf$Annotation protoBuf$Annotation : list4) {
                                FormBody.Builder builder = memberDeserializer3.annotationDeserializer;
                                protoBuf$Annotation.getClass();
                                arrayList3.add(builder.deserializeAnnotation(protoBuf$Annotation, nameResolver));
                            }
                            Annotations annotationsImpl = arrayList3.isEmpty() ? Annotations.Companion.EMPTY : new AnnotationsImpl(0, arrayList3);
                            ProtoBuf$Visibility protoBuf$Visibility = (ProtoBuf$Visibility) Flags.VISIBILITY.get(protoBuf$TypeAlias.flags_);
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
                            DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha2.result).captionEditButton, (DeclarationDescriptor) hCaptcha2.onSuccessListeners, annotationsImpl, Room.getName(nameResolver, protoBuf$TypeAlias.name_), anonymousClass1, protoBuf$TypeAlias, (NameResolver) hCaptcha2.hCaptchaException, dispatcher$promoteAndExecute$Effects, (VersionRequirementTable) hCaptcha2.onOpenListeners, (DeserializedContainerSource) hCaptcha2.activity);
                            List list5 = protoBuf$TypeAlias.typeParameter_;
                            list5.getClass();
                            childContext = hCaptcha2.childContext(deserializedTypeAliasDescriptor, list5, (NameResolver) hCaptcha2.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners, (VersionRequirementTable) hCaptcha2.onOpenListeners, (BinaryVersion) hCaptcha2.handler);
                            GsonBuilder gsonBuilder = (GsonBuilder) childContext.captchaVerifier;
                            List ownTypeParameters = gsonBuilder.getOwnTypeParameters();
                            int i4 = protoBuf$TypeAlias.bitField0_;
                            if ((i4 & 4) == 4) {
                                protoBuf$Type = protoBuf$TypeAlias.underlyingType_;
                                protoBuf$Type.getClass();
                            } else {
                                if ((i4 & 8) != 8) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No underlyingType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.underlyingTypeId_);
                            }
                            SimpleType simpleType = gsonBuilder.simpleType(protoBuf$Type, false);
                            int i5 = protoBuf$TypeAlias.bitField0_;
                            if ((i5 & 16) == 16) {
                                protoBuf$Type2 = protoBuf$TypeAlias.expandedType_;
                                protoBuf$Type2.getClass();
                            } else {
                                if ((i5 & 32) != 32) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No expandedType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type2 = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.expandedTypeId_);
                            }
                            deserializedTypeAliasDescriptor.initialize(ownTypeParameters, simpleType, gsonBuilder.simpleType(protoBuf$Type2, false));
                            return deserializedTypeAliasDescriptor;
                    }
                }
            });
            final int i2 = 1;
            this.properties = ((LockBasedStorageManager) ((ActivityGalleryBinding) this.this$0.c.result).captionEditButton).createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functions$1
                public final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj7) {
                    DescriptorVisibilities.AnonymousClass1 anonymousClass1;
                    HCaptcha childContext;
                    ProtoBuf$Type protoBuf$Type;
                    ProtoBuf$Type protoBuf$Type2;
                    int i22 = i2;
                    Collection<ProtoBuf$Property> collection = EmptyList.INSTANCE;
                    int i3 = 3;
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.this$0;
                    switch (i22) {
                        case 0:
                            Name name4 = (Name) obj7;
                            name4.getClass();
                            LinkedHashMap linkedHashMap4 = optimizedImplementation.functionProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass12 = ProtoBuf$Function.PARSER;
                            anonymousClass12.getClass();
                            DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.this$0;
                            byte[] bArr = (byte[]) linkedHashMap4.get(name4);
                            if (bArr != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass12, new ByteArrayInputStream(bArr), deserializedMemberScope4, i3)));
                            }
                            ArrayList arrayList = new ArrayList(collection.size());
                            for (ProtoBuf$Function protoBuf$Function : collection) {
                                MemberDeserializer memberDeserializer = (MemberDeserializer) deserializedMemberScope4.c.internalConfig;
                                protoBuf$Function.getClass();
                                DeserializedSimpleFunctionDescriptor loadFunction = memberDeserializer.loadFunction(protoBuf$Function);
                                if (!deserializedMemberScope4.isDeclaredFunctionAvailable(loadFunction)) {
                                    loadFunction = null;
                                }
                                if (loadFunction != null) {
                                    arrayList.add(loadFunction);
                                }
                            }
                            deserializedMemberScope4.computeNonDeclaredFunctions(arrayList, name4);
                            return DFS.compact(arrayList);
                        case 1:
                            Name name5 = (Name) obj7;
                            name5.getClass();
                            LinkedHashMap linkedHashMap5 = optimizedImplementation.propertyProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass13 = ProtoBuf$Property.PARSER;
                            anonymousClass13.getClass();
                            DeserializedMemberScope deserializedMemberScope5 = optimizedImplementation.this$0;
                            byte[] bArr2 = (byte[]) linkedHashMap5.get(name5);
                            if (bArr2 != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass13, new ByteArrayInputStream(bArr2), deserializedMemberScope5, i3)));
                            }
                            ArrayList arrayList2 = new ArrayList(collection.size());
                            for (ProtoBuf$Property protoBuf$Property : collection) {
                                MemberDeserializer memberDeserializer2 = (MemberDeserializer) deserializedMemberScope5.c.internalConfig;
                                protoBuf$Property.getClass();
                                arrayList2.add(memberDeserializer2.loadProperty(protoBuf$Property));
                            }
                            deserializedMemberScope5.computeNonDeclaredProperties$1(arrayList2, name5);
                            return DFS.compact(arrayList2);
                        default:
                            Name name6 = (Name) obj7;
                            name6.getClass();
                            HCaptcha hCaptcha = optimizedImplementation.this$0.c;
                            byte[] bArr3 = (byte[]) optimizedImplementation.typeAliasBytes.get(name6);
                            if (bArr3 == null) {
                                return null;
                            }
                            ProtoBuf$TypeAlias protoBuf$TypeAlias = (ProtoBuf$TypeAlias) ProtoBuf$TypeAlias.PARSER.parseDelimitedFrom(new ByteArrayInputStream(bArr3), (ExtensionRegistryLite) ((ActivityGalleryBinding) hCaptcha.result).infoGradient);
                            if (protoBuf$TypeAlias == null) {
                                return null;
                            }
                            MemberDeserializer memberDeserializer3 = (MemberDeserializer) hCaptcha.internalConfig;
                            HCaptcha hCaptcha2 = memberDeserializer3.c;
                            NameResolver nameResolver = (NameResolver) hCaptcha2.hCaptchaException;
                            Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners;
                            List<ProtoBuf$Annotation> list4 = protoBuf$TypeAlias.annotation_;
                            list4.getClass();
                            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                            for (ProtoBuf$Annotation protoBuf$Annotation : list4) {
                                FormBody.Builder builder = memberDeserializer3.annotationDeserializer;
                                protoBuf$Annotation.getClass();
                                arrayList3.add(builder.deserializeAnnotation(protoBuf$Annotation, nameResolver));
                            }
                            Annotations annotationsImpl = arrayList3.isEmpty() ? Annotations.Companion.EMPTY : new AnnotationsImpl(0, arrayList3);
                            ProtoBuf$Visibility protoBuf$Visibility = (ProtoBuf$Visibility) Flags.VISIBILITY.get(protoBuf$TypeAlias.flags_);
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
                            DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha2.result).captionEditButton, (DeclarationDescriptor) hCaptcha2.onSuccessListeners, annotationsImpl, Room.getName(nameResolver, protoBuf$TypeAlias.name_), anonymousClass1, protoBuf$TypeAlias, (NameResolver) hCaptcha2.hCaptchaException, dispatcher$promoteAndExecute$Effects, (VersionRequirementTable) hCaptcha2.onOpenListeners, (DeserializedContainerSource) hCaptcha2.activity);
                            List list5 = protoBuf$TypeAlias.typeParameter_;
                            list5.getClass();
                            childContext = hCaptcha2.childContext(deserializedTypeAliasDescriptor, list5, (NameResolver) hCaptcha2.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners, (VersionRequirementTable) hCaptcha2.onOpenListeners, (BinaryVersion) hCaptcha2.handler);
                            GsonBuilder gsonBuilder = (GsonBuilder) childContext.captchaVerifier;
                            List ownTypeParameters = gsonBuilder.getOwnTypeParameters();
                            int i4 = protoBuf$TypeAlias.bitField0_;
                            if ((i4 & 4) == 4) {
                                protoBuf$Type = protoBuf$TypeAlias.underlyingType_;
                                protoBuf$Type.getClass();
                            } else {
                                if ((i4 & 8) != 8) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No underlyingType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.underlyingTypeId_);
                            }
                            SimpleType simpleType = gsonBuilder.simpleType(protoBuf$Type, false);
                            int i5 = protoBuf$TypeAlias.bitField0_;
                            if ((i5 & 16) == 16) {
                                protoBuf$Type2 = protoBuf$TypeAlias.expandedType_;
                                protoBuf$Type2.getClass();
                            } else {
                                if ((i5 & 32) != 32) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No expandedType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type2 = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.expandedTypeId_);
                            }
                            deserializedTypeAliasDescriptor.initialize(ownTypeParameters, simpleType, gsonBuilder.simpleType(protoBuf$Type2, false));
                            return deserializedTypeAliasDescriptor;
                    }
                }
            });
            final int i3 = 2;
            this.typeAliasByName = ((LockBasedStorageManager) ((ActivityGalleryBinding) this.this$0.c.result).captionEditButton).createMemoizedFunctionWithNullableValues(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functions$1
                public final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj7) {
                    DescriptorVisibilities.AnonymousClass1 anonymousClass1;
                    HCaptcha childContext;
                    ProtoBuf$Type protoBuf$Type;
                    ProtoBuf$Type protoBuf$Type2;
                    int i22 = i3;
                    Collection<ProtoBuf$Property> collection = EmptyList.INSTANCE;
                    int i32 = 3;
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.this$0;
                    switch (i22) {
                        case 0:
                            Name name4 = (Name) obj7;
                            name4.getClass();
                            LinkedHashMap linkedHashMap4 = optimizedImplementation.functionProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass12 = ProtoBuf$Function.PARSER;
                            anonymousClass12.getClass();
                            DeserializedMemberScope deserializedMemberScope4 = optimizedImplementation.this$0;
                            byte[] bArr = (byte[]) linkedHashMap4.get(name4);
                            if (bArr != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass12, new ByteArrayInputStream(bArr), deserializedMemberScope4, i32)));
                            }
                            ArrayList arrayList = new ArrayList(collection.size());
                            for (ProtoBuf$Function protoBuf$Function : collection) {
                                MemberDeserializer memberDeserializer = (MemberDeserializer) deserializedMemberScope4.c.internalConfig;
                                protoBuf$Function.getClass();
                                DeserializedSimpleFunctionDescriptor loadFunction = memberDeserializer.loadFunction(protoBuf$Function);
                                if (!deserializedMemberScope4.isDeclaredFunctionAvailable(loadFunction)) {
                                    loadFunction = null;
                                }
                                if (loadFunction != null) {
                                    arrayList.add(loadFunction);
                                }
                            }
                            deserializedMemberScope4.computeNonDeclaredFunctions(arrayList, name4);
                            return DFS.compact(arrayList);
                        case 1:
                            Name name5 = (Name) obj7;
                            name5.getClass();
                            LinkedHashMap linkedHashMap5 = optimizedImplementation.propertyProtosBytes;
                            ProtoBuf$Type.AnonymousClass1 anonymousClass13 = ProtoBuf$Property.PARSER;
                            anonymousClass13.getClass();
                            DeserializedMemberScope deserializedMemberScope5 = optimizedImplementation.this$0;
                            byte[] bArr2 = (byte[]) linkedHashMap5.get(name5);
                            if (bArr2 != null) {
                                collection = SequencesKt.toList(SequencesKt.generateSequence(new KClassImpl$Data$supertypes$2$1$1(anonymousClass13, new ByteArrayInputStream(bArr2), deserializedMemberScope5, i32)));
                            }
                            ArrayList arrayList2 = new ArrayList(collection.size());
                            for (ProtoBuf$Property protoBuf$Property : collection) {
                                MemberDeserializer memberDeserializer2 = (MemberDeserializer) deserializedMemberScope5.c.internalConfig;
                                protoBuf$Property.getClass();
                                arrayList2.add(memberDeserializer2.loadProperty(protoBuf$Property));
                            }
                            deserializedMemberScope5.computeNonDeclaredProperties$1(arrayList2, name5);
                            return DFS.compact(arrayList2);
                        default:
                            Name name6 = (Name) obj7;
                            name6.getClass();
                            HCaptcha hCaptcha = optimizedImplementation.this$0.c;
                            byte[] bArr3 = (byte[]) optimizedImplementation.typeAliasBytes.get(name6);
                            if (bArr3 == null) {
                                return null;
                            }
                            ProtoBuf$TypeAlias protoBuf$TypeAlias = (ProtoBuf$TypeAlias) ProtoBuf$TypeAlias.PARSER.parseDelimitedFrom(new ByteArrayInputStream(bArr3), (ExtensionRegistryLite) ((ActivityGalleryBinding) hCaptcha.result).infoGradient);
                            if (protoBuf$TypeAlias == null) {
                                return null;
                            }
                            MemberDeserializer memberDeserializer3 = (MemberDeserializer) hCaptcha.internalConfig;
                            HCaptcha hCaptcha2 = memberDeserializer3.c;
                            NameResolver nameResolver = (NameResolver) hCaptcha2.hCaptchaException;
                            Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners;
                            List<ProtoBuf$Annotation> list4 = protoBuf$TypeAlias.annotation_;
                            list4.getClass();
                            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                            for (ProtoBuf$Annotation protoBuf$Annotation : list4) {
                                FormBody.Builder builder = memberDeserializer3.annotationDeserializer;
                                protoBuf$Annotation.getClass();
                                arrayList3.add(builder.deserializeAnnotation(protoBuf$Annotation, nameResolver));
                            }
                            Annotations annotationsImpl = arrayList3.isEmpty() ? Annotations.Companion.EMPTY : new AnnotationsImpl(0, arrayList3);
                            ProtoBuf$Visibility protoBuf$Visibility = (ProtoBuf$Visibility) Flags.VISIBILITY.get(protoBuf$TypeAlias.flags_);
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
                            DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha2.result).captionEditButton, (DeclarationDescriptor) hCaptcha2.onSuccessListeners, annotationsImpl, Room.getName(nameResolver, protoBuf$TypeAlias.name_), anonymousClass1, protoBuf$TypeAlias, (NameResolver) hCaptcha2.hCaptchaException, dispatcher$promoteAndExecute$Effects, (VersionRequirementTable) hCaptcha2.onOpenListeners, (DeserializedContainerSource) hCaptcha2.activity);
                            List list5 = protoBuf$TypeAlias.typeParameter_;
                            list5.getClass();
                            childContext = hCaptcha2.childContext(deserializedTypeAliasDescriptor, list5, (NameResolver) hCaptcha2.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha2.onFailureListeners, (VersionRequirementTable) hCaptcha2.onOpenListeners, (BinaryVersion) hCaptcha2.handler);
                            GsonBuilder gsonBuilder = (GsonBuilder) childContext.captchaVerifier;
                            List ownTypeParameters = gsonBuilder.getOwnTypeParameters();
                            int i4 = protoBuf$TypeAlias.bitField0_;
                            if ((i4 & 4) == 4) {
                                protoBuf$Type = protoBuf$TypeAlias.underlyingType_;
                                protoBuf$Type.getClass();
                            } else {
                                if ((i4 & 8) != 8) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No underlyingType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.underlyingTypeId_);
                            }
                            SimpleType simpleType = gsonBuilder.simpleType(protoBuf$Type, false);
                            int i5 = protoBuf$TypeAlias.bitField0_;
                            if ((i5 & 16) == 16) {
                                protoBuf$Type2 = protoBuf$TypeAlias.expandedType_;
                                protoBuf$Type2.getClass();
                            } else {
                                if ((i5 & 32) != 32) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No expandedType in ProtoBuf.TypeAlias");
                                    return null;
                                }
                                protoBuf$Type2 = dispatcher$promoteAndExecute$Effects.get(protoBuf$TypeAlias.expandedTypeId_);
                            }
                            deserializedTypeAliasDescriptor.initialize(ownTypeParameters, simpleType, gsonBuilder.simpleType(protoBuf$Type2, false));
                            return deserializedTypeAliasDescriptor;
                    }
                }
            });
            final DeserializedMemberScope deserializedMemberScope4 = this.this$0;
            LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityGalleryBinding) deserializedMemberScope4.c.result).captionEditButton;
            Function0 function0 = new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functionNames$2
                public final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i4 = i;
                    DeserializedMemberScope deserializedMemberScope5 = deserializedMemberScope4;
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.this$0;
                    switch (i4) {
                        case 0:
                            return UuidKt.plus(optimizedImplementation.functionProtosBytes.keySet(), (Iterable) deserializedMemberScope5.getNonDeclaredFunctionNames());
                        default:
                            return UuidKt.plus(optimizedImplementation.propertyProtosBytes.keySet(), (Iterable) deserializedMemberScope5.getNonDeclaredVariableNames());
                    }
                }
            };
            lockBasedStorageManager.getClass();
            this.functionNames$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, function0);
            final DeserializedMemberScope deserializedMemberScope5 = this.this$0;
            LockBasedStorageManager lockBasedStorageManager2 = (LockBasedStorageManager) ((ActivityGalleryBinding) deserializedMemberScope5.c.result).captionEditButton;
            Function0 function02 = new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functionNames$2
                public final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i4 = i2;
                    DeserializedMemberScope deserializedMemberScope52 = deserializedMemberScope5;
                    DeserializedMemberScope.OptimizedImplementation optimizedImplementation = this.this$0;
                    switch (i4) {
                        case 0:
                            return UuidKt.plus(optimizedImplementation.functionProtosBytes.keySet(), (Iterable) deserializedMemberScope52.getNonDeclaredFunctionNames());
                        default:
                            return UuidKt.plus(optimizedImplementation.propertyProtosBytes.keySet(), (Iterable) deserializedMemberScope52.getNonDeclaredVariableNames());
                    }
                }
            };
            lockBasedStorageManager2.getClass();
            this.variableNames$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager2, function02);
        }

        public static LinkedHashMap packToByteArray(LinkedHashMap linkedHashMap) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<AbstractMessageLite> iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
                for (AbstractMessageLite abstractMessageLite : iterable) {
                    int serializedSize = abstractMessageLite.getSerializedSize();
                    int computeRawVarint32Size = SVG.PathDefinition.computeRawVarint32Size(serializedSize) + serializedSize;
                    if (computeRawVarint32Size > 4096) {
                        computeRawVarint32Size = 4096;
                    }
                    SVG.PathDefinition newInstance = SVG.PathDefinition.newInstance(byteArrayOutputStream, computeRawVarint32Size);
                    newInstance.writeRawVarint32(serializedSize);
                    abstractMessageLite.writeTo(newInstance);
                    newInstance.refreshBuffer();
                    arrayList.add(Unit.INSTANCE);
                }
                linkedHashMap2.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap2;
        }
    }

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DeserializedMemberScope.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    }

    public DeserializedMemberScope(HCaptcha hCaptcha, List list, List list2, List list3, Function0 function0) {
        hCaptcha.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        this.c = hCaptcha;
        ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) hCaptcha.result;
        ((ProtoEnumFlags) activityGalleryBinding.licenseIconBy).getClass();
        this.impl = new OptimizedImplementation(this, list, list2, list3);
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) activityGalleryBinding.captionEditButton;
        GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1 glanceNodeKt$GlanceNode$$inlined$ComposeNode$1 = new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(3, function0);
        lockBasedStorageManager.getClass();
        this.classNames$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, glanceNodeKt$GlanceNode$$inlined$ComposeNode$1);
        AndroidLeakFixes$Companion$onDecorViewReady$1 androidLeakFixes$Companion$onDecorViewReady$1 = new AndroidLeakFixes$Companion$onDecorViewReady$1(15, this);
        lockBasedStorageManager.getClass();
        this.classifierNamesLazy$delegate = new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, androidLeakFixes$Companion$onDecorViewReady$1);
    }

    public abstract void addEnumEntryDescriptors(ArrayList arrayList, Function1 function1);

    public final List computeDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1, NoLookupLocation noLookupLocation) {
        descriptorKindFilter.getClass();
        noLookupLocation.getClass();
        ArrayList arrayList = new ArrayList(0);
        if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.SINGLETON_CLASSIFIERS_MASK)) {
            addEnumEntryDescriptors(arrayList, function1);
        }
        OptimizedImplementation optimizedImplementation = this.impl;
        optimizedImplementation.getClass();
        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = optimizedImplementation.functionNames$delegate;
        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue2 = optimizedImplementation.variableNames$delegate;
        boolean acceptsKinds = descriptorKindFilter.acceptsKinds(DescriptorKindFilter.VARIABLES_MASK);
        EmptyList emptyList = EmptyList.INSTANCE;
        MemberComparator$NameAndTypeMemberComparator memberComparator$NameAndTypeMemberComparator = MemberComparator$NameAndTypeMemberComparator.INSTANCE;
        if (acceptsKinds) {
            Set<Name> set = (Set) DpKt.getValue(lockBasedNotNullLazyValue2, OptimizedImplementation.$$delegatedProperties[1]);
            ArrayList arrayList2 = new ArrayList();
            for (Name name : set) {
                if (((Boolean) function1.invoke(name)).booleanValue()) {
                    name.getClass();
                    arrayList2.addAll(!((Set) DpKt.getValue(lockBasedNotNullLazyValue2, OptimizedImplementation.$$delegatedProperties[1])).contains(name) ? emptyList : (Collection) optimizedImplementation.properties.invoke(name));
                }
            }
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, memberComparator$NameAndTypeMemberComparator);
            arrayList.addAll(arrayList2);
        }
        if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.FUNCTIONS_MASK)) {
            Set<Name> set2 = (Set) DpKt.getValue(lockBasedNotNullLazyValue, OptimizedImplementation.$$delegatedProperties[0]);
            ArrayList arrayList3 = new ArrayList();
            for (Name name2 : set2) {
                if (((Boolean) function1.invoke(name2)).booleanValue()) {
                    name2.getClass();
                    arrayList3.addAll(!((Set) DpKt.getValue(lockBasedNotNullLazyValue, OptimizedImplementation.$$delegatedProperties[0])).contains(name2) ? emptyList : (Collection) optimizedImplementation.functions.invoke(name2));
                }
            }
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList3, memberComparator$NameAndTypeMemberComparator);
            arrayList.addAll(arrayList3);
        }
        if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.CLASSIFIERS_MASK)) {
            for (Name name3 : getClassNames$deserialization()) {
                if (((Boolean) function1.invoke(name3)).booleanValue()) {
                    ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) this.c.result;
                    ClassId createClassId = createClassId(name3);
                    ClassDeserializer classDeserializer = (ClassDeserializer) activityGalleryBinding.toolbar;
                    Set set3 = ClassDeserializer.BLACK_LIST;
                    ModuleAwareClassDescriptor deserializeClass = classDeserializer.deserializeClass(createClassId, null);
                    if (deserializeClass != null) {
                        arrayList.add(deserializeClass);
                    }
                }
            }
        }
        if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.TYPE_ALIASES_MASK)) {
            for (Name name4 : optimizedImplementation.typeAliasBytes.keySet()) {
                if (((Boolean) function1.invoke(name4)).booleanValue()) {
                    optimizedImplementation.getClass();
                    name4.getClass();
                    DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = (DeserializedTypeAliasDescriptor) optimizedImplementation.typeAliasByName.invoke(name4);
                    if (deserializedTypeAliasDescriptor != null) {
                        arrayList.add(deserializedTypeAliasDescriptor);
                    }
                }
            }
        }
        return DFS.compact(arrayList);
    }

    public abstract ClassId createClassId(Name name);

    public final Set getClassNames$deserialization() {
        return (Set) DpKt.getValue(this.classNames$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        KProperty kProperty = $$delegatedProperties[1];
        LockBasedStorageManager.LockBasedLazyValue lockBasedLazyValue = this.classifierNamesLazy$delegate;
        lockBasedLazyValue.getClass();
        kProperty.getClass();
        return (Set) lockBasedLazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        if (hasClass(name)) {
            ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) this.c.result;
            ClassId createClassId = createClassId(name);
            ClassDeserializer classDeserializer = (ClassDeserializer) activityGalleryBinding.toolbar;
            Set set = ClassDeserializer.BLACK_LIST;
            return classDeserializer.deserializeClass(createClassId, null);
        }
        OptimizedImplementation optimizedImplementation = this.impl;
        if (!optimizedImplementation.typeAliasBytes.keySet().contains(name)) {
            return null;
        }
        optimizedImplementation.getClass();
        return (DeserializedTypeAliasDescriptor) optimizedImplementation.typeAliasByName.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        OptimizedImplementation optimizedImplementation = this.impl;
        optimizedImplementation.getClass();
        return !((Set) DpKt.getValue(optimizedImplementation.functionNames$delegate, OptimizedImplementation.$$delegatedProperties[0])).contains(name) ? EmptyList.INSTANCE : (Collection) optimizedImplementation.functions.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        OptimizedImplementation optimizedImplementation = this.impl;
        optimizedImplementation.getClass();
        return !((Set) DpKt.getValue(optimizedImplementation.variableNames$delegate, OptimizedImplementation.$$delegatedProperties[1])).contains(name) ? EmptyList.INSTANCE : (Collection) optimizedImplementation.properties.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        return (Set) DpKt.getValue(this.impl.functionNames$delegate, OptimizedImplementation.$$delegatedProperties[0]);
    }

    public abstract Set getNonDeclaredClassifierNames();

    public abstract Set getNonDeclaredFunctionNames();

    public abstract Set getNonDeclaredVariableNames();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        return (Set) DpKt.getValue(this.impl.variableNames$delegate, OptimizedImplementation.$$delegatedProperties[1]);
    }

    public boolean hasClass(Name name) {
        name.getClass();
        return getClassNames$deserialization().contains(name);
    }

    public boolean isDeclaredFunctionAvailable(DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
        return true;
    }

    public void computeNonDeclaredFunctions(ArrayList arrayList, Name name) {
    }

    public void computeNonDeclaredProperties$1(ArrayList arrayList, Name name) {
    }
}
