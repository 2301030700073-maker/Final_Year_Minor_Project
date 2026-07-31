package androidx.savedstate.serialization.serializers;

import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SparseArraySerializer implements KSerializer {
    public final /* synthetic */ int $r8$classId;
    public final SerialDescriptor descriptor;
    public final KSerializer surrogateSerializer;

    public SparseArraySerializer(KSerializer kSerializer, int i) {
        SerialDescriptor SerialDescriptor;
        this.$r8$classId = i;
        kSerializer.getClass();
        switch (i) {
            case 1:
                this.surrogateSerializer = kSerializer;
                Jsoup kind = kSerializer.getDescriptor().getKind();
                if (kind instanceof PrimitiveKind$INT) {
                    PrimitiveKind$INT primitiveKind$INT = (PrimitiveKind$INT) kind;
                    if (StringsKt.isBlank("kotlinx.coroutines.flow.MutableStateFlow")) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Blank serial names are prohibited");
                        throw null;
                    }
                    PrimitivesKt.checkNameIsNotAPrimitive("kotlinx.coroutines.flow.MutableStateFlow");
                    SerialDescriptor = new PrimitiveSerialDescriptor("kotlinx.coroutines.flow.MutableStateFlow", primitiveKind$INT);
                } else {
                    SerialDescriptor = OperationKt.SerialDescriptor("kotlinx.coroutines.flow.MutableStateFlow", kSerializer.getDescriptor());
                }
                this.descriptor = SerialDescriptor;
                return;
            default:
                KSerializer serializer = SparseArraySurrogate.Companion.serializer(kSerializer);
                this.surrogateSerializer = serializer;
                this.descriptor = serializer.getDescriptor();
                return;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        int i = this.$r8$classId;
        KSerializer kSerializer = this.surrogateSerializer;
        switch (i) {
            case 0:
                SparseArraySurrogate sparseArraySurrogate = (SparseArraySurrogate) decoder.decodeSerializableValue(kSerializer);
                List list = sparseArraySurrogate.keys;
                int size = list.size();
                List list2 = sparseArraySurrogate.values;
                if (size != list2.size()) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                    return null;
                }
                SparseArray sparseArray = new SparseArray(list.size());
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    sparseArray.append(((Number) list.get(i2)).intValue(), list2.get(i2));
                }
                return sparseArray;
            default:
                return FlowKt.MutableStateFlow(decoder.decodeSerializableValue(kSerializer));
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        switch (this.$r8$classId) {
        }
        return this.descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        int i = this.$r8$classId;
        KSerializer kSerializer = this.surrogateSerializer;
        switch (i) {
            case 0:
                SparseArray sparseArray = (SparseArray) obj;
                sparseArray.getClass();
                int size = sparseArray.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(Integer.valueOf(sparseArray.keyAt(i2)));
                }
                int size2 = sparseArray.size();
                ArrayList arrayList2 = new ArrayList(size2);
                for (int i3 = 0; i3 < size2; i3++) {
                    arrayList2.add(sparseArray.valueAt(i3));
                }
                encoder.encodeSerializableValue(kSerializer, new SparseArraySurrogate(arrayList, arrayList2));
                break;
            default:
                MutableStateFlow mutableStateFlow = (MutableStateFlow) obj;
                mutableStateFlow.getClass();
                encoder.encodeSerializableValue(kSerializer, ((StateFlowImpl) mutableStateFlow).getValue());
                break;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SparseArraySurrogate<T> {
        public static final PluginGeneratedSerialDescriptor $cachedDescriptor;
        public final List keys;
        public final List values;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new UtilsKt$$ExternalSyntheticLambda0(12)), null};

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class Companion {
            public final <T> KSerializer serializer(final KSerializer kSerializer) {
                kSerializer.getClass();
                return new GeneratedSerializer() { // from class: androidx.savedstate.serialization.serializers.SparseArraySerializer$SparseArraySurrogate$$serializer
                    private final SerialDescriptor descriptor;

                    {
                        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", this, 2);
                        pluginGeneratedSerialDescriptor.addElement("keys", false);
                        pluginGeneratedSerialDescriptor.addElement("values", false);
                        this.descriptor = pluginGeneratedSerialDescriptor;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlinx.serialization.internal.GeneratedSerializer
                    public final KSerializer[] childSerializers() {
                        return new KSerializer[]{SparseArraySerializer.SparseArraySurrogate.$childSerializers[0].getValue(), new ArrayListSerializer(kSerializer)};
                    }

                    @Override // kotlinx.serialization.KSerializer
                    /* renamed from: deserialize */
                    public final Object mo469deserialize(Decoder decoder) {
                        SerialDescriptor serialDescriptor = this.descriptor;
                        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
                        Lazy[] lazyArr = SparseArraySerializer.SparseArraySurrogate.$childSerializers;
                        List list = null;
                        boolean z = true;
                        int i = 0;
                        List list2 = null;
                        while (z) {
                            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                            if (decodeElementIndex == -1) {
                                z = false;
                            } else if (decodeElementIndex == 0) {
                                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                                i |= 1;
                            } else {
                                if (decodeElementIndex != 1) {
                                    throw new UnknownFieldException(decodeElementIndex);
                                }
                                list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 1, new ArrayListSerializer(kSerializer), list2);
                                i |= 2;
                            }
                        }
                        beginStructure.endStructure(serialDescriptor);
                        return new SparseArraySerializer.SparseArraySurrogate(list, i, list2);
                    }

                    @Override // kotlinx.serialization.KSerializer
                    public final SerialDescriptor getDescriptor() {
                        return this.descriptor;
                    }

                    @Override // kotlinx.serialization.KSerializer
                    public final void serialize(Encoder encoder, Object obj) {
                        SparseArraySerializer.SparseArraySurrogate sparseArraySurrogate = (SparseArraySerializer.SparseArraySurrogate) obj;
                        sparseArraySurrogate.getClass();
                        SerialDescriptor serialDescriptor = this.descriptor;
                        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
                        beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) SparseArraySerializer.SparseArraySurrogate.$childSerializers[0].getValue(), sparseArraySurrogate.keys);
                        beginStructure.encodeSerializableElement(serialDescriptor, 1, new ArrayListSerializer(kSerializer), sparseArraySurrogate.values);
                        beginStructure.endStructure(serialDescriptor);
                    }

                    @Override // kotlinx.serialization.internal.GeneratedSerializer
                    public final KSerializer[] typeParametersSerializers() {
                        return new KSerializer[]{kSerializer};
                    }
                };
            }
        }

        static {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", null, 2);
            pluginGeneratedSerialDescriptor.addElement("keys", false);
            pluginGeneratedSerialDescriptor.addElement("values", false);
            $cachedDescriptor = pluginGeneratedSerialDescriptor;
        }

        public /* synthetic */ SparseArraySurrogate(List list, int i, List list2) {
            if (3 != (i & 3)) {
                Platform_commonKt.throwMissingFieldException(i, 3, $cachedDescriptor);
                throw null;
            }
            this.keys = list;
            this.values = list2;
        }

        public SparseArraySurrogate(ArrayList arrayList, ArrayList arrayList2) {
            this.keys = arrayList;
            this.values = arrayList2;
        }
    }
}
