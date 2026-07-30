package kotlin.reflect.jvm.internal.impl.protobuf;

/* loaded from: classes2.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends Cloneable, MessageLiteOrBuilder {
        MessageLite build();

        Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);
    }

    int getSerializedSize();

    Builder newBuilderForType();

    Builder toBuilder();

    void writeTo(CodedOutputStream codedOutputStream);
}
