package org.schabi.newpipe.extractor.services.youtube.protos.playlist;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Parser;
import com.google.protobuf.RawMessageInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistProtobufContinuation$PlaylistContinuation extends GeneratedMessageLite {
    private static final PlaylistProtobufContinuation$PlaylistContinuation DEFAULT_INSTANCE;
    public static final int PARAMETERS_FIELD_NUMBER = 80226972;
    private static volatile Parser PARSER;
    private int bitField0_;
    private PlaylistProtobufContinuation$ContinuationParams parameters_;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    /* renamed from: -$$Nest$msetParameters, reason: not valid java name */
    public static void m866$$Nest$msetParameters(PlaylistProtobufContinuation$PlaylistContinuation playlistProtobufContinuation$PlaylistContinuation, PlaylistProtobufContinuation$ContinuationParams playlistProtobufContinuation$ContinuationParams) {
        playlistProtobufContinuation$PlaylistContinuation.getClass();
        playlistProtobufContinuation$PlaylistContinuation.parameters_ = playlistProtobufContinuation$ContinuationParams;
        playlistProtobufContinuation$PlaylistContinuation.bitField0_ |= 1;
    }

    static {
        PlaylistProtobufContinuation$PlaylistContinuation playlistProtobufContinuation$PlaylistContinuation = new PlaylistProtobufContinuation$PlaylistContinuation();
        DEFAULT_INSTANCE = playlistProtobufContinuation$PlaylistContinuation;
        GeneratedMessageLite.registerDefaultInstance(PlaylistProtobufContinuation$PlaylistContinuation.class, playlistProtobufContinuation$PlaylistContinuation);
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(5));
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(int i) {
        Parser parser;
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\uea9c♁\uea9c♁\u0001\u0000\u0000\u0000\uea9c♁ဉ\u0000", new Object[]{"bitField0_", "parameters_"});
        }
        if (ordinal == 3) {
            return new PlaylistProtobufContinuation$PlaylistContinuation();
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
        synchronized (PlaylistProtobufContinuation$PlaylistContinuation.class) {
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
}
