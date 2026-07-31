package org.wikipedia.suggestededits;

import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.model.EnumCode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsFilterTypes implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SuggestedEditsRecentEditsFilterTypes[] $VALUES;
    public static final SuggestedEditsRecentEditsFilterTypes ALL_EDITORS;
    public static final SuggestedEditsRecentEditsFilterTypes ALL_EDITS;
    public static final SuggestedEditsRecentEditsFilterTypes BOT;
    private static final List<SuggestedEditsRecentEditsFilterTypes> BOT_EDITS_GROUP;
    public static final Companion Companion;
    public static final SuggestedEditsRecentEditsFilterTypes DAMAGING_GOOD;
    private static final List<SuggestedEditsRecentEditsFilterTypes> DAMAGING_GROUP;
    public static final SuggestedEditsRecentEditsFilterTypes DAMAGING_LIKELY_PROBLEMS;
    public static final SuggestedEditsRecentEditsFilterTypes DAMAGING_MAY_PROBLEMS;
    public static final SuggestedEditsRecentEditsFilterTypes DAMAGING_VERY_LIKELY_PROBLEMS;
    private static final Set<SuggestedEditsRecentEditsFilterTypes> DEFAULT_FILTER_OTHERS;
    private static final Set<SuggestedEditsRecentEditsFilterTypes> DEFAULT_FILTER_TYPE_SET;
    private static final Set<SuggestedEditsRecentEditsFilterTypes> DEFAULT_FILTER_USER_STATUS;
    public static final SuggestedEditsRecentEditsFilterTypes EXPERIENCED_USERS;
    public static final SuggestedEditsRecentEditsFilterTypes GOODFAITH_GOOD;
    private static final List<SuggestedEditsRecentEditsFilterTypes> GOODFAITH_GROUP;
    public static final SuggestedEditsRecentEditsFilterTypes GOODFAITH_LIKELY_PROBLEMS;
    public static final SuggestedEditsRecentEditsFilterTypes GOODFAITH_MAY_PROBLEMS;
    public static final SuggestedEditsRecentEditsFilterTypes GOODFAITH_VERY_LIKELY_PROBLEMS;
    public static final SuggestedEditsRecentEditsFilterTypes HUMAN;
    public static final SuggestedEditsRecentEditsFilterTypes LATEST_REVISION;
    private static final List<SuggestedEditsRecentEditsFilterTypes> LATEST_REVISIONS_GROUP;
    public static final SuggestedEditsRecentEditsFilterTypes LEARNERS;
    public static final SuggestedEditsRecentEditsFilterTypes MINOR_EDITS;
    private static final List<SuggestedEditsRecentEditsFilterTypes> MINOR_EDITS_GROUP;
    public static final SuggestedEditsRecentEditsFilterTypes NEWCOMERS;
    public static final SuggestedEditsRecentEditsFilterTypes NON_MINOR_EDITS;
    public static final SuggestedEditsRecentEditsFilterTypes NOT_LATEST_REVISION;
    public static final SuggestedEditsRecentEditsFilterTypes REGISTERED;
    public static final SuggestedEditsRecentEditsFilterTypes UNREGISTERED;
    private static final List<SuggestedEditsRecentEditsFilterTypes> USER_EXPERIENCE_GROUP;
    private static final List<SuggestedEditsRecentEditsFilterTypes> USER_REGISTRATION_GROUP;
    private final Integer description;
    private final String id;
    private final int title;
    private final String value;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static SuggestedEditsRecentEditsFilterTypes find(String str) {
            Object obj;
            str.getClass();
            Iterator<E> it = SuggestedEditsRecentEditsFilterTypes.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes = (SuggestedEditsRecentEditsFilterTypes) obj;
                if (str.equals(suggestedEditsRecentEditsFilterTypes.getId()) || StringsKt__StringsJVMKt.startsWith(str, suggestedEditsRecentEditsFilterTypes.getId(), false)) {
                    break;
                }
            }
            SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes2 = (SuggestedEditsRecentEditsFilterTypes) obj;
            return suggestedEditsRecentEditsFilterTypes2 == null ? (SuggestedEditsRecentEditsFilterTypes) ((EnumEntriesList) SuggestedEditsRecentEditsFilterTypes.getEntries()).get(0) : suggestedEditsRecentEditsFilterTypes2;
        }
    }

    static {
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes = new SuggestedEditsRecentEditsFilterTypes("ALL_EDITS", 0, "allEdits", "", R.string.patroller_tasks_filters_all_text, null);
        ALL_EDITS = suggestedEditsRecentEditsFilterTypes;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes2 = new SuggestedEditsRecentEditsFilterTypes("MINOR_EDITS", 1, "minorEdits", "minor", R.string.patroller_tasks_filters_significance_minor, null);
        MINOR_EDITS = suggestedEditsRecentEditsFilterTypes2;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes3 = new SuggestedEditsRecentEditsFilterTypes("NON_MINOR_EDITS", 2, "nonMinorEdits", "!minor", R.string.patroller_tasks_filters_significance_edits, null);
        NON_MINOR_EDITS = suggestedEditsRecentEditsFilterTypes3;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes4 = new SuggestedEditsRecentEditsFilterTypes("ALL_EDITORS", 3, "allEditors", "", R.string.patroller_tasks_filters_all_text, null);
        ALL_EDITORS = suggestedEditsRecentEditsFilterTypes4;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes5 = new SuggestedEditsRecentEditsFilterTypes("BOT", 4, "bot", "bot", R.string.patroller_tasks_filters_automated_contributions_bot, null);
        BOT = suggestedEditsRecentEditsFilterTypes5;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes6 = new SuggestedEditsRecentEditsFilterTypes("HUMAN", 5, "human", "!bot", R.string.patroller_tasks_filters_automated_contributions_human, null);
        HUMAN = suggestedEditsRecentEditsFilterTypes6;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes7 = new SuggestedEditsRecentEditsFilterTypes("LATEST_REVISION", 6, "latestRevision", "", R.string.patroller_tasks_filters_latest_revisions_latest_revision, null);
        LATEST_REVISION = suggestedEditsRecentEditsFilterTypes7;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes8 = new SuggestedEditsRecentEditsFilterTypes("NOT_LATEST_REVISION", 7, "notLatestRevision", "1", R.string.patroller_tasks_filters_latest_revisions_not_latest_revision, null);
        NOT_LATEST_REVISION = suggestedEditsRecentEditsFilterTypes8;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes9 = new SuggestedEditsRecentEditsFilterTypes("UNREGISTERED", 8, "unregistered", "anon", R.string.patroller_tasks_filters_user_status_unregistered, Integer.valueOf(R.string.patroller_tasks_filters_user_status_unregistered_desc));
        UNREGISTERED = suggestedEditsRecentEditsFilterTypes9;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes10 = new SuggestedEditsRecentEditsFilterTypes("REGISTERED", 9, "registered", "!anon", R.string.patroller_tasks_filters_user_status_registered, Integer.valueOf(R.string.patroller_tasks_filters_user_status_registered_desc));
        REGISTERED = suggestedEditsRecentEditsFilterTypes10;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes11 = new SuggestedEditsRecentEditsFilterTypes("NEWCOMERS", 10, "newcomers", "0,10|0,4", R.string.patroller_tasks_filters_user_status_newcomers, Integer.valueOf(R.string.patroller_tasks_filters_user_status_newcomers_desc));
        NEWCOMERS = suggestedEditsRecentEditsFilterTypes11;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes12 = new SuggestedEditsRecentEditsFilterTypes("LEARNERS", 11, "learners", "10,500|4,30", R.string.patroller_tasks_filters_user_status_learners, Integer.valueOf(R.string.patroller_tasks_filters_user_status_learners_desc));
        LEARNERS = suggestedEditsRecentEditsFilterTypes12;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes13 = new SuggestedEditsRecentEditsFilterTypes("EXPERIENCED_USERS", 12, "experiencedUsers", "500,-1|30,-1", R.string.patroller_tasks_filters_user_status_experienced, Integer.valueOf(R.string.patroller_tasks_filters_user_status_experienced_desc));
        EXPERIENCED_USERS = suggestedEditsRecentEditsFilterTypes13;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes14 = new SuggestedEditsRecentEditsFilterTypes("DAMAGING_GOOD", 13, "damagingGood", "0|0.149", R.string.patroller_tasks_filters_contribution_quality_good, Integer.valueOf(R.string.patroller_tasks_filters_contribution_quality_good_desc));
        DAMAGING_GOOD = suggestedEditsRecentEditsFilterTypes14;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes15 = new SuggestedEditsRecentEditsFilterTypes("DAMAGING_MAY_PROBLEMS", 14, "damagingMayProblems", "0.149|0.629", R.string.patroller_tasks_filters_contribution_quality_may_problems, Integer.valueOf(R.string.patroller_tasks_filters_contribution_quality_may_problems_desc));
        DAMAGING_MAY_PROBLEMS = suggestedEditsRecentEditsFilterTypes15;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes16 = new SuggestedEditsRecentEditsFilterTypes("DAMAGING_LIKELY_PROBLEMS", 15, "damagingLikelyProblems", "0.629|0.944", R.string.patroller_tasks_filters_contribution_quality_likely_problems, Integer.valueOf(R.string.patroller_tasks_filters_contribution_quality_likely_problems_desc));
        DAMAGING_LIKELY_PROBLEMS = suggestedEditsRecentEditsFilterTypes16;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes17 = new SuggestedEditsRecentEditsFilterTypes("DAMAGING_VERY_LIKELY_PROBLEMS", 16, "damagingBad", "0.944|1", R.string.patroller_tasks_filters_contribution_quality_bad, Integer.valueOf(R.string.patroller_tasks_filters_contribution_quality_bad_desc));
        DAMAGING_VERY_LIKELY_PROBLEMS = suggestedEditsRecentEditsFilterTypes17;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes18 = new SuggestedEditsRecentEditsFilterTypes("GOODFAITH_GOOD", 17, "goodfaithGood", "0.75|1", R.string.patroller_tasks_filters_user_intent_good, Integer.valueOf(R.string.patroller_tasks_filters_user_intent_good_desc));
        GOODFAITH_GOOD = suggestedEditsRecentEditsFilterTypes18;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes19 = new SuggestedEditsRecentEditsFilterTypes("GOODFAITH_MAY_PROBLEMS", 18, "goodfaithMayProblems", "0.647|0.75", R.string.patroller_tasks_filters_user_intent_may_problems, Integer.valueOf(R.string.patroller_tasks_filters_user_intent_may_problems_desc));
        GOODFAITH_MAY_PROBLEMS = suggestedEditsRecentEditsFilterTypes19;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes20 = new SuggestedEditsRecentEditsFilterTypes("GOODFAITH_LIKELY_PROBLEMS", 19, "goodfaithLikelyProblems", "0.25|0.647", R.string.patroller_tasks_filters_user_intent_likely_problems, Integer.valueOf(R.string.patroller_tasks_filters_user_intent_likely_problems_desc));
        GOODFAITH_LIKELY_PROBLEMS = suggestedEditsRecentEditsFilterTypes20;
        SuggestedEditsRecentEditsFilterTypes suggestedEditsRecentEditsFilterTypes21 = new SuggestedEditsRecentEditsFilterTypes("GOODFAITH_VERY_LIKELY_PROBLEMS", 20, "goodfaithBad", "0|0.25", R.string.patroller_tasks_filters_user_intent_bad, Integer.valueOf(R.string.patroller_tasks_filters_user_intent_bad_desc));
        GOODFAITH_VERY_LIKELY_PROBLEMS = suggestedEditsRecentEditsFilterTypes21;
        SuggestedEditsRecentEditsFilterTypes[] suggestedEditsRecentEditsFilterTypesArr = {suggestedEditsRecentEditsFilterTypes, suggestedEditsRecentEditsFilterTypes2, suggestedEditsRecentEditsFilterTypes3, suggestedEditsRecentEditsFilterTypes4, suggestedEditsRecentEditsFilterTypes5, suggestedEditsRecentEditsFilterTypes6, suggestedEditsRecentEditsFilterTypes7, suggestedEditsRecentEditsFilterTypes8, suggestedEditsRecentEditsFilterTypes9, suggestedEditsRecentEditsFilterTypes10, suggestedEditsRecentEditsFilterTypes11, suggestedEditsRecentEditsFilterTypes12, suggestedEditsRecentEditsFilterTypes13, suggestedEditsRecentEditsFilterTypes14, suggestedEditsRecentEditsFilterTypes15, suggestedEditsRecentEditsFilterTypes16, suggestedEditsRecentEditsFilterTypes17, suggestedEditsRecentEditsFilterTypes18, suggestedEditsRecentEditsFilterTypes19, suggestedEditsRecentEditsFilterTypes20, suggestedEditsRecentEditsFilterTypes21};
        $VALUES = suggestedEditsRecentEditsFilterTypesArr;
        $ENTRIES = new EnumEntriesList(suggestedEditsRecentEditsFilterTypesArr);
        Companion = new Companion();
        MINOR_EDITS_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes, suggestedEditsRecentEditsFilterTypes2, suggestedEditsRecentEditsFilterTypes3});
        BOT_EDITS_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes4, suggestedEditsRecentEditsFilterTypes5, suggestedEditsRecentEditsFilterTypes6});
        LATEST_REVISIONS_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes7, suggestedEditsRecentEditsFilterTypes8});
        USER_REGISTRATION_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes9, suggestedEditsRecentEditsFilterTypes10});
        USER_EXPERIENCE_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes11, suggestedEditsRecentEditsFilterTypes12, suggestedEditsRecentEditsFilterTypes13});
        DAMAGING_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes14, suggestedEditsRecentEditsFilterTypes15, suggestedEditsRecentEditsFilterTypes16, suggestedEditsRecentEditsFilterTypes17});
        GOODFAITH_GROUP = Room.listOf((Object[]) new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes18, suggestedEditsRecentEditsFilterTypes19, suggestedEditsRecentEditsFilterTypes20, suggestedEditsRecentEditsFilterTypes21});
        Set<SuggestedEditsRecentEditsFilterTypes> set = ArraysKt___ArraysKt.toSet(new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes9, suggestedEditsRecentEditsFilterTypes11});
        DEFAULT_FILTER_USER_STATUS = set;
        Set<SuggestedEditsRecentEditsFilterTypes> set2 = ArraysKt___ArraysKt.toSet(new SuggestedEditsRecentEditsFilterTypes[]{suggestedEditsRecentEditsFilterTypes, suggestedEditsRecentEditsFilterTypes7, suggestedEditsRecentEditsFilterTypes4});
        DEFAULT_FILTER_OTHERS = set2;
        DEFAULT_FILTER_TYPE_SET = UuidKt.plus((Set) set2, (Iterable) set);
    }

    public SuggestedEditsRecentEditsFilterTypes(String str, int i, String str2, String str3, int i2, Integer num) {
        this.id = str2;
        this.value = str3;
        this.title = i2;
        this.description = num;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static SuggestedEditsRecentEditsFilterTypes valueOf(String str) {
        return (SuggestedEditsRecentEditsFilterTypes) Enum.valueOf(SuggestedEditsRecentEditsFilterTypes.class, str);
    }

    public static SuggestedEditsRecentEditsFilterTypes[] values() {
        return (SuggestedEditsRecentEditsFilterTypes[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return ordinal();
    }

    public final Integer getDescription() {
        return this.description;
    }

    public final String getId() {
        return this.id;
    }

    public final int getTitle() {
        return this.title;
    }

    public final String getValue() {
        return this.value;
    }
}
