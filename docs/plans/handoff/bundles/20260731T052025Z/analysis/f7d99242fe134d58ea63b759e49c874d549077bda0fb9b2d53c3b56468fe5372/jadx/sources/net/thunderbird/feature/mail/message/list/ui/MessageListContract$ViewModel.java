package net.thunderbird.feature.mail.message.list.ui;

import com.fsck.k9.ui.messagelist.MessageListFragment;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.compose.common.mvi.BaseStateMachineViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageListContract$ViewModel extends BaseStateMachineViewModel {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Args {
        public final Set accountIds;
        public final Long folderId;
        public final MessageListFragment legacyMessageListBridge;

        public Args(Set set, Long l, MessageListFragment messageListFragment) {
            this.accountIds = set;
            this.folderId = l;
            this.legacyMessageListBridge = messageListFragment;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Args)) {
                return false;
            }
            Args args = (Args) obj;
            return this.accountIds.equals(args.accountIds) && Intrinsics.areEqual(this.folderId, args.folderId) && this.legacyMessageListBridge.equals(args.legacyMessageListBridge);
        }

        public final int hashCode() {
            int hashCode = this.accountIds.hashCode() * 31;
            Long l = this.folderId;
            return this.legacyMessageListBridge.hashCode() + ((hashCode + (l == null ? 0 : l.hashCode())) * 31);
        }

        public final String toString() {
            return "Args(accountIds=" + this.accountIds + ", folderId=" + this.folderId + ", legacyMessageListBridge=" + this.legacyMessageListBridge + ")";
        }
    }
}
