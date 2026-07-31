package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.Unit;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PackageFragmentDescriptorImpl extends DeclarationDescriptorNonRootImpl implements PackageFragmentDescriptor {
    public final String debugString;
    public final FqName fqName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PackageFragmentDescriptorImpl(ModuleDescriptor moduleDescriptor, FqName fqName) {
        super(moduleDescriptor, Annotations.Companion.EMPTY, fqName.shortNameOrSpecial(), SourceElement.NO_SOURCE);
        moduleDescriptor.getClass();
        fqName.getClass();
        this.fqName = fqName;
        this.debugString = "package " + fqName + " of " + moduleDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        switch (connectionPool.$r8$classId) {
            case 2:
                return null;
            default:
                StringBuilder sb = (StringBuilder) obj;
                DescriptorRendererImpl descriptorRendererImpl = (DescriptorRendererImpl) connectionPool.delegate;
                descriptorRendererImpl.getClass();
                descriptorRendererImpl.renderPackageHeader(this.fqName, "package-fragment", sb);
                if (descriptorRendererImpl.options.getDebugMode()) {
                    sb.append(" in ");
                    descriptorRendererImpl.renderName(getContainingDeclaration(), sb, false);
                }
                return Unit.INSTANCE;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ModuleDescriptor getContainingDeclaration() {
        DeclarationDescriptor containingDeclaration = super.getContainingDeclaration();
        containingDeclaration.getClass();
        return (ModuleDescriptor) containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot
    public SourceElement getSource() {
        return SourceElement.NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public String toString() {
        return this.debugString;
    }
}
