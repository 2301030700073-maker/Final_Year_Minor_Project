package androidx.datastore.preferences.protobuf;

import androidx.camera.core.impl.Config;
import androidx.collection.CircularArray;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageSetSchema implements Schema {
    public final AbstractMessageLite defaultInstance;
    public final ExtensionSchemaLite extensionSchema;
    public final UnknownFieldSetLiteSchema unknownFieldSchema;

    public MessageSetSchema(UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, ExtensionSchemaLite extensionSchemaLite, AbstractMessageLite abstractMessageLite) {
        this.unknownFieldSchema = unknownFieldSetLiteSchema;
        extensionSchemaLite.getClass();
        this.extensionSchema = extensionSchemaLite;
        this.defaultInstance = abstractMessageLite;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean equals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        this.unknownFieldSchema.getClass();
        return generatedMessageLite.unknownFields.equals(generatedMessageLite2.unknownFields);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int getSerializedSize(GeneratedMessageLite generatedMessageLite) {
        this.unknownFieldSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        int i = unknownFieldSetLite.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < unknownFieldSetLite.count; i3++) {
            int i4 = unknownFieldSetLite.tags[i3] >>> 3;
            i2 += CodedOutputStream$OutputStreamEncoder.computeBytesSize(3, (ByteString$LiteralByteString) unknownFieldSetLite.objects[i3]) + CodedOutputStream$OutputStreamEncoder.computeUInt32SizeNoTag(i4) + CodedOutputStream$OutputStreamEncoder.computeTagSize(2) + (CodedOutputStream$OutputStreamEncoder.computeTagSize(1) * 2);
        }
        unknownFieldSetLite.memoizedSerializedSize = i2;
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int hashCode(GeneratedMessageLite generatedMessageLite) {
        this.unknownFieldSchema.getClass();
        return generatedMessageLite.unknownFields.hashCode();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        this.extensionSchema.getClass();
        Config.CC.m$1(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void makeImmutable(Object obj) {
        this.unknownFieldSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        if (unknownFieldSetLite.isMutable) {
            unknownFieldSetLite.isMutable = false;
        }
        this.extensionSchema.getClass();
        Config.CC.m$1(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(Object obj, CircularArray circularArray, ExtensionRegistryLite extensionRegistryLite) {
        this.unknownFieldSchema.getClass();
        UnknownFieldSetLiteSchema.getBuilderFromMessage(obj);
        this.extensionSchema.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        AbstractMessageLite abstractMessageLite = this.defaultInstance;
        return abstractMessageLite instanceof GeneratedMessageLite ? ((GeneratedMessageLite) abstractMessageLite).newMutableInstance$1() : ((GeneratedMessageLite.Builder) ((GeneratedMessageLite) abstractMessageLite).dynamicMethod(5)).buildPartial();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        this.extensionSchema.getClass();
        Config.CC.m$1(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
    }
}
