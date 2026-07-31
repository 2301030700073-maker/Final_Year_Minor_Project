package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.ListFieldSchema;
import androidx.datastore.preferences.protobuf.ManifestSchemaFactory;
import j$.util.concurrent.ConcurrentHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Protobuf {
    public static final Protobuf INSTANCE = new Protobuf();
    public final ConcurrentHashMap schemaCache = new ConcurrentHashMap();
    public final ManifestSchemaFactory schemaFactory = new ManifestSchemaFactory();

    public final Schema schemaFor(Class cls) {
        Schema newSchema;
        Class cls2;
        Internal.checkNotNull("messageType", cls);
        ConcurrentHashMap concurrentHashMap = this.schemaCache;
        Schema schema = (Schema) concurrentHashMap.get(cls);
        if (schema != null) {
            return schema;
        }
        Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        RawMessageInfo messageInfoFor = ((ManifestSchemaFactory.CompositeMessageInfoFactory) this.schemaFactory.messageInfoFactory).messageInfoFor(cls);
        if ((messageInfoFor.flags & 2) == 2) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                newSchema = new MessageSetSchema(SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, messageInfoFor.defaultInstance);
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                newSchema = new MessageSetSchema(unknownFieldSetLiteSchema, extensionSchemaLite, messageInfoFor.defaultInstance);
            }
        } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            newSchema = ((messageInfoFor.flags & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3) == ProtoSyntax.PROTO2 ? MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.LITE_SCHEMA, ListFieldSchema.LITE_INSTANCE, SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, MapFieldSchemas.LITE_SCHEMA) : MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.LITE_SCHEMA, ListFieldSchema.LITE_INSTANCE, SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, null, MapFieldSchemas.LITE_SCHEMA);
        } else {
            if (((messageInfoFor.flags & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3) == ProtoSyntax.PROTO2) {
                NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.FULL_SCHEMA;
                ListFieldSchema.ListFieldSchemaFull listFieldSchemaFull = ListFieldSchema.FULL_INSTANCE;
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema2 = SchemaUtil.PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite2 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                newSchema = MessageSchema.newSchema(messageInfoFor, newInstanceSchemaLite, listFieldSchemaFull, unknownFieldSetLiteSchema2, extensionSchemaLite2, MapFieldSchemas.FULL_SCHEMA);
            } else {
                newSchema = MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.FULL_SCHEMA, ListFieldSchema.FULL_INSTANCE, SchemaUtil.PROTO3_UNKNOWN_FIELD_SET_SCHEMA, null, MapFieldSchemas.FULL_SCHEMA);
            }
        }
        Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, newSchema);
        return schema2 != null ? schema2 : newSchema;
    }
}
