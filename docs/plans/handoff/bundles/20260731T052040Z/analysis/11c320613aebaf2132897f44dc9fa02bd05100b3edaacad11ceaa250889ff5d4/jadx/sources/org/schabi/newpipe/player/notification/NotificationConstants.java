package org.schabi.newpipe.player.notification;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.ui.R;
import com.google.android.exoplayer2.util.Log;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.TreeSet;
import org.schabi.newpipe.util.Localization;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class NotificationConstants {
    public static final int[] ACTION_ICONS;
    public static final int[] ALL_ACTIONS = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    public static final List SLOT_COMPACT_DEFAULTS;
    public static final int[] SLOT_COMPACT_PREF_KEYS;
    public static final int[] SLOT_DEFAULTS;
    public static final int[] SLOT_PREF_KEYS;

    static {
        int i = R.drawable.exo_icon_previous;
        int i2 = R.drawable.exo_icon_next;
        ACTION_ICONS = new int[]{0, i, i2, R.drawable.exo_icon_rewind, R.drawable.exo_icon_fastforward, i, i2, org.schabi.newpipe.R.drawable.ic_pause, org.schabi.newpipe.R.drawable.ic_hourglass_top, R.drawable.exo_icon_repeat_all, R.drawable.exo_icon_shuffle_on, org.schabi.newpipe.R.drawable.ic_close};
        SLOT_DEFAULTS = new int[]{5, 8, 6, 9, 11};
        SLOT_PREF_KEYS = new int[]{org.schabi.newpipe.R.string.notification_slot_0_key, org.schabi.newpipe.R.string.notification_slot_1_key, org.schabi.newpipe.R.string.notification_slot_2_key, org.schabi.newpipe.R.string.notification_slot_3_key, org.schabi.newpipe.R.string.notification_slot_4_key};
        int i3 = 0;
        Object[] objArr = {0, 1, 2};
        ArrayList arrayList = new ArrayList(3);
        while (i3 < 3) {
            Object obj = objArr[i3];
            i3 = RecordTag.m(obj, arrayList, obj, i3, 1);
        }
        SLOT_COMPACT_DEFAULTS = DesugarCollections.unmodifiableList(arrayList);
        SLOT_COMPACT_PREF_KEYS = new int[]{org.schabi.newpipe.R.string.notification_slot_compact_0_key, org.schabi.newpipe.R.string.notification_slot_compact_1_key, org.schabi.newpipe.R.string.notification_slot_compact_2_key};
    }

    public static String getActionName(Context context, int i) {
        switch (i) {
            case 1:
                return context.getString(R.string.exo_controls_previous_description);
            case 2:
                return context.getString(R.string.exo_controls_next_description);
            case 3:
                return context.getString(R.string.exo_controls_rewind_description);
            case 4:
                return context.getString(R.string.exo_controls_fastforward_description);
            case 5:
                return Localization.concatenateStrings(context.getString(R.string.exo_controls_rewind_description), context.getString(R.string.exo_controls_previous_description));
            case 6:
                return Localization.concatenateStrings(context.getString(R.string.exo_controls_fastforward_description), context.getString(R.string.exo_controls_next_description));
            case 7:
                return Localization.concatenateStrings(context.getString(R.string.exo_controls_play_description), context.getString(R.string.exo_controls_pause_description));
            case 8:
                return Localization.concatenateStrings(context.getString(R.string.exo_controls_play_description), context.getString(R.string.exo_controls_pause_description), context.getString(org.schabi.newpipe.R.string.notification_action_buffering));
            case 9:
                return context.getString(org.schabi.newpipe.R.string.notification_action_repeat);
            case 10:
                return context.getString(org.schabi.newpipe.R.string.notification_action_shuffle);
            case 11:
                return context.getString(org.schabi.newpipe.R.string.close);
            default:
                return context.getString(org.schabi.newpipe.R.string.notification_action_nothing);
        }
    }

    public static Collection getCompactSlotsFromPreferences(Context context, SharedPreferences sharedPreferences) {
        TreeSet treeSet = new TreeSet();
        for (int i = 0; i < 3; i++) {
            int i2 = sharedPreferences.getInt(context.getString(SLOT_COMPACT_PREF_KEYS[i]), Log.LOG_LEVEL_OFF);
            if (i2 == Integer.MAX_VALUE) {
                return SLOT_COMPACT_DEFAULTS;
            }
            if (i2 >= 0) {
                treeSet.add(Integer.valueOf(i2));
            }
        }
        return treeSet;
    }
}
