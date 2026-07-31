package androidx.glance.appwidget.proto;

import androidx.compose.ui.text.input.GapBuffer;
import androidx.glance.appwidget.protobuf.CodedInputStream;
import androidx.glance.appwidget.protobuf.ExtensionRegistryLite;
import androidx.glance.appwidget.protobuf.GeneratedMessageLite;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.glance.appwidget.protobuf.InvalidProtocolBufferException;
import androidx.glance.appwidget.protobuf.Parser;
import androidx.glance.appwidget.protobuf.Protobuf;
import androidx.glance.appwidget.protobuf.ProtobufArrayList;
import androidx.glance.appwidget.protobuf.RawMessageInfo;
import androidx.glance.appwidget.protobuf.Schema;
import androidx.glance.appwidget.protobuf.UninitializedMessageException;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutProto$LayoutConfig extends GeneratedMessageLite {
    private static final LayoutProto$LayoutConfig DEFAULT_INSTANCE;
    public static final int LAYOUT_FIELD_NUMBER = 1;
    public static final int NEXT_INDEX_FIELD_NUMBER = 2;
    private static volatile Parser PARSER;
    private Internal.ProtobufList layout_ = ProtobufArrayList.EMPTY_LIST;
    private int nextIndex_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        LayoutProto$LayoutConfig layoutProto$LayoutConfig = new LayoutProto$LayoutConfig();
        DEFAULT_INSTANCE = layoutProto$LayoutConfig;
        GeneratedMessageLite.registerDefaultInstance(LayoutProto$LayoutConfig.class, layoutProto$LayoutConfig);
    }

    public static LayoutProto$LayoutConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static LayoutProto$LayoutConfig parseFrom(FileInputStream fileInputStream) {
        LayoutProto$LayoutConfig layoutProto$LayoutConfig = DEFAULT_INSTANCE;
        CodedInputStream.StreamDecoder streamDecoder = new CodedInputStream.StreamDecoder(fileInputStream);
        ExtensionRegistryLite emptyRegistry = ExtensionRegistryLite.getEmptyRegistry();
        GeneratedMessageLite newMutableInstance$1 = layoutProto$LayoutConfig.newMutableInstance$1();
        try {
            Protobuf protobuf = Protobuf.INSTANCE;
            protobuf.getClass();
            Schema schemaFor = protobuf.schemaFor(newMutableInstance$1.getClass());
            GapBuffer gapBuffer = (GapBuffer) streamDecoder.wrapper;
            if (gapBuffer == null) {
                gapBuffer = new GapBuffer(streamDecoder);
            }
            schemaFor.mergeFrom(newMutableInstance$1, gapBuffer, emptyRegistry);
            schemaFor.makeImmutable(newMutableInstance$1);
            if (GeneratedMessageLite.isInitialized(newMutableInstance$1, true)) {
                return (LayoutProto$LayoutConfig) newMutableInstance$1;
            }
            throw new InvalidProtocolBufferException(new UninitializedMessageException().getMessage());
        } catch (InvalidProtocolBufferException e) {
            if (e.wasThrownFromInputStream) {
                throw new InvalidProtocolBufferException(e.getMessage(), e);
            }
            throw e;
        } catch (UninitializedMessageException e2) {
            throw new InvalidProtocolBufferException(e2.getMessage());
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new InvalidProtocolBufferException(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    public final void addLayout(LayoutProto$LayoutDefinition layoutProto$LayoutDefinition) {
        Internal.ProtobufList protobufList = this.layout_;
        if (!((ProtobufArrayList) protobufList).isMutable) {
            ProtobufArrayList protobufArrayList = (ProtobufArrayList) protobufList;
            int i = protobufArrayList.size;
            protobufList = protobufArrayList.mutableCopyWithCapacity(i == 0 ? 10 : i * 2);
            this.layout_ = protobufList;
        }
        ((ProtobufArrayList) protobufList).add(layoutProto$LayoutDefinition);
    }

    public final void clearLayout() {
        this.layout_ = ProtobufArrayList.EMPTY_LIST;
    }

    @Override // androidx.glance.appwidget.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser parser;
        switch (LayoutProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new LayoutProto$LayoutConfig();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0004", new Object[]{"layout_", LayoutProto$LayoutDefinition.class, "nextIndex_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser parser2 = PARSER;
                if (parser2 != null) {
                    return parser2;
                }
                synchronized (LayoutProto$LayoutConfig.class) {
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

    public final Internal.ProtobufList getLayoutList() {
        return this.layout_;
    }

    public final int getNextIndex() {
        return this.nextIndex_;
    }

    public final void setNextIndex(int i) {
        this.nextIndex_ = i;
    }
}
