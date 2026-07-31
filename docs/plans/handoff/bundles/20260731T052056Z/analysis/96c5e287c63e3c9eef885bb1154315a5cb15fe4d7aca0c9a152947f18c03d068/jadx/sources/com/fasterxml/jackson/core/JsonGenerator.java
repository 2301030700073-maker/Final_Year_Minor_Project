package com.fasterxml.jackson.core;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.WritableTypeId;
import java.io.Closeable;
import java.io.Flushable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonGenerator implements Closeable, Flushable {
    public PrettyPrinter _cfgPrettyPrinter;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.fasterxml.jackson.core.JsonGenerator$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion;

        static {
            int[] iArr = new int[WritableTypeId.Inclusion.values().length];
            $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion = iArr;
            try {
                iArr[WritableTypeId.Inclusion.PARENT_PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.PAYLOAD_PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.METADATA_PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.WRAPPER_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$type$WritableTypeId$Inclusion[WritableTypeId.Inclusion.WRAPPER_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public enum Feature {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        ESCAPE_NON_ASCII(false),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);

        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        Feature(boolean z) {
            this._defaultState = z;
        }

        public static int collectDefaults() {
            int i = 0;
            for (Feature feature : values()) {
                if (feature._defaultState) {
                    i |= feature._mask;
                }
            }
            return i;
        }

        public final boolean enabledIn(int i) {
            return (this._mask & i) != 0;
        }

        public final int getMask() {
            return this._mask;
        }
    }

    static {
        StreamWriteCapability[] values = StreamWriteCapability.values();
        if (values.length > 31) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", new Object[]{values[0].getClass().getName(), Integer.valueOf(values.length)});
            return;
        }
        for (StreamWriteCapability streamWriteCapability : values) {
            streamWriteCapability.getClass();
        }
        StreamWriteCapability.CAN_WRITE_FORMATTED_NUMBERS.getClass();
        StreamWriteCapability.CAN_WRITE_BINARY_NATIVELY.getClass();
    }

    public static void _verifyOffsets(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("invalid argument(s) (offset=%d, length=%d) for input array of %d element", new Object[]{0, Integer.valueOf(i2), Integer.valueOf(i)});
    }

    public final void _reportError(String str) {
        throw new JsonGenerationException(str, this);
    }

    public abstract boolean isEnabled(Feature feature);

    public abstract void setCurrentValue(Object obj);

    public abstract void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2);

    public abstract void writeBoolean(boolean z);

    public abstract void writeEndArray();

    public abstract void writeEndObject();

    public abstract void writeFieldName(SerializedString serializedString);

    public abstract void writeFieldName(String str);

    public abstract void writeNull();

    public abstract void writeNumber(double d);

    public abstract void writeNumber(float f);

    public abstract void writeNumber(int i);

    public abstract void writeNumber(long j);

    public abstract void writeRaw(char c);

    public abstract void writeRaw(String str);

    public abstract void writeStartArray();

    public abstract void writeStartArray(Object obj);

    public abstract void writeStartArray$1(Object obj);

    public abstract void writeStartObject();

    public abstract void writeStartObject(Object obj);

    public abstract void writeString(String str);

    public abstract void writeString(char[] cArr, int i, int i2);
}
