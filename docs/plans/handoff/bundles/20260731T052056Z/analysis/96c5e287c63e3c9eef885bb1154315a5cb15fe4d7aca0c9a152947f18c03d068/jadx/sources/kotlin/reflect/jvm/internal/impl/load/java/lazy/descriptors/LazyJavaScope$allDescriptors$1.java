package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$ALL_NAME_FILTER$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaScope$allDescriptors$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyJavaScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaScope$allDescriptors$1(LazyJavaScope lazyJavaScope, ReflectJavaField reflectJavaField, JavaPropertyDescriptor javaPropertyDescriptor) {
        super(0);
        this.$r8$classId = 5;
        this.this$0 = lazyJavaScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LazyJavaScope lazyJavaScope = this.this$0;
        switch (i) {
            case 0:
                DescriptorKindFilter descriptorKindFilter = DescriptorKindFilter.ALL;
                MemberScope.Companion.getClass();
                Function1 function1 = MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE;
                descriptorKindFilter.getClass();
                List list = descriptorKindFilter.excludes;
                NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.CLASSIFIERS_MASK)) {
                    for (Name name : lazyJavaScope.computeClassNames(descriptorKindFilter, function1)) {
                        function1.invoke(name);
                        ClassifierDescriptor contributedClassifier = lazyJavaScope.getContributedClassifier(name, noLookupLocation);
                        if (contributedClassifier != null) {
                            linkedHashSet.add(contributedClassifier);
                        }
                    }
                }
                if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.FUNCTIONS_MASK) && !list.contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
                    for (Name name2 : lazyJavaScope.computeFunctionNames(descriptorKindFilter, function1)) {
                        function1.invoke(name2);
                        linkedHashSet.addAll(lazyJavaScope.getContributedFunctions(name2, noLookupLocation));
                    }
                }
                if (descriptorKindFilter.acceptsKinds(DescriptorKindFilter.VARIABLES_MASK) && !list.contains(DescriptorKindExclude.NonExtensions.INSTANCE)) {
                    for (Name name3 : lazyJavaScope.computePropertyNames(descriptorKindFilter)) {
                        function1.invoke(name3);
                        linkedHashSet.addAll(lazyJavaScope.getContributedVariables(name3, noLookupLocation));
                    }
                }
                return CollectionsKt.toList(linkedHashSet);
            case 1:
                return lazyJavaScope.computeClassNames(DescriptorKindFilter.CLASSIFIERS, null);
            case 2:
                return lazyJavaScope.computeMemberIndex();
            case 3:
                return lazyJavaScope.computeFunctionNames(DescriptorKindFilter.FUNCTIONS, null);
            case 4:
                return lazyJavaScope.computePropertyNames(DescriptorKindFilter.VARIABLES);
            default:
                Object obj = lazyJavaScope.c.url;
                return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyJavaScope$allDescriptors$1(LazyJavaScope lazyJavaScope, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = lazyJavaScope;
    }
}
