package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NumberSerializer extends StdScalarSerializer implements ContextualSerializer {
    public static final NumberSerializer instance = new NumberSerializer(Number.class);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.databind.ser.std.NumberSerializer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public final JsonSerializer createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        Class cls = this._handledType;
        JsonFormat.Value findFormatOverrides = StdSerializer.findFormatOverrides(serializerProvider, beanProperty, cls);
        return (findFormatOverrides == null || AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[findFormatOverrides._shape.ordinal()] != 1) ? this : cls == BigDecimal.class ? ToStringSerializer.BD_INSTANCE : ToStringSerializer.instance;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        Number number = (Number) obj;
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            WriterBasedJsonGenerator writerBasedJsonGenerator = (WriterBasedJsonGenerator) jsonGenerator;
            writerBasedJsonGenerator._verifyValueWrite("write a number");
            if (writerBasedJsonGenerator._cfgNumbersAsStrings) {
                writerBasedJsonGenerator._writeQuotedRaw(writerBasedJsonGenerator._asString(bigDecimal));
                return;
            } else {
                writerBasedJsonGenerator.writeRaw(writerBasedJsonGenerator._asString(bigDecimal));
                return;
            }
        }
        if (number instanceof BigInteger) {
            BigInteger bigInteger = (BigInteger) number;
            WriterBasedJsonGenerator writerBasedJsonGenerator2 = (WriterBasedJsonGenerator) jsonGenerator;
            writerBasedJsonGenerator2._verifyValueWrite("write a number");
            if (writerBasedJsonGenerator2._cfgNumbersAsStrings) {
                writerBasedJsonGenerator2._writeQuotedRaw(bigInteger.toString());
                return;
            } else {
                writerBasedJsonGenerator2.writeRaw(bigInteger.toString());
                return;
            }
        }
        if (number instanceof Long) {
            jsonGenerator.writeNumber(number.longValue());
            return;
        }
        if (number instanceof Double) {
            jsonGenerator.writeNumber(number.doubleValue());
            return;
        }
        if (number instanceof Float) {
            jsonGenerator.writeNumber(number.floatValue());
            return;
        }
        if ((number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            jsonGenerator.writeNumber(number.intValue());
            return;
        }
        String obj2 = number.toString();
        WriterBasedJsonGenerator writerBasedJsonGenerator3 = (WriterBasedJsonGenerator) jsonGenerator;
        writerBasedJsonGenerator3._verifyValueWrite("write a number");
        if (obj2 == null) {
            writerBasedJsonGenerator3._writeNull();
        } else if (writerBasedJsonGenerator3._cfgNumbersAsStrings) {
            writerBasedJsonGenerator3._writeQuotedRaw(obj2);
        } else {
            writerBasedJsonGenerator3.writeRaw(obj2);
        }
    }
}
