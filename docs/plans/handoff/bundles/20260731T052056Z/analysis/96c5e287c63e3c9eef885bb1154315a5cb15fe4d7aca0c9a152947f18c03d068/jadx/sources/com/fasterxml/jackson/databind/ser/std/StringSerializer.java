package com.fasterxml.jackson.databind.ser.std;

import coil3.ImageLoader$Builder;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.TimeZone;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer$inputStream$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringSerializer extends StdScalarSerializer {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringSerializer(int i) {
        super(String.class);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(ByteBuffer.class);
                break;
            case 2:
                super(InetSocketAddress.class);
                break;
            case 3:
                super(TimeZone.class);
                break;
            default:
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((String) obj).isEmpty();
            default:
                return super.isEmpty(serializerProvider, obj);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        byte[] bArr;
        switch (this.$r8$classId) {
            case 0:
                jsonGenerator.writeString((String) obj);
                return;
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                if (byteBuffer.hasArray()) {
                    int position = byteBuffer.position();
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + position;
                    int limit = byteBuffer.limit() - position;
                    jsonGenerator.getClass();
                    jsonGenerator.writeBinary(Base64Variants.MIME_NO_LINEFEEDS, array, arrayOffset, limit);
                    return;
                }
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                if (asReadOnlyBuffer.position() > 0) {
                    asReadOnlyBuffer.rewind();
                }
                Buffer$inputStream$1 buffer$inputStream$1 = new Buffer$inputStream$1(asReadOnlyBuffer);
                int remaining = asReadOnlyBuffer.remaining();
                jsonGenerator.getClass();
                Base64Variant base64Variant = Base64Variants.MIME_NO_LINEFEEDS;
                WriterBasedJsonGenerator writerBasedJsonGenerator = (WriterBasedJsonGenerator) jsonGenerator;
                char c = writerBasedJsonGenerator._quoteChar;
                ImageLoader$Builder imageLoader$Builder = writerBasedJsonGenerator._ioContext;
                writerBasedJsonGenerator._verifyValueWrite("write a binary value");
                int i = writerBasedJsonGenerator._outputTail;
                int i2 = writerBasedJsonGenerator._outputEnd;
                if (i >= i2) {
                    writerBasedJsonGenerator._flushBuffer();
                }
                char[] cArr = writerBasedJsonGenerator._outputBuffer;
                int i3 = writerBasedJsonGenerator._outputTail;
                writerBasedJsonGenerator._outputTail = i3 + 1;
                cArr[i3] = c;
                byte[] bArr2 = (byte[]) imageLoader$Builder.componentRegistry;
                BufferRecycler bufferRecycler = (BufferRecycler) imageLoader$Builder.defaults;
                if (bArr2 != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Trying to call same allocXxx() method second time");
                    return;
                }
                int i4 = BufferRecycler.BYTE_BUFFER_LENGTHS[3];
                if (i4 <= 0) {
                    i4 = 0;
                }
                byte[] bArr3 = (byte[]) bufferRecycler._byteBuffers.getAndSet(3, null);
                if (bArr3 == null || bArr3.length < i4) {
                    bArr3 = new byte[i4];
                }
                imageLoader$Builder.componentRegistry = bArr3;
                try {
                    if (remaining < 0) {
                        writerBasedJsonGenerator._writeBinary(base64Variant, buffer$inputStream$1, bArr3);
                    } else {
                        int _writeBinary = writerBasedJsonGenerator._writeBinary(base64Variant, buffer$inputStream$1, bArr3, remaining);
                        if (_writeBinary > 0) {
                            writerBasedJsonGenerator._reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + remaining + ")");
                            throw null;
                        }
                    }
                    byte[] bArr4 = (byte[]) imageLoader$Builder.componentRegistry;
                    if (bArr3 == bArr4 || bArr3.length >= bArr4.length) {
                        imageLoader$Builder.componentRegistry = null;
                        bufferRecycler._byteBuffers.set(3, bArr3);
                        if (writerBasedJsonGenerator._outputTail >= i2) {
                            writerBasedJsonGenerator._flushBuffer();
                        }
                        char[] cArr2 = writerBasedJsonGenerator._outputBuffer;
                        int i5 = writerBasedJsonGenerator._outputTail;
                        writerBasedJsonGenerator._outputTail = i5 + 1;
                        cArr2[i5] = c;
                        buffer$inputStream$1.close();
                        return;
                    }
                } finally {
                    if (bArr3 != bArr) {
                        break;
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Trying to release buffer smaller than original");
                return;
            case 2:
                serialize((InetSocketAddress) obj, jsonGenerator);
                return;
            default:
                jsonGenerator.writeString(((TimeZone) obj).getID());
                return;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 0:
                jsonGenerator.writeString((String) obj);
                break;
            case 1:
            default:
                super.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                break;
            case 2:
                InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
                WritableTypeId typeId = typeSerializer.typeId(inetSocketAddress, JsonToken.VALUE_STRING);
                typeId.forValueType = InetSocketAddress.class;
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeId);
                serialize(inetSocketAddress, jsonGenerator);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                break;
            case 3:
                TimeZone timeZone = (TimeZone) obj;
                WritableTypeId typeId2 = typeSerializer.typeId(timeZone, JsonToken.VALUE_STRING);
                typeId2.forValueType = TimeZone.class;
                WritableTypeId writeTypePrefix2 = typeSerializer.writeTypePrefix(jsonGenerator, typeId2);
                jsonGenerator.writeString(timeZone.getID());
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix2);
                break;
        }
    }

    public static void serialize(InetSocketAddress inetSocketAddress, JsonGenerator jsonGenerator) {
        String substring;
        InetAddress address = inetSocketAddress.getAddress();
        String hostName = address == null ? inetSocketAddress.getHostName() : address.toString().trim();
        int indexOf = hostName.indexOf(47);
        if (indexOf >= 0) {
            if (indexOf == 0) {
                if (address instanceof Inet6Address) {
                    substring = "[" + hostName.substring(1) + "]";
                } else {
                    substring = hostName.substring(1);
                }
                hostName = substring;
            } else {
                hostName = hostName.substring(0, indexOf);
            }
        }
        jsonGenerator.writeString(hostName + ":" + inetSocketAddress.getPort());
    }
}
