package kotlinx.serialization.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            public final void serialize(UuidKt uuidKt, Object obj) {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public final KSerializer[] typeParametersSerializers() {
                return TuplesKt.EMPTY_SERIALIZER_ARRAY;
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

    /* JADX WARN: Can't wrap try/catch for region: R(15:58|(1:(2:60|(1:113)(1:64))(2:115|116))|(4:108|109|(8:82|83|(1:(3:85|(1:103)(1:(1:91)(2:88|89))|90)(2:104|(1:106)))|92|(1:102)(1:96)|97|(1:99)|101)|(1:71)(4:72|(2:74|(2:76|(1:78))(1:79))|80|81))|66|(1:68)|82|83|(2:(0)(0)|90)|92|(1:94)|102|97|(0)|101|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00f0, code lost:
    
        if (r12 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x00aa, code lost:
    
        if (r11 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a3, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0173 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0102 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015b A[Catch: NoSuchFieldException -> 0x018b, TryCatch #1 {NoSuchFieldException -> 0x018b, blocks: (B:83:0x014d, B:85:0x015b, B:94:0x0178, B:96:0x017e, B:97:0x0184, B:99:0x0188, B:90:0x0170), top: B:82:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0188 A[Catch: NoSuchFieldException -> 0x018b, TRY_LEAVE, TryCatch #1 {NoSuchFieldException -> 0x018b, blocks: (B:83:0x014d, B:85:0x015b, B:94:0x0178, B:96:0x017e, B:97:0x0184, B:99:0x0188, B:90:0x0170), top: B:82:0x014d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.KSerializer constructSerializerForGivenTypeArgs(java.lang.Class r17, kotlinx.serialization.KSerializer... r18) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.internal.TuplesKt.constructSerializerForGivenTypeArgs(java.lang.Class, kotlinx.serialization.KSerializer[]):kotlinx.serialization.KSerializer");
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
            Room kind = serialDescriptor.getElementDescriptor(serialDescriptor.getElementsCount() - elementsCount2).getKind();
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
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return (KClass) classifier;
        }
        if (!(classifier instanceof KTypeParameterImpl)) {
            Gson$$ExternalSyntheticBUOutline0.m("Only KClass supported as classifier, got ", classifier);
            return null;
        }
        throw new IllegalArgumentException("Captured type parameter " + classifier + " from generic non-reified function. Such functionality cannot be supported because " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier + '.');
    }

    public static final String notRegisteredMessage(KClass kClass) {
        kClass.getClass();
        String simpleName = kClass.getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        return Animation.CC.m("Serializer for class '", simpleName, "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n");
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
        String str2 = "in the polymorphic scope of '" + kClass.getSimpleName() + '\'';
        if (str == null) {
            sb = Animation.CC.m('.', "Class discriminator was missing and no default serializers were registered ", str2);
        } else {
            StringBuilder m352m = Modifier.CC.m352m("Serializer for subclass '", str, "' is not found ", str2, ".\nCheck if class with serial name '");
            Modifier.CC.m(m352m, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            m352m.append(kClass.getSimpleName());
            m352m.append("' has to be sealed and '@Serializable'.");
            sb = m352m.toString();
        }
        throw new SerializationException(sb);
    }

    public static final String toStringImpl(SerialDescriptor serialDescriptor) {
        return CollectionsKt.joinToString$default(RegexKt.until(0, serialDescriptor.getElementsCount()), ", ", serialDescriptor.getSerialName() + '(', ")", new DiskLruCache$$ExternalSyntheticLambda0(27, serialDescriptor), 24);
    }
}
