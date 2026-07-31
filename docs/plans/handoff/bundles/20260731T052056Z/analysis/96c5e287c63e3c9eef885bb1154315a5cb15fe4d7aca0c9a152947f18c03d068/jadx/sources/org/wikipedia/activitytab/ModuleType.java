package org.wikipedia.activitytab;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModuleType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ModuleType[] $VALUES;
    public static final ModuleType DONATIONS;
    public static final ModuleType EDITING_INSIGHTS;
    public static final ModuleType GAMES;
    public static final ModuleType IMPACT;
    public static final ModuleType READING_INSIGHTS;
    public static final ModuleType TIMELINE;
    public static final ModuleType TIME_SPENT;
    private final int displayName;

    static {
        ModuleType moduleType = new ModuleType("TIME_SPENT", 0, R.string.activity_tab_customize_screen_time_spent_switch_title);
        TIME_SPENT = moduleType;
        ModuleType moduleType2 = new ModuleType("READING_INSIGHTS", 1, R.string.activity_tab_customize_screen_reading_insights_switch_title);
        READING_INSIGHTS = moduleType2;
        ModuleType moduleType3 = new ModuleType("EDITING_INSIGHTS", 2, R.string.activity_tab_customize_screen_editing_insights_switch_title);
        EDITING_INSIGHTS = moduleType3;
        ModuleType moduleType4 = new ModuleType("IMPACT", 3, R.string.activity_tab_customize_screen_impact_switch_title);
        IMPACT = moduleType4;
        ModuleType moduleType5 = new ModuleType("GAMES", 4, R.string.activity_tab_customize_screen_games_switch_title);
        GAMES = moduleType5;
        ModuleType moduleType6 = new ModuleType("DONATIONS", 5, R.string.activity_tab_customize_screen_donations_switch_title);
        DONATIONS = moduleType6;
        ModuleType moduleType7 = new ModuleType("TIMELINE", 6, R.string.activity_tab_customize_screen_timeline_switch_title);
        TIMELINE = moduleType7;
        ModuleType[] moduleTypeArr = {moduleType, moduleType2, moduleType3, moduleType4, moduleType5, moduleType6, moduleType7};
        $VALUES = moduleTypeArr;
        $ENTRIES = new EnumEntriesList(moduleTypeArr);
    }

    public ModuleType(String str, int i, int i2) {
        this.displayName = i2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static ModuleType valueOf(String str) {
        return (ModuleType) Enum.valueOf(ModuleType.class, str);
    }

    public static ModuleType[] values() {
        return (ModuleType[]) $VALUES.clone();
    }

    public final int getDisplayName() {
        return this.displayName;
    }
}
