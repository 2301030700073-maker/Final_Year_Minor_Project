package com.fsck.k9.ui.messagelist;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.RulerKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.DisplayInAppNotificationFlag;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LegacyMessageListFragment$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyMessageListFragment f$0;
    public final /* synthetic */ RecyclerView f$1;

    public /* synthetic */ LegacyMessageListFragment$$ExternalSyntheticLambda2(LegacyMessageListFragment legacyMessageListFragment, RecyclerView recyclerView, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyMessageListFragment;
        this.f$1 = recyclerView;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        RecyclerView recyclerView = this.f$1;
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
                    LegacyMessageListFragment legacyMessageListFragment = this.f$0;
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) legacyMessageListFragment.featureThemeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(133508450, new LegacyMessageListFragment$$ExternalSyntheticLambda2(legacyMessageListFragment, recyclerView, i2), gapComposer), gapComposer, 6);
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
                    PersistentOrderedSet persistentSetOf = Okio.persistentSetOf(DisplayInAppNotificationFlag.BannerGlobalNotifications, DisplayInAppNotificationFlag.SnackbarNotifications);
                    LegacyMessageListFragment legacyMessageListFragment2 = this.f$0;
                    boolean changedInstance = gapComposer2.changedInstance(legacyMessageListFragment2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1 = new MessageViewFragment$onCreate$1(2, legacyMessageListFragment2, LegacyMessageListFragment.class, "onSnackbarInAppNotificationEvent", "onSnackbarInAppNotificationEvent(Lnet/thunderbird/feature/notification/api/ui/host/visual/SnackbarVisual;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0, 7);
                        gapComposer2.updateRememberedValue(messageViewFragment$onCreate$1);
                        rememberedValue = messageViewFragment$onCreate$1;
                    }
                    KFunction kFunction = (KFunction) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(legacyMessageListFragment2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, legacyMessageListFragment2, LegacyMessageListFragment.class, "filterInAppNotificationEvents", "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z", 0, 10);
                        gapComposer2.updateRememberedValue(invalidationTracker$implementation$1);
                        rememberedValue2 = invalidationTracker$implementation$1;
                    }
                    KFunction kFunction2 = (KFunction) rememberedValue2;
                    Modifier animateContentSize$default = CrossfadeKt.animateContentSize$default(Modifier.Companion.$$INSTANCE, null, 3);
                    boolean changedInstance3 = gapComposer2.changedInstance(recyclerView);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AbstractMap$$ExternalSyntheticLambda0(12, recyclerView);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Modifier onSizeChanged = RulerKt.onSizeChanged(animateContentSize$default, (Function1) rememberedValue3);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new InstantKt$$ExternalSyntheticLambda0(3);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    InAppNotificationHostKt.InAppNotificationHost((Function1) rememberedValue4, onSizeChanged, persistentSetOf, null, (Function2) kFunction, (Function1) kFunction2, null, gapComposer2, 390, 72);
                    break;
                }
        }
        return unit;
    }
}
