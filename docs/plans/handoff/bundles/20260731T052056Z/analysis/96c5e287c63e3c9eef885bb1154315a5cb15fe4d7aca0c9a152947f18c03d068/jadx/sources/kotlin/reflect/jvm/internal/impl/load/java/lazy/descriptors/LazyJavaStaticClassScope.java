package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.room.Room;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$getFunctions$2;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaStaticClassScope extends LazyJavaStaticScope {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ReflectJavaClass jClass;
    public final LazyJavaClassDescriptor ownerDescriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope(Request.Builder builder, ReflectJavaClass reflectJavaClass, LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        super(builder, null);
        reflectJavaClass.getClass();
        this.jClass = reflectJavaClass;
        this.ownerDescriptor = lazyJavaClassDescriptor;
    }

    public static PropertyDescriptor getRealOriginal(PropertyDescriptor propertyDescriptor) {
        CallableMemberDescriptor.Kind kind = propertyDescriptor.getKind();
        kind.getClass();
        if (kind != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return propertyDescriptor;
        }
        Collection overriddenDescriptors = propertyDescriptor.getOverriddenDescriptors();
        overriddenDescriptors.getClass();
        Collection<PropertyDescriptor> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
        for (PropertyDescriptor propertyDescriptor2 : collection) {
            propertyDescriptor2.getClass();
            arrayList.add(getRealOriginal(propertyDescriptor2));
        }
        return (PropertyDescriptor) CollectionsKt.single(CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeClassNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computeFunctionNames(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        Set mutableSet = CollectionsKt.toMutableSet(((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).getMethodNames());
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.ownerDescriptor;
        LazyJavaStaticClassScope parentJavaStaticClassScope = Room.getParentJavaStaticClassScope(lazyJavaClassDescriptor);
        Set functionNames = parentJavaStaticClassScope != null ? parentJavaStaticClassScope.getFunctionNames() : null;
        if (functionNames == null) {
            functionNames = EmptySet.INSTANCE;
        }
        mutableSet.addAll(functionNames);
        if (this.jClass.klass.isEnum()) {
            mutableSet.addAll(Room.listOf((Object[]) new Name[]{StandardNames.ENUM_VALUE_OF, StandardNames.ENUM_VALUES}));
        }
        Request.Builder builder = this.c;
        Object obj = ((ActivityPageBinding) builder.url).wikiArticleCardView;
        builder.getClass();
        lazyJavaClassDescriptor.getClass();
        mutableSet.addAll(new ArrayList());
        return mutableSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeImplicitlyDeclaredFunctions(ArrayList arrayList, Name name) {
        Object obj = this.c.url;
        this.ownerDescriptor.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex computeMemberIndex() {
        return new ClassDeclaredMemberIndex(this.jClass, LazyJavaClassMemberScope$computeMemberIndex$1.INSTANCE$2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeNonDeclaredFunctions(LinkedHashSet linkedHashSet, Name name) {
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.ownerDescriptor;
        LazyJavaStaticClassScope parentJavaStaticClassScope = Room.getParentJavaStaticClassScope(lazyJavaClassDescriptor);
        linkedHashSet.addAll(UtilsKt.resolveOverridesForStaticMembers(name, parentJavaStaticClassScope == null ? EmptySet.INSTANCE : CollectionsKt.toSet(parentJavaStaticClassScope.getContributedFunctions(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS)), linkedHashSet, lazyJavaClassDescriptor, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityPageBinding) this.c.url).pageToolbarContainer)).overridingUtil));
        if (this.jClass.klass.isEnum()) {
            if (name.equals(StandardNames.ENUM_VALUE_OF)) {
                linkedHashSet.add(DescriptorFactory.createEnumValueOfMethod(lazyJavaClassDescriptor));
            } else if (name.equals(StandardNames.ENUM_VALUES)) {
                linkedHashSet.add(DescriptorFactory.createEnumValuesMethod(lazyJavaClassDescriptor));
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticScope, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void computeNonDeclaredProperties(ArrayList arrayList, Name name) {
        PropertyDescriptorImpl createEnumEntriesProperty;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        JvmBuiltInsCustomizer$getFunctions$2 jvmBuiltInsCustomizer$getFunctions$2 = new JvmBuiltInsCustomizer$getFunctions$2(name, 1);
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.ownerDescriptor;
        DFS.dfs(Room.listOf(lazyJavaClassDescriptor), LazyJavaStaticClassScope$$Lambda$0.INSTANCE, new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(lazyJavaClassDescriptor, linkedHashSet, jvmBuiltInsCustomizer$getFunctions$2));
        boolean isEmpty = arrayList.isEmpty();
        Request.Builder builder = this.c;
        if (isEmpty) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : linkedHashSet) {
                PropertyDescriptor realOriginal = getRealOriginal((PropertyDescriptor) obj);
                Object obj2 = linkedHashMap.get(realOriginal);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(realOriginal, obj2);
                }
                ((List) obj2).add(obj);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(arrayList2, UtilsKt.resolveOverridesForStaticMembers(name, (Collection) ((Map.Entry) it.next()).getValue(), arrayList, lazyJavaClassDescriptor, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityPageBinding) builder.url).pageToolbarContainer)).overridingUtil));
            }
            arrayList.addAll(arrayList2);
        } else {
            arrayList.addAll(UtilsKt.resolveOverridesForStaticMembers(name, linkedHashSet, arrayList, lazyJavaClassDescriptor, ((NewKotlinTypeCheckerImpl) ((NewKotlinTypeChecker) ((ActivityPageBinding) builder.url).pageToolbarContainer)).overridingUtil));
        }
        if (this.jClass.klass.isEnum() && name.equals(StandardNames.ENUM_ENTRIES) && (createEnumEntriesProperty = DescriptorFactory.createEnumEntriesProperty(lazyJavaClassDescriptor)) != null) {
            arrayList.add(createEnumEntriesProperty);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set computePropertyNames(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        Set mutableSet = CollectionsKt.toMutableSet(((DeclaredMemberIndex) this.declaredMemberIndex.invoke()).getFieldNames());
        LazyJavaClassMemberScope$computeMemberIndex$1 lazyJavaClassMemberScope$computeMemberIndex$1 = LazyJavaClassMemberScope$computeMemberIndex$1.INSTANCE$3;
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.ownerDescriptor;
        DFS.dfs(Room.listOf(lazyJavaClassDescriptor), LazyJavaStaticClassScope$$Lambda$0.INSTANCE, new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(lazyJavaClassDescriptor, mutableSet, lazyJavaClassMemberScope$computeMemberIndex$1));
        if (this.jClass.klass.isEnum()) {
            mutableSet.add(StandardNames.ENUM_ENTRIES);
        }
        return mutableSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor getOwnerDescriptor() {
        return this.ownerDescriptor;
    }
}
