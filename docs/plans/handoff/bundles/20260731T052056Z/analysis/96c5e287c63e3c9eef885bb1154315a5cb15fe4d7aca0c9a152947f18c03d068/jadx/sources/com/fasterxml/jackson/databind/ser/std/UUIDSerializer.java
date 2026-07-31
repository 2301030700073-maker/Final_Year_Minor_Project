package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.util.UUID;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UUIDSerializer extends StdScalarSerializer implements ContextualSerializer {
    public static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public final Boolean _asBinary;

    public UUIDSerializer(Boolean bool) {
        super(UUID.class);
        this._asBinary = bool;
    }

    public static final void _appendInt(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void _appendShort(char[] cArr, int i, int i2) {
        char[] cArr2 = HEX_CHARS;
        cArr[i2] = cArr2[(i >> 12) & 15];
        cArr[i2 + 1] = cArr2[(i >> 8) & 15];
        cArr[i2 + 2] = cArr2[(i >> 4) & 15];
        cArr[i2 + 3] = cArr2[i & 15];
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonSerializer createContextual(com.fasterxml.jackson.databind.SerializerProvider r2, com.fasterxml.jackson.databind.BeanProperty r3) {
        /*
            r1 = this;
            java.lang.Class r0 = r1._handledType
            com.fasterxml.jackson.annotation.JsonFormat$Value r2 = com.fasterxml.jackson.databind.ser.std.StdSerializer.findFormatOverrides(r2, r3, r0)
            if (r2 == 0) goto L18
            com.fasterxml.jackson.annotation.JsonFormat$Shape r2 = r2._shape
            com.fasterxml.jackson.annotation.JsonFormat$Shape r3 = com.fasterxml.jackson.annotation.JsonFormat.Shape.BINARY
            if (r2 != r3) goto L11
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            goto L19
        L11:
            com.fasterxml.jackson.annotation.JsonFormat$Shape r3 = com.fasterxml.jackson.annotation.JsonFormat.Shape.STRING
            if (r2 != r3) goto L18
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            goto L19
        L18:
            r2 = 0
        L19:
            java.lang.Boolean r3 = r1._asBinary
            boolean r3 = j$.util.Objects.equals(r2, r3)
            if (r3 != 0) goto L26
            com.fasterxml.jackson.databind.ser.std.UUIDSerializer r1 = new com.fasterxml.jackson.databind.ser.std.UUIDSerializer
            r1.<init>(r2)
        L26:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.UUIDSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        UUID uuid = (UUID) obj;
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        boolean z;
        UUID uuid = (UUID) obj;
        Boolean bool = this._asBinary;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            jsonGenerator.getClass();
            z = false;
        }
        if (z) {
            byte[] bArr = new byte[16];
            long mostSignificantBits = uuid.getMostSignificantBits();
            long leastSignificantBits = uuid.getLeastSignificantBits();
            _appendInt(bArr, (int) (mostSignificantBits >> 32), 0);
            _appendInt(bArr, (int) mostSignificantBits, 4);
            _appendInt(bArr, (int) (leastSignificantBits >> 32), 8);
            _appendInt(bArr, (int) leastSignificantBits, 12);
            jsonGenerator.getClass();
            jsonGenerator.writeBinary(Base64Variants.MIME_NO_LINEFEEDS, bArr, 0, 16);
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits2 = uuid.getMostSignificantBits();
        int i = (int) (mostSignificantBits2 >> 32);
        _appendShort(cArr, i >> 16, 0);
        _appendShort(cArr, i, 4);
        cArr[8] = '-';
        int i2 = (int) mostSignificantBits2;
        _appendShort(cArr, i2 >>> 16, 9);
        cArr[13] = '-';
        _appendShort(cArr, i2, 14);
        cArr[18] = '-';
        long leastSignificantBits2 = uuid.getLeastSignificantBits();
        _appendShort(cArr, (int) (leastSignificantBits2 >>> 48), 19);
        cArr[23] = '-';
        _appendShort(cArr, (int) (leastSignificantBits2 >>> 32), 24);
        int i3 = (int) leastSignificantBits2;
        _appendShort(cArr, i3 >> 16, 28);
        _appendShort(cArr, i3, 32);
        jsonGenerator.writeString(cArr, 0, 36);
    }
}
