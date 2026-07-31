package androidx.datastore.preferences.protobuf;

import androidx.compose.ui.text.input.GapBuffer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Schema {
    boolean equals(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2);

    int getSerializedSize(AbstractMessageLite abstractMessageLite);

    int hashCode(GeneratedMessageLite generatedMessageLite);

    boolean isInitialized(Object obj);

    void makeImmutable(Object obj);

    void mergeFrom(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2);

    void mergeFrom(Object obj, GapBuffer gapBuffer, ExtensionRegistryLite extensionRegistryLite);

    Object newInstance();

    void writeTo(Object obj, ManifestSchemaFactory manifestSchemaFactory);
}
