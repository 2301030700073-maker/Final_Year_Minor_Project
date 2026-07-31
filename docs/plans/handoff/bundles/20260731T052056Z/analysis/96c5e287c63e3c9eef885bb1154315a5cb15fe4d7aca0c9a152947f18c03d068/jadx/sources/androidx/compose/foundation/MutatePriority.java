package androidx.compose.foundation;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutatePriority {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MutatePriority[] $VALUES;
    public static final MutatePriority Default;
    public static final MutatePriority PreventUserInput;
    public static final MutatePriority UserInput;

    static {
        MutatePriority mutatePriority = new MutatePriority("Default", 0);
        Default = mutatePriority;
        MutatePriority mutatePriority2 = new MutatePriority("UserInput", 1);
        UserInput = mutatePriority2;
        MutatePriority mutatePriority3 = new MutatePriority("PreventUserInput", 2);
        PreventUserInput = mutatePriority3;
        MutatePriority[] mutatePriorityArr = {mutatePriority, mutatePriority2, mutatePriority3};
        $VALUES = mutatePriorityArr;
        $ENTRIES = new EnumEntriesList(mutatePriorityArr);
    }

    public static MutatePriority valueOf(String str) {
        return (MutatePriority) Enum.valueOf(MutatePriority.class, str);
    }

    public static MutatePriority[] values() {
        return (MutatePriority[]) $VALUES.clone();
    }
}
