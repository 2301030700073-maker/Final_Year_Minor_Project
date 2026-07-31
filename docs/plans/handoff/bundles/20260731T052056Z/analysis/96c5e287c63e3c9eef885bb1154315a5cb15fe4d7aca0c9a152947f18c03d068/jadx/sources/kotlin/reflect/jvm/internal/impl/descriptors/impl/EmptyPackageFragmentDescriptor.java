package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmptyPackageFragmentDescriptor extends PackageFragmentDescriptorImpl {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmptyPackageFragmentDescriptor(ModuleDescriptor moduleDescriptor, FqName fqName, int i) {
        super(moduleDescriptor, fqName);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(moduleDescriptor, fqName);
                break;
            default:
                moduleDescriptor.getClass();
                fqName.getClass();
                break;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    public final MemberScope getMemberScope() {
        int i = this.$r8$classId;
        return MemberScope.Empty.INSTANCE;
    }
}
