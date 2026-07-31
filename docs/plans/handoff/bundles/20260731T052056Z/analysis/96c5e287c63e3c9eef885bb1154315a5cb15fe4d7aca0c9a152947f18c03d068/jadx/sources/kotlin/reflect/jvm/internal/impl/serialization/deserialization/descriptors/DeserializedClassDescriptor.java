package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$size$3$1;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker$DO_NOTHING;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeNonDeclaredFunctions$3;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Class;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.text.UStringsKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okio.internal.DefaultSocket;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedClassDescriptor extends AbstractClassDescriptor implements DeclarationDescriptor {
    public final Annotations annotations;
    public final HCaptcha c;
    public final ClassId classId;
    public final ProtoBuf$Class classProto;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue constructors;
    public final DeclarationDescriptor containingDeclaration;
    public final DefaultSocket enumEntries;
    public final ClassKind kind;
    public final ScopesHolderForClass memberScopeHolder;
    public final BinaryVersion metadataVersion;
    public final Modality modality;
    public final LockBasedStorageManager.LockBasedLazyValue primaryConstructor;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue sealedSubclasses;
    public final SourceElement sourceElement;
    public final MemberScopeImpl staticScope;
    public final ProtoContainer$Class thisAsProtoContainer;
    public final LazyJavaClassDescriptor.LazyJavaClassTypeConstructor typeConstructor;
    public final LockBasedStorageManager.LockBasedLazyValue valueClassRepresentation;
    public final DescriptorVisibilities.AnonymousClass1 visibility;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DeserializedClassMemberScope extends DeserializedMemberScope {
        public final LockBasedStorageManager.LockBasedNotNullLazyValue allDescriptors;
        public final KotlinTypeRefiner$Default kotlinTypeRefiner;
        public final LockBasedStorageManager.LockBasedNotNullLazyValue refinedSupertypes;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DeserializedClassMemberScope(kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default r9) {
            /*
                r7 = this;
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.this = r8
                com.hcaptcha.sdk.HCaptcha r1 = r8.c
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = r8.classProto
                java.util.List r2 = r0.function_
                r2.getClass()
                java.util.List r3 = r0.property_
                r3.getClass()
                java.util.List r4 = r0.typeAlias_
                r4.getClass()
                java.util.List r0 = r0.nestedClassName_
                r0.getClass()
                com.hcaptcha.sdk.HCaptcha r8 = r8.c
                java.lang.Object r8 = r8.hCaptchaException
                kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r8 = (kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver) r8
                java.util.ArrayList r5 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r0, r6)
                r5.<init>(r6)
                java.util.Iterator r0 = r0.iterator()
            L2f:
                boolean r6 = r0.hasNext()
                if (r6 == 0) goto L47
                java.lang.Object r6 = r0.next()
                java.lang.Number r6 = (java.lang.Number) r6
                int r6 = r6.intValue()
                kotlin.reflect.jvm.internal.impl.name.Name r6 = androidx.room.Room.getName(r8, r6)
                r5.add(r6)
                goto L2f
            L47:
                kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$1 r8 = new kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$1
                r6 = 1
                r8.<init>(r6, r5)
                r0 = r7
                r5 = r8
                r0.<init>(r1, r2, r3, r4, r5)
                java.lang.Object r7 = r1.result
                org.wikipedia.databinding.ActivityGalleryBinding r7 = (org.wikipedia.databinding.ActivityGalleryBinding) r7
                r0.kotlinTypeRefiner = r9
                java.lang.Object r8 = r7.captionEditButton
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r8 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r8
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1 r9 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1
                r1 = 0
                r9.<init>(r0)
                r8.getClass()
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r1 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue
                r1.<init>(r8, r9)
                r0.allDescriptors = r1
                java.lang.Object r7 = r7.captionEditButton
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r7 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r7
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1 r8 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1
                r8.<init>(r0)
                r7.getClass()
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r9 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue
                r9.<init>(r7, r8)
                r0.refinedSupertypes = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.DeserializedClassMemberScope.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.EmptyList] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList] */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void addEnumEntryDescriptors(ArrayList arrayList, Function1 function1) {
            ?? r0;
            DefaultSocket defaultSocket = DeserializedClassDescriptor.this.enumEntries;
            if (defaultSocket != null) {
                Set<Name> keySet = ((LinkedHashMap) defaultSocket.socket).keySet();
                r0 = new ArrayList();
                for (Name name : keySet) {
                    name.getClass();
                    ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) ((ViewSizeResolver$size$3$1) defaultSocket.closeBits).invoke(name);
                    if (moduleAwareClassDescriptor != null) {
                        r0.add(moduleAwareClassDescriptor);
                    }
                }
            } else {
                r0 = 0;
            }
            if (r0 == 0) {
                r0 = EmptyList.INSTANCE;
            }
            arrayList.addAll(r0);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void computeNonDeclaredFunctions(ArrayList arrayList, Name name) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((Collection) this.refinedSupertypes.invoke()).iterator();
            while (it.hasNext()) {
                arrayList2.addAll(((KotlinType) it.next()).getMemberScope().getContributedFunctions(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            HCaptcha hCaptcha = this.c;
            arrayList.addAll(((AdditionalClassPartsProvider) ((ActivityGalleryBinding) hCaptcha.result).toolbarContainer).getFunctions(name, DeserializedClassDescriptor.this));
            ArrayList arrayList3 = new ArrayList(arrayList);
            ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityGalleryBinding) hCaptcha.result).toolbarGradient)).overridingUtil.generateOverridesInFunctionGroup(name, arrayList2, arrayList3, DeserializedClassDescriptor.this, new EnumEntrySyntheticClassDescriptor.EnumEntryScope.AnonymousClass4(arrayList, 1));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final void computeNonDeclaredProperties$1(ArrayList arrayList, Name name) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((Collection) this.refinedSupertypes.invoke()).iterator();
            while (it.hasNext()) {
                arrayList2.addAll(((KotlinType) it.next()).getMemberScope().getContributedVariables(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            ArrayList arrayList3 = new ArrayList(arrayList);
            ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityGalleryBinding) this.c.result).toolbarGradient)).overridingUtil.generateOverridesInFunctionGroup(name, arrayList2, arrayList3, DeserializedClassDescriptor.this, new EnumEntrySyntheticClassDescriptor.EnumEntryScope.AnonymousClass4(arrayList, 1));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final ClassId createClassId(Name name) {
            name.getClass();
            return DeserializedClassDescriptor.this.classId.createNestedClassId(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
            ModuleAwareClassDescriptor moduleAwareClassDescriptor;
            name.getClass();
            noLookupLocation.getClass();
            recordLookup(name, noLookupLocation);
            DefaultSocket defaultSocket = DeserializedClassDescriptor.this.enumEntries;
            return (defaultSocket == null || (moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) ((ViewSizeResolver$size$3$1) defaultSocket.closeBits).invoke(name)) == null) ? super.getContributedClassifier(name, noLookupLocation) : moduleAwareClassDescriptor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
            descriptorKindFilter.getClass();
            return (Collection) this.allDescriptors.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
            name.getClass();
            noLookupLocation.getClass();
            recordLookup(name, noLookupLocation);
            return super.getContributedFunctions(name, noLookupLocation);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
            name.getClass();
            noLookupLocation.getClass();
            recordLookup(name, noLookupLocation);
            return super.getContributedVariables(name, noLookupLocation);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set getNonDeclaredClassifierNames() {
            List supertypes = DeserializedClassDescriptor.this.typeConstructor.getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = supertypes.iterator();
            while (it.hasNext()) {
                Set classifierNames = ((KotlinType) it.next()).getMemberScope().getClassifierNames();
                if (classifierNames == null) {
                    return null;
                }
                CollectionsKt.addAll(linkedHashSet, classifierNames);
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set getNonDeclaredFunctionNames() {
            DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
            List supertypes = deserializedClassDescriptor.typeConstructor.getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = supertypes.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(linkedHashSet, ((KotlinType) it.next()).getMemberScope().getFunctionNames());
            }
            linkedHashSet.addAll(((AdditionalClassPartsProvider) ((ActivityGalleryBinding) this.c.result).toolbarContainer).getFunctionsNames(deserializedClassDescriptor));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final Set getNonDeclaredVariableNames() {
            List supertypes = DeserializedClassDescriptor.this.typeConstructor.getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = supertypes.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(linkedHashSet, ((KotlinType) it.next()).getMemberScope().getVariableNames());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        public final boolean isDeclaredFunctionAvailable(DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor) {
            return ((PlatformDependentDeclarationFilter) ((ActivityGalleryBinding) this.c.result).errorView).isFunctionAvailable(DeserializedClassDescriptor.this, deserializedSimpleFunctionDescriptor);
        }

        public final void recordLookup(Name name, NoLookupLocation noLookupLocation) {
            name.getClass();
            noLookupLocation.getClass();
            ((LookupTracker$DO_NOTHING) ((ActivityGalleryBinding) this.c.result).descriptionContainer).getClass();
            DeserializedClassDescriptor.this.getClass();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(HCaptcha hCaptcha, ProtoBuf$Class protoBuf$Class, NameResolver nameResolver, BinaryVersion binaryVersion, SourceElement sourceElement) {
        super((LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha.result).captionEditButton, Room.getClassId(nameResolver, protoBuf$Class.fqName_).getShortClassName());
        ClassKind classKind;
        VersionRequirementTable versionRequirementTable;
        HCaptcha hCaptcha2;
        NameResolver nameResolver2;
        BinaryVersion binaryVersion2;
        DeserializedClassDescriptor deserializedClassDescriptor;
        hCaptcha.getClass();
        protoBuf$Class.getClass();
        nameResolver.getClass();
        sourceElement.getClass();
        this.classProto = protoBuf$Class;
        this.metadataVersion = binaryVersion;
        this.sourceElement = sourceElement;
        this.classId = Room.getClassId(nameResolver, protoBuf$Class.fqName_);
        this.modality = ProtoEnumFlags.modality((ProtoBuf$Modality) Flags.MODALITY.get(protoBuf$Class.flags_));
        this.visibility = UStringsKt.descriptorVisibility((ProtoBuf$Visibility) Flags.VISIBILITY.get(protoBuf$Class.flags_));
        ProtoBuf$Class.Kind kind = (ProtoBuf$Class.Kind) Flags.CLASS_KIND.get(protoBuf$Class.flags_);
        switch (kind == null ? -1 : ProtoEnumFlags.WhenMappings.$EnumSwitchMapping$3[kind.ordinal()]) {
            case 1:
                classKind = ClassKind.CLASS;
                break;
            case 2:
                classKind = ClassKind.INTERFACE;
                break;
            case 3:
                classKind = ClassKind.ENUM_CLASS;
                break;
            case 4:
                classKind = ClassKind.ENUM_ENTRY;
                break;
            case 5:
                classKind = ClassKind.ANNOTATION_CLASS;
                break;
            case 6:
            case 7:
                classKind = ClassKind.OBJECT;
                break;
            default:
                classKind = ClassKind.CLASS;
                break;
        }
        this.kind = classKind;
        List list = protoBuf$Class.typeParameter_;
        list.getClass();
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Class.typeTable_;
        protoBuf$TypeTable.getClass();
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(protoBuf$TypeTable);
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Class.versionRequirementTable_;
        protoBuf$VersionRequirementTable.getClass();
        if (protoBuf$VersionRequirementTable.requirement_.size() == 0) {
            versionRequirementTable = VersionRequirementTable.EMPTY;
            deserializedClassDescriptor = this;
            nameResolver2 = nameResolver;
            binaryVersion2 = binaryVersion;
            hCaptcha2 = hCaptcha;
        } else {
            protoBuf$VersionRequirementTable.requirement_.getClass();
            versionRequirementTable = new VersionRequirementTable();
            hCaptcha2 = hCaptcha;
            nameResolver2 = nameResolver;
            binaryVersion2 = binaryVersion;
            deserializedClassDescriptor = this;
        }
        HCaptcha childContext = hCaptcha2.childContext(deserializedClassDescriptor, list, nameResolver2, dispatcher$promoteAndExecute$Effects, versionRequirementTable, binaryVersion2);
        ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) childContext.result;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) activityGalleryBinding.captionEditButton;
        deserializedClassDescriptor.c = childContext;
        ClassKind classKind2 = ClassKind.ENUM_CLASS;
        deserializedClassDescriptor.staticScope = classKind == classKind2 ? new StaticScopeForKotlinEnum(lockBasedStorageManager, deserializedClassDescriptor) : MemberScope.Empty.INSTANCE;
        deserializedClassDescriptor.typeConstructor = new LazyJavaClassDescriptor.LazyJavaClassTypeConstructor(deserializedClassDescriptor);
        SourceFile$1 sourceFile$1 = ScopesHolderForClass.Companion;
        ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) activityGalleryBinding.toolbarGradient)).getClass();
        int i = 2;
        LazyJavaClassMemberScope$computeNonDeclaredFunctions$3 lazyJavaClassMemberScope$computeNonDeclaredFunctions$3 = new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(1, 2, deserializedClassDescriptor);
        sourceFile$1.getClass();
        lockBasedStorageManager.getClass();
        deserializedClassDescriptor.memberScopeHolder = new ScopesHolderForClass(deserializedClassDescriptor, lockBasedStorageManager, lazyJavaClassMemberScope$computeNonDeclaredFunctions$3);
        deserializedClassDescriptor.enumEntries = classKind == classKind2 ? new DefaultSocket(deserializedClassDescriptor) : null;
        DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) hCaptcha2.onSuccessListeners;
        deserializedClassDescriptor.containingDeclaration = declarationDescriptor;
        deserializedClassDescriptor.primaryConstructor = new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, 4));
        deserializedClassDescriptor.constructors = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, 3));
        new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, i));
        deserializedClassDescriptor.sealedSubclasses = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, 5));
        deserializedClassDescriptor.valueClassRepresentation = new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, 6));
        NameResolver nameResolver3 = (NameResolver) childContext.hCaptchaException;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects2 = (Dispatcher$promoteAndExecute$Effects) childContext.onFailureListeners;
        DeserializedClassDescriptor deserializedClassDescriptor2 = declarationDescriptor instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) declarationDescriptor : null;
        deserializedClassDescriptor.thisAsProtoContainer = new ProtoContainer$Class(protoBuf$Class, nameResolver3, dispatcher$promoteAndExecute$Effects2, sourceElement, deserializedClassDescriptor2 != null ? deserializedClassDescriptor2.thisAsProtoContainer : null);
        deserializedClassDescriptor.annotations = !Flags.HAS_ANNOTATIONS.get(protoBuf$Class.flags_).booleanValue() ? Annotations.Companion.EMPTY : new NonEmptyDeserializedAnnotations(lockBasedStorageManager, new DeserializedClassDescriptor$annotations$1(deserializedClassDescriptor, 0));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getConstructors() {
        return (Collection) this.constructors.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        return this.containingDeclaration;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final List getContextReceivers() {
        HCaptcha hCaptcha = this.c;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        ProtoBuf$Class protoBuf$Class = this.classProto;
        protoBuf$Class.getClass();
        List list = protoBuf$Class.contextReceiverType_;
        boolean isEmpty = list.isEmpty();
        ?? r3 = list;
        if (isEmpty) {
            r3 = 0;
        }
        if (r3 == 0) {
            List<Integer> list2 = protoBuf$Class.contextReceiverTypeId_;
            list2.getClass();
            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                r3.add(dispatcher$promoteAndExecute$Effects.get(num.intValue()));
            }
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r3, 10));
        Iterator it = r3.iterator();
        while (it.hasNext()) {
            arrayList.add(new ReceiverParameterDescriptorImpl(getThisAsReceiverParameter(), new ContextReceiver(this, ((GsonBuilder) hCaptcha.captchaVerifier).type((ProtoBuf$Type) it.next()), (Name) null), Annotations.Companion.EMPTY));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        return ((GsonBuilder) this.c.captchaVerifier).getOwnTypeParameters();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassKind getKind() {
        return this.kind;
    }

    public final DeserializedClassMemberScope getMemberScope() {
        ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityGalleryBinding) this.c.result).toolbarGradient)).getClass();
        ScopesHolderForClass scopesHolderForClass = this.memberScopeHolder;
        scopesHolderForClass.getClass();
        AbstractClassDescriptor abstractClassDescriptor = scopesHolderForClass.classDescriptor;
        int i = DescriptorUtilsKt.$r8$clinit;
        DescriptorUtils.getContainingModule(abstractClassDescriptor).getClass();
        return (DeserializedClassMemberScope) ((MemberScope) DpKt.getValue(scopesHolderForClass.scopeForOwnerModule$delegate, ScopesHolderForClass.$$delegatedProperties[0]));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        return this.modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getSealedSubclasses() {
        return (Collection) this.sealedSubclasses.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot
    public final SourceElement getSource() {
        return this.sourceElement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getStaticScope() {
        return this.staticScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        ScopesHolderForClass scopesHolderForClass = this.memberScopeHolder;
        AbstractClassDescriptor abstractClassDescriptor = scopesHolderForClass.classDescriptor;
        int i = DescriptorUtilsKt.$r8$clinit;
        DescriptorUtils.getContainingModule(abstractClassDescriptor).getClass();
        return (MemberScope) DpKt.getValue(scopesHolderForClass.scopeForOwnerModule$delegate, ScopesHolderForClass.$$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
        return (ClassConstructorDescriptorImpl) this.primaryConstructor.invoke();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
    
        if (r0 == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.types.SimpleType getValueClassPropertyType(kotlin.reflect.jvm.internal.impl.name.Name r5) {
        /*
            r4 = this;
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope r4 = r4.getMemberScope()
            kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation r0 = kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation.FROM_DESERIALIZATION
            java.util.Collection r4 = r4.getContributedVariables(r5, r0)
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.Iterator r4 = r4.iterator()
            r5 = 0
            r0 = 0
            r1 = r5
        L13:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L2d
            java.lang.Object r2 = r4.next()
            r3 = r2
            kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor) r3
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl r3 = r3.getExtensionReceiverParameter()
            if (r3 != 0) goto L13
            if (r0 == 0) goto L2a
        L28:
            r1 = r5
            goto L30
        L2a:
            r0 = 1
            r1 = r2
            goto L13
        L2d:
            if (r0 != 0) goto L30
            goto L28
        L30:
            kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r1 = (kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor) r1
            if (r1 == 0) goto L38
            kotlin.reflect.jvm.internal.impl.types.KotlinType r5 = r1.getType()
        L38:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r5 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.getValueClassPropertyType(kotlin.reflect.jvm.internal.impl.name.Name):kotlin.reflect.jvm.internal.impl.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ValueClassRepresentation getValueClassRepresentation() {
        return (ValueClassRepresentation) this.valueClassRepresentation.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        return this.visibility;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isCompanionObject() {
        return Flags.CLASS_KIND.get(this.classProto.flags_) == ProtoBuf$Class.Kind.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isData() {
        return Flags.IS_DATA.get(this.classProto.flags_).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return Flags.IS_EXPECT_CLASS.get(this.classProto.flags_).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExternal() {
        return Flags.IS_EXTERNAL_CLASS.get(this.classProto.flags_).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isFun() {
        return Flags.IS_FUN_INTERFACE.get(this.classProto.flags_).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isInline() {
        if (!Flags.IS_VALUE_CLASS.get(this.classProto.flags_).booleanValue()) {
            return false;
        }
        BinaryVersion binaryVersion = this.metadataVersion;
        int i = binaryVersion.major;
        if (i >= 1) {
            if (i > 1) {
                return false;
            }
            int i2 = binaryVersion.minor;
            if (i2 >= 4 && (i2 > 4 || binaryVersion.patch > 1)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return Flags.IS_INNER.get(this.classProto.flags_).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isValue() {
        return Flags.IS_VALUE_CLASS.get(this.classProto.flags_).booleanValue() && this.metadataVersion.isAtLeast(1, 4, 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("deserialized ");
        sb.append(isExpect() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }
}
