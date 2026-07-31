package com.fasterxml.jackson.core.type;

import com.fasterxml.jackson.core.JsonToken;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WritableTypeId {
    public String asProperty;
    public Object forValue;
    public Class forValueType;
    public Object id = null;
    public Inclusion include;
    public final JsonToken valueShape;
    public boolean wrapperWritten;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Inclusion {
        private static final /* synthetic */ Inclusion[] $VALUES;
        public static final Inclusion METADATA_PROPERTY;
        public static final Inclusion PARENT_PROPERTY;
        public static final Inclusion PAYLOAD_PROPERTY;
        public static final Inclusion WRAPPER_ARRAY;
        public static final Inclusion WRAPPER_OBJECT;

        static {
            Inclusion inclusion = new Inclusion("WRAPPER_ARRAY", 0);
            WRAPPER_ARRAY = inclusion;
            Inclusion inclusion2 = new Inclusion("WRAPPER_OBJECT", 1);
            WRAPPER_OBJECT = inclusion2;
            Inclusion inclusion3 = new Inclusion("METADATA_PROPERTY", 2);
            METADATA_PROPERTY = inclusion3;
            Inclusion inclusion4 = new Inclusion("PAYLOAD_PROPERTY", 3);
            PAYLOAD_PROPERTY = inclusion4;
            Inclusion inclusion5 = new Inclusion("PARENT_PROPERTY", 4);
            PARENT_PROPERTY = inclusion5;
            $VALUES = new Inclusion[]{inclusion, inclusion2, inclusion3, inclusion4, inclusion5};
        }

        public static Inclusion valueOf(String str) {
            return (Inclusion) Enum.valueOf(Inclusion.class, str);
        }

        public static Inclusion[] values() {
            return (Inclusion[]) $VALUES.clone();
        }
    }

    public WritableTypeId(Object obj, JsonToken jsonToken) {
        this.forValue = obj;
        this.valueShape = jsonToken;
    }
}
