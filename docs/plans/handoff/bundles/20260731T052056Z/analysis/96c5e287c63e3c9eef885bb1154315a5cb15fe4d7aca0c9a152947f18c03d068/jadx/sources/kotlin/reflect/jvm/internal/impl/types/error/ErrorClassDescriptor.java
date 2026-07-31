package kotlin.reflect.jvm.internal.impl.types.error;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ErrorClassDescriptor extends ClassDescriptorImpl {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ErrorClassDescriptor(kotlin.reflect.jvm.internal.impl.name.Name r16) {
        /*
            r15 = this;
            kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils r0 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.INSTANCE
            kotlin.reflect.jvm.internal.impl.types.error.ErrorModuleDescriptor r2 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.errorModule
            kotlin.reflect.jvm.internal.impl.descriptors.Modality r4 = kotlin.reflect.jvm.internal.impl.descriptors.Modality.OPEN
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.CLASS
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$1 r7 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NO_LOCKS
            kotlin.collections.EmptyList r6 = kotlin.collections.EmptyList.INSTANCE
            r1 = r15
            r3 = r16
            r1.<init>(r2, r3, r4, r5, r6, r7)
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl r8 = new kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl
            r10 = 0
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor$Kind r13 = kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor.Kind.DECLARATION
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1 r11 = kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations.Companion.EMPTY
            r12 = 1
            kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1 r14 = kotlin.reflect.jvm.internal.impl.descriptors.SourceElement.NO_SOURCE
            r9 = r15
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r0 = r8
            kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1 r2 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.INTERNAL
            r0.initialize(r6, r2)
            kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind r2 = kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind.SCOPE_FOR_ERROR_CLASS
            kotlin.reflect.jvm.internal.impl.name.Name r3 = r0.getName()
            java.lang.String r3 = r3.name
            r3.getClass()
            java.lang.String r4 = ""
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}
            kotlin.reflect.jvm.internal.impl.types.error.ErrorScope r10 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.createErrorScope(r2, r3)
            kotlin.reflect.jvm.internal.impl.types.error.ErrorType r8 = new kotlin.reflect.jvm.internal.impl.types.error.ErrorType
            kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind r11 = kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind.ERROR_CLASS
            r2 = 0
            java.lang.String[] r3 = new java.lang.String[r2]
            kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeConstructor r9 = kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils.createErrorTypeConstructor(r11, r3)
            java.lang.String[] r14 = new java.lang.String[r2]
            r13 = 0
            r12 = r6
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r0.unsubstitutedReturnType = r8
            java.util.Set r2 = kotlin.uuid.UuidKt.setOf(r0)
            r15.initialize(r10, r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.error.ErrorClassDescriptor.<init>(kotlin.reflect.jvm.internal.impl.name.Name):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ERROR_CLASS;
        String str = getName().name;
        str.getClass();
        return ErrorUtils.createErrorScope(errorScopeKind, str, typeSubstitution.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot substitute(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl
    public final String toString() {
        String asString = getName().asString();
        asString.getClass();
        return asString;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final ModuleAwareClassDescriptor substitute(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        return this;
    }
}
