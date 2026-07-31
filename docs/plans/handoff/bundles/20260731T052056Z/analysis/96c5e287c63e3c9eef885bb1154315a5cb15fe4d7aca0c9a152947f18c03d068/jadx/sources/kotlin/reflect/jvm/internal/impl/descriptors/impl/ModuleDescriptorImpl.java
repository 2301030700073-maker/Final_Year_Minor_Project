package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$initialize$1;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageViewDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlinx.coroutines.internal.Symbol;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import org.jsoup.select.Selector$SelectorParseException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModuleDescriptorImpl extends DeclarationDescriptorImpl implements ModuleDescriptor {
    public final KotlinBuiltIns builtIns;
    public final Map capabilities;
    public Dispatcher$promoteAndExecute$Effects dependencies;
    public final boolean isValid;
    public PackageFragmentProviderOptimized packageFragmentProviderForModuleContent;
    public final SynchronizedLazyImpl packageFragmentProviderForWholeModuleWithDependencies$delegate;
    public final PackageViewDescriptorFactory packageViewDescriptorFactory;
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull packages;
    public final LockBasedStorageManager storageManager;

    public ModuleDescriptorImpl(Name name, LockBasedStorageManager lockBasedStorageManager, KotlinBuiltIns kotlinBuiltIns, int i) {
        super(Annotations.Companion.EMPTY, name);
        this.storageManager = lockBasedStorageManager;
        this.builtIns = kotlinBuiltIns;
        if (!name.special) {
            Gson$$ExternalSyntheticBUOutline0.m("Module name must be special: ", name);
            throw null;
        }
        this.capabilities = EmptyMap.INSTANCE;
        PackageViewDescriptorFactory.Companion.getClass();
        PackageViewDescriptorFactory packageViewDescriptorFactory = (PackageViewDescriptorFactory) getCapability(PackageViewDescriptorFactory.Companion.CAPABILITY);
        this.packageViewDescriptorFactory = packageViewDescriptorFactory == null ? PackageViewDescriptorFactory.Default.INSTANCE : packageViewDescriptorFactory;
        this.isValid = true;
        this.packages = lockBasedStorageManager.createMemoizedFunction(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(5, this));
        this.packageFragmentProviderForWholeModuleWithDependencies$delegate = new SynchronizedLazyImpl(new JvmBuiltIns$initialize$1(this, 2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        switch (connectionPool.$r8$classId) {
            case 2:
                return null;
            default:
                ((DescriptorRendererImpl) connectionPool.delegate).renderName(this, (StringBuilder) obj, true);
                return Unit.INSTANCE;
        }
    }

    public final void assertValid() {
        if (this.isValid) {
            return;
        }
        if (getCapability(DescriptorUtilKt.INVALID_MODULE_NOTIFIER_CAPABILITY) != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
        } else {
            throw new Selector$SelectorParseException("Accessing invalid module descriptor " + this);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final KotlinBuiltIns getBuiltIns() {
        return this.builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final Object getCapability(Symbol symbol) {
        symbol.getClass();
        Object obj = this.capabilities.get(symbol);
        if (obj == null) {
            return null;
        }
        return obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final List getExpectedByModules() {
        if (this.dependencies != null) {
            return EmptyList.INSTANCE;
        }
        String str = getName().name;
        str.getClass();
        Gson$$ExternalSyntheticBUOutline0.m(str, " were not set", "Dependencies of module ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final LazyPackageViewDescriptorImpl getPackage(FqName fqName) {
        fqName.getClass();
        assertValid();
        return (LazyPackageViewDescriptorImpl) this.packages.invoke(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        fqName.getClass();
        assertValid();
        assertValid();
        return ((CompositePackageFragmentProvider) this.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue()).getSubPackagesOf(fqName, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final boolean shouldSeeInternalsOf(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        if (this == moduleDescriptor) {
            return true;
        }
        this.dependencies.getClass();
        if (CollectionsKt.contains(EmptySet.INSTANCE, moduleDescriptor)) {
            return true;
        }
        getExpectedByModules();
        return moduleDescriptor.getExpectedByModules().contains(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public final String toString() {
        String declarationDescriptorImpl = DeclarationDescriptorImpl.toString(this);
        return this.isValid ? declarationDescriptorImpl : declarationDescriptorImpl.concat(" !isValid");
    }
}
