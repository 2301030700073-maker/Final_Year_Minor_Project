package androidx.glance.appwidget.protobuf;

import androidx.glance.appwidget.protobuf.ManifestSchemaFactory;
import j$.util.concurrent.ConcurrentHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Protobuf {
    public static final Protobuf INSTANCE = new Protobuf();
    public final ConcurrentHashMap schemaCache = new ConcurrentHashMap();
    public final ManifestSchemaFactory schemaFactory = new ManifestSchemaFactory();

    public final Schema schemaFor(Class cls) {
        ExtensionSchemaLite extensionSchemaLite;
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
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite2 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                newSchema = new MessageSetSchema(unknownFieldSetLiteSchema, extensionSchemaLite2, messageInfoFor.defaultInstance);
            }
        } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            newSchema = MessageSchema.newSchema(messageInfoFor, NewInstanceSchemas.LITE_SCHEMA, ListFieldSchemas.LITE_SCHEMA, SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ManifestSchemaFactory.AnonymousClass2.$SwitchMap$com$google$protobuf$ProtoSyntax[messageInfoFor.getSyntax().ordinal()] != 1 ? ExtensionSchemas.LITE_SCHEMA : null, MapFieldSchemas.LITE_SCHEMA);
        } else {
            NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.FULL_SCHEMA;
            ListFieldSchemaLite listFieldSchemaLite = ListFieldSchemas.FULL_SCHEMA;
            UnknownFieldSetLiteSchema unknownFieldSetLiteSchema2 = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
            if (ManifestSchemaFactory.AnonymousClass2.$SwitchMap$com$google$protobuf$ProtoSyntax[messageInfoFor.getSyntax().ordinal()] != 1) {
                ExtensionSchemaLite extensionSchemaLite3 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                extensionSchemaLite = extensionSchemaLite3;
            } else {
                extensionSchemaLite = null;
            }
            newSchema = MessageSchema.newSchema(messageInfoFor, newInstanceSchemaLite, listFieldSchemaLite, unknownFieldSetLiteSchema2, extensionSchemaLite, MapFieldSchemas.FULL_SCHEMA);
        }
        Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, newSchema);
        return schema2 != null ? schema2 : newSchema;
    }
}
