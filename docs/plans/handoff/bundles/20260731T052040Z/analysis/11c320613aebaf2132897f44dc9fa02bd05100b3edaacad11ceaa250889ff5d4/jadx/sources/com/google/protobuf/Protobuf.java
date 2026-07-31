package com.google.protobuf;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.protobuf.ManifestSchemaFactory;
import j$.util.concurrent.ConcurrentHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Protobuf {
    public static final Protobuf INSTANCE = new Protobuf();
    public final ConcurrentHashMap schemaCache = new ConcurrentHashMap();
    public final ManifestSchemaFactory schemaFactory = new ManifestSchemaFactory();

    public final Schema schemaFor(Class cls) {
        ExtensionSchemaLite extensionSchemaLite;
        Schema newSchemaForRawMessageInfo;
        ConcurrentHashMap concurrentHashMap = this.schemaCache;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (Schema) obj;
        }
        ManifestSchemaFactory manifestSchemaFactory = this.schemaFactory;
        manifestSchemaFactory.getClass();
        Class cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            Class cls3 = Android.MEMORY_CLASS;
            Class cls4 = SchemaUtil.GENERATED_MESSAGE_CLASS;
            if (cls4 != null && !cls4.isAssignableFrom(cls)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Message classes must extend GeneratedMessage or GeneratedMessageLite");
                return null;
            }
        }
        RawMessageInfo messageInfoFor = ((ManifestSchemaFactory.CompositeMessageInfoFactory) manifestSchemaFactory.messageInfoFactory).messageInfoFor(cls);
        if ((messageInfoFor.flags & 2) == 2) {
            Class cls5 = Android.MEMORY_CLASS;
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                newSchemaForRawMessageInfo = new MessageSetSchema(SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, messageInfoFor.defaultInstance);
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite2 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                newSchemaForRawMessageInfo = new MessageSetSchema(unknownFieldSetLiteSchema, extensionSchemaLite2, messageInfoFor.defaultInstance);
            }
        } else {
            Class cls6 = Android.MEMORY_CLASS;
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.LITE_SCHEMA;
                ListFieldSchemaLite listFieldSchemaLite = ListFieldSchemas.LITE_SCHEMA;
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema2 = SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite3 = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(messageInfoFor.getSyntax()) != 1 ? ExtensionSchemas.LITE_SCHEMA : null;
                MapFieldSchemaLite mapFieldSchemaLite = MapFieldSchemas.LITE_SCHEMA;
                if (!(messageInfoFor instanceof RawMessageInfo)) {
                    int[] iArr = MessageSchema.EMPTY_INT_ARRAY;
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return null;
                }
                newSchemaForRawMessageInfo = MessageSchema.newSchemaForRawMessageInfo(messageInfoFor, newInstanceSchemaLite, listFieldSchemaLite, unknownFieldSetLiteSchema2, extensionSchemaLite3, mapFieldSchemaLite);
            } else {
                NewInstanceSchemaLite newInstanceSchemaLite2 = NewInstanceSchemas.FULL_SCHEMA;
                ListFieldSchemaLite listFieldSchemaLite2 = ListFieldSchemas.FULL_SCHEMA;
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema3 = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
                if (SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(messageInfoFor.getSyntax()) != 1) {
                    ExtensionSchemaLite extensionSchemaLite4 = ExtensionSchemas.FULL_SCHEMA;
                    if (extensionSchemaLite4 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Protobuf runtime is not correctly loaded.");
                        return null;
                    }
                    extensionSchemaLite = extensionSchemaLite4;
                } else {
                    extensionSchemaLite = null;
                }
                MapFieldSchemaLite mapFieldSchemaLite2 = MapFieldSchemas.FULL_SCHEMA;
                if (!(messageInfoFor instanceof RawMessageInfo)) {
                    int[] iArr2 = MessageSchema.EMPTY_INT_ARRAY;
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return null;
                }
                newSchemaForRawMessageInfo = MessageSchema.newSchemaForRawMessageInfo(messageInfoFor, newInstanceSchemaLite2, listFieldSchemaLite2, unknownFieldSetLiteSchema3, extensionSchemaLite, mapFieldSchemaLite2);
            }
        }
        byte[] bArr = Internal.EMPTY_BYTE_ARRAY;
        Schema schema = (Schema) concurrentHashMap.putIfAbsent(cls, newSchemaForRawMessageInfo);
        return schema != null ? schema : newSchemaForRawMessageInfo;
    }
}
