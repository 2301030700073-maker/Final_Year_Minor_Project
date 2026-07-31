package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PackageFragmentProviderOptimized {
    void collectPackageFragments(FqName fqName, ArrayList arrayList);

    Collection getSubPackagesOf(FqName fqName, Function1 function1);

    boolean isEmpty(FqName fqName);
}
