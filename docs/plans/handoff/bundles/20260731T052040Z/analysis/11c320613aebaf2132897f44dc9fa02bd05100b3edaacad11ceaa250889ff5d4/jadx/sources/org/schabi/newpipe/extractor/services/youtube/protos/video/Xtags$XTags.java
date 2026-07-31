package org.schabi.newpipe.extractor.services.youtube.protos.video;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.protobuf.ArrayDecoders$Registers;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.google.protobuf.Protobuf;
import com.google.protobuf.ProtobufArrayList;
import com.google.protobuf.RawMessageInfo;
import com.google.protobuf.Schema;
import com.google.protobuf.UninitializedMessageException;
import java.io.IOException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Xtags$XTags extends GeneratedMessageLite {
    private static final Xtags$XTags DEFAULT_INSTANCE;
    private static volatile Parser PARSER = null;
    public static final int XTAGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList xtags_ = ProtobufArrayList.EMPTY_LIST;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        Xtags$XTags xtags$XTags = new Xtags$XTags();
        DEFAULT_INSTANCE = xtags$XTags;
        GeneratedMessageLite.registerDefaultInstance(Xtags$XTags.class, xtags$XTags);
    }

    public static Xtags$XTags parseFrom(byte[] bArr) {
        Xtags$XTags xtags$XTags = DEFAULT_INSTANCE;
        int length = bArr.length;
        ExtensionRegistryLite emptyRegistry = ExtensionRegistryLite.getEmptyRegistry();
        if (length != 0) {
            GeneratedMessageLite newMutableInstance$1 = xtags$XTags.newMutableInstance$1();
            try {
                Protobuf protobuf = Protobuf.INSTANCE;
                protobuf.getClass();
                Schema schemaFor = protobuf.schemaFor(newMutableInstance$1.getClass());
                ArrayDecoders$Registers arrayDecoders$Registers = new ArrayDecoders$Registers();
                emptyRegistry.getClass();
                schemaFor.mergeFrom(newMutableInstance$1, bArr, 0, length, arrayDecoders$Registers);
                schemaFor.makeImmutable(newMutableInstance$1);
                xtags$XTags = newMutableInstance$1;
            } catch (InvalidProtocolBufferException e) {
                InvalidProtocolBufferException invalidProtocolBufferException = e;
                if (invalidProtocolBufferException.getThrownFromInputStream()) {
                    invalidProtocolBufferException = new InvalidProtocolBufferException(invalidProtocolBufferException);
                }
                invalidProtocolBufferException.setUnfinishedMessage(newMutableInstance$1);
                throw invalidProtocolBufferException;
            } catch (UninitializedMessageException e2) {
                InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e2.getMessage());
                invalidProtocolBufferException2.setUnfinishedMessage(newMutableInstance$1);
                throw invalidProtocolBufferException2;
            } catch (IOException e3) {
                if (e3.getCause() instanceof InvalidProtocolBufferException) {
                    throw ((InvalidProtocolBufferException) e3.getCause());
                }
                InvalidProtocolBufferException invalidProtocolBufferException3 = new InvalidProtocolBufferException(e3);
                invalidProtocolBufferException3.setUnfinishedMessage(newMutableInstance$1);
                throw invalidProtocolBufferException3;
            } catch (IndexOutOfBoundsException unused) {
                InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                truncatedMessage.setUnfinishedMessage(newMutableInstance$1);
                throw truncatedMessage;
            }
        }
        if (xtags$XTags == null || GeneratedMessageLite.isInitialized(xtags$XTags, true)) {
            return xtags$XTags;
        }
        InvalidProtocolBufferException invalidProtocolBufferException4 = new InvalidProtocolBufferException(new UninitializedMessageException().getMessage());
        invalidProtocolBufferException4.setUnfinishedMessage(xtags$XTags);
        throw invalidProtocolBufferException4;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(int i) {
        Parser parser;
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"xtags_", Xtags$KeyValuePair.class});
        }
        if (ordinal == 3) {
            return new Xtags$XTags();
        }
        if (ordinal == 4) {
            return new Builder(DEFAULT_INSTANCE);
        }
        if (ordinal == 5) {
            return DEFAULT_INSTANCE;
        }
        if (ordinal != 6) {
            throw null;
        }
        Parser parser2 = PARSER;
        if (parser2 != null) {
            return parser2;
        }
        synchronized (Xtags$XTags.class) {
            try {
                parser = PARSER;
                if (parser == null) {
                    parser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                    PARSER = parser;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parser;
    }

    public final Internal.ProtobufList getXtagsList() {
        return this.xtags_;
    }
}
