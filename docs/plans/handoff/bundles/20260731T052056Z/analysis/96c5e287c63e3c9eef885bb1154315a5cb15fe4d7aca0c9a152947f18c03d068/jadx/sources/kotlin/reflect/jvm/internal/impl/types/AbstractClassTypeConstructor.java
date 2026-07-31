package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractClassTypeConstructor extends AbstractTypeConstructor {
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r9) {
        /*
            r0 = 4
            r1 = 3
            r2 = 1
            if (r9 == r2) goto Lc
            if (r9 == r1) goto Lc
            if (r9 == r0) goto Lc
            java.lang.String r3 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r3 = "@NotNull method %s.%s must not return null"
        Le:
            r4 = 2
            if (r9 == r2) goto L17
            if (r9 == r1) goto L17
            if (r9 == r0) goto L17
            r5 = r1
            goto L18
        L17:
            r5 = r4
        L18:
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"
            r7 = 0
            if (r9 == r2) goto L2f
            if (r9 == r4) goto L2a
            if (r9 == r1) goto L2f
            if (r9 == r0) goto L2f
            java.lang.String r8 = "storageManager"
            r5[r7] = r8
            goto L31
        L2a:
            java.lang.String r8 = "classifier"
            r5[r7] = r8
            goto L31
        L2f:
            r5[r7] = r6
        L31:
            if (r9 == r2) goto L3f
            if (r9 == r1) goto L3a
            if (r9 == r0) goto L3a
            r5[r2] = r6
            goto L43
        L3a:
            java.lang.String r6 = "getAdditionalNeighboursInSupertypeGraph"
            r5[r2] = r6
            goto L43
        L3f:
            java.lang.String r6 = "getBuiltIns"
            r5[r2] = r6
        L43:
            if (r9 == r2) goto L54
            if (r9 == r4) goto L50
            if (r9 == r1) goto L54
            if (r9 == r0) goto L54
            java.lang.String r6 = "<init>"
            r5[r4] = r6
            goto L54
        L50:
            java.lang.String r6 = "isSameClassifier"
            r5[r4] = r6
        L54:
            java.lang.String r3 = java.lang.String.format(r3, r5)
            if (r9 == r2) goto L64
            if (r9 == r1) goto L64
            if (r9 == r0) goto L64
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            r9.<init>(r3)
            goto L69
        L64:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>(r3)
        L69:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor.$$$reportNull$$$0(int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClassTypeConstructor(LockBasedStorageManager lockBasedStorageManager) {
        super(lockBasedStorageManager);
        if (lockBasedStorageManager != null) {
        } else {
            $$$reportNull$$$0(0);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public final KotlinType defaultSupertypeIfEmpty() {
        ModuleAwareClassDescriptor declarationDescriptor = getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            KotlinBuiltIns.$$$reportNull$$$0(107);
            throw null;
        }
        Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
        if (KotlinBuiltIns.classFqNameEquals(declarationDescriptor, StandardNames.FqNames.any) || KotlinBuiltIns.classFqNameEquals(declarationDescriptor, StandardNames.FqNames.nothing)) {
            return null;
        }
        return getBuiltIns().getAnyType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns getBuiltIns() {
        KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(getDeclarationDescriptor());
        if (builtIns != null) {
            return builtIns;
        }
        $$$reportNull$$$0(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public abstract ModuleAwareClassDescriptor getDeclarationDescriptor();

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(((kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl) ((kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r4)).fqName, ((kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl) ((kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r5)).fqName) != false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0070 A[RETURN] */
    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isSameClassifier(kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
            r1 = 0
            if (r0 == 0) goto L71
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r4 = r4.getDeclarationDescriptor()
            r4.getClass()
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r4.getName()
            kotlin.reflect.jvm.internal.impl.name.Name r2 = r5.getName()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            r2 = 1
            if (r0 != 0) goto L1d
        L1b:
            r4 = r1
            goto L6e
        L1d:
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r4 = r4.getContainingDeclaration()
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r5 = r5.getContainingDeclaration()
        L25:
            if (r4 == 0) goto L4f
            if (r5 == 0) goto L4f
            boolean r0 = r4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
            if (r0 == 0) goto L30
            boolean r4 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
            goto L6e
        L30:
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
            if (r0 == 0) goto L35
            goto L1b
        L35:
            boolean r0 = r4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
            if (r0 == 0) goto L51
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
            if (r0 == 0) goto L1b
            kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r4
            kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl r4 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl) r4
            kotlin.reflect.jvm.internal.impl.name.FqName r4 = r4.fqName
            kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r5 = (kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r5
            kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl r5 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl) r5
            kotlin.reflect.jvm.internal.impl.name.FqName r5 = r5.fqName
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L1b
        L4f:
            r4 = r2
            goto L6e
        L51:
            boolean r0 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
            if (r0 == 0) goto L56
            goto L1b
        L56:
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r4.getName()
            kotlin.reflect.jvm.internal.impl.name.Name r3 = r5.getName()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r3)
            if (r0 != 0) goto L65
            goto L1b
        L65:
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r4 = r4.getContainingDeclaration()
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r5 = r5.getContainingDeclaration()
            goto L25
        L6e:
            if (r4 == 0) goto L71
            return r2
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor.isSameClassifier(kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor):boolean");
    }
}
