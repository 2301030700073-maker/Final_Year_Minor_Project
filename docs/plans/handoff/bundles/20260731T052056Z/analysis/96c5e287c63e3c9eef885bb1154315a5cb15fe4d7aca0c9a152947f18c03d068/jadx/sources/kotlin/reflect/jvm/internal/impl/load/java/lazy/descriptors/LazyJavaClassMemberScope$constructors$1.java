package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.room.Room;
import androidx.work.OperationKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$constructors$1;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$constructors$2;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaConstructor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.Dispatcher;
import okhttp3.MultipartBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassMemberScope$constructors$1 extends Lambda implements Function0 {
    public final /* synthetic */ Request.Builder $c;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$constructors$1(Request.Builder builder, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(0);
        this.$c = builder;
        this.this$0 = lazyJavaClassMemberScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$1;
        ?? r4;
        Object obj;
        Pair pair;
        List valueParameters;
        int i = this.$r8$classId;
        Request.Builder builder = this.$c;
        switch (i) {
            case 0:
                ?? r3 = this.this$0;
                ReflectJavaClass reflectJavaClass = r3.jClass;
                Request.Builder builder2 = r3.c;
                ModuleAwareClassDescriptor moduleAwareClassDescriptor = r3.ownerDescriptor;
                Constructor<?>[] declaredConstructors = reflectJavaClass.klass.getDeclaredConstructors();
                declaredConstructors.getClass();
                boolean z = false;
                List<ReflectJavaConstructor> list = SequencesKt.toList(new TransformingSequence(new FilteringSequence(ArraysKt___ArraysKt.asSequence(declaredConstructors), false, ReflectJavaClass$constructors$1.INSTANCE), ReflectJavaClass$constructors$2.INSTANCE));
                ArrayList arrayList = new ArrayList(list.size());
                for (ReflectJavaConstructor reflectJavaConstructor : list) {
                    JavaClassConstructorDescriptor createJavaConstructor = JavaClassConstructorDescriptor.createJavaConstructor(moduleAwareClassDescriptor, UuidKt.resolveAnnotations(builder2, reflectJavaConstructor), z, RuntimeErrorReporter.source(reflectJavaConstructor));
                    Request.Builder builder3 = new Request.Builder((ActivityPageBinding) builder2.url, new Dispatcher(builder2, createJavaConstructor, reflectJavaConstructor, moduleAwareClassDescriptor.getDeclaredTypeParameters().size()), (Lazy) builder2.headers);
                    Constructor constructor = reflectJavaConstructor.member;
                    Type[] genericParameterTypes = constructor.getGenericParameterTypes();
                    genericParameterTypes.getClass();
                    if (genericParameterTypes.length == 0) {
                        valueParameters = EmptyList.INSTANCE;
                    } else {
                        Class declaringClass = constructor.getDeclaringClass();
                        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
                            genericParameterTypes = (Type[]) ArraysKt___ArraysKt.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                        }
                        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                        if (parameterAnnotations.length < genericParameterTypes.length) {
                            Gson$$ExternalSyntheticBUOutline0.m$1("Illegal generic signature: ", constructor);
                            return null;
                        }
                        if (parameterAnnotations.length > genericParameterTypes.length) {
                            parameterAnnotations = (Annotation[][]) ArraysKt___ArraysKt.copyOfRange(parameterAnnotations, parameterAnnotations.length - genericParameterTypes.length, parameterAnnotations.length);
                        }
                        valueParameters = reflectJavaConstructor.getValueParameters(genericParameterTypes, parameterAnnotations, constructor.isVarArgs());
                    }
                    Composer resolveValueParameters = LazyJavaScope.resolveValueParameters(builder3, createJavaConstructor, valueParameters);
                    List declaredTypeParameters = moduleAwareClassDescriptor.getDeclaredTypeParameters();
                    declaredTypeParameters.getClass();
                    ArrayList typeParameters = reflectJavaConstructor.getTypeParameters();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(typeParameters, 10));
                    Iterator it = typeParameters.iterator();
                    while (it.hasNext()) {
                        TypeParameterDescriptor resolveTypeParameter = ((TypeParameterResolver) builder3.method).resolveTypeParameter((ReflectJavaTypeParameter) it.next());
                        resolveTypeParameter.getClass();
                        arrayList2.add(resolveTypeParameter);
                    }
                    createJavaConstructor.initialize((List) resolveValueParameters.writer, UnsignedKt.toDescriptorVisibility(reflectJavaConstructor.getVisibility()), CollectionsKt.plus((Collection) declaredTypeParameters, (Iterable) arrayList2));
                    createJavaConstructor.setHasStableParameterNames(false);
                    createJavaConstructor.setHasSynthesizedParameterNames(resolveValueParameters.writingFirst);
                    createJavaConstructor.setReturnType(moduleAwareClassDescriptor.getDefaultType());
                    arrayList.add(createJavaConstructor);
                    z = false;
                }
                boolean isRecord = reflectJavaClass.isRecord();
                Class cls = reflectJavaClass.klass;
                Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$12 = Annotations.Companion.EMPTY;
                if (isRecord) {
                    Object obj2 = builder2.url;
                    JavaClassConstructorDescriptor createJavaConstructor2 = JavaClassConstructorDescriptor.createJavaConstructor(moduleAwareClassDescriptor, annotations$Companion$EMPTY$12, true, RuntimeErrorReporter.source(reflectJavaClass));
                    ArrayList recordComponents = reflectJavaClass.getRecordComponents();
                    ArrayList arrayList3 = new ArrayList(recordComponents.size());
                    JavaTypeAttributes attributes$default = OperationKt.toAttributes$default(TypeUsage.COMMON, false, null, 6);
                    Iterator it2 = recordComponents.iterator();
                    int i2 = 0;
                    while (it2.hasNext()) {
                        ReflectJavaRecordComponent reflectJavaRecordComponent = (ReflectJavaRecordComponent) it2.next();
                        Annotations$Companion$EMPTY$1 annotations$Companion$EMPTY$13 = annotations$Companion$EMPTY$12;
                        arrayList3.add(new ValueParameterDescriptorImpl(createJavaConstructor2, null, i2, annotations$Companion$EMPTY$13, reflectJavaRecordComponent.getName(), ((MultipartBody.Builder) builder2.tags).transformJavaType(reflectJavaRecordComponent.getType(), attributes$default), false, false, false, null, RuntimeErrorReporter.source(reflectJavaRecordComponent)));
                        i2++;
                        annotations$Companion$EMPTY$12 = annotations$Companion$EMPTY$13;
                    }
                    annotations$Companion$EMPTY$1 = annotations$Companion$EMPTY$12;
                    createJavaConstructor2.setHasSynthesizedParameterNames(false);
                    DescriptorVisibilities.AnonymousClass1 visibility = moduleAwareClassDescriptor.getVisibility();
                    visibility.getClass();
                    if (visibility.equals(JavaDescriptorVisibilities.PROTECTED_STATIC_VISIBILITY)) {
                        visibility = JavaDescriptorVisibilities.PROTECTED_AND_PACKAGE;
                        visibility.getClass();
                    }
                    createJavaConstructor2.initialize(arrayList3, visibility);
                    createJavaConstructor2.setHasStableParameterNames(false);
                    createJavaConstructor2.setReturnType(moduleAwareClassDescriptor.getDefaultType());
                    String computeJvmDescriptor$default = RegexKt.computeJvmDescriptor$default(createJavaConstructor2, 2);
                    if (!arrayList.isEmpty()) {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            if (RegexKt.computeJvmDescriptor$default((ClassConstructorDescriptorImpl) it3.next(), 2).equals(computeJvmDescriptor$default)) {
                            }
                        }
                    }
                    arrayList.add(createJavaConstructor2);
                    Object obj3 = builder.url;
                } else {
                    annotations$Companion$EMPTY$1 = annotations$Companion$EMPTY$12;
                }
                Object obj4 = builder.url;
                moduleAwareClassDescriptor.getClass();
                JavaTypeEnhancement javaTypeEnhancement = (JavaTypeEnhancement) ((ActivityPageBinding) builder.url).pageToolbarButtonTabs;
                boolean isEmpty = arrayList.isEmpty();
                Collection collection = arrayList;
                if (isEmpty) {
                    boolean isAnnotation = cls.isAnnotation();
                    cls.isInterface();
                    if (isAnnotation) {
                        Object obj5 = builder2.url;
                        MultipartBody.Builder builder4 = (MultipartBody.Builder) builder2.tags;
                        ?? createJavaConstructor3 = JavaClassConstructorDescriptor.createJavaConstructor(moduleAwareClassDescriptor, annotations$Companion$EMPTY$1, true, RuntimeErrorReporter.source(reflectJavaClass));
                        if (isAnnotation) {
                            List methods$1 = reflectJavaClass.getMethods$1();
                            r4 = new ArrayList(methods$1.size());
                            JavaTypeAttributes attributes$default2 = OperationKt.toAttributes$default(TypeUsage.COMMON, true, null, 6);
                            ArrayList arrayList4 = new ArrayList();
                            ArrayList arrayList5 = new ArrayList();
                            for (Object obj6 : methods$1) {
                                if (Intrinsics.areEqual(((ReflectJavaMethod) obj6).getName(), JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME)) {
                                    arrayList4.add(obj6);
                                } else {
                                    arrayList5.add(obj6);
                                }
                            }
                            arrayList4.size();
                            ReflectJavaMethod reflectJavaMethod = (ReflectJavaMethod) CollectionsKt.firstOrNull((List) arrayList4);
                            if (reflectJavaMethod != null) {
                                ReflectJavaType returnType$1 = reflectJavaMethod.getReturnType$1();
                                if (returnType$1 instanceof ReflectJavaArrayType) {
                                    ReflectJavaArrayType reflectJavaArrayType = (ReflectJavaArrayType) returnType$1;
                                    pair = new Pair(builder4.transformArrayType(reflectJavaArrayType, attributes$default2, true), builder4.transformJavaType(reflectJavaArrayType.componentType, attributes$default2));
                                } else {
                                    pair = new Pair(builder4.transformJavaType(returnType$1, attributes$default2), null);
                                }
                                r3.addAnnotationValueParameter(r4, createJavaConstructor3, 0, reflectJavaMethod, (KotlinType) pair.first, (KotlinType) pair.second);
                            }
                            int i3 = reflectJavaMethod != null ? 1 : 0;
                            Iterator it4 = arrayList5.iterator();
                            int i4 = 0;
                            while (it4.hasNext()) {
                                ReflectJavaMethod reflectJavaMethod2 = (ReflectJavaMethod) it4.next();
                                r3.addAnnotationValueParameter(r4, createJavaConstructor3, i4 + i3, reflectJavaMethod2, builder4.transformJavaType(reflectJavaMethod2.getReturnType$1(), attributes$default2), null);
                                i4++;
                            }
                        } else {
                            r4 = Collections.EMPTY_LIST;
                        }
                        createJavaConstructor3.setHasSynthesizedParameterNames(false);
                        DescriptorVisibilities.AnonymousClass1 visibility2 = moduleAwareClassDescriptor.getVisibility();
                        visibility2.getClass();
                        if (visibility2.equals(JavaDescriptorVisibilities.PROTECTED_STATIC_VISIBILITY)) {
                            visibility2 = JavaDescriptorVisibilities.PROTECTED_AND_PACKAGE;
                            visibility2.getClass();
                        }
                        createJavaConstructor3.initialize(r4, visibility2);
                        createJavaConstructor3.setHasStableParameterNames(true);
                        createJavaConstructor3.setReturnType(moduleAwareClassDescriptor.getDefaultType());
                        obj = createJavaConstructor3;
                    } else {
                        obj = null;
                    }
                    collection = Room.listOfNotNull(obj);
                }
                return CollectionsKt.toList(javaTypeEnhancement.enhanceSignatures(builder, collection));
            default:
                Object obj7 = ((ActivityPageBinding) builder.url).wikiArticleCardView;
                ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = this.this$0.ownerDescriptor;
                builder.getClass();
                moduleAwareClassDescriptor2.getClass();
                return CollectionsKt.toSet(new ArrayList());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope$constructors$1(LazyJavaClassMemberScope lazyJavaClassMemberScope, Request.Builder builder) {
        super(0);
        this.this$0 = lazyJavaClassMemberScope;
        this.$c = builder;
    }
}
