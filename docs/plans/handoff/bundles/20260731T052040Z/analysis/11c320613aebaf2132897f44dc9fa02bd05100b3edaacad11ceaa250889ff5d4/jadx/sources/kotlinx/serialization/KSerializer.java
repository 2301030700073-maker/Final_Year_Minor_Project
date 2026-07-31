package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface KSerializer {
    /* renamed from: deserialize */
    Object mo469deserialize(Decoder decoder);

    SerialDescriptor getDescriptor();

    void serialize(Encoder encoder, Object obj);
}
