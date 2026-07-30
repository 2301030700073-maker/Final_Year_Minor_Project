package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* compiled from: AbstractDeserializedPackageFragmentProvider.kt */
/* loaded from: classes2.dex */
public abstract class AbstractDeserializedPackageFragmentProvider implements PackageFragmentProviderOptimized {
    protected DeserializationComponents components;
    private final KotlinMetadataFinder finder;
    private final MemoizedFunctionToNullable fragments;
    private final ModuleDescriptor moduleDescriptor;
    private final StorageManager storageManager;

    protected abstract DeserializedPackageFragment findPackage(FqName fqName);

    public AbstractDeserializedPackageFragmentProvider(StorageManager storageManager, KotlinMetadataFinder finder, ModuleDescriptor moduleDescriptor) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
        this.storageManager = storageManager;
        this.finder = finder;
        this.moduleDescriptor = moduleDescriptor;
        this.fragments = storageManager.createMemoizedFunctionWithNullableValues(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider$$Lambda$0
            private final AbstractDeserializedPackageFragmentProvider arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public Object invoke(Object obj) {
                PackageFragmentDescriptor fragments$lambda$1;
                fragments$lambda$1 = AbstractDeserializedPackageFragmentProvider.fragments$lambda$1(this.arg$0, (FqName) obj);
                return fragments$lambda$1;
            }
        });
    }

    protected final StorageManager getStorageManager() {
        return this.storageManager;
    }

    protected final KotlinMetadataFinder getFinder() {
        return this.finder;
    }

    protected final ModuleDescriptor getModuleDescriptor() {
        return this.moduleDescriptor;
    }

    protected final DeserializationComponents getComponents() {
        DeserializationComponents deserializationComponents = this.components;
        if (deserializationComponents != null) {
            return deserializationComponents;
        }
        Intrinsics.throwUninitializedPropertyAccessException("components");
        return null;
    }

    protected final void setComponents(DeserializationComponents deserializationComponents) {
        Intrinsics.checkNotNullParameter(deserializationComponents, "<set-?>");
        this.components = deserializationComponents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PackageFragmentDescriptor fragments$lambda$1(AbstractDeserializedPackageFragmentProvider abstractDeserializedPackageFragmentProvider, FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        DeserializedPackageFragment findPackage = abstractDeserializedPackageFragmentProvider.findPackage(fqName);
        if (findPackage == null) {
            return null;
        }
        findPackage.initialize(abstractDeserializedPackageFragmentProvider.getComponents());
        return findPackage;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(FqName fqName, Collection packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        CollectionsKt.addIfNotNull(packageFragments, this.fragments.invoke(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(FqName fqName) {
        PackageFragmentDescriptor findPackage;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        if (this.fragments.isComputed(fqName)) {
            findPackage = (PackageFragmentDescriptor) this.fragments.invoke(fqName);
        } else {
            findPackage = findPackage(fqName);
        }
        return findPackage == null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public List getPackageFragments(FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        return kotlin.collections.CollectionsKt.listOfNotNull(this.fragments.invoke(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public Collection getSubPackagesOf(FqName fqName, Function1 nameFilter) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        return SetsKt.emptySet();
    }
}
