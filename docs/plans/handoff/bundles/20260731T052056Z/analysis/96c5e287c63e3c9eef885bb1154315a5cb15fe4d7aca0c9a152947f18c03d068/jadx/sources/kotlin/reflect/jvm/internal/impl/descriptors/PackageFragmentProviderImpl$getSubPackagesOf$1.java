package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PackageFragmentProviderImpl$getSubPackagesOf$1 extends Lambda implements Function1 {
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE;
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE$1;
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE$2;
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE$3;
    public static final PackageFragmentProviderImpl$getSubPackagesOf$1 INSTANCE$4;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new PackageFragmentProviderImpl$getSubPackagesOf$1(i, 1);
        INSTANCE = new PackageFragmentProviderImpl$getSubPackagesOf$1(i, 0);
        INSTANCE$2 = new PackageFragmentProviderImpl$getSubPackagesOf$1(i, 2);
        INSTANCE$3 = new PackageFragmentProviderImpl$getSubPackagesOf$1(i, 3);
        INSTANCE$4 = new PackageFragmentProviderImpl$getSubPackagesOf$1(i, 4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PackageFragmentProviderImpl$getSubPackagesOf$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                PackageFragmentDescriptor packageFragmentDescriptor = (PackageFragmentDescriptor) obj;
                packageFragmentDescriptor.getClass();
                return ((PackageFragmentDescriptorImpl) packageFragmentDescriptor).fqName;
            case 1:
                ((ClassId) obj).getClass();
                return 0;
            case 2:
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
                declarationDescriptor.getClass();
                return Boolean.valueOf(declarationDescriptor instanceof CallableDescriptor);
            case 3:
                ((DeclarationDescriptor) obj).getClass();
                return Boolean.valueOf(!(r2 instanceof ConstructorDescriptor));
            default:
                DeclarationDescriptor declarationDescriptor2 = (DeclarationDescriptor) obj;
                declarationDescriptor2.getClass();
                List typeParameters = ((CallableDescriptor) declarationDescriptor2).getTypeParameters();
                typeParameters.getClass();
                return new LinesSequence(2, typeParameters);
        }
    }
}
