package kotlin.reflect.jvm.internal;

import androidx.compose.ui.unit.DpKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.PropertyReference;
import kotlin.jvm.internal.RepeatableContainer;
import kotlin.reflect.KCallable;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory$RuntimeSourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinarySourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue$ErrorValueWithMessage;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.NullValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UtilKt {
    public static final FqName JVM_STATIC = new FqName("kotlin.jvm.JvmStatic");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            try {
                iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrimitiveType.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrimitiveType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrimitiveType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PrimitiveType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PrimitiveType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final KCallableImpl asKCallableImpl(Object obj) {
        KCallableImpl kCallableImpl = obj instanceof KCallableImpl ? (KCallableImpl) obj : null;
        if (kCallableImpl != null) {
            return kCallableImpl;
        }
        KFunctionImpl asKFunctionImpl = asKFunctionImpl(obj);
        return asKFunctionImpl != null ? asKFunctionImpl : asKPropertyImpl(obj);
    }

    public static final KFunctionImpl asKFunctionImpl(Object obj) {
        KCallable kCallable;
        KFunctionImpl kFunctionImpl = obj instanceof KFunctionImpl ? (KFunctionImpl) obj : null;
        if (kFunctionImpl != null) {
            return kFunctionImpl;
        }
        FunctionReference functionReference = obj instanceof FunctionReference ? (FunctionReference) obj : null;
        if (functionReference != null) {
            kCallable = functionReference.reflected;
            if (kCallable == null) {
                kCallable = functionReference.computeReflected();
                functionReference.reflected = kCallable;
            }
        } else {
            kCallable = null;
        }
        if (kCallable instanceof KFunctionImpl) {
            return (KFunctionImpl) kCallable;
        }
        return null;
    }

    public static final KPropertyImpl asKPropertyImpl(Object obj) {
        KPropertyImpl kPropertyImpl = obj instanceof KPropertyImpl ? (KPropertyImpl) obj : null;
        if (kPropertyImpl != null) {
            return kPropertyImpl;
        }
        PropertyReference propertyReference = obj instanceof PropertyReference ? (PropertyReference) obj : null;
        KCallable compute = propertyReference != null ? propertyReference.compute() : null;
        if (compute instanceof KPropertyImpl) {
            return (KPropertyImpl) compute;
        }
        return null;
    }

    public static final ArrayList computeAnnotations(Annotated annotated) {
        List listOf;
        annotated.getClass();
        Annotations annotations = annotated.getAnnotations();
        ArrayList arrayList = new ArrayList();
        Iterator it = annotations.iterator();
        while (true) {
            Annotation annotation = null;
            if (!it.hasNext()) {
                break;
            }
            AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) it.next();
            SourceElement source = annotationDescriptor.getSource();
            if (source instanceof ReflectAnnotationSource) {
                annotation = ((ReflectAnnotationSource) source).annotation;
            } else if (source instanceof RuntimeSourceElementFactory$RuntimeSourceElement) {
                ReflectJavaElement reflectJavaElement = ((RuntimeSourceElementFactory$RuntimeSourceElement) source).javaElement;
                ReflectJavaAnnotation reflectJavaAnnotation = reflectJavaElement instanceof ReflectJavaAnnotation ? (ReflectJavaAnnotation) reflectJavaElement : null;
                if (reflectJavaAnnotation != null) {
                    annotation = reflectJavaAnnotation.annotation;
                }
            } else {
                annotation = toAnnotationInstance(annotationDescriptor);
            }
            if (annotation != null) {
                arrayList.add(annotation);
            }
        }
        if (!arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass((Annotation) it2.next())).getSimpleName().equals("Container")) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        Annotation annotation2 = (Annotation) it3.next();
                        Class javaClass = UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation2));
                        if (!javaClass.getSimpleName().equals("Container") || javaClass.getAnnotation(RepeatableContainer.class) == null) {
                            listOf = Room.listOf(annotation2);
                        } else {
                            Object invoke = javaClass.getDeclaredMethod("value", null).invoke(annotation2, null);
                            invoke.getClass();
                            listOf = Arrays.asList((Annotation[]) invoke);
                            listOf.getClass();
                        }
                        CollectionsKt.addAll(arrayList2, listOf);
                    }
                    return arrayList2;
                }
            }
        }
        return arrayList;
    }

    public static final Object defaultPrimitiveValue(Type type) {
        type.getClass();
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            if (type.equals(Boolean.TYPE)) {
                return Boolean.FALSE;
            }
            if (type.equals(Character.TYPE)) {
                return (char) 0;
            }
            if (type.equals(Byte.TYPE)) {
                return (byte) 0;
            }
            if (type.equals(Short.TYPE)) {
                return (short) 0;
            }
            if (type.equals(Integer.TYPE)) {
                return 0;
            }
            if (type.equals(Float.TYPE)) {
                return Float.valueOf(RecyclerView.DECELERATION_RATE);
            }
            if (type.equals(Long.TYPE)) {
                return 0L;
            }
            if (type.equals(Double.TYPE)) {
                return Double.valueOf(0.0d);
            }
            if (type.equals(Void.TYPE)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Parameter with void type is illegal");
                return null;
            }
            Gson$$ExternalSyntheticBUOutline0.m$5("Unknown primitive: ", type);
        }
        return null;
    }

    public static final CallableDescriptor deserializeToDescriptor(Class cls, GeneratedMessageLite.ExtendableMessage extendableMessage, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, BinaryVersion binaryVersion, Function2 function2) {
        List list;
        extendableMessage.getClass();
        nameResolver.getClass();
        binaryVersion.getClass();
        RuntimeModuleData orCreateModule = ModuleByClassLoaderKt.getOrCreateModule(cls);
        if (extendableMessage instanceof ProtoBuf$Function) {
            list = ((ProtoBuf$Function) extendableMessage).typeParameter_;
        } else {
            if (!(extendableMessage instanceof ProtoBuf$Property)) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Unsupported message: ", extendableMessage);
                return null;
            }
            list = ((ProtoBuf$Property) extendableMessage).typeParameter_;
        }
        List list2 = list;
        ActivityGalleryBinding activityGalleryBinding = orCreateModule.deserialization;
        ModuleDescriptor moduleDescriptor = (ModuleDescriptor) activityGalleryBinding.licenseIcon;
        list2.getClass();
        return (CallableDescriptor) function2.invoke(new MemberDeserializer(new HCaptcha(activityGalleryBinding, nameResolver, moduleDescriptor, dispatcher$promoteAndExecute$Effects, VersionRequirementTable.EMPTY, binaryVersion, (DeserializedContainerSource) null, (GsonBuilder) null, list2)), extendableMessage);
    }

    public static final ReceiverParameterDescriptorImpl getInstanceReceiverParameter(CallableDescriptor callableDescriptor) {
        callableDescriptor.getClass();
        if (callableDescriptor.getDispatchReceiverParameter() == null) {
            return null;
        }
        DeclarationDescriptor containingDeclaration = callableDescriptor.getContainingDeclaration();
        containingDeclaration.getClass();
        return ((ModuleAwareClassDescriptor) containingDeclaration).getThisAsReceiverParameter();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class loadClass(ClassLoader classLoader, ClassId classId, int i) {
        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
        FqNameUnsafe unsafe = classId.asSingleFqName().toUnsafe();
        unsafe.getClass();
        ClassId mapKotlinToJava = JavaToKotlinClassMap.mapKotlinToJava(unsafe);
        if (mapKotlinToJava != null) {
            classId = mapKotlinToJava;
        }
        String asString = classId.getPackageFqName().asString();
        String asString2 = classId.getRelativeClassName().asString();
        if (asString.equals("kotlin")) {
            switch (asString2.hashCode()) {
                case -901856463:
                    if (asString2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (asString2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (asString2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (asString2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (asString2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (asString2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (asString2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (asString2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (asString2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("[");
            }
            sb.append("L");
        }
        if (asString.length() > 0) {
            sb.append(asString.concat("."));
        }
        String replace = asString2.replace('.', '$');
        replace.getClass();
        sb.append(replace);
        if (i > 0) {
            sb.append(";");
        }
        try {
            return Class.forName(sb.toString(), false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static final Annotation toAnnotationInstance(AnnotationDescriptor annotationDescriptor) {
        ModuleAwareClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        Class javaClass = annotationClass != null ? toJavaClass(annotationClass) : null;
        if (javaClass == null) {
            javaClass = null;
        }
        if (javaClass == null) {
            return null;
        }
        Set<Map.Entry> entrySet = annotationDescriptor.getAllValueArguments().entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : entrySet) {
            Name name = (Name) entry.getKey();
            ConstantValue constantValue = (ConstantValue) entry.getValue();
            ClassLoader classLoader = javaClass.getClassLoader();
            classLoader.getClass();
            Object runtimeValue = toRuntimeValue(constantValue, classLoader);
            Pair pair = runtimeValue != null ? new Pair(name.asString(), runtimeValue) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        Map map = MapsKt__MapsKt.toMap(arrayList);
        Set keySet = map.keySet();
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(keySet, 10));
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            arrayList2.add(javaClass.getDeclaredMethod((String) it.next(), null));
        }
        return (Annotation) DpKt.createAnnotationInstance(javaClass, map, arrayList2);
    }

    public static final Class toJavaClass(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        SourceElement source = moduleAwareClassDescriptor.getSource();
        source.getClass();
        if (source instanceof KotlinJvmBinarySourceElement) {
            return ((KotlinJvmBinarySourceElement) source).binaryClass.klass;
        }
        if (source instanceof RuntimeSourceElementFactory$RuntimeSourceElement) {
            return ((ReflectJavaClass) ((RuntimeSourceElementFactory$RuntimeSourceElement) source).javaElement).klass;
        }
        ClassId classId = DescriptorUtilsKt.getClassId(moduleAwareClassDescriptor);
        if (classId == null) {
            return null;
        }
        return loadClass(ReflectClassUtilKt.getSafeClassLoader(moduleAwareClassDescriptor.getClass()), classId, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object toRuntimeValue(ConstantValue constantValue, ClassLoader classLoader) {
        Class loadClass;
        if (constantValue instanceof AnnotationValue) {
            return toAnnotationInstance((AnnotationDescriptor) ((AnnotationValue) constantValue).value);
        }
        int i = 0;
        if (constantValue instanceof ArrayValue) {
            ArrayValue arrayValue = (ArrayValue) constantValue;
            TypedArrayValue typedArrayValue = arrayValue instanceof TypedArrayValue ? (TypedArrayValue) arrayValue : null;
            if (typedArrayValue != null) {
                KotlinType kotlinType = typedArrayValue.type;
                Object obj = arrayValue.value;
                Iterable iterable = (Iterable) obj;
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(toRuntimeValue((ConstantValue) it.next(), classLoader));
                }
                Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
                ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                PrimitiveType primitiveArrayType = declarationDescriptor == null ? null : KotlinBuiltIns.getPrimitiveArrayType(declarationDescriptor);
                switch (primitiveArrayType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[primitiveArrayType.ordinal()]) {
                    case -1:
                        if (!KotlinBuiltIns.isArray(kotlinType)) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Not an array type: ", kotlinType);
                            return null;
                        }
                        KotlinType type = ((TypeProjectionBase) CollectionsKt.single(kotlinType.getArguments())).getType();
                        type.getClass();
                        ClassifierDescriptor declarationDescriptor2 = type.getConstructor().getDeclarationDescriptor();
                        ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor2 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor2 : null;
                        if (moduleAwareClassDescriptor == null) {
                            Gson$$ExternalSyntheticBUOutline0.m$8("Not a class type: ", type);
                            return null;
                        }
                        if (KotlinBuiltIns.isString(type)) {
                            int size = ((List) obj).size();
                            String[] strArr = new String[size];
                            while (i < size) {
                                Object obj2 = arrayList.get(i);
                                obj2.getClass();
                                strArr[i] = obj2;
                                i++;
                            }
                            return strArr;
                        }
                        if (KotlinBuiltIns.classFqNameEquals(moduleAwareClassDescriptor, StandardNames.FqNames.kClass)) {
                            int size2 = ((List) obj).size();
                            Class[] clsArr = new Class[size2];
                            while (i < size2) {
                                Object obj3 = arrayList.get(i);
                                obj3.getClass();
                                clsArr[i] = obj3;
                                i++;
                            }
                            return clsArr;
                        }
                        ClassId classId = DescriptorUtilsKt.getClassId(moduleAwareClassDescriptor);
                        if (classId != null && (loadClass = loadClass(classLoader, classId, 0)) != null) {
                            Object newInstance = Array.newInstance((Class<?>) loadClass, ((List) obj).size());
                            newInstance.getClass();
                            Object[] objArr = (Object[]) newInstance;
                            int size3 = arrayList.size();
                            while (i < size3) {
                                objArr[i] = arrayList.get(i);
                                i++;
                            }
                            return objArr;
                        }
                        break;
                    case 0:
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    case 1:
                        int size4 = ((List) obj).size();
                        boolean[] zArr = new boolean[size4];
                        while (i < size4) {
                            Object obj4 = arrayList.get(i);
                            obj4.getClass();
                            zArr[i] = ((Boolean) obj4).booleanValue();
                            i++;
                        }
                        return zArr;
                    case 2:
                        int size5 = ((List) obj).size();
                        char[] cArr = new char[size5];
                        while (i < size5) {
                            Object obj5 = arrayList.get(i);
                            obj5.getClass();
                            cArr[i] = ((Character) obj5).charValue();
                            i++;
                        }
                        return cArr;
                    case 3:
                        int size6 = ((List) obj).size();
                        byte[] bArr = new byte[size6];
                        while (i < size6) {
                            Object obj6 = arrayList.get(i);
                            obj6.getClass();
                            bArr[i] = ((Byte) obj6).byteValue();
                            i++;
                        }
                        return bArr;
                    case 4:
                        int size7 = ((List) obj).size();
                        short[] sArr = new short[size7];
                        while (i < size7) {
                            Object obj7 = arrayList.get(i);
                            obj7.getClass();
                            sArr[i] = ((Short) obj7).shortValue();
                            i++;
                        }
                        return sArr;
                    case 5:
                        int size8 = ((List) obj).size();
                        int[] iArr = new int[size8];
                        while (i < size8) {
                            Object obj8 = arrayList.get(i);
                            obj8.getClass();
                            iArr[i] = ((Integer) obj8).intValue();
                            i++;
                        }
                        return iArr;
                    case 6:
                        int size9 = ((List) obj).size();
                        float[] fArr = new float[size9];
                        while (i < size9) {
                            Object obj9 = arrayList.get(i);
                            obj9.getClass();
                            fArr[i] = ((Float) obj9).floatValue();
                            i++;
                        }
                        return fArr;
                    case 7:
                        int size10 = ((List) obj).size();
                        long[] jArr = new long[size10];
                        while (i < size10) {
                            Object obj10 = arrayList.get(i);
                            obj10.getClass();
                            jArr[i] = ((Long) obj10).longValue();
                            i++;
                        }
                        return jArr;
                    case 8:
                        int size11 = ((List) obj).size();
                        double[] dArr = new double[size11];
                        while (i < size11) {
                            Object obj11 = arrayList.get(i);
                            obj11.getClass();
                            dArr[i] = ((Double) obj11).doubleValue();
                            i++;
                        }
                        return dArr;
                }
            }
        } else if (constantValue instanceof EnumValue) {
            Pair pair = (Pair) ((EnumValue) constantValue).value;
            ClassId classId2 = (ClassId) pair.first;
            Name name2 = (Name) pair.second;
            Class loadClass2 = loadClass(classLoader, classId2, 0);
            if (loadClass2 != null) {
                return Enum.valueOf(loadClass2, name2.asString());
            }
        } else if (constantValue instanceof KClassValue) {
            KClassValue.Value value = (KClassValue.Value) ((KClassValue) constantValue).value;
            if (value instanceof KClassValue.Value.NormalClass) {
                ClassLiteralValue classLiteralValue = ((KClassValue.Value.NormalClass) value).value;
                return loadClass(classLoader, classLiteralValue.classId, classLiteralValue.arrayNestedness);
            }
            if (!(value instanceof KClassValue.Value.LocalClass)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            ClassifierDescriptor declarationDescriptor3 = ((KClassValue.Value.LocalClass) value).type.getConstructor().getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = declarationDescriptor3 instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor3 : null;
            if (moduleAwareClassDescriptor2 != null) {
                return toJavaClass(moduleAwareClassDescriptor2);
            }
        } else {
            if (!(constantValue instanceof ErrorValue$ErrorValueWithMessage ? true : constantValue instanceof NullValue)) {
                return constantValue.getValue();
            }
        }
        return null;
    }
}
