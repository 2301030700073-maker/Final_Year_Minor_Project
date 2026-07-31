package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum ProtoBuf$Modality implements Internal.EnumLite {
    FINAL(0),
    OPEN(1),
    ABSTRACT(2),
    SEALED(3);

    private static Internal.EnumLiteMap internalValueMap = new Path.Companion(2);
    private final int value;

    ProtoBuf$Modality(int i) {
        this.value = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }
}
