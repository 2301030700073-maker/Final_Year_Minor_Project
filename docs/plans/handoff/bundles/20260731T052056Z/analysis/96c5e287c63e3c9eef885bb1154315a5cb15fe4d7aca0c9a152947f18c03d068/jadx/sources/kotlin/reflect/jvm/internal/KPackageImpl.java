package kotlin.reflect.jvm.internal;

import androidx.room.Room;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.KPackageImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KPackageImpl extends KDeclarationContainerImpl {
    public final ReflectProperties$LazyVal data = new ReflectProperties$LazyVal(new KPackageImpl$data$1(this, 0));
    public final Class jClass;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Data extends KDeclarationContainerImpl.Data {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final ReflectProperties$LazySoftVal kotlinClass$delegate;
        public final ReflectProperties$LazyVal metadata$delegate;
        public final ReflectProperties$LazyVal multifileFacade$delegate;
        public final ReflectProperties$LazySoftVal scope$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "metadata", "getMetadata()Lkotlin/Triple;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Data.class), "members", "getMembers()Ljava/util/Collection;"))};
        }

        public Data(KPackageImpl kPackageImpl) {
            super(kPackageImpl);
            final int i = 1;
            this.kotlinClass$delegate = KPropertyImplKt.lazySoft(null, new KPackageImpl$data$1(kPackageImpl, i));
            final int i2 = 0;
            this.scope$delegate = KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$scope$2
                public final /* synthetic */ KPackageImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r7v15, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
                /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Iterable] */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ?? listOf;
                    int i3 = i2;
                    KPackageImpl.Data data = this.this$0;
                    List list = null;
                    switch (i3) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.kotlinClass$delegate;
                            KProperty kProperty = KPackageImpl.Data.$$delegatedProperties[0];
                            ReflectKotlinClass reflectKotlinClass = (ReflectKotlinClass) reflectProperties$LazySoftVal.invoke();
                            if (reflectKotlinClass == null) {
                                return MemberScope.Empty.INSTANCE;
                            }
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.moduleData$delegate;
                            KProperty kProperty2 = KDeclarationContainerImpl.Data.$$delegatedProperties[0];
                            Object invoke = reflectProperties$LazySoftVal2.invoke();
                            invoke.getClass();
                            MultipartBody.Builder builder = ((RuntimeModuleData) invoke).packagePartScopeCache;
                            DeserializedDescriptorResolver deserializedDescriptorResolver = (DeserializedDescriptorResolver) builder.boundary;
                            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) builder.parts;
                            Class cls = reflectKotlinClass.klass;
                            ClassId classId = ReflectClassUtilKt.getClassId(cls);
                            Object obj = concurrentHashMap.get(classId);
                            if (obj == null) {
                                FqName packageFqName = ReflectClassUtilKt.getClassId(cls).getPackageFqName();
                                packageFqName.getClass();
                                KotlinClassHeader kotlinClassHeader = reflectKotlinClass.classHeader;
                                KotlinClassHeader.Kind kind = kotlinClassHeader.kind;
                                KotlinClassHeader.Kind kind2 = KotlinClassHeader.Kind.MULTIFILE_CLASS;
                                if (kind == kind2) {
                                    String[] strArr = kotlinClassHeader.data;
                                    if (kind != kind2) {
                                        strArr = null;
                                    }
                                    if (strArr != null) {
                                        list = Arrays.asList(strArr);
                                        list.getClass();
                                    }
                                    if (list == null) {
                                        list = EmptyList.INSTANCE;
                                    }
                                    listOf = new ArrayList();
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        ClassId classId2 = ClassId.topLevel(new FqName(JvmClassName.byInternalName((String) it.next()).internalName.replace('/', '.')));
                                        ReflectJavaClassFinder reflectJavaClassFinder = (ReflectJavaClassFinder) builder.type;
                                        ((ProtoEnumFlags) deserializedDescriptorResolver.getComponents().licenseIconBy).getClass();
                                        ReflectKotlinClass findKotlinClass = TuplesKt.findKotlinClass(reflectJavaClassFinder, classId2, JvmMetadataVersion.INSTANCE);
                                        if (findKotlinClass != null) {
                                            listOf.add(findKotlinClass);
                                        }
                                    }
                                } else {
                                    listOf = Room.listOf(reflectKotlinClass);
                                }
                                EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor((ModuleDescriptor) deserializedDescriptorResolver.getComponents().licenseIcon, packageFqName, 0);
                                ArrayList arrayList = new ArrayList();
                                Iterator it2 = listOf.iterator();
                                while (it2.hasNext()) {
                                    DeserializedPackageMemberScope createKotlinPackagePartScope = deserializedDescriptorResolver.createKotlinPackagePartScope(emptyPackageFragmentDescriptor, (ReflectKotlinClass) it2.next());
                                    if (createKotlinPackagePartScope != null) {
                                        arrayList.add(createKotlinPackagePartScope);
                                    }
                                }
                                MemberScope create = TuplesKt.create("package " + packageFqName + " (" + reflectKotlinClass + ')', CollectionsKt.toList(arrayList));
                                Object putIfAbsent = concurrentHashMap.putIfAbsent(classId, create);
                                obj = putIfAbsent == null ? create : putIfAbsent;
                            }
                            obj.getClass();
                            return (MemberScope) obj;
                        default:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.kotlinClass$delegate;
                            KProperty kProperty3 = KPackageImpl.Data.$$delegatedProperties[0];
                            ReflectKotlinClass reflectKotlinClass2 = (ReflectKotlinClass) reflectProperties$LazySoftVal3.invoke();
                            if (reflectKotlinClass2 == null) {
                                return null;
                            }
                            KotlinClassHeader kotlinClassHeader2 = reflectKotlinClass2.classHeader;
                            String[] strArr2 = kotlinClassHeader2.data;
                            String[] strArr3 = kotlinClassHeader2.strings;
                            if (strArr2 == null || strArr3 == null) {
                                return null;
                            }
                            Pair readPackageDataFrom = JvmProtoBufUtil.readPackageDataFrom(strArr2, strArr3);
                            return new Triple((JvmNameResolver) readPackageDataFrom.first, (ProtoBuf$Package) readPackageDataFrom.second, kotlinClassHeader2.metadataVersion);
                    }
                }
            });
            this.multifileFacade$delegate = new ReflectProperties$LazyVal(new KPackageImpl$Data$members$2(this, kPackageImpl));
            this.metadata$delegate = new ReflectProperties$LazyVal(new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$scope$2
                public final /* synthetic */ KPackageImpl.Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r7v15, types: [java.util.ArrayList] */
                /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
                /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Iterable] */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    ?? listOf;
                    int i3 = i;
                    KPackageImpl.Data data = this.this$0;
                    List list = null;
                    switch (i3) {
                        case 0:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = data.kotlinClass$delegate;
                            KProperty kProperty = KPackageImpl.Data.$$delegatedProperties[0];
                            ReflectKotlinClass reflectKotlinClass = (ReflectKotlinClass) reflectProperties$LazySoftVal.invoke();
                            if (reflectKotlinClass == null) {
                                return MemberScope.Empty.INSTANCE;
                            }
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal2 = data.moduleData$delegate;
                            KProperty kProperty2 = KDeclarationContainerImpl.Data.$$delegatedProperties[0];
                            Object invoke = reflectProperties$LazySoftVal2.invoke();
                            invoke.getClass();
                            MultipartBody.Builder builder = ((RuntimeModuleData) invoke).packagePartScopeCache;
                            DeserializedDescriptorResolver deserializedDescriptorResolver = (DeserializedDescriptorResolver) builder.boundary;
                            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) builder.parts;
                            Class cls = reflectKotlinClass.klass;
                            ClassId classId = ReflectClassUtilKt.getClassId(cls);
                            Object obj = concurrentHashMap.get(classId);
                            if (obj == null) {
                                FqName packageFqName = ReflectClassUtilKt.getClassId(cls).getPackageFqName();
                                packageFqName.getClass();
                                KotlinClassHeader kotlinClassHeader = reflectKotlinClass.classHeader;
                                KotlinClassHeader.Kind kind = kotlinClassHeader.kind;
                                KotlinClassHeader.Kind kind2 = KotlinClassHeader.Kind.MULTIFILE_CLASS;
                                if (kind == kind2) {
                                    String[] strArr = kotlinClassHeader.data;
                                    if (kind != kind2) {
                                        strArr = null;
                                    }
                                    if (strArr != null) {
                                        list = Arrays.asList(strArr);
                                        list.getClass();
                                    }
                                    if (list == null) {
                                        list = EmptyList.INSTANCE;
                                    }
                                    listOf = new ArrayList();
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        ClassId classId2 = ClassId.topLevel(new FqName(JvmClassName.byInternalName((String) it.next()).internalName.replace('/', '.')));
                                        ReflectJavaClassFinder reflectJavaClassFinder = (ReflectJavaClassFinder) builder.type;
                                        ((ProtoEnumFlags) deserializedDescriptorResolver.getComponents().licenseIconBy).getClass();
                                        ReflectKotlinClass findKotlinClass = TuplesKt.findKotlinClass(reflectJavaClassFinder, classId2, JvmMetadataVersion.INSTANCE);
                                        if (findKotlinClass != null) {
                                            listOf.add(findKotlinClass);
                                        }
                                    }
                                } else {
                                    listOf = Room.listOf(reflectKotlinClass);
                                }
                                EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor((ModuleDescriptor) deserializedDescriptorResolver.getComponents().licenseIcon, packageFqName, 0);
                                ArrayList arrayList = new ArrayList();
                                Iterator it2 = listOf.iterator();
                                while (it2.hasNext()) {
                                    DeserializedPackageMemberScope createKotlinPackagePartScope = deserializedDescriptorResolver.createKotlinPackagePartScope(emptyPackageFragmentDescriptor, (ReflectKotlinClass) it2.next());
                                    if (createKotlinPackagePartScope != null) {
                                        arrayList.add(createKotlinPackagePartScope);
                                    }
                                }
                                MemberScope create = TuplesKt.create("package " + packageFqName + " (" + reflectKotlinClass + ')', CollectionsKt.toList(arrayList));
                                Object putIfAbsent = concurrentHashMap.putIfAbsent(classId, create);
                                obj = putIfAbsent == null ? create : putIfAbsent;
                            }
                            obj.getClass();
                            return (MemberScope) obj;
                        default:
                            ReflectProperties$LazySoftVal reflectProperties$LazySoftVal3 = data.kotlinClass$delegate;
                            KProperty kProperty3 = KPackageImpl.Data.$$delegatedProperties[0];
                            ReflectKotlinClass reflectKotlinClass2 = (ReflectKotlinClass) reflectProperties$LazySoftVal3.invoke();
                            if (reflectKotlinClass2 == null) {
                                return null;
                            }
                            KotlinClassHeader kotlinClassHeader2 = reflectKotlinClass2.classHeader;
                            String[] strArr2 = kotlinClassHeader2.data;
                            String[] strArr3 = kotlinClassHeader2.strings;
                            if (strArr2 == null || strArr3 == null) {
                                return null;
                            }
                            Pair readPackageDataFrom = JvmProtoBufUtil.readPackageDataFrom(strArr2, strArr3);
                            return new Triple((JvmNameResolver) readPackageDataFrom.first, (ProtoBuf$Package) readPackageDataFrom.second, kotlinClassHeader2.metadataVersion);
                    }
                }
            });
            KPropertyImplKt.lazySoft(null, new KPackageImpl$Data$members$2(kPackageImpl, this));
        }
    }

    public KPackageImpl(Class cls) {
        this.jClass = cls;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof KPackageImpl) {
            return this.jClass.equals(((KPackageImpl) obj).jClass);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getConstructorDescriptors() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getFunctions(Name name) {
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((Data) this.data.invoke()).scope$delegate;
        KProperty kProperty = Data.$$delegatedProperties[1];
        Object invoke = reflectProperties$LazySoftVal.invoke();
        invoke.getClass();
        return ((MemberScope) invoke).getContributedFunctions(name, NoLookupLocation.FROM_REFLECTION);
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public final Class getJClass() {
        return this.jClass;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final PropertyDescriptor getLocalProperty(int i) {
        ReflectProperties$LazyVal reflectProperties$LazyVal = ((Data) this.data.invoke()).metadata$delegate;
        KProperty kProperty = Data.$$delegatedProperties[3];
        Triple triple = (Triple) reflectProperties$LazyVal.invoke();
        if (triple == null) {
            return null;
        }
        JvmNameResolver jvmNameResolver = (JvmNameResolver) triple.first;
        ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) triple.second;
        JvmMetadataVersion jvmMetadataVersion = (JvmMetadataVersion) triple.third;
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.packageLocalVariable;
        generatedExtension.getClass();
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) UuidKt.getExtensionOrNull(protoBuf$Package, generatedExtension, i);
        if (protoBuf$Property == null) {
            return null;
        }
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Package.typeTable_;
        protoBuf$TypeTable.getClass();
        return (PropertyDescriptor) UtilKt.deserializeToDescriptor(this.jClass, protoBuf$Property, jvmNameResolver, new Dispatcher$promoteAndExecute$Effects(protoBuf$TypeTable), jvmMetadataVersion, KPackageImpl$getLocalProperty$1$1$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Class getMethodOwner() {
        ReflectProperties$LazyVal reflectProperties$LazyVal = ((Data) this.data.invoke()).multifileFacade$delegate;
        KProperty kProperty = Data.$$delegatedProperties[2];
        Class cls = (Class) reflectProperties$LazyVal.invoke();
        return cls == null ? this.jClass : cls;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public final Collection getProperties(Name name) {
        ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((Data) this.data.invoke()).scope$delegate;
        KProperty kProperty = Data.$$delegatedProperties[1];
        Object invoke = reflectProperties$LazySoftVal.invoke();
        invoke.getClass();
        return ((MemberScope) invoke).getContributedVariables(name, NoLookupLocation.FROM_REFLECTION);
    }

    public final int hashCode() {
        return this.jClass.hashCode();
    }

    public final String toString() {
        return "file class " + ReflectClassUtilKt.getClassId(this.jClass).asSingleFqName();
    }
}
