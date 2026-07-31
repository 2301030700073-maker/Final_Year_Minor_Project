package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.HashMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$PackageVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedAndPackage;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedStaticVisibility;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JavaDescriptorVisibilities {
    public static final DescriptorVisibilities.AnonymousClass1 PACKAGE_VISIBILITY;
    public static final DescriptorVisibilities.AnonymousClass1 PROTECTED_AND_PACKAGE;
    public static final DescriptorVisibilities.AnonymousClass1 PROTECTED_STATIC_VISIBILITY;
    public static final HashMap visibilitiesMapping;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "from";
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i == 5 || i == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i == 2 || i == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i != 5 && i != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String format = String.format(str, objArr);
        if (i != 5 && i != 6) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    static {
        JavaVisibilities$PackageVisibility javaVisibilities$PackageVisibility = JavaVisibilities$PackageVisibility.INSTANCE;
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = new DescriptorVisibilities.AnonymousClass1(javaVisibilities$PackageVisibility, 9);
        PACKAGE_VISIBILITY = anonymousClass1;
        JavaVisibilities$ProtectedStaticVisibility javaVisibilities$ProtectedStaticVisibility = JavaVisibilities$ProtectedStaticVisibility.INSTANCE;
        DescriptorVisibilities.AnonymousClass1 anonymousClass12 = new DescriptorVisibilities.AnonymousClass1(javaVisibilities$ProtectedStaticVisibility, 10);
        PROTECTED_STATIC_VISIBILITY = anonymousClass12;
        JavaVisibilities$ProtectedAndPackage javaVisibilities$ProtectedAndPackage = JavaVisibilities$ProtectedAndPackage.INSTANCE;
        DescriptorVisibilities.AnonymousClass1 anonymousClass13 = new DescriptorVisibilities.AnonymousClass1(javaVisibilities$ProtectedAndPackage, 11);
        PROTECTED_AND_PACKAGE = anonymousClass13;
        HashMap hashMap = new HashMap();
        visibilitiesMapping = hashMap;
        hashMap.put(javaVisibilities$PackageVisibility, anonymousClass1);
        hashMap.put(javaVisibilities$ProtectedStaticVisibility, anonymousClass12);
        hashMap.put(javaVisibilities$ProtectedAndPackage, anonymousClass13);
    }

    public static boolean areInSamePackage(DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptorWithVisibility == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        PackageFragmentDescriptor packageFragmentDescriptor = (PackageFragmentDescriptor) DescriptorUtils.getParentOfType(declarationDescriptorWithVisibility, PackageFragmentDescriptor.class, false);
        PackageFragmentDescriptor packageFragmentDescriptor2 = (PackageFragmentDescriptor) DescriptorUtils.getParentOfType(declarationDescriptor, PackageFragmentDescriptor.class, false);
        return (packageFragmentDescriptor2 == null || packageFragmentDescriptor == null || !((PackageFragmentDescriptorImpl) packageFragmentDescriptor).fqName.equals(((PackageFragmentDescriptorImpl) packageFragmentDescriptor2).fqName)) ? false : true;
    }

    public static boolean isVisibleForProtectedAndPackage(ReceiverValue receiverValue, DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility2;
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (declarationDescriptorWithVisibility instanceof CallableMemberDescriptor) {
            declarationDescriptorWithVisibility2 = DescriptorUtils.unwrapFakeOverride((CallableMemberDescriptor) declarationDescriptorWithVisibility);
        } else {
            int i = DescriptorUtils.$r8$clinit;
            declarationDescriptorWithVisibility2 = declarationDescriptorWithVisibility;
        }
        if (areInSamePackage(declarationDescriptorWithVisibility2, declarationDescriptor)) {
            return true;
        }
        return DescriptorVisibilities.PROTECTED.isVisible(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor);
    }
}
