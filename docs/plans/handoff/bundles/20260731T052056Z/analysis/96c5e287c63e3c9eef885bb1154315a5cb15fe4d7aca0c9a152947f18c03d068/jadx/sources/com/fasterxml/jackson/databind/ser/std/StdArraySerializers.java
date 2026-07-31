package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StdArraySerializers {
    public static final HashMap _arraySerializers;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FloatArraySerializer extends TypedPrimitiveArraySerializer {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Float.TYPE);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new FloatArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((float[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            float[] fArr = (float[]) obj;
            int i = 0;
            if (fArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = fArr.length;
                while (i < length) {
                    jsonGenerator.writeNumber(fArr[i]);
                    i++;
                }
                return;
            }
            jsonGenerator.writeStartArray$1(fArr);
            int length2 = fArr.length;
            while (i < length2) {
                jsonGenerator.writeNumber(fArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (float f : (float[]) obj) {
                jsonGenerator.writeNumber(f);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LongArraySerializer extends TypedPrimitiveArraySerializer {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Long.TYPE);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new LongArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((long[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            long[] jArr = (long[]) obj;
            int i = 0;
            if (jArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = jArr.length;
                while (i < length) {
                    jsonGenerator.writeNumber(jArr[i]);
                    i++;
                }
                return;
            }
            int length2 = jArr.length;
            int length3 = jArr.length;
            jsonGenerator.getClass();
            JsonGenerator._verifyOffsets(length3, length2);
            jsonGenerator.writeStartArray$1(jArr);
            while (i < length2) {
                jsonGenerator.writeNumber(jArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (long j : (long[]) obj) {
                jsonGenerator.writeNumber(j);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ShortArraySerializer extends TypedPrimitiveArraySerializer {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Short.TYPE);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new ShortArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((short[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            short[] sArr = (short[]) obj;
            int i = 0;
            if (sArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = sArr.length;
                while (i < length) {
                    jsonGenerator.writeNumber((int) sArr[i]);
                    i++;
                }
                return;
            }
            jsonGenerator.writeStartArray$1(sArr);
            int length2 = sArr.length;
            while (i < length2) {
                jsonGenerator.writeNumber((int) sArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (short s : (short[]) obj) {
                jsonGenerator.writeNumber((int) s);
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        _arraySerializers = hashMap;
        hashMap.put(boolean[].class.getName(), new BooleanArraySerializer(boolean[].class));
        hashMap.put(byte[].class.getName(), new RawSerializer(3));
        hashMap.put(char[].class.getName(), new RawSerializer(4));
        hashMap.put(short[].class.getName(), new ShortArraySerializer(short[].class));
        hashMap.put(int[].class.getName(), new IntArraySerializer(int[].class));
        hashMap.put(long[].class.getName(), new LongArraySerializer(long[].class));
        hashMap.put(float[].class.getName(), new FloatArraySerializer(float[].class));
        hashMap.put(double[].class.getName(), new DoubleArraySerializer(double[].class));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BooleanArraySerializer extends ArraySerializerBase {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Boolean.class);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new BooleanArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((boolean[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            boolean[] zArr = (boolean[]) obj;
            int i = 0;
            if (zArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = zArr.length;
                while (i < length) {
                    jsonGenerator.writeBoolean(zArr[i]);
                    i++;
                }
                return;
            }
            jsonGenerator.writeStartArray$1(zArr);
            int length2 = zArr.length;
            while (i < length2) {
                jsonGenerator.writeBoolean(zArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (boolean z : (boolean[]) obj) {
                jsonGenerator.writeBoolean(z);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DoubleArraySerializer extends ArraySerializerBase {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Double.TYPE);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new DoubleArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((double[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            double[] dArr = (double[]) obj;
            int i = 0;
            if (dArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = dArr.length;
                while (i < length) {
                    jsonGenerator.writeNumber(dArr[i]);
                    i++;
                }
                return;
            }
            int length2 = dArr.length;
            int length3 = dArr.length;
            jsonGenerator.getClass();
            JsonGenerator._verifyOffsets(length3, length2);
            jsonGenerator.writeStartArray$1(dArr);
            while (i < length2) {
                jsonGenerator.writeNumber(dArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (double d : (double[]) obj) {
                jsonGenerator.writeNumber(d);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IntArraySerializer extends ArraySerializerBase {
        static {
            TypeFactory.instance.getClass();
            TypeFactory.uncheckedSimpleType(Integer.TYPE);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final JsonSerializer _withResolved(BeanProperty beanProperty, Boolean bool) {
            return new IntArraySerializer(this, beanProperty, bool);
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
            return ((int[]) obj).length == 0;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            int[] iArr = (int[]) obj;
            int i = 0;
            if (iArr.length == 1 && _shouldUnwrapSingle(serializerProvider)) {
                int length = iArr.length;
                while (i < length) {
                    jsonGenerator.writeNumber(iArr[i]);
                    i++;
                }
                return;
            }
            int length2 = iArr.length;
            int length3 = iArr.length;
            jsonGenerator.getClass();
            JsonGenerator._verifyOffsets(length3, length2);
            jsonGenerator.writeStartArray$1(iArr);
            while (i < length2) {
                jsonGenerator.writeNumber(iArr[i]);
                i++;
            }
            jsonGenerator.writeEndArray();
        }

        @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
        public final void serializeContents(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            for (int i : (int[]) obj) {
                jsonGenerator.writeNumber(i);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class TypedPrimitiveArraySerializer extends ArraySerializerBase {
        @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
            return this;
        }
    }
}
