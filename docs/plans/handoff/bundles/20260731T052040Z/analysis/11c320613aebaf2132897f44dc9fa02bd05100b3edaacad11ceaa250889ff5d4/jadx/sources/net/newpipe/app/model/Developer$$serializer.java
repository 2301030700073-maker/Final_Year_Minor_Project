package net.newpipe.app.model;

import androidx.sqlite.SQLite;
import kotlin.math.MathKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Developer$$serializer implements GeneratedSerializer {
    public static final Developer$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Developer$$serializer developer$$serializer = new Developer$$serializer();
        INSTANCE = developer$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.newpipe.app.model.Developer", developer$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("name", false);
        pluginGeneratedSerialDescriptor.addElement("organisationUrl", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, MathKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        String str = null;
        boolean z = true;
        int i = 0;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, str2);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Developer(str, i, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        Developer developer = (Developer) obj;
        developer.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
        String str = developer.name;
        String str2 = developer.organisationUrl;
        beginStructure.encodeStringElement(serialDescriptor, 0, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, str2);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final /* bridge */ KSerializer[] typeParametersSerializers() {
        return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
    }
}
