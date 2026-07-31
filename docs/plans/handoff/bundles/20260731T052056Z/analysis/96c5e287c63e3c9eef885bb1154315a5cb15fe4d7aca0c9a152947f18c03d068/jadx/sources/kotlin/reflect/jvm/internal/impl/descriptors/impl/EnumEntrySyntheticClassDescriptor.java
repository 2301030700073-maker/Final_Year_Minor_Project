package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import androidx.compose.runtime.GapPending$keyMap$2;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DeserializedDeclarationsFromSupertypeConflictDataKey;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumEntrySyntheticClassDescriptor extends ClassDescriptorBase {
    public final Annotations annotations;
    public final NotNullLazyValue enumMemberNames;
    public final EnumEntryScope scope;
    public final ClassTypeConstructorImpl typeConstructor;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = "source";
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case IMAGE_VALUE:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[1] = "getConstructors";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[1] = "getTypeConstructor";
                break;
            case RADIO_GROUP_VALUE:
                objArr[1] = "getKind";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[1] = "getModality";
                break;
            case RADIO_ROW_VALUE:
                objArr[1] = "getVisibility";
                break;
            case RADIO_COLUMN_VALUE:
                objArr[1] = "getAnnotations";
                break;
            case SIZE_BOX_VALUE:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case IMAGE_VALUE:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
                throw new IllegalStateException(format);
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumEntrySyntheticClassDescriptor(LockBasedStorageManager lockBasedStorageManager, ModuleAwareClassDescriptor moduleAwareClassDescriptor, SimpleType simpleType, Name name, NotNullLazyValue notNullLazyValue, Annotations annotations, SourceElement sourceElement) {
        super(lockBasedStorageManager, moduleAwareClassDescriptor, name, sourceElement);
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (simpleType == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        if (notNullLazyValue == null) {
            $$$reportNull$$$0(10);
            throw null;
        }
        this.annotations = annotations;
        this.typeConstructor = new ClassTypeConstructorImpl(this, Collections.EMPTY_LIST, Collections.singleton(simpleType), lockBasedStorageManager);
        this.scope = new EnumEntryScope(this, lockBasedStorageManager);
        this.enumMemberNames = notNullLazyValue;
    }

    public static EnumEntrySyntheticClassDescriptor create(LockBasedStorageManager lockBasedStorageManager, ModuleAwareClassDescriptor moduleAwareClassDescriptor, Name name, LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue, Annotations annotations, SourceElement sourceElement) {
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (lockBasedNotNullLazyValue != null) {
            return new EnumEntrySyntheticClassDescriptor(lockBasedStorageManager, moduleAwareClassDescriptor, moduleAwareClassDescriptor.getDefaultType(), name, lockBasedNotNullLazyValue, annotations, sourceElement);
        }
        $$$reportNull$$$0(3);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        Annotations annotations = this.annotations;
        if (annotations != null) {
            return annotations;
        }
        $$$reportNull$$$0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getConstructors() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassKind getKind() {
        ClassKind classKind = ClassKind.ENUM_ENTRY;
        if (classKind != null) {
            return classKind;
        }
        $$$reportNull$$$0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        Modality modality = Modality.FINAL;
        if (modality != null) {
            return modality;
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getSealedSubclasses() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getStaticScope() {
        return MemberScope.Empty.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        ClassTypeConstructorImpl classTypeConstructorImpl = this.typeConstructor;
        if (classTypeConstructorImpl != null) {
            return classTypeConstructorImpl;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        EnumEntryScope enumEntryScope = this.scope;
        if (enumEntryScope != null) {
            return enumEntryScope;
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ValueClassRepresentation getValueClassRepresentation() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        $$$reportNull$$$0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        return "enum entry " + getName();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnumEntryScope extends MemberScopeImpl {
        public final LockBasedStorageManager.LockBasedNotNullLazyValue allDescriptors;
        public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull functions;
        public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull properties;
        public final /* synthetic */ EnumEntrySyntheticClassDescriptor this$0;

        /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00b5 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x004e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ void $$$reportNull$$$0(int r13) {
            /*
                Method dump skipped, instructions count: 346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor.EnumEntryScope.$$$reportNull$$$0(int):void");
        }

        public EnumEntryScope(EnumEntrySyntheticClassDescriptor enumEntrySyntheticClassDescriptor, LockBasedStorageManager lockBasedStorageManager) {
            final int i = 0;
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
                throw null;
            }
            this.this$0 = enumEntrySyntheticClassDescriptor;
            this.functions = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor.EnumEntryScope.1
                public final /* synthetic */ EnumEntryScope this$1;

                {
                    this.this$1 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i2 = i;
                    EnumEntryScope enumEntryScope = this.this$1;
                    switch (i2) {
                        case 0:
                            Name name = (Name) obj;
                            if (name != null) {
                                return enumEntryScope.resolveFakeOverrides(name, enumEntryScope.getSupertypeScope().getContributedFunctions(name, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
                            }
                            EnumEntryScope.$$$reportNull$$$0(8);
                            throw null;
                        default:
                            Name name2 = (Name) obj;
                            if (name2 != null) {
                                return enumEntryScope.resolveFakeOverrides(name2, enumEntryScope.getSupertypeScope().getContributedVariables(name2, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
                            }
                            EnumEntryScope.$$$reportNull$$$0(4);
                            throw null;
                    }
                }
            });
            final int i2 = 1;
            this.properties = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor.EnumEntryScope.1
                public final /* synthetic */ EnumEntryScope this$1;

                {
                    this.this$1 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i22 = i2;
                    EnumEntryScope enumEntryScope = this.this$1;
                    switch (i22) {
                        case 0:
                            Name name = (Name) obj;
                            if (name != null) {
                                return enumEntryScope.resolveFakeOverrides(name, enumEntryScope.getSupertypeScope().getContributedFunctions(name, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
                            }
                            EnumEntryScope.$$$reportNull$$$0(8);
                            throw null;
                        default:
                            Name name2 = (Name) obj;
                            if (name2 != null) {
                                return enumEntryScope.resolveFakeOverrides(name2, enumEntryScope.getSupertypeScope().getContributedVariables(name2, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
                            }
                            EnumEntryScope.$$$reportNull$$$0(4);
                            throw null;
                    }
                }
            });
            this.allDescriptors = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new GapPending$keyMap$2(4, this));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set getClassifierNames() {
            Set set = Collections.EMPTY_SET;
            if (set != null) {
                return set;
            }
            $$$reportNull$$$0(18);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
            if (descriptorKindFilter == null) {
                $$$reportNull$$$0(13);
                throw null;
            }
            Collection collection = (Collection) this.allDescriptors.invoke();
            if (collection != null) {
                return collection;
            }
            $$$reportNull$$$0(15);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
            if (name == null) {
                $$$reportNull$$$0(5);
                throw null;
            }
            if (noLookupLocation != null) {
                return (Collection) this.functions.invoke(name);
            }
            $$$reportNull$$$0(6);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
            if (name == null) {
                $$$reportNull$$$0(1);
                throw null;
            }
            if (noLookupLocation != null) {
                return (Collection) this.properties.invoke(name);
            }
            $$$reportNull$$$0(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set getFunctionNames() {
            Set set = (Set) this.this$0.enumMemberNames.invoke();
            if (set != null) {
                return set;
            }
            $$$reportNull$$$0(17);
            throw null;
        }

        public final MemberScope getSupertypeScope() {
            MemberScope memberScope = ((KotlinType) ((AbstractTypeConstructor) this.this$0.getTypeConstructor()).getSupertypes().iterator().next()).getMemberScope();
            if (memberScope != null) {
                return memberScope;
            }
            $$$reportNull$$$0(9);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set getVariableNames() {
            Set set = (Set) this.this$0.enumMemberNames.invoke();
            if (set != null) {
                return set;
            }
            $$$reportNull$$$0(19);
            throw null;
        }

        public final LinkedHashSet resolveFakeOverrides(Name name, Collection collection) {
            if (collection == null) {
                $$$reportNull$$$0(11);
                throw null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.DEFAULT.generateOverridesInFunctionGroup(name, collection, Collections.EMPTY_SET, this.this$0, new AnonymousClass4(linkedHashSet, 0));
            return linkedHashSet;
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor$EnumEntryScope$4, reason: invalid class name */
        public final class AnonymousClass4 extends DescriptorFactory {
            public final /* synthetic */ int $r8$classId;
            public final /* synthetic */ AbstractCollection val$result;

            public /* synthetic */ AnonymousClass4(AbstractCollection abstractCollection, int i) {
                this.$r8$classId = i;
                this.val$result = abstractCollection;
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
            public final void addFakeOverride(CallableMemberDescriptor callableMemberDescriptor) {
                int i = this.$r8$classId;
                AbstractCollection abstractCollection = this.val$result;
                switch (i) {
                    case 0:
                        if (callableMemberDescriptor == null) {
                            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "fakeOverride", "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4", "addFakeOverride"));
                        }
                        OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, null);
                        ((LinkedHashSet) abstractCollection).add(callableMemberDescriptor);
                        return;
                    default:
                        callableMemberDescriptor.getClass();
                        OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, null);
                        ((ArrayList) abstractCollection).add(callableMemberDescriptor);
                        return;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
            public final void conflict(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                switch (this.$r8$classId) {
                    case 0:
                        break;
                    default:
                        if (callableMemberDescriptor2 instanceof FunctionDescriptorImpl) {
                            FunctionDescriptorImpl functionDescriptorImpl = (FunctionDescriptorImpl) callableMemberDescriptor2;
                            Map map = functionDescriptorImpl.userDataMap;
                            if (map == null) {
                                map = new LinkedHashMap();
                                functionDescriptorImpl.userDataMap = map;
                            }
                            map.put(DeserializedDeclarationsFromSupertypeConflictDataKey.INSTANCE, callableMemberDescriptor);
                            break;
                        }
                        break;
                }
            }

            private final void conflict$kotlin$reflect$jvm$internal$impl$descriptors$impl$EnumEntrySyntheticClassDescriptor$EnumEntryScope$4(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
            }
        }
    }
}
