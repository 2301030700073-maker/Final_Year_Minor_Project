package org.schabi.newpipe.player.resolver;

import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.helper.PlayerDataSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class VideoPlaybackResolver {
    public String audioTrack;
    public final PlayerService context;
    public final PlayerDataSource dataSource;
    public String playbackQuality;
    public final Player.AnonymousClass1 qualityResolver;
    public SourceType streamSourceType;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SourceType {
        public static final /* synthetic */ SourceType[] $VALUES;
        public static final SourceType LIVE_STREAM;
        public static final SourceType VIDEO_WITH_AUDIO_OR_AUDIO_ONLY;
        public static final SourceType VIDEO_WITH_SEPARATED_AUDIO;

        static {
            SourceType sourceType = new SourceType("LIVE_STREAM", 0);
            LIVE_STREAM = sourceType;
            SourceType sourceType2 = new SourceType("VIDEO_WITH_SEPARATED_AUDIO", 1);
            VIDEO_WITH_SEPARATED_AUDIO = sourceType2;
            SourceType sourceType3 = new SourceType("VIDEO_WITH_AUDIO_OR_AUDIO_ONLY", 2);
            VIDEO_WITH_AUDIO_OR_AUDIO_ONLY = sourceType3;
            $VALUES = new SourceType[]{sourceType, sourceType2, sourceType3};
        }

        public static SourceType valueOf(String str) {
            return (SourceType) Enum.valueOf(SourceType.class, str);
        }

        public static SourceType[] values() {
            return (SourceType[]) $VALUES.clone();
        }
    }

    public VideoPlaybackResolver(PlayerService playerService, PlayerDataSource playerDataSource, Player.AnonymousClass1 anonymousClass1) {
        this.context = playerService;
        this.dataSource = playerDataSource;
        this.qualityResolver = anonymousClass1;
    }
}
