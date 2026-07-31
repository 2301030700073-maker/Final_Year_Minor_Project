package androidx.datastore.preferences.protobuf;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.GapBuffer;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final int getSerializedSize(AbstractMessageLite abstractMessageLite) {
        this.unknownFieldSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) abstractMessageLite).unknownFields;
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
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void makeImmutable(Object obj) {
        this.unknownFieldSchema.getClass();
        ((GeneratedMessageLite) obj).unknownFields.isMutable = false;
        this.extensionSchema.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(Object obj, GapBuffer gapBuffer, ExtensionRegistryLite extensionRegistryLite) {
        this.unknownFieldSchema.getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        if (generatedMessageLite.unknownFields == UnknownFieldSetLite.DEFAULT_INSTANCE) {
            generatedMessageLite.unknownFields = UnknownFieldSetLite.newInstance();
        }
        this.extensionSchema.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final Object newInstance() {
        return ((GeneratedMessageLite.Builder) ((GeneratedMessageLite) this.defaultInstance).dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER)).buildPartial();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        this.extensionSchema.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void mergeFrom(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, generatedMessageLite, generatedMessageLite2);
    }
}
