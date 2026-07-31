package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TuplesKt {
    public static final SerialDescriptor[] EMPTY_DESCRIPTOR_ARRAY = new SerialDescriptor[0];
    public static final KSerializer[] EMPTY_SERIALIZER_ARRAY = new KSerializer[0];
    public static final Object NULL = new Object();

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1] */
    public static final InlineClassDescriptor InlinePrimitiveDescriptor(String str, final KSerializer kSerializer) {
        return new InlineClassDescriptor(str, new GeneratedSerializer() { // from class: kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1
            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public final KSerializer[] childSerializers() {
                return new KSerializer[]{KSerializer.this};
            }

            @Override // kotlinx.serialization.KSerializer
            public final Object deserialize(Decoder decoder) {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.KSerializer
            public final SerialDescriptor getDescriptor() {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.KSerializer
            public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
                throw new IllegalStateException("unsupported");
            }
        });
    }

    public static final Set cachedSerialNames(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor instanceof CachedNames) {
            return ((CachedNames) serialDescriptor).getSerialNames();
        }
        HashSet hashSet = new HashSet(serialDescriptor.getElementsCount());
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            hashSet.add(serialDescriptor.getElementName(i));
        }
        return hashSet;
    }

    public static final SerialDescriptor[] compactArray(List list) {
        SerialDescriptor[] serialDescriptorArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        return (list == null || (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) == null) ? EMPTY_DESCRIPTOR_ARRAY : serialDescriptorArr;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:56|(1:(2:58|(1:111)(1:62))(2:113|114))|(5:106|107|(8:80|81|(1:(3:83|(1:101)(1:(1:89)(2:86|87))|88)(2:102|(1:104)))|90|(1:100)(1:94)|95|(1:97)|99)|68|(1:79)(4:70|(1:78)|76|77))|64|(1:66)|80|81|(2:(0)(0)|88)|90|(1:92)|100|95|(0)|99|68|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x00fd, code lost:
    
        if (r12 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x00b7, code lost:
    
        if (r11 == false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0169 A[Catch: NoSuchFieldException -> 0x0198, TryCatch #1 {NoSuchFieldException -> 0x0198, blocks: (B:81:0x015c, B:83:0x0169, B:92:0x0185, B:94:0x018b, B:95:0x0191, B:97:0x0195, B:88:0x017d), top: B:80:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0195 A[Catch: NoSuchFieldException -> 0x0198, TRY_LEAVE, TryCatch #1 {NoSuchFieldException -> 0x0198, blocks: (B:81:0x015c, B:83:0x0169, B:92:0x0185, B:94:0x018b, B:95:0x0191, B:97:0x0195, B:88:0x017d), top: B:80:0x015c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.KSerializer constructSerializerForGivenTypeArgs(kotlin.reflect.KClass r16, kotlinx.serialization.KSerializer... r17) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.TuplesKt.constructSerializerForGivenTypeArgs(kotlin.reflect.KClass, kotlinx.serialization.KSerializer[]):kotlinx.serialization.KSerializer");
    }

    public static final int hashCodeImpl(SerialDescriptor serialDescriptor, SerialDescriptor[] serialDescriptorArr) {
        serialDescriptorArr.getClass();
        int hashCode = (serialDescriptor.getSerialName().hashCode() * 31) + Arrays.hashCode(serialDescriptorArr);
        int elementsCount = serialDescriptor.getElementsCount();
        int i = 1;
        while (true) {
            int i2 = 0;
            if (!(elementsCount > 0)) {
                break;
            }
            int i3 = elementsCount - 1;
            int i4 = i * 31;
            String serialName = serialDescriptor.getElementDescriptor(serialDescriptor.getElementsCount() - elementsCount).getSerialName();
            if (serialName != null) {
                i2 = serialName.hashCode();
            }
            i = i4 + i2;
            elementsCount = i3;
        }
        int elementsCount2 = serialDescriptor.getElementsCount();
        int i5 = 1;
        while (true) {
            if (!(elementsCount2 > 0)) {
                return (((hashCode * 31) + i) * 31) + i5;
            }
            int i6 = elementsCount2 - 1;
            int i7 = i5 * 31;
            RangesKt kind = serialDescriptor.getElementDescriptor(serialDescriptor.getElementsCount() - elementsCount2).getKind();
            i5 = i7 + (kind != null ? kind.hashCode() : 0);
            elementsCount2 = i6;
        }
    }

    public static final KSerializer invokeSerializerOnCompanion(Object obj, KSerializer... kSerializerArr) {
        Class[] clsArr;
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object invoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (invoke instanceof KSerializer) {
                return (KSerializer) invoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                throw e;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    public static final KClass kclass(KType kType) {
        KClass classifier = ((KTypeWrapper) kType).getClassifier();
        if (classifier instanceof KClass) {
            return classifier;
        }
        Regex$$ExternalSyntheticBUOutline0.m$2(classifier, "Only KClass supported as classifier, got ");
        return null;
    }

    public static final void serializerNotRegistered(KClass kClass) {
        kClass.getClass();
        String simpleName = ((ClassReference) kClass).getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        throw new SerializationException(CameraDevices$CC.m("Serializer for class '", simpleName, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n"));
    }

    public static final void throwMissingFieldException(int i, int i2, SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        ArrayList arrayList = new ArrayList();
        int i3 = (~i) & i2;
        for (int i4 = 0; i4 < 32; i4++) {
            if ((i3 & 1) != 0) {
                arrayList.add(serialDescriptor.getElementName(i4));
            }
            i3 >>>= 1;
        }
        String serialName = serialDescriptor.getSerialName();
        serialName.getClass();
        throw new MissingFieldException(arrayList.size() == 1 ? "Field '" + ((String) arrayList.get(0)) + "' is required for type with serial name '" + serialName + "', but it was missing" : "Fields " + arrayList + " are required for type with serial name '" + serialName + "', but they were missing", null, arrayList, serialName);
    }

    public static final void throwSubtypeNotRegistered(String str, KClass kClass) {
        String sb;
        kClass.getClass();
        StringBuilder sb2 = new StringBuilder("in the polymorphic scope of '");
        ClassReference classReference = (ClassReference) kClass;
        sb2.append(classReference.getSimpleName());
        sb2.append('\'');
        String sb3 = sb2.toString();
        if (str == null) {
            sb = CameraDevices$CC.m('.', "Class discriminator was missing and no default serializers were registered ", sb3);
        } else {
            StringBuilder m = Config.CC.m("Serializer for subclass '", str, "' is not found ", sb3, ".\nCheck if class with serial name '");
            Modifier.CC.m(m, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            m.append(classReference.getSimpleName());
            m.append("' has to be sealed and '@Serializable'.");
            sb = m.toString();
        }
        throw new SerializationException(sb);
    }

    public static final String toStringImpl(SerialDescriptor serialDescriptor) {
        return CollectionsKt.joinToString$default(RangesKt.until(0, serialDescriptor.getElementsCount()), ", ", serialDescriptor.getSerialName() + '(', ")", new ForwardingFileSystem$$ExternalSyntheticLambda0(3, serialDescriptor), 24);
    }
}
