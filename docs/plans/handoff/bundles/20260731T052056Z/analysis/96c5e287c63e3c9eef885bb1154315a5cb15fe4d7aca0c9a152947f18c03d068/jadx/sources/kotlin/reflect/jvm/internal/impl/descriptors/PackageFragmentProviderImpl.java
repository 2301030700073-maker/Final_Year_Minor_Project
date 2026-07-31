package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PackageFragmentProviderImpl implements PackageFragmentProviderOptimized {
    public final ArrayList packageFragments;

    public PackageFragmentProviderImpl(ArrayList arrayList) {
        this.packageFragments = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void collectPackageFragments(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        for (Object obj : this.packageFragments) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) obj)).fqName, fqName)) {
                arrayList.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        fqName.getClass();
        return SequencesKt.toList(new FilteringSequence(new TransformingSequence(new LinesSequence(2, this.packageFragments), PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE), true, new PackageFragmentProviderImpl$getSubPackagesOf$2(fqName, 0)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean isEmpty(FqName fqName) {
        fqName.getClass();
        ArrayList arrayList = this.packageFragments;
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) it.next())).fqName, fqName)) {
                return false;
            }
        }
        return true;
    }
}
