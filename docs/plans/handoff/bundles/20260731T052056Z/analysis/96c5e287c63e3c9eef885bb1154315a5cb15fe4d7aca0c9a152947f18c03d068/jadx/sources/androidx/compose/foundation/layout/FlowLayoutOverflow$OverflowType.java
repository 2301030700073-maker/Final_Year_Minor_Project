package androidx.compose.foundation.layout;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowLayoutOverflow$OverflowType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FlowLayoutOverflow$OverflowType[] $VALUES;
    public static final FlowLayoutOverflow$OverflowType Clip;
    public static final FlowLayoutOverflow$OverflowType ExpandIndicator;
    public static final FlowLayoutOverflow$OverflowType ExpandOrCollapseIndicator;
    public static final FlowLayoutOverflow$OverflowType Visible;

    static {
        FlowLayoutOverflow$OverflowType flowLayoutOverflow$OverflowType = new FlowLayoutOverflow$OverflowType("Visible", 0);
        Visible = flowLayoutOverflow$OverflowType;
        FlowLayoutOverflow$OverflowType flowLayoutOverflow$OverflowType2 = new FlowLayoutOverflow$OverflowType("Clip", 1);
        Clip = flowLayoutOverflow$OverflowType2;
        FlowLayoutOverflow$OverflowType flowLayoutOverflow$OverflowType3 = new FlowLayoutOverflow$OverflowType("ExpandIndicator", 2);
        ExpandIndicator = flowLayoutOverflow$OverflowType3;
        FlowLayoutOverflow$OverflowType flowLayoutOverflow$OverflowType4 = new FlowLayoutOverflow$OverflowType("ExpandOrCollapseIndicator", 3);
        ExpandOrCollapseIndicator = flowLayoutOverflow$OverflowType4;
        FlowLayoutOverflow$OverflowType[] flowLayoutOverflow$OverflowTypeArr = {flowLayoutOverflow$OverflowType, flowLayoutOverflow$OverflowType2, flowLayoutOverflow$OverflowType3, flowLayoutOverflow$OverflowType4};
        $VALUES = flowLayoutOverflow$OverflowTypeArr;
        $ENTRIES = new EnumEntriesList(flowLayoutOverflow$OverflowTypeArr);
    }

    public static FlowLayoutOverflow$OverflowType valueOf(String str) {
        return (FlowLayoutOverflow$OverflowType) Enum.valueOf(FlowLayoutOverflow$OverflowType.class, str);
    }

    public static FlowLayoutOverflow$OverflowType[] values() {
        return (FlowLayoutOverflow$OverflowType[]) $VALUES.clone();
    }
}
