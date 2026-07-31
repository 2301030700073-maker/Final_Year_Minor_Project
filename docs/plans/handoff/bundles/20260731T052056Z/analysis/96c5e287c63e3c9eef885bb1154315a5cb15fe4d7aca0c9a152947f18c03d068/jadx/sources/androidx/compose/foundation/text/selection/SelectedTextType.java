package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectedTextType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectedTextType[] $VALUES;
    public static final SelectedTextType EditableText;
    public static final SelectedTextType StaticText;

    static {
        SelectedTextType selectedTextType = new SelectedTextType("EditableText", 0);
        EditableText = selectedTextType;
        SelectedTextType selectedTextType2 = new SelectedTextType("StaticText", 1);
        StaticText = selectedTextType2;
        SelectedTextType[] selectedTextTypeArr = {selectedTextType, selectedTextType2};
        $VALUES = selectedTextTypeArr;
        $ENTRIES = new EnumEntriesList(selectedTextTypeArr);
    }

    public static SelectedTextType valueOf(String str) {
        return (SelectedTextType) Enum.valueOf(SelectedTextType.class, str);
    }

    public static SelectedTextType[] values() {
        return (SelectedTextType[]) $VALUES.clone();
    }
}
