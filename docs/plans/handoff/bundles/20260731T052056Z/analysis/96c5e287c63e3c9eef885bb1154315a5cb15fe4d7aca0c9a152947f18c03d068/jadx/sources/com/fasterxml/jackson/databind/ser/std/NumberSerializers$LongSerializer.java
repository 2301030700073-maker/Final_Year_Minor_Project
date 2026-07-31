package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.math.BigDecimal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NumberSerializers$LongSerializer extends StdScalarSerializer implements ContextualSerializer {
    public static final NumberSerializers$LongSerializer instance = new NumberSerializers$LongSerializer(1);
    public static final NumberSerializers$LongSerializer instance$1 = new NumberSerializers$LongSerializer(2);
    public static final NumberSerializers$LongSerializer instance$2 = new NumberSerializers$LongSerializer(3);
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberSerializers$LongSerializer(int i) {
        super(Float.class);
        this.$r8$classId = i;
        switch (i) {
            case 2:
                super(Number.class);
                break;
            case 3:
                super(Short.class);
                break;
            default:
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        Class cls = this._handledType;
        JsonFormat.Value findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, cls);
        return (findFormatOverrides == null || NumberSerializers$1.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[findFormatOverrides._shape.ordinal()] != 1) ? this : cls == BigDecimal.class ? ToStringSerializer.BD_INSTANCE : ToStringSerializer.instance;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        switch (this.$r8$classId) {
            case 0:
                jsonGenerator.writeNumber(((Long) obj).longValue());
                break;
            case 1:
                jsonGenerator.writeNumber(((Float) obj).floatValue());
                break;
            case 2:
                jsonGenerator.writeNumber(((Number) obj).intValue());
                break;
            case 3:
                short shortValue = ((Short) obj).shortValue();
                WriterBasedJsonGenerator writerBasedJsonGenerator = (WriterBasedJsonGenerator) jsonGenerator;
                int i = writerBasedJsonGenerator._outputEnd;
                writerBasedJsonGenerator._verifyValueWrite("write a number");
                if (!writerBasedJsonGenerator._cfgNumbersAsStrings) {
                    if (writerBasedJsonGenerator._outputTail + 6 >= i) {
                        writerBasedJsonGenerator._flushBuffer();
                    }
                    writerBasedJsonGenerator._outputTail = NumberOutput.outputInt(writerBasedJsonGenerator._outputBuffer, shortValue, writerBasedJsonGenerator._outputTail);
                    break;
                } else {
                    char c = writerBasedJsonGenerator._quoteChar;
                    if (writerBasedJsonGenerator._outputTail + 8 >= i) {
                        writerBasedJsonGenerator._flushBuffer();
                    }
                    char[] cArr = writerBasedJsonGenerator._outputBuffer;
                    int i2 = writerBasedJsonGenerator._outputTail;
                    int i3 = i2 + 1;
                    writerBasedJsonGenerator._outputTail = i3;
                    cArr[i2] = c;
                    int outputInt = NumberOutput.outputInt(cArr, shortValue, i3);
                    char[] cArr2 = writerBasedJsonGenerator._outputBuffer;
                    writerBasedJsonGenerator._outputTail = outputInt + 1;
                    cArr2[outputInt] = c;
                    break;
                }
            case 4:
                jsonGenerator.writeNumber(((Double) obj).doubleValue());
                break;
            default:
                jsonGenerator.writeNumber(((Integer) obj).intValue());
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 4:
                Double d = (Double) obj;
                double doubleValue = d.doubleValue();
                String str = NumberOutput.SMALLEST_INT;
                if (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue)) {
                    jsonGenerator.writeNumber(d.doubleValue());
                    break;
                } else {
                    WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_NUMBER_FLOAT));
                    jsonGenerator.writeNumber(d.doubleValue());
                    typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                    break;
                }
                break;
            case 5:
                serialize(obj, jsonGenerator, serializerProvider);
                break;
            default:
                super.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NumberSerializers$LongSerializer(int i, Class cls) {
        super(cls);
        this.$r8$classId = i;
    }
}
