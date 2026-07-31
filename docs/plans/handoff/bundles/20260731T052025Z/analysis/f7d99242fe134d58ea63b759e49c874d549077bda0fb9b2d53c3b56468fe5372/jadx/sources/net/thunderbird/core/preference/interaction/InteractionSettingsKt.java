package net.thunderbird.core.preference.interaction;

import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InteractionSettingsKt {
    public static final PostMarkAsUnreadNavigation INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION = PostMarkAsUnreadNavigation.ReturnToMessageList;
    public static final SwipeActions INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION = new SwipeActions(SwipeAction.ToggleRead, SwipeAction.ToggleSelection);
}
