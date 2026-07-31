package org.schabi.newpipe.extractor.services.youtube.protos.playlist;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Parser;
import com.google.protobuf.RawMessageInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistProtobufContinuation$ContinuationParams extends GeneratedMessageLite {
    public static final int BROWSEID_FIELD_NUMBER = 2;
    public static final int CONTINUATIONPROPERTIES_FIELD_NUMBER = 3;
    private static final PlaylistProtobufContinuation$ContinuationParams DEFAULT_INSTANCE;
    private static volatile Parser PARSER = null;
    public static final int PLAYLISTID_FIELD_NUMBER = 35;
    private String browseId_ = "";
    private String continuationProperties_ = "";
    private String playlistId_ = "";

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    /* renamed from: -$$Nest$msetBrowseId, reason: not valid java name */
    public static void m863$$Nest$msetBrowseId(PlaylistProtobufContinuation$ContinuationParams playlistProtobufContinuation$ContinuationParams, String str) {
        playlistProtobufContinuation$ContinuationParams.getClass();
        playlistProtobufContinuation$ContinuationParams.browseId_ = str;
    }

    /* renamed from: -$$Nest$msetContinuationProperties, reason: not valid java name */
    public static void m864$$Nest$msetContinuationProperties(PlaylistProtobufContinuation$ContinuationParams playlistProtobufContinuation$ContinuationParams) {
        playlistProtobufContinuation$ContinuationParams.getClass();
        playlistProtobufContinuation$ContinuationParams.continuationProperties_ = "CADCBgIIAA%3D%3D";
    }

    /* renamed from: -$$Nest$msetPlaylistId, reason: not valid java name */
    public static void m865$$Nest$msetPlaylistId(PlaylistProtobufContinuation$ContinuationParams playlistProtobufContinuation$ContinuationParams, String str) {
        playlistProtobufContinuation$ContinuationParams.getClass();
        str.getClass();
        playlistProtobufContinuation$ContinuationParams.playlistId_ = str;
    }

    static {
        PlaylistProtobufContinuation$ContinuationParams playlistProtobufContinuation$ContinuationParams = new PlaylistProtobufContinuation$ContinuationParams();
        DEFAULT_INSTANCE = playlistProtobufContinuation$ContinuationParams;
        GeneratedMessageLite.registerDefaultInstance(PlaylistProtobufContinuation$ContinuationParams.class, playlistProtobufContinuation$ContinuationParams);
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
            return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0002#\u0003\u0000\u0000\u0000\u0002Ȉ\u0003Ȉ#Ȉ", new Object[]{"browseId_", "continuationProperties_", "playlistId_"});
        }
        if (ordinal == 3) {
            return new PlaylistProtobufContinuation$ContinuationParams();
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
        synchronized (PlaylistProtobufContinuation$ContinuationParams.class) {
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
