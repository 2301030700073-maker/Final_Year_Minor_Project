package com.fsck.k9.ui.settings.notificationactions;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.work.Operation$State;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.R;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationActionsSettingsFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationActionsSettingsFragment f$0;

    public /* synthetic */ NotificationActionsSettingsFragment$$ExternalSyntheticLambda0(NotificationActionsSettingsFragment notificationActionsSettingsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = notificationActionsSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    NotificationActionsSettingsFragment notificationActionsSettingsFragment = this.f$0;
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) notificationActionsSettingsFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(1397039469, new NotificationActionsSettingsFragment$$ExternalSyntheticLambda0(notificationActionsSettingsFragment, i2), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = Operation$State.stringResource(gapComposer2, R.string.notification_actions_settings_description);
                    NotificationActionsSettingsFragment notificationActionsSettingsFragment2 = this.f$0;
                    ImmutableList immutableList = Okio.toImmutableList(notificationActionsSettingsFragment2.actionOrder);
                    int i3 = notificationActionsSettingsFragment2.cutoff;
                    boolean changedInstance = gapComposer2.changedInstance(notificationActionsSettingsFragment2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                        MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1 = new MessageViewFragment$onCreate$1(2, notificationActionsSettingsFragment2, NotificationActionsSettingsFragment.class, "onStateChanged", "onStateChanged(Ljava/util/List;I)V", 0, 13);
                        gapComposer2.updateRememberedValue(messageViewFragment$onCreate$1);
                        rememberedValue = messageViewFragment$onCreate$1;
                    }
                    NotificationListItemKt.NotificationActionsSettingsScreen(stringResource, immutableList, i3, (Function2) ((KFunction) rememberedValue), null, gapComposer2, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
