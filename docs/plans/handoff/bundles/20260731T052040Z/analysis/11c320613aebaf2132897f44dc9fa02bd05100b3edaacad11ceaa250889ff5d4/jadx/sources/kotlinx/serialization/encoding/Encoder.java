package kotlinx.serialization.encoding;

import androidx.sqlite.SQLite;
import coil3.ComponentRegistry;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Encoder {
    SQLite beginStructure(SerialDescriptor serialDescriptor);

    void encodeBoolean(boolean z);

    void encodeByte(byte b);

    void encodeChar(char c);

    void encodeDouble(double d);

    void encodeFloat(float f);

    Encoder encodeInline(SerialDescriptor serialDescriptor);

    void encodeInt(int i);

    void encodeLong(long j);

    void encodeNull();

    void encodeSerializableValue(KSerializer kSerializer, Object obj);

    void encodeShort(short s);

    void encodeString(String str);

    ComponentRegistry.Builder getSerializersModule();
}
