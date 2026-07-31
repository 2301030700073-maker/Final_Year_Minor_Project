package com.skydoves.landscapist.crossfade;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class ImageLoadTransitionState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImageLoadTransitionState[] $VALUES;
    public static final ImageLoadTransitionState Loaded = new ImageLoadTransitionState("Loaded", 0);
    public static final ImageLoadTransitionState Empty = new ImageLoadTransitionState("Empty", 1);

    private static final /* synthetic */ ImageLoadTransitionState[] $values() {
        return new ImageLoadTransitionState[]{Loaded, Empty};
    }

    static {
        ImageLoadTransitionState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private ImageLoadTransitionState(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static ImageLoadTransitionState valueOf(String str) {
        return (ImageLoadTransitionState) Enum.valueOf(ImageLoadTransitionState.class, str);
    }

    public static ImageLoadTransitionState[] values() {
        return (ImageLoadTransitionState[]) $VALUES.clone();
    }
}
