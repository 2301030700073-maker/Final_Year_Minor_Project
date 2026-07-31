package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassDescriptor$moduleAnnotations$2 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyJavaClassDescriptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyJavaClassDescriptor$moduleAnnotations$2(LazyJavaClassDescriptor lazyJavaClassDescriptor, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = lazyJavaClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
        switch (i) {
            case 0:
                if (DescriptorUtilsKt.getClassId(lazyJavaClassDescriptor) == null) {
                    return null;
                }
                Object obj = lazyJavaClassDescriptor.outerContext.url;
                return null;
            case 1:
                return DescriptorUtilKt.computeConstructorTypeParameters(lazyJavaClassDescriptor);
            default:
                ReflectJavaClass reflectJavaClass = lazyJavaClassDescriptor.jClass;
                ArrayList typeParameters = reflectJavaClass.getTypeParameters();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(typeParameters, 10));
                Iterator it = typeParameters.iterator();
                while (it.hasNext()) {
                    ReflectJavaTypeParameter reflectJavaTypeParameter = (ReflectJavaTypeParameter) it.next();
                    TypeParameterDescriptor resolveTypeParameter = ((TypeParameterResolver) lazyJavaClassDescriptor.c.method).resolveTypeParameter(reflectJavaTypeParameter);
                    if (resolveTypeParameter == null) {
                        throw new AssertionError("Parameter " + reflectJavaTypeParameter + " surely belongs to class " + reflectJavaClass + ", so it must be resolved");
                    }
                    arrayList.add(resolveTypeParameter);
                }
                return arrayList;
        }
    }
}
