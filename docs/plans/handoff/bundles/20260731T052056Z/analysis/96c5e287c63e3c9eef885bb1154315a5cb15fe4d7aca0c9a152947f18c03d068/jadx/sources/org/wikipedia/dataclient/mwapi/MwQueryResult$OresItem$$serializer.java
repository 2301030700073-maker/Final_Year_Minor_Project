package org.wikipedia.dataclient.mwapi;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$OresItem$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$OresItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$OresItem$$serializer mwQueryResult$OresItem$$serializer = new MwQueryResult$OresItem$$serializer();
        INSTANCE = mwQueryResult$OresItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult.OresItem", mwQueryResult$OresItem$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("true", true);
        pluginGeneratedSerialDescriptor.addElement("false", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
        return new KSerializer[]{floatSerializer, floatSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        float f = RecyclerView.DECELERATION_RATE;
        boolean z = true;
        int i = 0;
        float f2 = 0.0f;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                f = beginStructure.decodeFloatElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                f2 = beginStructure.decodeFloatElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResult.OresItem(f, f2, i);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        MwQueryResult.OresItem oresItem = (MwQueryResult.OresItem) obj;
        oresItem.getClass();
        float f = oresItem.falseProb;
        float f2 = oresItem.trueProb;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f2, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 0, f2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 1, f);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
