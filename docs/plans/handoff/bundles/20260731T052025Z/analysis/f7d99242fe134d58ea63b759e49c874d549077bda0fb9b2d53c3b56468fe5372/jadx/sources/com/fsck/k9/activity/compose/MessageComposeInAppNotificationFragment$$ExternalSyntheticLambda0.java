package com.fsck.k9.activity.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.DisplayInAppNotificationFlag;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageComposeInAppNotificationFragment f$0;

    public /* synthetic */ MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0(MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = messageComposeInAppNotificationFragment;
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
                    MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment = this.f$0;
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) messageComposeInAppNotificationFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-86716319, new MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0(messageComposeInAppNotificationFragment, i2), gapComposer), gapComposer, 6);
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
                    MessageComposeInAppNotificationFragment messageComposeInAppNotificationFragment2 = this.f$0;
                    boolean changedInstance = gapComposer2.changedInstance(messageComposeInAppNotificationFragment2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, messageComposeInAppNotificationFragment2, MessageComposeInAppNotificationFragment.class, "onNotificationActionClick", "onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V", 0, 9);
                        gapComposer2.updateRememberedValue(invalidationTracker$implementation$1);
                        rememberedValue = invalidationTracker$implementation$1;
                    }
                    Function1 function1 = (Function1) ((KFunction) rememberedValue);
                    PersistentOrderedSet persistentSetOf = Okio.persistentSetOf(DisplayInAppNotificationFlag.BannerGlobalNotifications, DisplayInAppNotificationFlag.SnackbarNotifications);
                    boolean changedInstance2 = gapComposer2.changedInstance(messageComposeInAppNotificationFragment2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1 = new MessageViewFragment$onCreate$1(2, messageComposeInAppNotificationFragment2, MessageComposeInAppNotificationFragment.class, "onSnackbarInAppNotificationEvent", "onSnackbarInAppNotificationEvent(Lnet/thunderbird/feature/notification/api/ui/host/visual/SnackbarVisual;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0, 4);
                        gapComposer2.updateRememberedValue(messageViewFragment$onCreate$1);
                        rememberedValue2 = messageViewFragment$onCreate$1;
                    }
                    Function2 function2 = (Function2) ((KFunction) rememberedValue2);
                    boolean changedInstance3 = gapComposer2.changedInstance(messageComposeInAppNotificationFragment2);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AbstractMap$$ExternalSyntheticLambda0(3, messageComposeInAppNotificationFragment2);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    InAppNotificationHostKt.InAppNotificationHost(function1, null, persistentSetOf, null, function2, (Function1) rememberedValue3, null, gapComposer2, 384, 74);
                    break;
                }
        }
        return unit;
    }
}
