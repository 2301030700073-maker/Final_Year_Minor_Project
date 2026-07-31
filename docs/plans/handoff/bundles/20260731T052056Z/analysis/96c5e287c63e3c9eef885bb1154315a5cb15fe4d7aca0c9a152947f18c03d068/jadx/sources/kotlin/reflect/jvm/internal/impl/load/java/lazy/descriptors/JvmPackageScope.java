package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.compose.ui.unit.DpKt;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.IndexingIterable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPackageScope implements MemberScope {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final Request.Builder c;
    public final LazyJavaPackageScope javaScope;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue kotlinScopes$delegate;
    public final LazyJavaPackageFragment packageFragment;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmPackageScope.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    }

    public JvmPackageScope(Request.Builder builder, ReflectJavaPackage reflectJavaPackage, LazyJavaPackageFragment lazyJavaPackageFragment) {
        this.c = builder;
        this.packageFragment = lazyJavaPackageFragment;
        this.javaScope = new LazyJavaPackageScope(builder, reflectJavaPackage, lazyJavaPackageFragment);
        this.kotlinScopes$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue((LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView, new AndroidLeakFixes$Companion$onDecorViewReady$1(6, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        MemberScope[] kotlinScopes = getKotlinScopes();
        kotlinScopes.getClass();
        HashSet flatMapClassifierNamesOrNull = UnsignedKt.flatMapClassifierNamesOrNull(kotlinScopes.length == 0 ? EmptyList.INSTANCE : new IndexingIterable(2, kotlinScopes));
        if (flatMapClassifierNamesOrNull == null) {
            return null;
        }
        flatMapClassifierNamesOrNull.addAll(this.javaScope.getClassifierNames());
        return flatMapClassifierNamesOrNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        LazyJavaPackageScope lazyJavaPackageScope = this.javaScope;
        lazyJavaPackageScope.getClass();
        ClassifierDescriptor classifierDescriptor = null;
        ModuleAwareClassDescriptor findClassifier = lazyJavaPackageScope.findClassifier(name, null);
        if (findClassifier != null) {
            return findClassifier;
        }
        for (MemberScope memberScope : getKotlinScopes()) {
            ClassifierDescriptor contributedClassifier = memberScope.getContributedClassifier(name, noLookupLocation);
            if (contributedClassifier != null) {
                if (!(contributedClassifier instanceof ClassifierDescriptorWithTypeParameters) || !((ClassifierDescriptorWithTypeParameters) contributedClassifier).isExpect()) {
                    return contributedClassifier;
                }
                if (classifierDescriptor == null) {
                    classifierDescriptor = contributedClassifier;
                }
            }
        }
        return classifierDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        MemberScope[] kotlinScopes = getKotlinScopes();
        Collection contributedDescriptors = this.javaScope.getContributedDescriptors(descriptorKindFilter, function1);
        for (MemberScope memberScope : kotlinScopes) {
            contributedDescriptors = TuplesKt.concat(contributedDescriptors, memberScope.getContributedDescriptors(descriptorKindFilter, function1));
        }
        return contributedDescriptors == null ? EmptySet.INSTANCE : contributedDescriptors;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        MemberScope[] kotlinScopes = getKotlinScopes();
        Collection contributedFunctions = this.javaScope.getContributedFunctions(name, noLookupLocation);
        for (MemberScope memberScope : kotlinScopes) {
            contributedFunctions = TuplesKt.concat(contributedFunctions, memberScope.getContributedFunctions(name, noLookupLocation));
        }
        return contributedFunctions == null ? EmptySet.INSTANCE : contributedFunctions;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        recordLookup(name, noLookupLocation);
        MemberScope[] kotlinScopes = getKotlinScopes();
        this.javaScope.getClass();
        Collection collection = EmptyList.INSTANCE;
        for (MemberScope memberScope : kotlinScopes) {
            collection = TuplesKt.concat(collection, memberScope.getContributedVariables(name, noLookupLocation));
        }
        return collection == null ? EmptySet.INSTANCE : collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        MemberScope[] kotlinScopes = getKotlinScopes();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : kotlinScopes) {
            CollectionsKt.addAll(linkedHashSet, memberScope.getFunctionNames());
        }
        linkedHashSet.addAll(this.javaScope.getFunctionNames());
        return linkedHashSet;
    }

    public final MemberScope[] getKotlinScopes() {
        return (MemberScope[]) DpKt.getValue(this.kotlinScopes$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        MemberScope[] kotlinScopes = getKotlinScopes();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : kotlinScopes) {
            CollectionsKt.addAll(linkedHashSet, memberScope.getVariableNames());
        }
        linkedHashSet.addAll(this.javaScope.getVariableNames());
        return linkedHashSet;
    }

    public final void recordLookup(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        this.packageFragment.fqName.asString();
        name.asString().getClass();
    }

    public final String toString() {
        return "scope for " + this.packageFragment;
    }
}
