package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ClassConstructorDescriptorImpl extends FunctionDescriptorImpl implements ConstructorDescriptor {
    public final boolean isPrimary;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r8) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl.$$$reportNull$$$0(int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClassConstructorDescriptorImpl(ModuleAwareClassDescriptor moduleAwareClassDescriptor, ConstructorDescriptor constructorDescriptor, Annotations annotations, boolean z, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        super(kind, moduleAwareClassDescriptor, constructorDescriptor, sourceElement, annotations, SpecialNames.INIT);
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        this.isPrimary = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        return connectionPool.visitConstructorDescriptor(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind) {
        return (ClassConstructorDescriptorImpl) copy(declarationDescriptor, modality, anonymousClass1, kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public ClassConstructorDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(23);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(24);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(25);
            throw null;
        }
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind == kind2 || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            return new ClassConstructorDescriptorImpl((ModuleAwareClassDescriptor) declarationDescriptor, this, annotations, this.isPrimary, kind2, sourceElement);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + declarationDescriptor + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor
    public final ModuleAwareClassDescriptor getConstructedClass() {
        ModuleAwareClassDescriptor containingDeclaration = getContainingDeclaration();
        if (containingDeclaration != null) {
            return containingDeclaration;
        }
        $$$reportNull$$$0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ModuleAwareClassDescriptor getContainingDeclaration() {
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) super.getContainingDeclaration();
        if (moduleAwareClassDescriptor != null) {
            return moduleAwareClassDescriptor;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ClassConstructorDescriptorImpl getOriginal() {
        ClassConstructorDescriptorImpl classConstructorDescriptorImpl = (ClassConstructorDescriptorImpl) super.getOriginal();
        if (classConstructorDescriptorImpl != null) {
            return classConstructorDescriptorImpl;
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Collection getOverriddenDescriptors() {
        Set set = Collections.EMPTY_SET;
        if (set != null) {
            return set;
        }
        $$$reportNull$$$0(21);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initialize(java.util.List r12, kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass1 r13, java.util.List r14) {
        /*
            r11 = this;
            r0 = 0
            if (r12 == 0) goto L61
            if (r13 == 0) goto L5b
            if (r14 == 0) goto L55
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r1 = r11.getContainingDeclaration()
            boolean r2 = r1.isInner()
            if (r2 == 0) goto L21
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r1 = r1.getContainingDeclaration()
            boolean r2 = r1 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
            if (r2 == 0) goto L21
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r1 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor) r1
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl r1 = r1.getThisAsReceiverParameter()
            r4 = r1
            goto L22
        L21:
            r4 = r0
        L22:
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r1 = r11.getContainingDeclaration()
            java.util.List r2 = r1.getContextReceivers()
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L3e
            java.util.List r1 = r1.getContextReceivers()
            if (r1 == 0) goto L38
        L36:
            r5 = r1
            goto L43
        L38:
            r11 = 15
            $$$reportNull$$$0(r11)
            throw r0
        L3e:
            java.util.List r1 = java.util.Collections.EMPTY_LIST
            if (r1 == 0) goto L4f
            goto L36
        L43:
            r8 = 0
            kotlin.reflect.jvm.internal.impl.descriptors.Modality r9 = kotlin.reflect.jvm.internal.impl.descriptors.Modality.FINAL
            r3 = 0
            r2 = r11
            r7 = r12
            r10 = r13
            r6 = r14
            r2.mo829initialize(r3, r4, r5, r6, r7, r8, r9, r10)
            return
        L4f:
            r11 = 16
            $$$reportNull$$$0(r11)
            throw r0
        L55:
            r11 = 12
            $$$reportNull$$$0(r11)
            throw r0
        L5b:
            r11 = 11
            $$$reportNull$$$0(r11)
            throw r0
        L61:
            r11 = 10
            $$$reportNull$$$0(r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl.initialize(java.util.List, kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1, java.util.List):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final void setOverriddenDescriptors(Collection collection) {
        if (collection != null) {
            return;
        }
        $$$reportNull$$$0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final ClassConstructorDescriptorImpl substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return (ClassConstructorDescriptorImpl) super.substitute(typeSubstitutor);
        }
        $$$reportNull$$$0(20);
        throw null;
    }

    public final void initialize(List list, DescriptorVisibilities.AnonymousClass1 anonymousClass1) {
        if (list == null) {
            $$$reportNull$$$0(13);
            throw null;
        }
        if (anonymousClass1 != null) {
            initialize(list, anonymousClass1, getContainingDeclaration().getDeclaredTypeParameters());
        } else {
            $$$reportNull$$$0(14);
            throw null;
        }
    }
}
