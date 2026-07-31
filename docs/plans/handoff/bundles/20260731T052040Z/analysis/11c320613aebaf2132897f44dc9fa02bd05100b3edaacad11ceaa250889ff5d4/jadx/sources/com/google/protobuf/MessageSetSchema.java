package com.google.protobuf;

import androidx.compose.ui.Modifier;
import com.google.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MessageSetSchema implements Schema {
    public final MessageLite defaultInstance;
    public final ExtensionSchemaLite extensionSchema;
    public final UnknownFieldSetLiteSchema unknownFieldSchema;

    public MessageSetSchema(UnknownFieldSetLiteSchema unknownFieldSetLiteSchema, ExtensionSchemaLite extensionSchemaLite, MessageLite messageLite) {
        this.unknownFieldSchema = unknownFieldSetLiteSchema;
        extensionSchemaLite.getClass();
        this.extensionSchema = extensionSchemaLite;
        this.defaultInstance = messageLite;
    }

    @Override // com.google.protobuf.Schema
    public final boolean equals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        this.unknownFieldSchema.getClass();
        return generatedMessageLite.unknownFields.equals(generatedMessageLite2.unknownFields);
    }

    @Override // com.google.protobuf.Schema
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
            i2 += CodedOutputStream$ArrayEncoder.computeBytesSize(3, (ByteString) unknownFieldSetLite.objects[i3]) + CodedOutputStream$ArrayEncoder.computeUInt32SizeNoTag(i4) + CodedOutputStream$ArrayEncoder.computeTagSize(2) + (CodedOutputStream$ArrayEncoder.computeTagSize(1) * 2);
        }
        unknownFieldSetLite.memoizedSerializedSize = i2;
        return i2;
    }

    @Override // com.google.protobuf.Schema
    public final int hashCode(GeneratedMessageLite generatedMessageLite) {
        this.unknownFieldSchema.getClass();
        return generatedMessageLite.unknownFields.hashCode();
    }

    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        this.extensionSchema.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // com.google.protobuf.Schema
    public final void makeImmutable(Object obj) {
        this.unknownFieldSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        if (unknownFieldSetLite.isMutable) {
            unknownFieldSetLite.isMutable = false;
        }
        this.extensionSchema.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, byte[] bArr, int i, int i2, ArrayDecoders$Registers arrayDecoders$Registers) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        if (generatedMessageLite.unknownFields == UnknownFieldSetLite.DEFAULT_INSTANCE) {
            generatedMessageLite.unknownFields = UnknownFieldSetLite.newInstance();
        }
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.protobuf.Schema
    public final GeneratedMessageLite newInstance() {
        MessageLite messageLite = this.defaultInstance;
        return messageLite instanceof GeneratedMessageLite ? ((GeneratedMessageLite) messageLite).newMutableInstance$1() : ((GeneratedMessageLite.Builder) ((GeneratedMessageLite) messageLite).dynamicMethod(5)).buildPartial();
    }

    @Override // com.google.protobuf.Schema
    public final void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory) {
        this.extensionSchema.getClass();
        Modifier.CC.m(obj);
        throw null;
    }

    @Override // com.google.protobuf.Schema
    public final void mergeFrom(Object obj, Object obj2) {
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
    }
}
