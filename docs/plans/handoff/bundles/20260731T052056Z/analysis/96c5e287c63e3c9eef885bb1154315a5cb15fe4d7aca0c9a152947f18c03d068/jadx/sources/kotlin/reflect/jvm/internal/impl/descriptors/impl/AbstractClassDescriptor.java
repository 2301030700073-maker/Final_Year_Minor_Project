package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.InnerClassesScopeWrapper;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractClassDescriptor extends ModuleAwareClassDescriptor {
    public final LockBasedStorageManager.LockBasedNotNullLazyValue defaultType;
    public final Name name;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue thisAsReceiverParameter;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue unsubstitutedInnerClassesScope;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function0 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AbstractClassDescriptor this$0;

        public /* synthetic */ AnonymousClass1(AbstractClassDescriptor abstractClassDescriptor, int i) {
            this.$r8$classId = i;
            this.this$0 = abstractClassDescriptor;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int i = this.$r8$classId;
            AbstractClassDescriptor abstractClassDescriptor = this.this$0;
            switch (i) {
                case 0:
                    MemberScope unsubstitutedMemberScope = abstractClassDescriptor.getUnsubstitutedMemberScope();
                    CallsKt$await$2$1 callsKt$await$2$1 = new CallsKt$await$2$1(6, this);
                    ErrorType errorType = TypeUtils.DONT_CARE;
                    if (ErrorUtils.isError(abstractClassDescriptor)) {
                        return ErrorUtils.createErrorType(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, abstractClassDescriptor.toString());
                    }
                    TypeConstructor typeConstructor = abstractClassDescriptor.getTypeConstructor();
                    if (typeConstructor == null) {
                        TypeUtils.$$$reportNull$$$0(12);
                        throw null;
                    }
                    if (unsubstitutedMemberScope == null) {
                        TypeUtils.$$$reportNull$$$0(13);
                        throw null;
                    }
                    List defaultTypeProjections = TypeUtils.getDefaultTypeProjections(typeConstructor.getParameters());
                    TypeAttributes.Companion.getClass();
                    return KotlinTypeKt.simpleTypeWithNonTrivialMemberScope(TypeAttributes.Empty, typeConstructor, defaultTypeProjections, false, unsubstitutedMemberScope, callsKt$await$2$1);
                case 1:
                    return new InnerClassesScopeWrapper(abstractClassDescriptor.getUnsubstitutedMemberScope());
                default:
                    return new ReceiverParameterDescriptorImpl(abstractClassDescriptor);
            }
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 2 || i == 3 || i == 4 || i == 5 || i == 6 || i == 9 || i == 12 || i == 14 || i == 16 || i == 17 || i == 19 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 4 || i == 5 || i == 6 || i == 9 || i == 12 || i == 14 || i == 16 || i == 17 || i == 19 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 7:
            case IMAGE_VALUE:
                objArr[0] = "typeArguments";
                break;
            case 8:
            case 11:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 10:
            case 15:
                objArr[0] = "typeSubstitution";
                break;
            case RADIO_GROUP_VALUE:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i == 6) {
            objArr[1] = "getContextReceivers";
        } else if (i == 9 || i == 12 || i == 14 || i == 16) {
            objArr[1] = "getMemberScope";
        } else if (i == 17) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i == 19) {
            objArr[1] = "substitute";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
                break;
            case 7:
            case 8:
            case 10:
            case 11:
            case IMAGE_VALUE:
            case 15:
                objArr[2] = "getMemberScope";
                break;
            case RADIO_GROUP_VALUE:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 4 && i != 5 && i != 6 && i != 9 && i != 12 && i != 14 && i != 16 && i != 17 && i != 19 && i != 20) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public AbstractClassDescriptor(LockBasedStorageManager lockBasedStorageManager, Name name) {
        int i = 0;
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        int i2 = 1;
        if (name == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        this.name = name;
        this.defaultType = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new AnonymousClass1(this, i));
        this.unsubstitutedInnerClassesScope = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new AnonymousClass1(this, i2));
        this.thisAsReceiverParameter = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new AnonymousClass1(this, 2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        return connectionPool.visitClassDescriptor(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public List getContextReceivers() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType getDefaultType() {
        SimpleType simpleType = (SimpleType) this.defaultType.invoke();
        if (simpleType != null) {
            return simpleType;
        }
        $$$reportNull$$$0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public MemberScope getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        if (!typeSubstitution.isEmpty()) {
            return new SubstitutingScope(getUnsubstitutedMemberScope(kotlinTypeRefiner$Default), new TypeSubstitutor(typeSubstitution));
        }
        MemberScope unsubstitutedMemberScope = getUnsubstitutedMemberScope(kotlinTypeRefiner$Default);
        if (unsubstitutedMemberScope != null) {
            return unsubstitutedMemberScope;
        }
        $$$reportNull$$$0(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Name getName() {
        Name name = this.name;
        if (name != null) {
            return name;
        }
        $$$reportNull$$$0(2);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ReceiverParameterDescriptorImpl getThisAsReceiverParameter() {
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl = (ReceiverParameterDescriptorImpl) this.thisAsReceiverParameter.invoke();
        if (receiverParameterDescriptorImpl != null) {
            return receiverParameterDescriptorImpl;
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public MemberScope getUnsubstitutedInnerClassesScope() {
        MemberScope memberScope = (MemberScope) this.unsubstitutedInnerClassesScope.invoke();
        if (memberScope != null) {
            return memberScope;
        }
        $$$reportNull$$$0(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public MemberScope getUnsubstitutedMemberScope() {
        DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this));
        MemberScope unsubstitutedMemberScope = getUnsubstitutedMemberScope(KotlinTypeRefiner$Default.INSTANCE);
        if (unsubstitutedMemberScope != null) {
            return unsubstitutedMemberScope;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public ModuleAwareClassDescriptor substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return typeSubstitutor.substitution.isEmpty() ? this : new LazySubstitutingClassDescriptor(this, typeSubstitutor);
        }
        $$$reportNull$$$0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ModuleAwareClassDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ClassifierDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getMemberScope(TypeSubstitution typeSubstitution) {
        DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtils.getContainingModule(this));
        MemberScope memberScope = getMemberScope(typeSubstitution, KotlinTypeRefiner$Default.INSTANCE);
        if (memberScope != null) {
            return memberScope;
        }
        $$$reportNull$$$0(16);
        throw null;
    }
}
