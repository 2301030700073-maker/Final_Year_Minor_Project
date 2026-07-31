package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import androidx.compose.ui.unit.DpKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyPackageViewDescriptorImpl extends DeclarationDescriptorImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue empty$delegate;
    public final FqName fqName;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue fragments$delegate;
    public final LazyScopeAdapter memberScope;
    public final ModuleDescriptorImpl module;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyPackageViewDescriptorImpl.class), "fragments", "getFragments()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyPackageViewDescriptorImpl.class), "empty", "getEmpty()Z"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPackageViewDescriptorImpl(ModuleDescriptorImpl moduleDescriptorImpl, FqName fqName, LockBasedStorageManager lockBasedStorageManager) {
        super(Annotations.Companion.EMPTY, fqName.shortNameOrSpecial());
        lockBasedStorageManager.getClass();
        this.module = moduleDescriptorImpl;
        this.fqName = fqName;
        final int i = 1;
        this.fragments$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$empty$2
            public final /* synthetic */ LazyPackageViewDescriptorImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.this$0;
                switch (i2) {
                    case 0:
                        ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl2.assertValid();
                        return Boolean.valueOf(DescriptorUtilKt.isEmpty((CompositePackageFragmentProvider) moduleDescriptorImpl2.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue(), lazyPackageViewDescriptorImpl.fqName));
                    case 1:
                        ModuleDescriptorImpl moduleDescriptorImpl3 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl3.assertValid();
                        CompositePackageFragmentProvider compositePackageFragmentProvider = (CompositePackageFragmentProvider) moduleDescriptorImpl3.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue();
                        FqName fqName2 = lazyPackageViewDescriptorImpl.fqName;
                        compositePackageFragmentProvider.getClass();
                        fqName2.getClass();
                        ArrayList arrayList = new ArrayList();
                        compositePackageFragmentProvider.collectPackageFragments(fqName2, arrayList);
                        return arrayList;
                    default:
                        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = lazyPackageViewDescriptorImpl.empty$delegate;
                        KProperty[] kPropertyArr = LazyPackageViewDescriptorImpl.$$delegatedProperties;
                        boolean booleanValue = ((Boolean) DpKt.getValue(lockBasedNotNullLazyValue, kPropertyArr[1])).booleanValue();
                        FqName fqName3 = lazyPackageViewDescriptorImpl.fqName;
                        ModuleDescriptorImpl moduleDescriptorImpl4 = lazyPackageViewDescriptorImpl.module;
                        if (booleanValue) {
                            return MemberScope.Empty.INSTANCE;
                        }
                        List list = (List) DpKt.getValue(lazyPackageViewDescriptorImpl.fragments$delegate, kPropertyArr[0]);
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((PackageFragmentDescriptor) it.next()).getMemberScope());
                        }
                        return TuplesKt.create("package view scope for " + fqName3 + " in " + moduleDescriptorImpl4.getName(), CollectionsKt.plus((Collection) arrayList2, (Object) new SubpackagesScope(moduleDescriptorImpl4, fqName3)));
                }
            }
        });
        final int i2 = 0;
        this.empty$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$empty$2
            public final /* synthetic */ LazyPackageViewDescriptorImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.this$0;
                switch (i22) {
                    case 0:
                        ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl2.assertValid();
                        return Boolean.valueOf(DescriptorUtilKt.isEmpty((CompositePackageFragmentProvider) moduleDescriptorImpl2.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue(), lazyPackageViewDescriptorImpl.fqName));
                    case 1:
                        ModuleDescriptorImpl moduleDescriptorImpl3 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl3.assertValid();
                        CompositePackageFragmentProvider compositePackageFragmentProvider = (CompositePackageFragmentProvider) moduleDescriptorImpl3.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue();
                        FqName fqName2 = lazyPackageViewDescriptorImpl.fqName;
                        compositePackageFragmentProvider.getClass();
                        fqName2.getClass();
                        ArrayList arrayList = new ArrayList();
                        compositePackageFragmentProvider.collectPackageFragments(fqName2, arrayList);
                        return arrayList;
                    default:
                        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = lazyPackageViewDescriptorImpl.empty$delegate;
                        KProperty[] kPropertyArr = LazyPackageViewDescriptorImpl.$$delegatedProperties;
                        boolean booleanValue = ((Boolean) DpKt.getValue(lockBasedNotNullLazyValue, kPropertyArr[1])).booleanValue();
                        FqName fqName3 = lazyPackageViewDescriptorImpl.fqName;
                        ModuleDescriptorImpl moduleDescriptorImpl4 = lazyPackageViewDescriptorImpl.module;
                        if (booleanValue) {
                            return MemberScope.Empty.INSTANCE;
                        }
                        List list = (List) DpKt.getValue(lazyPackageViewDescriptorImpl.fragments$delegate, kPropertyArr[0]);
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((PackageFragmentDescriptor) it.next()).getMemberScope());
                        }
                        return TuplesKt.create("package view scope for " + fqName3 + " in " + moduleDescriptorImpl4.getName(), CollectionsKt.plus((Collection) arrayList2, (Object) new SubpackagesScope(moduleDescriptorImpl4, fqName3)));
                }
            }
        });
        final int i3 = 2;
        this.memberScope = new LazyScopeAdapter(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$empty$2
            public final /* synthetic */ LazyPackageViewDescriptorImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.this$0;
                switch (i22) {
                    case 0:
                        ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl2.assertValid();
                        return Boolean.valueOf(DescriptorUtilKt.isEmpty((CompositePackageFragmentProvider) moduleDescriptorImpl2.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue(), lazyPackageViewDescriptorImpl.fqName));
                    case 1:
                        ModuleDescriptorImpl moduleDescriptorImpl3 = lazyPackageViewDescriptorImpl.module;
                        moduleDescriptorImpl3.assertValid();
                        CompositePackageFragmentProvider compositePackageFragmentProvider = (CompositePackageFragmentProvider) moduleDescriptorImpl3.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue();
                        FqName fqName2 = lazyPackageViewDescriptorImpl.fqName;
                        compositePackageFragmentProvider.getClass();
                        fqName2.getClass();
                        ArrayList arrayList = new ArrayList();
                        compositePackageFragmentProvider.collectPackageFragments(fqName2, arrayList);
                        return arrayList;
                    default:
                        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = lazyPackageViewDescriptorImpl.empty$delegate;
                        KProperty[] kPropertyArr = LazyPackageViewDescriptorImpl.$$delegatedProperties;
                        boolean booleanValue = ((Boolean) DpKt.getValue(lockBasedNotNullLazyValue, kPropertyArr[1])).booleanValue();
                        FqName fqName3 = lazyPackageViewDescriptorImpl.fqName;
                        ModuleDescriptorImpl moduleDescriptorImpl4 = lazyPackageViewDescriptorImpl.module;
                        if (booleanValue) {
                            return MemberScope.Empty.INSTANCE;
                        }
                        List list = (List) DpKt.getValue(lazyPackageViewDescriptorImpl.fragments$delegate, kPropertyArr[0]);
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((PackageFragmentDescriptor) it.next()).getMemberScope());
                        }
                        return TuplesKt.create("package view scope for " + fqName3 + " in " + moduleDescriptorImpl4.getName(), CollectionsKt.plus((Collection) arrayList2, (Object) new SubpackagesScope(moduleDescriptorImpl4, fqName3)));
                }
            }
        });
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
                descriptorRendererImpl.renderPackageHeader(this.fqName, "package", sb);
                if (descriptorRendererImpl.options.getDebugMode()) {
                    sb.append(" in context of ");
                    descriptorRendererImpl.renderName(this.module, sb, false);
                }
                return Unit.INSTANCE;
        }
    }

    public final boolean equals(Object obj) {
        LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = obj instanceof LazyPackageViewDescriptorImpl ? (LazyPackageViewDescriptorImpl) obj : null;
        return lazyPackageViewDescriptorImpl != null && Intrinsics.areEqual(this.fqName, lazyPackageViewDescriptorImpl.fqName) && Intrinsics.areEqual(this.module, lazyPackageViewDescriptorImpl.module);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        FqName fqName = this.fqName;
        if (fqName.isRoot()) {
            return null;
        }
        return this.module.getPackage(fqName.parent());
    }

    public final int hashCode() {
        return this.fqName.hashCode() + (this.module.hashCode() * 31);
    }
}
