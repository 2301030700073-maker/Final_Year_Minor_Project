package com.fasterxml.jackson.databind.ser.std;

import coil3.util.UtilsKt;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap$Empty;
import java.util.Calendar;
import java.util.Date;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StdKeySerializers {
    public static final RawSerializer DEFAULT_STRING_SERIALIZER = new RawSerializer(5);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Default extends StdSerializer {
        public final int _typeId;

        public Default(int i, Class cls) {
            super(0, cls);
            this._typeId = i;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            String valueOf;
            switch (this._typeId) {
                case 1:
                    Date date = (Date) obj;
                    serializerProvider.getClass();
                    if (!serializerProvider._config.isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                        jsonGenerator.writeFieldName(serializerProvider._dateFormat().format(date));
                        break;
                    } else {
                        jsonGenerator.writeFieldName(String.valueOf(date.getTime()));
                        break;
                    }
                case 2:
                    long timeInMillis = ((Calendar) obj).getTimeInMillis();
                    serializerProvider.getClass();
                    if (!serializerProvider._config.isEnabled(SerializationFeature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                        jsonGenerator.writeFieldName(serializerProvider._dateFormat().format(new Date(timeInMillis)));
                        break;
                    } else {
                        jsonGenerator.writeFieldName(String.valueOf(timeInMillis));
                        break;
                    }
                case 3:
                    jsonGenerator.writeFieldName(((Class) obj).getName());
                    break;
                case 4:
                    if (serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
                        valueOf = obj.toString();
                    } else {
                        Enum r11 = (Enum) obj;
                        valueOf = serializerProvider._config.isEnabled(SerializationFeature.WRITE_ENUM_KEYS_USING_INDEX) ? String.valueOf(r11.ordinal()) : r11.name();
                    }
                    jsonGenerator.writeFieldName(valueOf);
                    break;
                case 5:
                case 6:
                    long longValue = ((Number) obj).longValue();
                    jsonGenerator.getClass();
                    jsonGenerator.writeFieldName(Long.toString(longValue));
                    break;
                case 7:
                    Base64Variant base64Variant = serializerProvider._config._base._defaultBase64;
                    byte[] bArr = (byte[]) obj;
                    char[] cArr = base64Variant._base64ToAsciiC;
                    int i = base64Variant._maxLineLength;
                    int length = bArr.length;
                    StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
                    int i2 = i >> 2;
                    int i3 = length - 3;
                    int i4 = 0;
                    while (true) {
                        int i5 = i2;
                        while (i4 <= i3) {
                            int i6 = i4 + 2;
                            int i7 = ((bArr[i4 + 1] & 255) | (bArr[i4] << 8)) << 8;
                            i4 += 3;
                            int i8 = i7 | (bArr[i6] & 255);
                            sb.append(cArr[(i8 >> 18) & 63]);
                            sb.append(cArr[(i8 >> 12) & 63]);
                            sb.append(cArr[(i8 >> 6) & 63]);
                            sb.append(cArr[i8 & 63]);
                            i5--;
                            if (i5 <= 0) {
                                break;
                            }
                        }
                        int i9 = length - i4;
                        if (i9 > 0) {
                            int i10 = i4 + 1;
                            int i11 = bArr[i4] << 16;
                            if (i9 == 2) {
                                i11 |= (bArr[i10] & 255) << 8;
                            }
                            char c = base64Variant._paddingChar;
                            sb.append(cArr[(i11 >> 18) & 63]);
                            sb.append(cArr[(i11 >> 12) & 63]);
                            if (base64Variant._writePadding) {
                                sb.append(i9 == 2 ? cArr[(i11 >> 6) & 63] : c);
                                sb.append(c);
                            } else if (i9 == 2) {
                                sb.append(cArr[(i11 >> 6) & 63]);
                            }
                        }
                        jsonGenerator.writeFieldName(sb.toString());
                        sb.append("\\n");
                        break;
                    }
                    break;
                default:
                    jsonGenerator.writeFieldName(obj.toString());
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Dynamic extends StdSerializer {
        public transient UtilsKt _dynamicSerializers;

        public Dynamic() {
            super(0, String.class);
            this._dynamicSerializers = PropertySerializerMap$Empty.FOR_PROPERTIES;
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
            Class<?> cls = obj.getClass();
            UtilsKt utilsKt = this._dynamicSerializers;
            JsonSerializer serializerFor = utilsKt.serializerFor(cls);
            if (serializerFor == null) {
                if (cls == Object.class) {
                    serializerFor = new Default(8, cls);
                    this._dynamicSerializers = utilsKt.newWith(cls, serializerFor);
                } else {
                    serializerFor = serializerProvider.findKeySerializer(serializerProvider._config.constructType(cls), null);
                    UtilsKt newWith = utilsKt.newWith(cls, serializerFor);
                    if (utilsKt != newWith) {
                        this._dynamicSerializers = newWith;
                    }
                }
            }
            serializerFor.serialize(obj, jsonGenerator, serializerProvider);
        }
    }
}
