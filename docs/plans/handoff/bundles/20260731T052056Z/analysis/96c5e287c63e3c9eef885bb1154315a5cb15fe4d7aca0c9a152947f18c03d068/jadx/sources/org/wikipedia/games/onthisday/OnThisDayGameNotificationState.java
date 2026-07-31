package org.wikipedia.games.onthisday;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameNotificationState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OnThisDayGameNotificationState[] $VALUES;
    public static final OnThisDayGameNotificationState DISABLED;
    public static final OnThisDayGameNotificationState ENABLED;
    public static final OnThisDayGameNotificationState NO_INTERACTED;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OnThisDayGameNotificationState.values().length];
            try {
                iArr[OnThisDayGameNotificationState.NO_INTERACTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OnThisDayGameNotificationState.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OnThisDayGameNotificationState.DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        OnThisDayGameNotificationState onThisDayGameNotificationState = new OnThisDayGameNotificationState("NO_INTERACTED", 0);
        NO_INTERACTED = onThisDayGameNotificationState;
        OnThisDayGameNotificationState onThisDayGameNotificationState2 = new OnThisDayGameNotificationState("ENABLED", 1);
        ENABLED = onThisDayGameNotificationState2;
        OnThisDayGameNotificationState onThisDayGameNotificationState3 = new OnThisDayGameNotificationState("DISABLED", 2);
        DISABLED = onThisDayGameNotificationState3;
        OnThisDayGameNotificationState[] onThisDayGameNotificationStateArr = {onThisDayGameNotificationState, onThisDayGameNotificationState2, onThisDayGameNotificationState3};
        $VALUES = onThisDayGameNotificationStateArr;
        $ENTRIES = new EnumEntriesList(onThisDayGameNotificationStateArr);
    }

    public static OnThisDayGameNotificationState valueOf(String str) {
        return (OnThisDayGameNotificationState) Enum.valueOf(OnThisDayGameNotificationState.class, str);
    }

    public static OnThisDayGameNotificationState[] values() {
        return (OnThisDayGameNotificationState[]) $VALUES.clone();
    }
}
