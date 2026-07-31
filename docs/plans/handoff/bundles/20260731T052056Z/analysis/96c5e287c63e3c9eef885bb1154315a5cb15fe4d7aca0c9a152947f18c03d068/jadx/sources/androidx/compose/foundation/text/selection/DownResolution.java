package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DownResolution {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DownResolution[] $VALUES;
    public static final DownResolution Cancel;
    public static final DownResolution Drag;
    public static final DownResolution Timeout;
    public static final DownResolution Up;

    static {
        DownResolution downResolution = new DownResolution("Up", 0);
        Up = downResolution;
        DownResolution downResolution2 = new DownResolution("Drag", 1);
        Drag = downResolution2;
        DownResolution downResolution3 = new DownResolution("Timeout", 2);
        Timeout = downResolution3;
        DownResolution downResolution4 = new DownResolution("Cancel", 3);
        Cancel = downResolution4;
        DownResolution[] downResolutionArr = {downResolution, downResolution2, downResolution3, downResolution4};
        $VALUES = downResolutionArr;
        $ENTRIES = new EnumEntriesList(downResolutionArr);
    }

    public static DownResolution valueOf(String str) {
        return (DownResolution) Enum.valueOf(DownResolution.class, str);
    }

    public static DownResolution[] values() {
        return (DownResolution[]) $VALUES.clone();
    }
}
