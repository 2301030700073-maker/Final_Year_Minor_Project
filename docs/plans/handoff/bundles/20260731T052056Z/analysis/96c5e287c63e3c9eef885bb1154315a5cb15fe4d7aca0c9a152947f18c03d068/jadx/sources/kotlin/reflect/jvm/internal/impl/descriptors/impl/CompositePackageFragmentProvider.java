package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositePackageFragmentProvider implements PackageFragmentProviderOptimized {
    public final String debugName;
    public final List providers;

    public CompositePackageFragmentProvider(List list, String str) {
        this.providers = list;
        this.debugName = str;
        list.size();
        CollectionsKt.toSet(list).size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void collectPackageFragments(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        for (PackageFragmentProviderOptimized packageFragmentProviderOptimized : this.providers) {
            packageFragmentProviderOptimized.getClass();
            fqName.getClass();
            packageFragmentProviderOptimized.collectPackageFragments(fqName, arrayList);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        fqName.getClass();
        HashSet hashSet = new HashSet();
        Iterator it = this.providers.iterator();
        while (it.hasNext()) {
            hashSet.addAll(((PackageFragmentProviderOptimized) it.next()).getSubPackagesOf(fqName, function1));
        }
        return hashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean isEmpty(FqName fqName) {
        fqName.getClass();
        List list = this.providers;
        if (list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!DescriptorUtilKt.isEmpty((PackageFragmentProviderOptimized) it.next(), fqName)) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return this.debugName;
    }
}
