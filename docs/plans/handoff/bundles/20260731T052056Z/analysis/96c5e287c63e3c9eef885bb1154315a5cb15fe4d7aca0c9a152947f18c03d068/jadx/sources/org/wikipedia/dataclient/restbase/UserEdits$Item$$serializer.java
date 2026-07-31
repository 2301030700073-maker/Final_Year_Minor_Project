package org.wikipedia.dataclient.restbase;

import j$.time.LocalDateTime;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.restbase.UserEdits;
import org.wikipedia.json.LocalDateTimeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserEdits$Item$$serializer implements GeneratedSerializer {
    public static final UserEdits$Item$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        UserEdits$Item$$serializer userEdits$Item$$serializer = new UserEdits$Item$$serializer();
        INSTANCE = userEdits$Item$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.restbase.UserEdits.Item", userEdits$Item$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("edit_count", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(LocalDateTimeSerializer.INSTANCE), IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        LocalDateTime localDateTime = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                localDateTime = (LocalDateTime) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, LocalDateTimeSerializer.INSTANCE, localDateTime);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                i2 = beginStructure.decodeIntElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new UserEdits.Item(i, localDateTime, i2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        UserEdits.Item item = (UserEdits.Item) obj;
        item.getClass();
        int i = item.editCount;
        LocalDateTime localDateTime = item.timestamp;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localDateTime != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, LocalDateTimeSerializer.INSTANCE, localDateTime);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(1, i, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
