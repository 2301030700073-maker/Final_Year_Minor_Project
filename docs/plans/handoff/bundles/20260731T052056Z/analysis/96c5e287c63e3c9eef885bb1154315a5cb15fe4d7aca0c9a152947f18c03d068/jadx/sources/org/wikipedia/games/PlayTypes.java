package org.wikipedia.games;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlayTypes {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PlayTypes[] $VALUES;
    public static final PlayTypes PLAYED_ON_ARCHIVE;
    public static final PlayTypes PLAYED_ON_SAME_DAY;

    static {
        PlayTypes playTypes = new PlayTypes("PLAYED_ON_SAME_DAY", 0);
        PLAYED_ON_SAME_DAY = playTypes;
        PlayTypes playTypes2 = new PlayTypes("PLAYED_ON_ARCHIVE", 1);
        PLAYED_ON_ARCHIVE = playTypes2;
        PlayTypes[] playTypesArr = {playTypes, playTypes2};
        $VALUES = playTypesArr;
        $ENTRIES = new EnumEntriesList(playTypesArr);
    }

    public static PlayTypes valueOf(String str) {
        return (PlayTypes) Enum.valueOf(PlayTypes.class, str);
    }

    public static PlayTypes[] values() {
        return (PlayTypes[]) $VALUES.clone();
    }
}
