package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.InitializedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaPackageFragmentProvider implements PackageFragmentProviderOptimized {
    public final Request.Builder c;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull packageFragments;

    public LazyJavaPackageFragmentProvider(ActivityPageBinding activityPageBinding) {
        this.c = new Request.Builder(activityPageBinding, TypeParameterResolver.EMPTY.INSTANCE, new InitializedLazyImpl(null));
        this.packageFragments = new LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull((LockBasedStorageManager) activityPageBinding.rootView, new ConcurrentHashMap(3, 1.0f, 2), new LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction$1(), 1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void collectPackageFragments(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        arrayList.add(getPackageFragment(fqName));
    }

    public final LazyJavaPackageFragment getPackageFragment(FqName fqName) {
        fqName.getClass();
        Object invoke = this.packageFragments.invoke(new LockBasedStorageManager.KeyWithComputation(fqName, new KTypeImpl$arguments$2(22, this, new ReflectJavaPackage(fqName))));
        if (invoke != null) {
            return (LazyJavaPackageFragment) invoke;
        }
        LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull.$$$reportNull$$$0(3);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        fqName.getClass();
        List list = (List) getPackageFragment(fqName).subPackages.invoke();
        return list == null ? EmptyList.INSTANCE : list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean isEmpty(FqName fqName) {
        fqName.getClass();
        return false;
    }

    public final String toString() {
        return "LazyJavaPackageFragmentProvider of module " + ((ModuleDescriptorImpl) ((ActivityPageBinding) this.c.url).pageToolbarButtonNotifications);
    }
}
