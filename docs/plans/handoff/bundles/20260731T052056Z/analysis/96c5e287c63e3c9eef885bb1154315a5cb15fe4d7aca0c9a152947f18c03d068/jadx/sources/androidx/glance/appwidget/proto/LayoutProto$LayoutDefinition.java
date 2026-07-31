package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.GeneratedMessageLite;
import androidx.glance.appwidget.protobuf.Parser;
import androidx.glance.appwidget.protobuf.RawMessageInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutProto$LayoutDefinition extends GeneratedMessageLite {
    private static final LayoutProto$LayoutDefinition DEFAULT_INSTANCE;
    public static final int LAYOUT_FIELD_NUMBER = 1;
    public static final int LAYOUT_INDEX_FIELD_NUMBER = 2;
    private static volatile Parser PARSER;
    private int bitField0_;
    private int layoutIndex_;
    private LayoutProto$LayoutNode layout_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        LayoutProto$LayoutDefinition layoutProto$LayoutDefinition = new LayoutProto$LayoutDefinition();
        DEFAULT_INSTANCE = layoutProto$LayoutDefinition;
        GeneratedMessageLite.registerDefaultInstance(LayoutProto$LayoutDefinition.class, layoutProto$LayoutDefinition);
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    @Override // androidx.glance.appwidget.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser parser;
        switch (LayoutProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new LayoutProto$LayoutDefinition();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u0004", new Object[]{"bitField0_", "layout_", "layoutIndex_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser parser2 = PARSER;
                if (parser2 != null) {
                    return parser2;
                }
                synchronized (LayoutProto$LayoutDefinition.class) {
                    try {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser();
                            PARSER = parser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final LayoutProto$LayoutNode getLayout() {
        LayoutProto$LayoutNode layoutProto$LayoutNode = this.layout_;
        return layoutProto$LayoutNode == null ? LayoutProto$LayoutNode.getDefaultInstance() : layoutProto$LayoutNode;
    }

    public final int getLayoutIndex() {
        return this.layoutIndex_;
    }

    public final void setLayout(LayoutProto$LayoutNode layoutProto$LayoutNode) {
        layoutProto$LayoutNode.getClass();
        this.layout_ = layoutProto$LayoutNode;
        this.bitField0_ |= 1;
    }

    public final void setLayoutIndex(int i) {
        this.layoutIndex_ = i;
    }
}
