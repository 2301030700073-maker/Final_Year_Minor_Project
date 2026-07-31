package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.room.Room;
import androidx.work.OperationKt;
import com.google.android.material.internal.CheckableGroup;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$containsFunctionN$1;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    public final Request.Builder c;
    public final ReflectJavaTypeParameter javaTypeParameter;

    public LazyJavaTypeParameterDescriptor(Request.Builder builder, ReflectJavaTypeParameter reflectJavaTypeParameter, int i, DeclarationDescriptor declarationDescriptor) {
        super(i, declarationDescriptor, new LazyJavaAnnotations(builder, reflectJavaTypeParameter, false), Name.identifier(reflectJavaTypeParameter.typeVariable.getName()), (LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView, Variance.INVARIANT, false);
        this.c = builder;
        this.javaTypeParameter = reflectJavaTypeParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List processBoundsWithoutCycles(List list) {
        LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor;
        JavaTypeEnhancement javaTypeEnhancement;
        Request.Builder builder = this.c;
        JavaTypeEnhancement javaTypeEnhancement2 = (JavaTypeEnhancement) ((ActivityPageBinding) builder.url).pageToolbarButtonTabs;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            KotlinType kotlinType = (KotlinType) it.next();
            SignatureEnhancement$containsFunctionN$1 signatureEnhancement$containsFunctionN$1 = SignatureEnhancement$containsFunctionN$1.INSTANCE$3;
            kotlinType.getClass();
            if (TypeUtils.contains(kotlinType, signatureEnhancement$containsFunctionN$1, null)) {
                lazyJavaTypeParameterDescriptor = this;
                javaTypeEnhancement = javaTypeEnhancement2;
            } else {
                lazyJavaTypeParameterDescriptor = this;
                javaTypeEnhancement = javaTypeEnhancement2;
                kotlinType = javaTypeEnhancement.enhance(new CheckableGroup((Annotated) lazyJavaTypeParameterDescriptor, false, builder, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, false), kotlinType, EmptyList.INSTANCE, null, false);
                if (kotlinType == null) {
                    kotlinType = kotlinType;
                }
            }
            arrayList.add(kotlinType);
            this = lazyJavaTypeParameterDescriptor;
            javaTypeEnhancement2 = javaTypeEnhancement;
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List resolveUpperBounds() {
        Type[] bounds = this.javaTypeParameter.typeVariable.getBounds();
        bounds.getClass();
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new ReflectJavaClassifierType(type));
        }
        ReflectJavaClassifierType reflectJavaClassifierType = (ReflectJavaClassifierType) CollectionsKt.singleOrNull((List) arrayList);
        List list = arrayList;
        if (Intrinsics.areEqual(reflectJavaClassifierType != null ? reflectJavaClassifierType.reflectType : null, Object.class)) {
            list = EmptyList.INSTANCE;
        }
        boolean isEmpty = list.isEmpty();
        Request.Builder builder = this.c;
        if (isEmpty) {
            return Room.listOf(KotlinTypeKt.flexibleType(((ModuleDescriptorImpl) ((ActivityPageBinding) builder.url).pageToolbarButtonNotifications).builtIns.getAnyType(), ((ModuleDescriptorImpl) ((ActivityPageBinding) builder.url).pageToolbarButtonNotifications).builtIns.getNullableAnyType()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((MultipartBody.Builder) builder.tags).transformJavaType((ReflectJavaClassifierType) it.next(), OperationKt.toAttributes$default(TypeUsage.COMMON, false, this, 3)));
        }
        return arrayList2;
    }
}
