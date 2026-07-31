package org.schabi.newpipe.local.playlist;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlayListShareMode {
    public static final /* synthetic */ PlayListShareMode[] $VALUES;
    public static final PlayListShareMode JUST_URLS;
    public static final PlayListShareMode WITH_TITLES;
    public static final PlayListShareMode YOUTUBE_TEMP_PLAYLIST;

    static {
        PlayListShareMode playListShareMode = new PlayListShareMode("JUST_URLS", 0);
        JUST_URLS = playListShareMode;
        PlayListShareMode playListShareMode2 = new PlayListShareMode("WITH_TITLES", 1);
        WITH_TITLES = playListShareMode2;
        PlayListShareMode playListShareMode3 = new PlayListShareMode("YOUTUBE_TEMP_PLAYLIST", 2);
        YOUTUBE_TEMP_PLAYLIST = playListShareMode3;
        $VALUES = new PlayListShareMode[]{playListShareMode, playListShareMode2, playListShareMode3};
    }

    public static PlayListShareMode valueOf(String str) {
        return (PlayListShareMode) Enum.valueOf(PlayListShareMode.class, str);
    }

    public static PlayListShareMode[] values() {
        return (PlayListShareMode[]) $VALUES.clone();
    }
}
