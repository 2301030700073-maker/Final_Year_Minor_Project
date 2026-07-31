package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.designsystem.resources.String0_commonMainKt;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SwipeDirectionAccessibilityAction {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EndToStartAccessibilityAction implements SwipeDirectionAccessibilityAction {
        public final MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0 actionLabel;
        public final StringResource descriptionStringRes = (StringResource) String0_commonMainKt.designsystem_molecule_swipeable_row_end_to_start_accessibility_description$delegate.getValue();

        public EndToStartAccessibilityAction(MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0 messageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0) {
            this.actionLabel = messageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EndToStartAccessibilityAction) && this.actionLabel == ((EndToStartAccessibilityAction) obj).actionLabel;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction
        public final Function2 getActionLabel() {
            return this.actionLabel;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction
        public final StringResource getDescriptionStringRes() {
            return this.descriptionStringRes;
        }

        public final int hashCode() {
            return hashCode();
        }

        public final String toString() {
            return "EndToStartAccessibilityAction(actionLabel=" + this.actionLabel + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StartToEndAccessibilityAction implements SwipeDirectionAccessibilityAction {
        public final MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0 actionLabel;
        public final StringResource descriptionStringRes = (StringResource) String0_commonMainKt.designsystem_molecule_swipeable_row_start_to_end_accessibility_description$delegate.getValue();

        public StartToEndAccessibilityAction(MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0 messageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0) {
            this.actionLabel = messageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StartToEndAccessibilityAction) && this.actionLabel == ((StartToEndAccessibilityAction) obj).actionLabel;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction
        public final Function2 getActionLabel() {
            return this.actionLabel;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirectionAccessibilityAction
        public final StringResource getDescriptionStringRes() {
            return this.descriptionStringRes;
        }

        public final int hashCode() {
            return hashCode();
        }

        public final String toString() {
            return "StartToEndAccessibilityAction(actionLabel=" + this.actionLabel + ")";
        }
    }

    Function2 getActionLabel();

    StringResource getDescriptionStringRes();
}
