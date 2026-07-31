package kotlinx.serialization.internal;

import androidx.compose.animation.core.Animation;
import coil3.util.ContextsKt;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ObjectSerializer implements KSerializer {
    public final List _annotations;
    public final Lazy descriptor$delegate;
    public final Object objectInstance;

    public ObjectSerializer(String str, Object obj) {
        this.objectInstance = obj;
        this._annotations = EmptyList.INSTANCE;
        this.descriptor$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Regex$$ExternalSyntheticLambda0(5, str, this));
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
        if (decodeElementIndex != -1) {
            throw new SerializationException(Animation.CC.m(decodeElementIndex, "Unexpected index "));
        }
        beginStructure.endStructure(descriptor);
        return this.objectInstance;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        obj.getClass();
        uuidKt.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ObjectSerializer(String str, HomeFeedSettingsDestination homeFeedSettingsDestination, Annotation[] annotationArr) {
        this(str, homeFeedSettingsDestination);
        homeFeedSettingsDestination.getClass();
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }
}
