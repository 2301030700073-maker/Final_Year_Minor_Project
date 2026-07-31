package org.wikipedia.activitytab;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import kotlin.enums.EnumEntries;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ActivityTabModules {
    public static final Companion Companion = new Companion();
    public final boolean isDonationsEnabled;
    public final boolean isEditingInsightsEnabled;
    public final boolean isGamesEnabled;
    public final boolean isImpactEnabled;
    public final boolean isReadingInsightsEnabled;
    public final boolean isTimeSpentEnabled;
    public final boolean isTimelineEnabled;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ActivityTabModules$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ModuleType.values().length];
            try {
                iArr[ModuleType.TIME_SPENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ModuleType.READING_INSIGHTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ModuleType.EDITING_INSIGHTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ModuleType.IMPACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ModuleType.GAMES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ModuleType.DONATIONS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ModuleType.TIMELINE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ ActivityTabModules(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        if ((i & 1) == 0) {
            this.isTimeSpentEnabled = true;
        } else {
            this.isTimeSpentEnabled = z;
        }
        if ((i & 2) == 0) {
            this.isReadingInsightsEnabled = true;
        } else {
            this.isReadingInsightsEnabled = z2;
        }
        if ((i & 4) == 0) {
            this.isEditingInsightsEnabled = true;
        } else {
            this.isEditingInsightsEnabled = z3;
        }
        if ((i & 8) == 0) {
            this.isImpactEnabled = true;
        } else {
            this.isImpactEnabled = z4;
        }
        if ((i & 16) == 0) {
            this.isGamesEnabled = true;
        } else {
            this.isGamesEnabled = z5;
        }
        if ((i & 32) == 0) {
            this.isDonationsEnabled = false;
        } else {
            this.isDonationsEnabled = z6;
        }
        if ((i & 64) == 0) {
            this.isTimelineEnabled = true;
        } else {
            this.isTimelineEnabled = z7;
        }
    }

    public static ActivityTabModules copy$default(ActivityTabModules activityTabModules, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i) {
        if ((i & 1) != 0) {
            z = activityTabModules.isTimeSpentEnabled;
        }
        boolean z8 = z;
        if ((i & 2) != 0) {
            z2 = activityTabModules.isReadingInsightsEnabled;
        }
        boolean z9 = z2;
        if ((i & 4) != 0) {
            z3 = activityTabModules.isEditingInsightsEnabled;
        }
        boolean z10 = z3;
        if ((i & 8) != 0) {
            z4 = activityTabModules.isImpactEnabled;
        }
        boolean z11 = z4;
        if ((i & 16) != 0) {
            z5 = activityTabModules.isGamesEnabled;
        }
        boolean z12 = z5;
        if ((i & 32) != 0) {
            z6 = activityTabModules.isDonationsEnabled;
        }
        boolean z13 = z6;
        if ((i & 64) != 0) {
            z7 = activityTabModules.isTimelineEnabled;
        }
        return new ActivityTabModules(z8, z9, z10, z11, z12, z13, z7);
    }

    public static /* synthetic */ boolean isModuleVisible$default(ActivityTabModules activityTabModules, ModuleType moduleType, boolean z, boolean z2, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return activityTabModules.isModuleVisible(moduleType, z, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTabModules)) {
            return false;
        }
        ActivityTabModules activityTabModules = (ActivityTabModules) obj;
        return this.isTimeSpentEnabled == activityTabModules.isTimeSpentEnabled && this.isReadingInsightsEnabled == activityTabModules.isReadingInsightsEnabled && this.isEditingInsightsEnabled == activityTabModules.isEditingInsightsEnabled && this.isImpactEnabled == activityTabModules.isImpactEnabled && this.isGamesEnabled == activityTabModules.isGamesEnabled && this.isDonationsEnabled == activityTabModules.isDonationsEnabled && this.isTimelineEnabled == activityTabModules.isTimelineEnabled;
    }

    public final int hashCode() {
        return ((((((((((((this.isTimeSpentEnabled ? 1231 : 1237) * 31) + (this.isReadingInsightsEnabled ? 1231 : 1237)) * 31) + (this.isEditingInsightsEnabled ? 1231 : 1237)) * 31) + (this.isImpactEnabled ? 1231 : 1237)) * 31) + (this.isGamesEnabled ? 1231 : 1237)) * 31) + (this.isDonationsEnabled ? 1231 : 1237)) * 31) + (this.isTimelineEnabled ? 1231 : 1237);
    }

    public final boolean isModuleEnabled(ModuleType moduleType) {
        moduleType.getClass();
        switch (WhenMappings.$EnumSwitchMapping$0[moduleType.ordinal()]) {
            case 1:
                return this.isTimeSpentEnabled;
            case 2:
                return this.isReadingInsightsEnabled;
            case 3:
                return this.isEditingInsightsEnabled;
            case 4:
                return this.isImpactEnabled;
            case 5:
                return this.isGamesEnabled;
            case 6:
                return this.isDonationsEnabled;
            case 7:
                return this.isTimelineEnabled;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return false;
        }
    }

    public final boolean isModuleVisible(ModuleType moduleType, boolean z, boolean z2) {
        moduleType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[moduleType.ordinal()];
        return i != 5 ? i != 6 ? isModuleEnabled(moduleType) : isModuleEnabled(moduleType) && z : isModuleEnabled(moduleType) && z2;
    }

    public final boolean noModulesVisible(boolean z, boolean z2) {
        EnumEntries entries = ModuleType.getEntries();
        if (entries != null && entries.isEmpty()) {
            return true;
        }
        Iterator<E> it = entries.iterator();
        while (it.hasNext()) {
            if (isModuleVisible((ModuleType) it.next(), z, z2)) {
                return false;
            }
        }
        return true;
    }

    public final ActivityTabModules setModuleEnabled(ModuleType moduleType, boolean z) {
        moduleType.getClass();
        switch (WhenMappings.$EnumSwitchMapping$0[moduleType.ordinal()]) {
            case 1:
                return copy$default(this, z, false, false, false, false, false, false, 126);
            case 2:
                return copy$default(this, false, z, false, false, false, false, false, 125);
            case 3:
                return copy$default(this, false, false, z, false, false, false, false, 123);
            case 4:
                return copy$default(this, false, false, false, z, false, false, false, 119);
            case 5:
                return copy$default(this, false, false, false, false, z, false, false, 111);
            case 6:
                return copy$default(this, false, false, false, false, false, z, false, 95);
            case 7:
                return copy$default(this, false, false, false, false, false, false, z, 63);
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
        }
    }

    public final String toString() {
        return "ActivityTabModules(isTimeSpentEnabled=" + this.isTimeSpentEnabled + ", isReadingInsightsEnabled=" + this.isReadingInsightsEnabled + ", isEditingInsightsEnabled=" + this.isEditingInsightsEnabled + ", isImpactEnabled=" + this.isImpactEnabled + ", isGamesEnabled=" + this.isGamesEnabled + ", isDonationsEnabled=" + this.isDonationsEnabled + ", isTimelineEnabled=" + this.isTimelineEnabled + ")";
    }

    public ActivityTabModules(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.isTimeSpentEnabled = z;
        this.isReadingInsightsEnabled = z2;
        this.isEditingInsightsEnabled = z3;
        this.isImpactEnabled = z4;
        this.isGamesEnabled = z5;
        this.isDonationsEnabled = z6;
        this.isTimelineEnabled = z7;
    }
}
