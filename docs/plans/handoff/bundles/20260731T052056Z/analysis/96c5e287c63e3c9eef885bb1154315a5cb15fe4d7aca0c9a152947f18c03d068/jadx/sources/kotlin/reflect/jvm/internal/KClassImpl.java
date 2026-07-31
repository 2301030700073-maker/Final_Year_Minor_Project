package kotlin.reflect.jvm.internal;

import coil3.util.UtilsKt;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KClassImpl extends KDeclarationContainerImpl implements KClass, KTypeParameterOwnerImpl {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ReflectProperties$LazyVal data = new ReflectProperties$LazyVal(new KClassImpl$data$1(this, 0));
    public final Class jClass;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Data extends KDeclarationContainerImpl.Data {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final ReflectProperties$LazySoftVal allNonStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal allStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal declaredNonStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal declaredStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal descriptor$delegate;
        public final ReflectProperties$LazySoftVal inheritedNonStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal inheritedStaticMembers$delegate;
        public final ReflectProperties$LazySoftVal qualifiedName$delegate;
        public final ReflectProperties$LazySoftVal simpleName$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "annotations", "getAnnotations()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "simpleName", "getSimpleName()Ljava/lang/String;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "constructors", "getConstructors()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "supertypes", "getSupertypes()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};
        }

        public Data(final KClassImpl kClassImpl) {
            super(kClassImpl);
            final int i = 4;
            this.descriptor$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i));
            final int i2 = 3;
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i3 = i2;
                    KClassImpl.Data data = this.this$0;
                    switch (i3) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            this.simpleName$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, this));
            this.qualifiedName$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, 7));
            final int i3 = 1;
            KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i3));
            final int i4 = 5;
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i4;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$3, reason: invalid class name */
                public final class AnonymousClass3 extends Lambda implements Function0 {
                    public static final AnonymousClass3 INSTANCE = new AnonymousClass3(0);

                    @Override // kotlin.jvm.functions.Function0
                    public final /* bridge */ /* synthetic */ Object invoke() {
                        return Object.class;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i5 = i3;
                    KClassImpl kClassImpl2 = kClassImpl;
                    KClassImpl.Data data = this.this$0;
                    switch (i5) {
                        case 0:
                            Collection<KotlinType> supertypes = data.getDescriptor().getTypeConstructor().getSupertypes();
                            supertypes.getClass();
                            ArrayList arrayList = new ArrayList(supertypes.size());
                            for (KotlinType kotlinType : supertypes) {
                                kotlinType.getClass();
                                arrayList.add(new KTypeImpl(kotlinType, new KClassImpl$Data$supertypes$2$1$1(kotlinType, data, kClassImpl2, 0)));
                            }
                            ModuleAwareClassDescriptor descriptor = data.getDescriptor();
                            Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                            if (!KotlinBuiltIns.classFqNameEquals(descriptor, StandardNames.FqNames.any) && !KotlinBuiltIns.classFqNameEquals(descriptor, StandardNames.FqNames.nothing)) {
                                if (!arrayList.isEmpty()) {
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        ClassKind kind = DescriptorUtils.getClassDescriptorForType(((KTypeImpl) it.next()).type).getKind();
                                        kind.getClass();
                                        if (kind == ClassKind.INTERFACE || kind == ClassKind.ANNOTATION_CLASS) {
                                        }
                                    }
                                }
                                arrayList.add(new KTypeImpl(DescriptorUtilsKt.getBuiltIns(data.getDescriptor()).getAnyType(), AnonymousClass3.INSTANCE));
                            }
                            return DFS.compact(arrayList);
                        default:
                            List<TypeParameterDescriptor> declaredTypeParameters = data.getDescriptor().getDeclaredTypeParameters();
                            declaredTypeParameters.getClass();
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(declaredTypeParameters, 10));
                            for (TypeParameterDescriptor typeParameterDescriptor : declaredTypeParameters) {
                                typeParameterDescriptor.getClass();
                                arrayList2.add(new KTypeParameterImpl(kClassImpl2, typeParameterDescriptor));
                            }
                            return arrayList2;
                    }
                }
            });
            final int i5 = 0;
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$3, reason: invalid class name */
                public final class AnonymousClass3 extends Lambda implements Function0 {
                    public static final AnonymousClass3 INSTANCE = new AnonymousClass3(0);

                    @Override // kotlin.jvm.functions.Function0
                    public final /* bridge */ /* synthetic */ Object invoke() {
                        return Object.class;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i52 = i5;
                    KClassImpl kClassImpl2 = kClassImpl;
                    KClassImpl.Data data = this.this$0;
                    switch (i52) {
                        case 0:
                            Collection<KotlinType> supertypes = data.getDescriptor().getTypeConstructor().getSupertypes();
                            supertypes.getClass();
                            ArrayList arrayList = new ArrayList(supertypes.size());
                            for (KotlinType kotlinType : supertypes) {
                                kotlinType.getClass();
                                arrayList.add(new KTypeImpl(kotlinType, new KClassImpl$Data$supertypes$2$1$1(kotlinType, data, kClassImpl2, 0)));
                            }
                            ModuleAwareClassDescriptor descriptor = data.getDescriptor();
                            Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                            if (!KotlinBuiltIns.classFqNameEquals(descriptor, StandardNames.FqNames.any) && !KotlinBuiltIns.classFqNameEquals(descriptor, StandardNames.FqNames.nothing)) {
                                if (!arrayList.isEmpty()) {
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        ClassKind kind = DescriptorUtils.getClassDescriptorForType(((KTypeImpl) it.next()).type).getKind();
                                        kind.getClass();
                                        if (kind == ClassKind.INTERFACE || kind == ClassKind.ANNOTATION_CLASS) {
                                        }
                                    }
                                }
                                arrayList.add(new KTypeImpl(DescriptorUtilsKt.getBuiltIns(data.getDescriptor()).getAnyType(), AnonymousClass3.INSTANCE));
                            }
                            return DFS.compact(arrayList);
                        default:
                            List<TypeParameterDescriptor> declaredTypeParameters = data.getDescriptor().getDeclaredTypeParameters();
                            declaredTypeParameters.getClass();
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(declaredTypeParameters, 10));
                            for (TypeParameterDescriptor typeParameterDescriptor : declaredTypeParameters) {
                                typeParameterDescriptor.getClass();
                                arrayList2.add(new KTypeParameterImpl(kClassImpl2, typeParameterDescriptor));
                            }
                            return arrayList2;
                    }
                }
            });
            final int i6 = 6;
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i6;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            final int i7 = 2;
            this.declaredNonStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i7));
            this.declaredStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i2));
            this.inheritedNonStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i4));
            this.inheritedStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new KClassImpl$data$1(kClassImpl, i6));
            this.allNonStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i3;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            this.allStaticMembers$delegate = KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i7;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
            KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                public final /* synthetic */ KClassImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i5;
                    KClassImpl.Data data = this.this$0;
                    switch (i32) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.allNonStaticMembers$delegate;
                            KProperty[] kPropertyArr = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty = kPropertyArr[14];
                            Object invoke = reflectProperties$LazySoftVal.invoke();
                            invoke.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.allStaticMembers$delegate;
                            KProperty kProperty2 = kPropertyArr[15];
                            Object invoke2 = reflectProperties$LazySoftVal2.invoke();
                            invoke2.getClass();
                            return CollectionsKt.plus((Collection) invoke, (Iterable) invoke2);
                        case 1:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr2 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty3 = kPropertyArr2[10];
                            Object invoke3 = reflectProperties$LazySoftVal3.invoke();
                            invoke3.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal4 = data.inheritedNonStaticMembers$delegate;
                            KProperty kProperty4 = kPropertyArr2[12];
                            Object invoke4 = reflectProperties$LazySoftVal4.invoke();
                            invoke4.getClass();
                            return CollectionsKt.plus((Collection) invoke3, (Iterable) invoke4);
                        case 2:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal5 = data.declaredStaticMembers$delegate;
                            KProperty[] kPropertyArr3 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty5 = kPropertyArr3[11];
                            Object invoke5 = reflectProperties$LazySoftVal5.invoke();
                            invoke5.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal6 = data.inheritedStaticMembers$delegate;
                            KProperty kProperty6 = kPropertyArr3[13];
                            Object invoke6 = reflectProperties$LazySoftVal6.invoke();
                            invoke6.getClass();
                            return CollectionsKt.plus((Collection) invoke5, (Iterable) invoke6);
                        case 3:
                            return UtilKt.computeAnnotations(data.getDescriptor());
                        case 4:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal7 = data.declaredNonStaticMembers$delegate;
                            KProperty[] kPropertyArr4 = KClassImpl.Data.$$delegatedProperties;
                            KProperty kProperty7 = kPropertyArr4[10];
                            Object invoke7 = reflectProperties$LazySoftVal7.invoke();
                            invoke7.getClass();
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal8 = data.declaredStaticMembers$delegate;
                            KProperty kProperty8 = kPropertyArr4[11];
                            Object invoke8 = reflectProperties$LazySoftVal8.invoke();
                            invoke8.getClass();
                            return CollectionsKt.plus((Collection) invoke7, (Iterable) invoke8);
                        case 5:
                            MemberScope unsubstitutedInnerClassesScope = data.getDescriptor().getUnsubstitutedInnerClassesScope();
                            unsubstitutedInnerClassesScope.getClass();
                            Collection contributedDescriptors$default = UtilsKt.getContributedDescriptors$default(unsubstitutedInnerClassesScope, null, 3);
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : contributedDescriptors$default) {
                                if (!DescriptorUtils.isEnumEntry((DeclarationDescriptor) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) it.next();
                                ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
                                Class javaClass = moduleAwareClassDescriptor != null ? UtilKt.toJavaClass(moduleAwareClassDescriptor) : null;
                                KClassImpl kClassImpl2 = javaClass != null ? new KClassImpl(javaClass) : null;
                                if (kClassImpl2 != null) {
                                    arrayList2.add(kClassImpl2);
                                }
                            }
                            return arrayList2;
                        default:
                            Collection<ModuleAwareClassDescriptor> sealedSubclasses = data.getDescriptor().getSealedSubclasses();
                            sealedSubclasses.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (ModuleAwareClassDescriptor moduleAwareClassDescriptor2 : sealedSubclasses) {
                                moduleAwareClassDescriptor2.getClass();
                                Class javaClass2 = UtilKt.toJavaClass(moduleAwareClassDescriptor2);
                                KClassImpl kClassImpl3 = javaClass2 != null ? new KClassImpl(javaClass2) : null;
                                if (kClassImpl3 != null) {
                                    arrayList3.add(kClassImpl3);
                                }
                            }
                            return arrayList3;
                    }
                }
            });
        }

        public final ModuleAwareClassDescriptor getDescriptor() {
            KProperty kProperty = $$delegatedProperties[0];
            Object invoke = this.descriptor$delegate.invoke();
            invoke.getClass();
            return (ModuleAwareClassDescriptor) invoke;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KotlinClassHeader.Kind.values().length];
            try {
                iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[KotlinClassHeader.Kind.SYNTHETIC_CLASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[KotlinClassHeader.Kind.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[KotlinClassHeader.Kind.CLASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public KClassImpl(Class cls) {
        this.jClass = cls;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof KClassImpl) && UnsignedKt.getJavaObjectType(this).equals(UnsignedKt.getJavaObjectType((KClass) obj));
    }

    public final ClassId getClassId() {
        PrimitiveType primitiveType;
        ClassId classId = RuntimeTypeMapper.JAVA_LANG_VOID;
        Class cls = this.jClass;
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            componentType.getClass();
            primitiveType = componentType.isPrimitive() ? JvmPrimitiveType.get(componentType.getSimpleName()).getPrimitiveType() : null;
            return primitiveType != null ? new ClassId(StandardNames.BUILT_INS_PACKAGE_FQ_NAME, primitiveType.getArrayTypeName()) : ClassId.topLevel(StandardNames.FqNames.array.toSafe());
        }
        if (cls.equals(Void.TYPE)) {
            return RuntimeTypeMapper.JAVA_LANG_VOID;
        }
        primitiveType = cls.isPrimitive() ? JvmPrimitiveType.get(cls.getSimpleName()).getPrimitiveType() : null;
        if (primitiveType != null) {
            return new ClassId(StandardNames.BUILT_INS_PACKAGE_FQ_NAME, primitiveType.getTypeName());
        }
        ClassId classId2 = ReflectClassUtilKt.getClassId(cls);
        if (!classId2.local) {
            String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
            ClassId mapJavaToKotlin = JavaToKotlinClassMap.mapJavaToKotlin(classId2.asSingleFqName());
            if (mapJavaToKotlin != null) {
                return mapJavaToKotlin;
            }
        }
        return classId2;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getConstructorDescriptors() {
        ModuleAwareClassDescriptor descriptor = getDescriptor();
        if (descriptor.getKind() == ClassKind.INTERFACE || descriptor.getKind() == ClassKind.OBJECT) {
            return EmptyList.INSTANCE;
        }
        Collection constructors = descriptor.getConstructors();
        constructors.getClass();
        return constructors;
    }

    public final ModuleAwareClassDescriptor getDescriptor() {
        return ((Data) this.data.invoke()).getDescriptor();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getFunctions(Name name) {
        MemberScope memberScope = getDescriptor().getDefaultType().getMemberScope();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        Collection contributedFunctions = memberScope.getContributedFunctions(name, noLookupLocation);
        MemberScope staticScope = getDescriptor().getStaticScope();
        staticScope.getClass();
        return CollectionsKt.plus(contributedFunctions, (Iterable) staticScope.getContributedFunctions(name, noLookupLocation));
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public final Class getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final PropertyDescriptor getLocalProperty(int i) {
        Class<?> declaringClass;
        Class cls = this.jClass;
        if (cls.getSimpleName().equals("DefaultImpls") && (declaringClass = cls.getDeclaringClass()) != null && declaringClass.isInterface()) {
            return ((KClassImpl) Reflection.factory.getOrCreateKotlinClass(declaringClass)).getLocalProperty(i);
        }
        ModuleAwareClassDescriptor descriptor = getDescriptor();
        DeserializedClassDescriptor deserializedClassDescriptor = descriptor instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) descriptor : null;
        if (deserializedClassDescriptor != null) {
            ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.classProto;
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.classLocalVariable;
            generatedExtension.getClass();
            ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) UuidKt.getExtensionOrNull(protoBuf$Class, generatedExtension, i);
            if (protoBuf$Property != null) {
                HCaptcha hCaptcha = deserializedClassDescriptor.c;
                return (PropertyDescriptor) UtilKt.deserializeToDescriptor(cls, protoBuf$Property, (NameResolver) hCaptcha.hCaptchaException, (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners, deserializedClassDescriptor.metadataVersion, KClassImpl$getLocalProperty$2$1$1.INSTANCE);
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getProperties(Name name) {
        MemberScope memberScope = getDescriptor().getDefaultType().getMemberScope();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        Collection contributedVariables = memberScope.getContributedVariables(name, noLookupLocation);
        MemberScope staticScope = getDescriptor().getStaticScope();
        staticScope.getClass();
        return CollectionsKt.plus(contributedVariables, (Iterable) staticScope.getContributedVariables(name, noLookupLocation));
    }

    @Override // kotlin.reflect.KClass
    public final String getQualifiedName() {
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((Data) this.data.invoke()).qualifiedName$delegate;
        KProperty kProperty = Data.$$delegatedProperties[3];
        return (String) reflectProperties$LazySoftVal.invoke();
    }

    @Override // kotlin.reflect.KClass
    public final String getSimpleName() {
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((Data) this.data.invoke()).simpleName$delegate;
        KProperty kProperty = Data.$$delegatedProperties[2];
        return (String) reflectProperties$LazySoftVal.invoke();
    }

    @Override // kotlin.reflect.KClass
    public final int hashCode() {
        return UnsignedKt.getJavaObjectType(this).hashCode();
    }

    @Override // kotlin.reflect.KClass
    public final boolean isInstance(Object obj) {
        Map map = ReflectClassUtilKt.FUNCTION_CLASSES;
        Class cls = this.jClass;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return TypeIntrinsics.isFunctionOfArity(num.intValue(), obj);
        }
        Class cls2 = (Class) ReflectClassUtilKt.PRIMITIVE_TO_WRAPPER.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls.isInstance(obj);
    }

    public final String toString() {
        ClassId classId = getClassId();
        FqName packageFqName = classId.getPackageFqName();
        packageFqName.getClass();
        String concat = packageFqName.isRoot() ? "" : packageFqName.asString().concat(".");
        String replace = classId.getRelativeClassName().asString().replace('.', '$');
        replace.getClass();
        return "class ".concat(concat.concat(replace));
    }
}
