package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import androidx.compose.ui.unit.DpKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubpackagesScope extends MemberScopeImpl {
    public final FqName fqName;
    public final ModuleDescriptor moduleDescriptor;

    public SubpackagesScope(ModuleDescriptor moduleDescriptor, FqName fqName) {
        moduleDescriptor.getClass();
        fqName.getClass();
        this.moduleDescriptor = moduleDescriptor;
        this.fqName = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.PACKAGES_MASK)) {
            FqName fqName = this.fqName;
            if (!fqName.isRoot() || !descriptorKindFilter.excludes.contains(DescriptorKindExclude.TopLevelPackages.INSTANCE)) {
                ModuleDescriptor moduleDescriptor = this.moduleDescriptor;
                Collection subPackagesOf = moduleDescriptor.getSubPackagesOf(fqName, function1);
                ArrayList arrayList = new ArrayList(subPackagesOf.size());
                Iterator it = subPackagesOf.iterator();
                while (it.hasNext()) {
                    Name shortName = ((FqName) it.next()).shortName();
                    shortName.getClass();
                    if (((Boolean) function1.invoke(shortName)).booleanValue()) {
                        LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = null;
                        if (!shortName.special) {
                            LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl2 = moduleDescriptor.getPackage(fqName.child(shortName));
                            if (!((Boolean) DpKt.getValue(lazyPackageViewDescriptorImpl2.empty$delegate, LazyPackageViewDescriptorImpl.$$delegatedProperties[1])).booleanValue()) {
                                lazyPackageViewDescriptorImpl = lazyPackageViewDescriptorImpl2;
                            }
                        }
                        if (lazyPackageViewDescriptorImpl != null) {
                            arrayList.add(lazyPackageViewDescriptorImpl);
                        }
                    }
                }
                return arrayList;
            }
        }
        return EmptyList.INSTANCE;
    }

    public final String toString() {
        return "subpackages of " + this.fqName + " from " + this.moduleDescriptor;
    }
}
