package kotlinx.serialization.internal;

import androidx.compose.ui.node.Owner;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Platform_commonKt {
    public static final SerialDescriptor[] EMPTY_DESCRIPTOR_ARRAY = new SerialDescriptor[0];
    public static final KSerializer[] EMPTY_SERIALIZER_ARRAY = new KSerializer[0];

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1] */
    public static final InlineClassDescriptor InlinePrimitiveDescriptor(String str, final KSerializer kSerializer) {
        return new InlineClassDescriptor(str, new GeneratedSerializer() { // from class: kotlinx.serialization.internal.InlineClassDescriptorKt$InlinePrimitiveDescriptor$1
            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public final KSerializer[] childSerializers() {
                return new KSerializer[]{KSerializer.this};
            }

            @Override // kotlinx.serialization.KSerializer
            /* renamed from: deserialize */
            public final Object mo469deserialize(Decoder decoder) {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.KSerializer
            public final SerialDescriptor getDescriptor() {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.KSerializer
            public final void serialize(Encoder encoder, Object obj) {
                throw new IllegalStateException("unsupported");
            }

            @Override // kotlinx.serialization.internal.GeneratedSerializer
            public final /* bridge */ KSerializer[] typeParametersSerializers() {
                return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
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
            Jsoup kind = serialDescriptor.getElementDescriptor(serialDescriptor.getElementsCount() - elementsCount2).getKind();
            i5 = i7 + (kind != null ? kind.hashCode() : 0);
            elementsCount2 = i6;
        }
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

    public static final void throwSubtypeNotRegistered(String str, ClassReference classReference) {
        String str2;
        classReference.getClass();
        String str3 = "in the polymorphic scope of '" + classReference.getSimpleName() + '\'';
        if (str == null) {
            str2 = Owner.CC.m('.', "Class discriminator was missing and no default serializers were registered ", str3);
        } else {
            str2 = "Serializer for subclass '" + str + "' is not found " + str3 + ".\nCheck if class with serial name '" + str + "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '" + str + "' has to be '@Serializable', and the base class '" + classReference.getSimpleName() + "' has to be sealed and '@Serializable'.";
        }
        throw new SerializationException(str2);
    }

    public static final String toStringImpl(SerialDescriptor serialDescriptor) {
        return CollectionsKt.joinToString$default(RangesKt.until(0, serialDescriptor.getElementsCount()), ", ", serialDescriptor.getSerialName() + '(', ")", new RxAwaitKt$$ExternalSyntheticLambda0(serialDescriptor, 6), 24);
    }
}
