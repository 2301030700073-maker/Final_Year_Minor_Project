package androidx.datastore.preferences.protobuf;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.datastore.preferences.protobuf.ManifestSchemaFactory;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Protobuf {
    public static final Protobuf INSTANCE = new Protobuf();
    public final ConcurrentHashMap schemaCache = new ConcurrentHashMap();
    public final ManifestSchemaFactory schemaFactory = new ManifestSchemaFactory();

    public final Schema schemaFor(Class cls) {
        ExtensionSchemaLite extensionSchemaLite;
        Schema newSchemaForRawMessageInfo;
        Class cls2;
        Internal.checkNotNull(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.schemaCache;
        Schema schema = (Schema) concurrentHashMap.get(cls);
        if (schema != null) {
            return schema;
        }
        ManifestSchemaFactory manifestSchemaFactory = this.schemaFactory;
        manifestSchemaFactory.getClass();
        Class cls3 = SchemaUtil.GENERATED_MESSAGE_CLASS;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        RawMessageInfo messageInfoFor = ((ManifestSchemaFactory.CompositeMessageInfoFactory) manifestSchemaFactory.messageInfoFactory).messageInfoFor(cls);
        if ((messageInfoFor.flags & 2) == 2) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                newSchemaForRawMessageInfo = new MessageSetSchema(SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA, ExtensionSchemas.LITE_SCHEMA, messageInfoFor.defaultInstance);
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
                ExtensionSchemaLite extensionSchemaLite2 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                newSchemaForRawMessageInfo = new MessageSetSchema(unknownFieldSetLiteSchema, extensionSchemaLite2, messageInfoFor.defaultInstance);
            }
        } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.LITE_SCHEMA;
            ListFieldSchemaLite listFieldSchemaLite = ListFieldSchemas.LITE_SCHEMA;
            UnknownFieldSetLiteSchema unknownFieldSetLiteSchema2 = SchemaUtil.UNKNOWN_FIELD_SET_LITE_SCHEMA;
            ExtensionSchemaLite extensionSchemaLite3 = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(messageInfoFor.getSyntax()) != 1 ? ExtensionSchemas.LITE_SCHEMA : null;
            MapFieldSchemaLite mapFieldSchemaLite = MapFieldSchemas.LITE_SCHEMA;
            if (!(messageInfoFor instanceof RawMessageInfo)) {
                int[] iArr = MessageSchema.EMPTY_INT_ARRAY;
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            newSchemaForRawMessageInfo = MessageSchema.newSchemaForRawMessageInfo(messageInfoFor, newInstanceSchemaLite, listFieldSchemaLite, unknownFieldSetLiteSchema2, extensionSchemaLite3, mapFieldSchemaLite);
        } else {
            NewInstanceSchemaLite newInstanceSchemaLite2 = NewInstanceSchemas.FULL_SCHEMA;
            ListFieldSchemaLite listFieldSchemaLite2 = ListFieldSchemas.FULL_SCHEMA;
            UnknownFieldSetLiteSchema unknownFieldSetLiteSchema3 = SchemaUtil.UNKNOWN_FIELD_SET_FULL_SCHEMA;
            if (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(messageInfoFor.getSyntax()) != 1) {
                ExtensionSchemaLite extensionSchemaLite4 = ExtensionSchemas.FULL_SCHEMA;
                if (extensionSchemaLite4 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                extensionSchemaLite = extensionSchemaLite4;
            } else {
                extensionSchemaLite = null;
            }
            MapFieldSchemaLite mapFieldSchemaLite2 = MapFieldSchemas.FULL_SCHEMA;
            if (!(messageInfoFor instanceof RawMessageInfo)) {
                int[] iArr2 = MessageSchema.EMPTY_INT_ARRAY;
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            newSchemaForRawMessageInfo = MessageSchema.newSchemaForRawMessageInfo(messageInfoFor, newInstanceSchemaLite2, listFieldSchemaLite2, unknownFieldSetLiteSchema3, extensionSchemaLite, mapFieldSchemaLite2);
        }
        Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, newSchemaForRawMessageInfo);
        return schema2 != null ? schema2 : newSchemaForRawMessageInfo;
    }
}
