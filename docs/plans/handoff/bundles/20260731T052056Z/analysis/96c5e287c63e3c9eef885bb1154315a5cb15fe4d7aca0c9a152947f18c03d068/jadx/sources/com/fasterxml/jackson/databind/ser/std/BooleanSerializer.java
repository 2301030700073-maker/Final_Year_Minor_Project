package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.net.InetAddress;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BooleanSerializer extends StdScalarSerializer implements ContextualSerializer {
    public final /* synthetic */ int $r8$classId;
    public final boolean _forPrimitive;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BooleanSerializer(int i, boolean z) {
        super(z ? Boolean.TYPE : Boolean.class);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(z ? Boolean.TYPE : Boolean.class);
                this._forPrimitive = z;
                break;
            case 2:
                super(InetAddress.class);
                this._forPrimitive = z;
                break;
            default:
                this._forPrimitive = z;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if (r6 != com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r6, com.fasterxml.jackson.databind.BeanProperty r7) {
        /*
            r5 = this;
            int r0 = r5.$r8$classId
            r1 = 1
            java.lang.Class r2 = r5._handledType
            boolean r3 = r5._forPrimitive
            r4 = 0
            switch(r0) {
                case 0: goto L3e;
                case 1: goto L28;
                default: goto Lb;
            }
        Lb:
            com.fasterxml.jackson.annotation.JsonFormat$Value r6 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r6, r7, r2)
            if (r6 == 0) goto L1e
            com.fasterxml.jackson.annotation.JsonFormat$Shape r6 = r6._shape
            boolean r7 = r6.isNumeric()
            if (r7 != 0) goto L1f
            com.fasterxml.jackson.annotation.JsonFormat$Shape r7 = com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY
            if (r6 != r7) goto L1e
            goto L1f
        L1e:
            r1 = r4
        L1f:
            if (r1 == r3) goto L27
            com.fasterxml.jackson.databind.ser.std.BooleanSerializer r5 = new com.fasterxml.jackson.databind.ser.std.BooleanSerializer
            r6 = 2
            r5.<init>(r6, r1)
        L27:
            return r5
        L28:
            java.lang.Class<java.lang.Boolean> r0 = java.lang.Boolean.class
            com.fasterxml.jackson.annotation.JsonFormat$Value r6 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r6, r7, r0)
            if (r6 == 0) goto L3d
            com.fasterxml.jackson.annotation.JsonFormat$Shape r6 = r6._shape
            boolean r6 = r6.isNumeric()
            if (r6 != 0) goto L3d
            com.fasterxml.jackson.databind.ser.std.BooleanSerializer r5 = new com.fasterxml.jackson.databind.ser.std.BooleanSerializer
            r5.<init>(r4, r3)
        L3d:
            return r5
        L3e:
            com.fasterxml.jackson.annotation.JsonFormat$Value r6 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r6, r7, r2)
            if (r6 == 0) goto L5b
            com.fasterxml.jackson.annotation.JsonFormat$Shape r6 = r6._shape
            boolean r7 = r6.isNumeric()
            if (r7 == 0) goto L52
            com.fasterxml.jackson.databind.ser.std.BooleanSerializer r5 = new com.fasterxml.jackson.databind.ser.std.BooleanSerializer
            r5.<init>(r1, r3)
            goto L5b
        L52:
            com.fasterxml.jackson.annotation.JsonFormat$Shape r7 = com.fasterxml.jackson.annotation.JsonFormat.Shape.STRING
            if (r6 != r7) goto L5b
            com.fasterxml.jackson.databind.ser.std.ToStringSerializer r5 = new com.fasterxml.jackson.databind.ser.std.ToStringSerializer
            r5.<init>(r4, r2)
        L5b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.BooleanSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        switch (this.$r8$classId) {
            case 0:
                jsonGenerator.writeBoolean(Boolean.TRUE.equals(obj));
                break;
            case 1:
                jsonGenerator.writeNumber(!Boolean.FALSE.equals(obj) ? 1 : 0);
                break;
            default:
                serialize((InetAddress) obj, jsonGenerator);
                break;
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) {
        switch (this.$r8$classId) {
            case 0:
                jsonGenerator.writeBoolean(Boolean.TRUE.equals(obj));
                break;
            case 1:
                jsonGenerator.writeBoolean(Boolean.TRUE.equals(obj));
                break;
            default:
                InetAddress inetAddress = (InetAddress) obj;
                WritableTypeId typeId = typeSerializer.typeId(inetAddress, JsonToken.VALUE_STRING);
                typeId.forValueType = InetAddress.class;
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeId);
                serialize(inetAddress, jsonGenerator);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                break;
        }
    }

    public void serialize(InetAddress inetAddress, JsonGenerator jsonGenerator) {
        String trim;
        if (this._forPrimitive) {
            trim = inetAddress.getHostAddress();
        } else {
            trim = inetAddress.toString().trim();
            int indexOf = trim.indexOf(47);
            if (indexOf >= 0) {
                if (indexOf == 0) {
                    trim = trim.substring(1);
                } else {
                    trim = trim.substring(0, indexOf);
                }
            }
        }
        jsonGenerator.writeString(trim);
    }
}
