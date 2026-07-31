package kotlinx.serialization.internal;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.work.OperationKt;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.WrappedSerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import net.newpipe.app.navigation.Destination;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObjectSerializer implements KSerializer {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object _annotations;
    public final Object descriptor$delegate;
    public final Object objectInstance;

    public ObjectSerializer(Object obj, String str) {
        obj.getClass();
        this.objectInstance = obj;
        this._annotations = EmptyList.INSTANCE;
        this.descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(str, this, 16));
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        switch (this.$r8$classId) {
            case 0:
                SerialDescriptor descriptor = getDescriptor();
                CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex != -1) {
                    throw new SerializationException(Modifier.CC.m(decodeElementIndex, "Unexpected index "));
                }
                beginStructure.endStructure(descriptor);
                return this.objectInstance;
            default:
                List list = (List) decoder.decodeSerializableValue((ArrayListSerializer) this._annotations);
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                snapshotStateList.addAll(CollectionsKt.toList(list));
                return snapshotStateList;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        switch (this.$r8$classId) {
            case 0:
                return (SerialDescriptor) ((Lazy) this.descriptor$delegate).getValue();
            default:
                return (WrappedSerialDescriptor) this.descriptor$delegate;
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                encoder.beginStructure(getDescriptor()).endStructure(getDescriptor());
                break;
            default:
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
                snapshotStateList.getClass();
                encoder.encodeSerializableValue((ArrayListSerializer) this._annotations, snapshotStateList);
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ObjectSerializer(String str, Destination destination, Annotation[] annotationArr) {
        this(destination, str);
        destination.getClass();
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }

    public ObjectSerializer(KSerializer kSerializer) {
        kSerializer.getClass();
        this.objectInstance = kSerializer;
        ArrayListSerializer arrayListSerializer = new ArrayListSerializer(kSerializer);
        this._annotations = arrayListSerializer;
        this.descriptor$delegate = OperationKt.SerialDescriptor("androidx.compose.runtime.SnapshotStateList", arrayListSerializer.descriptor);
    }
}
