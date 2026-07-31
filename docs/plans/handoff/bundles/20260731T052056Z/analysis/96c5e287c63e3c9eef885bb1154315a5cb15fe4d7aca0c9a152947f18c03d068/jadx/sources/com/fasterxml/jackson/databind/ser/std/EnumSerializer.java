package com.fasterxml.jackson.databind.ser.std;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.JsonStringEncoder;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import j$.util.Objects;
import kotlin.UnsafeLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumSerializer extends StdScalarSerializer implements ContextualSerializer {
    public final Boolean _serializeAsIndex;
    public final UnsafeLazyImpl _values;

    public EnumSerializer(UnsafeLazyImpl unsafeLazyImpl, Boolean bool) {
        super((Class) unsafeLazyImpl.initializer);
        this._values = unsafeLazyImpl;
        this._serializeAsIndex = bool;
    }

    public static Boolean _isShapeWrittenUsingIndex(Class cls, JsonFormat.Value value, boolean z, Boolean bool) {
        JsonFormat.Shape shape = value._shape;
        if (shape == null || shape == JsonFormat.Shape.ANY || shape == JsonFormat.Shape.SCALAR) {
            return bool;
        }
        if (shape == JsonFormat.Shape.STRING || shape == JsonFormat.Shape.NATURAL) {
            return Boolean.FALSE;
        }
        if (shape.isNumeric() || shape == JsonFormat.Shape.ARRAY) {
            return Boolean.TRUE;
        }
        String name = cls.getName();
        String str = z ? "class" : "property";
        StringBuilder sb = new StringBuilder("Unsupported serialization shape (");
        sb.append(shape);
        sb.append(") for Enum ");
        sb.append(name);
        sb.append(", not supported as ");
        throw new IllegalArgumentException(Animation.CC.m(sb, str, " annotation"));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        Class cls = this._handledType;
        JsonFormat.Value findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, cls);
        if (findFormatOverrides != null) {
            Boolean bool = this._serializeAsIndex;
            Boolean _isShapeWrittenUsingIndex = _isShapeWrittenUsingIndex(cls, findFormatOverrides, false, bool);
            if (!Objects.equals(_isShapeWrittenUsingIndex, bool)) {
                return new EnumSerializer(this._values, _isShapeWrittenUsingIndex);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        boolean isEnabled;
        Enum r8 = (Enum) obj;
        Boolean bool = this._serializeAsIndex;
        if (bool != null) {
            isEnabled = bool.booleanValue();
        } else {
            isEnabled = serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUMS_USING_INDEX);
        }
        if (isEnabled) {
            jsonGenerator.writeNumber(r8.ordinal());
            return;
        }
        if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            jsonGenerator.writeString(r8.toString());
            return;
        }
        SerializedString serializedString = ((SerializedString[]) this._values._value)[r8.ordinal()];
        WriterBasedJsonGenerator writerBasedJsonGenerator = (WriterBasedJsonGenerator) jsonGenerator;
        char c = writerBasedJsonGenerator._quoteChar;
        writerBasedJsonGenerator._verifyValueWrite("write a string");
        int i = writerBasedJsonGenerator._outputTail;
        int i2 = writerBasedJsonGenerator._outputEnd;
        if (i >= i2) {
            writerBasedJsonGenerator._flushBuffer();
        }
        char[] cArr = writerBasedJsonGenerator._outputBuffer;
        int i3 = writerBasedJsonGenerator._outputTail;
        int i4 = i3 + 1;
        writerBasedJsonGenerator._outputTail = i4;
        cArr[i3] = c;
        char[] cArr2 = serializedString._quotedChars;
        if (cArr2 == null) {
            JsonStringEncoder jsonStringEncoder = SerializedString.JSON_ENCODER;
            String str = serializedString._value;
            jsonStringEncoder.getClass();
            cArr2 = JsonStringEncoder.quoteAsString(str);
            serializedString._quotedChars = cArr2;
        }
        int length = cArr2.length;
        if (i4 + length > cArr.length) {
            length = -1;
        } else {
            System.arraycopy(cArr2, 0, cArr, i4, length);
        }
        if (length >= 0) {
            int i5 = writerBasedJsonGenerator._outputTail + length;
            writerBasedJsonGenerator._outputTail = i5;
            if (i5 >= i2) {
                writerBasedJsonGenerator._flushBuffer();
            }
            char[] cArr3 = writerBasedJsonGenerator._outputBuffer;
            int i6 = writerBasedJsonGenerator._outputTail;
            writerBasedJsonGenerator._outputTail = i6 + 1;
            cArr3[i6] = c;
            return;
        }
        char[] asQuotedChars = serializedString.asQuotedChars();
        int length2 = asQuotedChars.length;
        if (length2 < 32) {
            if (length2 > i2 - writerBasedJsonGenerator._outputTail) {
                writerBasedJsonGenerator._flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, writerBasedJsonGenerator._outputBuffer, writerBasedJsonGenerator._outputTail, length2);
            writerBasedJsonGenerator._outputTail += length2;
        } else {
            writerBasedJsonGenerator._flushBuffer();
            writerBasedJsonGenerator._writer.write(asQuotedChars, 0, length2);
        }
        if (writerBasedJsonGenerator._outputTail >= i2) {
            writerBasedJsonGenerator._flushBuffer();
        }
        char[] cArr4 = writerBasedJsonGenerator._outputBuffer;
        int i7 = writerBasedJsonGenerator._outputTail;
        writerBasedJsonGenerator._outputTail = i7 + 1;
        cArr4[i7] = c;
    }
}
