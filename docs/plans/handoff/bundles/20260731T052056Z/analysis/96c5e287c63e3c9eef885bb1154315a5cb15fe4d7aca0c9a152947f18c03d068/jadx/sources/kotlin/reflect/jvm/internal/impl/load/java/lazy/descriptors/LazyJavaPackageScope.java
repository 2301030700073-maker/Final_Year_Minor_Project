package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.datastore.core.SimpleActor$1;
import coil3.size.ViewSizeResolver$size$3$1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaPackageScope extends LazyJavaStaticScope {
    public final ViewSizeResolver$size$3$1 classes;
    public final ReflectJavaPackage jPackage;
    public final LockBasedStorageManager.LockBasedLazyValue knownClassNamesInPackage;
    public final LazyJavaPackageFragment ownerDescriptor;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FindClassRequest {
        public final ReflectJavaClass javaClass;
        public final Name name;

        public FindClassRequest(Name name, ReflectJavaClass reflectJavaClass) {
            name.getClass();
            this.name = name;
            this.javaClass = reflectJavaClass;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof FindClassRequest) {
                return Intrinsics.areEqual(this.name, ((FindClassRequest) obj).name);
            }
            return false;
        }

        public final int hashCode() {
            return this.name.hashCode();
        }
    }

    public LazyJavaPackageScope(Request.Builder builder, ReflectJavaPackage reflectJavaPackage, LazyJavaPackageFragment lazyJavaPackageFragment) {
        super(builder, null);
        this.jPackage = reflectJavaPackage;
        this.ownerDescriptor = lazyJavaPackageFragment;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView;
        this.knownClassNamesInPackage = new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, new AndroidLeakFixes$Companion$onDecorViewReady$1(7, builder, this));
        this.classes = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new SimpleActor$1(15, this, builder));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeClassNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        if (!descriptorKindFilter.acceptsKinds(DescriptorKindFilter.NON_SINGLETON_CLASSIFIERS_MASK)) {
            return EmptySet.INSTANCE;
        }
        Set set = (Set) this.knownClassNamesInPackage.invoke();
        if (set == null) {
            this.jPackage.getClass();
            return new LinkedHashSet();
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(Name.identifier((String) it.next()));
        }
        return hashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeFunctionNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex computeMemberIndex() {
        return DeclaredMemberIndex.Empty.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computePropertyNames(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        return EmptySet.INSTANCE;
    }

    public final ModuleAwareClassDescriptor findClassifier(Name name, ReflectJavaClass reflectJavaClass) {
        Name name2 = SpecialNames.NO_NAME_PROVIDED;
        name.getClass();
        String asString = name.asString();
        asString.getClass();
        if (asString.length() <= 0 || name.special) {
            return null;
        }
        Set set = (Set) this.knownClassNamesInPackage.invoke();
        if (reflectJavaClass == null && set != null && !set.contains(name.asString())) {
            return null;
        }
        return (ModuleAwareClassDescriptor) this.classes.invoke(new FindClassRequest(name, reflectJavaClass));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return findClassifier(name, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        if (!descriptorKindFilter.acceptsKinds(DescriptorKindFilter.CLASSIFIERS_MASK | DescriptorKindFilter.NON_SINGLETON_CLASSIFIERS_MASK)) {
            return EmptyList.INSTANCE;
        }
        Iterable iterable = (Iterable) this.allDescriptors.invoke();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
            if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
                Name name = ((ModuleAwareClassDescriptor) declarationDescriptor).getName();
                name.getClass();
                if (((Boolean) function1.invoke(name)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return EmptyList.INSTANCE;
    }

    public final JvmMetadataVersion getJvmMetadataVersion() {
        ((ProtoEnumFlags) ((DeserializedDescriptorResolver) ((ActivityPageBinding) this.c.url).pageFragment).getComponents().licenseIconBy).getClass();
        return JvmMetadataVersion.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor getOwnerDescriptor() {
        return this.ownerDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeNonDeclaredFunctions(LinkedHashSet linkedHashSet, Name name) {
    }
}
