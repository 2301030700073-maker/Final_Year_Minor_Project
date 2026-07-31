package net.thunderbird.feature.mail.message.list.ui.event;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageListEvent {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AllConfigsReady implements MessageListEvent {
        public static final AllConfigsReady INSTANCE = new AllConfigsReady();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AllConfigsReady);
        }

        public final int hashCode() {
            return 2108912444;
        }

        public final String toString() {
            return "AllConfigsReady";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChangeSortCriteria implements MessageListEvent {
        public final AccountId accountId;
        public final SortCriteria sortCriteria;

        public ChangeSortCriteria(AccountId accountId, SortCriteria sortCriteria) {
            this.accountId = accountId;
            this.sortCriteria = sortCriteria;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChangeSortCriteria)) {
                return false;
            }
            ChangeSortCriteria changeSortCriteria = (ChangeSortCriteria) obj;
            return Intrinsics.areEqual(this.accountId, changeSortCriteria.accountId) && this.sortCriteria.equals(changeSortCriteria.sortCriteria);
        }

        public final int hashCode() {
            AccountId accountId = this.accountId;
            return this.sortCriteria.hashCode() + ((accountId == null ? 0 : accountId.value.hashCode()) * 31);
        }

        public final String toString() {
            return "ChangeSortCriteria(accountId=" + this.accountId + ", sortCriteria=" + this.sortCriteria + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class EnterSelectionMode implements MessageListEvent {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ExitSelectionMode implements MessageListEvent {
        public static final ExitSelectionMode INSTANCE = new ExitSelectionMode();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ExitSelectionMode);
        }

        public final int hashCode() {
            return 467767002;
        }

        public final String toString() {
            return "ExitSelectionMode";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadConfigurations implements MessageListEvent {
        public static final LoadConfigurations INSTANCE = new LoadConfigurations();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadConfigurations);
        }

        public final int hashCode() {
            return -1291021350;
        }

        public final String toString() {
            return "LoadConfigurations";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadNextPage implements MessageListEvent {
        public static final LoadNextPage INSTANCE = new LoadNextPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadNextPage);
        }

        public final int hashCode() {
            return -2114399361;
        }

        public final String toString() {
            return "LoadNextPage";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MessagesLoaded implements MessageListEvent {
        public final List messages;

        public MessagesLoaded(List list) {
            list.getClass();
            this.messages = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MessagesLoaded) && Intrinsics.areEqual(this.messages, ((MessagesLoaded) obj).messages);
        }

        public final int hashCode() {
            return this.messages.hashCode();
        }

        public final String toString() {
            return "MessagesLoaded(messages=" + this.messages + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnFooterClick implements MessageListEvent {
        public static final OnFooterClick INSTANCE = new OnFooterClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnFooterClick);
        }

        public final int hashCode() {
            return -1915503657;
        }

        public final String toString() {
            return "OnFooterClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Refresh implements MessageListEvent {
        public static final Refresh INSTANCE = new Refresh();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Refresh);
        }

        public final int hashCode() {
            return -319539164;
        }

        public final String toString() {
            return "Refresh";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SortCriteriaLoaded implements MessageListEvent {
        public final Map sortCriteriaPerAccount;

        public SortCriteriaLoaded(Map map) {
            map.getClass();
            this.sortCriteriaPerAccount = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SortCriteriaLoaded) && Intrinsics.areEqual(this.sortCriteriaPerAccount, ((SortCriteriaLoaded) obj).sortCriteriaPerAccount);
        }

        public final int hashCode() {
            return this.sortCriteriaPerAccount.hashCode();
        }

        public final String toString() {
            return "SortCriteriaLoaded(sortCriteriaPerAccount=" + this.sortCriteriaPerAccount + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SwipeActionsLoaded implements MessageListEvent {
        public final Map swipeActions;

        public SwipeActionsLoaded(Map map) {
            map.getClass();
            this.swipeActions = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SwipeActionsLoaded) && Intrinsics.areEqual(this.swipeActions, ((SwipeActionsLoaded) obj).swipeActions);
        }

        public final int hashCode() {
            return this.swipeActions.hashCode();
        }

        public final String toString() {
            return "SwipeActionsLoaded(swipeActions=" + this.swipeActions + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateFooter implements MessageListEvent {
        public final String footer;

        public UpdateFooter(String str) {
            this.footer = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdateFooter) && Intrinsics.areEqual(this.footer, ((UpdateFooter) obj).footer);
        }

        public final int hashCode() {
            String str = this.footer;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("UpdateFooter(footer=", this.footer, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateLoadingProgress implements MessageListEvent {
        public final List messages;
        public final float progress;

        public UpdateLoadingProgress(float f, List list) {
            list.getClass();
            this.progress = f;
            this.messages = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateLoadingProgress)) {
                return false;
            }
            UpdateLoadingProgress updateLoadingProgress = (UpdateLoadingProgress) obj;
            return Float.compare(this.progress, updateLoadingProgress.progress) == 0 && Intrinsics.areEqual(this.messages, updateLoadingProgress.messages);
        }

        public final int hashCode() {
            return this.messages.hashCode() + (Float.floatToIntBits(this.progress) * 31);
        }

        public final String toString() {
            return "UpdateLoadingProgress(progress=" + this.progress + ", messages=" + this.messages + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdatePreferences implements MessageListEvent {
        public final MessageListPreferences preferences;

        public UpdatePreferences(MessageListPreferences messageListPreferences) {
            messageListPreferences.getClass();
            this.preferences = messageListPreferences;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpdatePreferences) && Intrinsics.areEqual(this.preferences, ((UpdatePreferences) obj).preferences);
        }

        public final int hashCode() {
            return this.preferences.hashCode();
        }

        public final String toString() {
            return "UpdatePreferences(preferences=" + this.preferences + ")";
        }
    }
}
