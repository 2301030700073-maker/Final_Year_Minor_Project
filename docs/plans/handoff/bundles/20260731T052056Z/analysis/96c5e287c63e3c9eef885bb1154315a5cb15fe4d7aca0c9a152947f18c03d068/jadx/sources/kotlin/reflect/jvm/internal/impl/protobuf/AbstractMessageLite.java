package kotlin.reflect.jvm.internal.impl.protobuf;

import com.caverock.androidsvg.SVG;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractMessageLite implements MessageLiteOrBuilder {
    public abstract int getSerializedSize();

    public abstract GeneratedMessageLite.Builder newBuilderForType();

    public abstract GeneratedMessageLite.Builder toBuilder();

    public abstract void writeTo(SVG.PathDefinition pathDefinition);
}
