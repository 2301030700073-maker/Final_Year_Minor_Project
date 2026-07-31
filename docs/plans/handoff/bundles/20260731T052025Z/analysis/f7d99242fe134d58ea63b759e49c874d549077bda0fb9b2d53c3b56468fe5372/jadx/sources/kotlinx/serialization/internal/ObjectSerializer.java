package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ObjectSerializer implements KSerializer {
    public final List _annotations;
    public final Lazy descriptor$delegate;
    public final Object objectInstance;

    public ObjectSerializer(Object obj, String str) {
        obj.getClass();
        this.objectInstance = obj;
        this._annotations = EmptyList.INSTANCE;
        this.descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SealedClassSerializer$$ExternalSyntheticLambda0(3, str, this));
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
        if (decodeElementIndex != -1) {
            throw new SerializationException(CameraDevices$CC.m("Unexpected index ", decodeElementIndex));
        }
        beginStructure.endStructure(descriptor);
        return this.objectInstance;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        obj.getClass();
        charsKt__CharKt.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ObjectSerializer(String str, Object obj, Annotation[] annotationArr) {
        this(obj, str);
        obj.getClass();
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }
}
