package kotlin.reflect.jvm.internal.impl.descriptors;

import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.io.FileTreeWalk;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt$parentsWithSelf$1;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$flatMap$2;
import kotlin.sequences.TransformingSequence;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DescriptorUtilKt {
    public static final Symbol INVALID_MODULE_NOTIFIER_CAPABILITY = new Symbol(8, "InvalidModuleNotifier");

    public static final MultipartBody.Builder buildPossiblyInnerType(SimpleType simpleType, ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, int i) {
        if (classifierDescriptorWithTypeParameters == null || ErrorUtils.isError(classifierDescriptorWithTypeParameters)) {
            return null;
        }
        int size = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters().size() + i;
        if (classifierDescriptorWithTypeParameters.isInner()) {
            List subList = simpleType.getArguments().subList(i, size);
            DeclarationDescriptor containingDeclaration = classifierDescriptorWithTypeParameters.getContainingDeclaration();
            return new MultipartBody.Builder(classifierDescriptorWithTypeParameters, subList, buildPossiblyInnerType(simpleType, containingDeclaration instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) containingDeclaration : null, size));
        }
        if (size != simpleType.getArguments().size()) {
            DescriptorUtils.isLocal(classifierDescriptorWithTypeParameters);
        }
        return new MultipartBody.Builder(classifierDescriptorWithTypeParameters, simpleType.getArguments().subList(i, simpleType.getArguments().size()), (MultipartBody.Builder) null);
    }

    public static final List computeConstructorTypeParameters(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        List list;
        Object obj;
        TypeConstructor typeConstructor;
        List declaredTypeParameters = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
        declaredTypeParameters.getClass();
        if (!classifierDescriptorWithTypeParameters.isInner() && !(classifierDescriptorWithTypeParameters.getContainingDeclaration() instanceof CallableDescriptor)) {
            return declaredTypeParameters;
        }
        int i = DescriptorUtilsKt.$r8$clinit;
        DescriptorUtilsKt$parentsWithSelf$1 descriptorUtilsKt$parentsWithSelf$1 = DescriptorUtilsKt$parentsWithSelf$1.INSTANCE;
        List list2 = SequencesKt.toList(new FlatteningSequence(new FilteringSequence(new FileTreeWalk(SequencesKt.drop(SequencesKt.generateSequence(classifierDescriptorWithTypeParameters, descriptorUtilsKt$parentsWithSelf$1), 1), PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE$2), true, PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE$3), PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE$4, SequencesKt___SequencesKt$flatMap$2.INSTANCE));
        Iterator it = SequencesKt.drop(SequencesKt.generateSequence(classifierDescriptorWithTypeParameters, descriptorUtilsKt$parentsWithSelf$1), 1).iterator();
        while (true) {
            list = null;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (obj instanceof ModuleAwareClassDescriptor) {
                break;
            }
        }
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) obj;
        if (moduleAwareClassDescriptor != null && (typeConstructor = moduleAwareClassDescriptor.getTypeConstructor()) != null) {
            list = typeConstructor.getParameters();
        }
        if (list == null) {
            list = EmptyList.INSTANCE;
        }
        if (list2.isEmpty() && list.isEmpty()) {
            List declaredTypeParameters2 = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
            declaredTypeParameters2.getClass();
            return declaredTypeParameters2;
        }
        ArrayList plus = CollectionsKt.plus((Collection) list2, (Iterable) list);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus, 10));
        Iterator it2 = plus.iterator();
        while (it2.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it2.next();
            typeParameterDescriptor.getClass();
            arrayList.add(new CapturedTypeParameterDescriptor(typeParameterDescriptor, classifierDescriptorWithTypeParameters, declaredTypeParameters.size()));
        }
        return CollectionsKt.plus((Collection) declaredTypeParameters, (Iterable) arrayList);
    }

    public static final ModuleAwareClassDescriptor findClassAcrossModuleDependencies(ModuleDescriptor moduleDescriptor, ClassId classId) {
        moduleDescriptor.getClass();
        classId.getClass();
        ClassifierDescriptor findClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
        if (findClassifierAcrossModuleDependencies instanceof ModuleAwareClassDescriptor) {
            return (ModuleAwareClassDescriptor) findClassifierAcrossModuleDependencies;
        }
        return null;
    }

    public static final ClassifierDescriptor findClassifierAcrossModuleDependencies(ModuleDescriptor moduleDescriptor, ClassId classId) {
        moduleDescriptor.getClass();
        classId.getClass();
        if (moduleDescriptor.getCapability(DescriptorFactory.RESOLUTION_ANCHOR_PROVIDER_CAPABILITY) != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return null;
        }
        FqName packageFqName = classId.getPackageFqName();
        packageFqName.getClass();
        LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = moduleDescriptor.getPackage(packageFqName);
        List pathSegments = classId.getRelativeClassName().fqName.pathSegments();
        LazyScopeAdapter lazyScopeAdapter = lazyPackageViewDescriptorImpl.memberScope;
        Object first = CollectionsKt.first(pathSegments);
        first.getClass();
        ClassifierDescriptor contributedClassifier = lazyScopeAdapter.getContributedClassifier((Name) first, NoLookupLocation.FROM_DESERIALIZATION);
        if (contributedClassifier != null) {
            for (Name name : pathSegments.subList(1, pathSegments.size())) {
                if (contributedClassifier instanceof ModuleAwareClassDescriptor) {
                    MemberScope unsubstitutedInnerClassesScope = ((ModuleAwareClassDescriptor) contributedClassifier).getUnsubstitutedInnerClassesScope();
                    name.getClass();
                    ClassifierDescriptor contributedClassifier2 = unsubstitutedInnerClassesScope.getContributedClassifier(name, NoLookupLocation.FROM_DESERIALIZATION);
                    contributedClassifier = contributedClassifier2 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) contributedClassifier2 : null;
                    if (contributedClassifier != null) {
                    }
                }
            }
            return contributedClassifier;
        }
        return null;
    }

    public static final ModuleAwareClassDescriptor findNonGenericClassAcrossDependencies(ModuleDescriptor moduleDescriptor, ClassId classId, ImageLoader$Builder imageLoader$Builder) {
        moduleDescriptor.getClass();
        classId.getClass();
        imageLoader$Builder.getClass();
        ModuleAwareClassDescriptor findClassAcrossModuleDependencies = findClassAcrossModuleDependencies(moduleDescriptor, classId);
        return findClassAcrossModuleDependencies != null ? findClassAcrossModuleDependencies : imageLoader$Builder.getClass(classId, SequencesKt.toList(new TransformingSequence(SequencesKt.generateSequence(classId, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.INSTANCE), PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE$1)));
    }

    public static final ClassifierDescriptor getTopLevelContainingClassifier(DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptor containingDeclaration = declarationDescriptor.getContainingDeclaration();
        if (containingDeclaration == null || (declarationDescriptor instanceof PackageFragmentDescriptor)) {
            return null;
        }
        if (!(containingDeclaration.getContainingDeclaration() instanceof PackageFragmentDescriptor)) {
            return getTopLevelContainingClassifier(containingDeclaration);
        }
        if (containingDeclaration instanceof ClassifierDescriptor) {
            return (ClassifierDescriptor) containingDeclaration;
        }
        return null;
    }

    public static final boolean isEmpty(PackageFragmentProviderOptimized packageFragmentProviderOptimized, FqName fqName) {
        packageFragmentProviderOptimized.getClass();
        fqName.getClass();
        return packageFragmentProviderOptimized.isEmpty(fqName);
    }

    public static final ModuleAwareClassDescriptor resolveClassByFqName(ModuleDescriptor moduleDescriptor, FqName fqName, NoLookupLocation noLookupLocation) {
        ClassifierDescriptor classifierDescriptor;
        MemberScope unsubstitutedInnerClassesScope;
        moduleDescriptor.getClass();
        fqName.getClass();
        noLookupLocation.getClass();
        if (!fqName.isRoot()) {
            LazyScopeAdapter lazyScopeAdapter = moduleDescriptor.getPackage(fqName.parent()).memberScope;
            Name shortName = fqName.shortName();
            shortName.getClass();
            ClassifierDescriptor contributedClassifier = lazyScopeAdapter.getContributedClassifier(shortName, noLookupLocation);
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = contributedClassifier instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) contributedClassifier : null;
            if (moduleAwareClassDescriptor != null) {
                return moduleAwareClassDescriptor;
            }
            ModuleAwareClassDescriptor resolveClassByFqName = resolveClassByFqName(moduleDescriptor, fqName.parent(), noLookupLocation);
            if (resolveClassByFqName == null || (unsubstitutedInnerClassesScope = resolveClassByFqName.getUnsubstitutedInnerClassesScope()) == null) {
                classifierDescriptor = null;
            } else {
                Name shortName2 = fqName.shortName();
                shortName2.getClass();
                classifierDescriptor = unsubstitutedInnerClassesScope.getContributedClassifier(shortName2, noLookupLocation);
            }
            if (classifierDescriptor instanceof ModuleAwareClassDescriptor) {
                return (ModuleAwareClassDescriptor) classifierDescriptor;
            }
        }
        return null;
    }
}
