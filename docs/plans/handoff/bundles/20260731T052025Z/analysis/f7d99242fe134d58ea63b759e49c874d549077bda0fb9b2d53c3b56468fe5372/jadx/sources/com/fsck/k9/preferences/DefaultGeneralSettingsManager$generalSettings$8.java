package com.fsck.k9.preferences;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.composite.DefaultCompositeLogSink;
import net.thunderbird.core.logging.config.DebugLogConfigurator;
import net.thunderbird.core.logging.config.PlatformInitializer;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.debugging.DebuggingSettings;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetMessageListPreferences;
import net.thunderbird.feature.mail.message.list.preferences.ActionRequiringUserConfirmation;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import org.jsoup.helper.Validate;
import timber.log.Timber;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultGeneralSettingsManager$generalSettings$8 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultGeneralSettingsManager$generalSettings$8(Object obj, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                DefaultGeneralSettingsManager$generalSettings$8 defaultGeneralSettingsManager$generalSettings$8 = new DefaultGeneralSettingsManager$generalSettings$8((DefaultGeneralSettingsManager) obj4, (Continuation) obj3, 0);
                defaultGeneralSettingsManager$generalSettings$8.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$8.L$1 = (DisplayMessageListSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$8.invokeSuspend(unit);
            case 1:
                DefaultGeneralSettingsManager$generalSettings$8 defaultGeneralSettingsManager$generalSettings$82 = new DefaultGeneralSettingsManager$generalSettings$8((DefaultGeneralSettingsManager) obj4, (Continuation) obj3, 1);
                defaultGeneralSettingsManager$generalSettings$82.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$82.L$1 = (DebuggingSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$82.invokeSuspend(unit);
            default:
                DefaultGeneralSettingsManager$generalSettings$8 defaultGeneralSettingsManager$generalSettings$83 = new DefaultGeneralSettingsManager$generalSettings$8((GetMessageListPreferences) obj4, (Continuation) obj3, 2);
                defaultGeneralSettingsManager$generalSettings$83.L$0 = (DisplaySettings) obj;
                defaultGeneralSettingsManager$generalSettings$83.L$1 = (InteractionSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$83.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                GeneralSettings generalSettings = (GeneralSettings) this.L$0;
                DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                Sink$CC.debug$default(((DefaultGeneralSettingsManager) this.this$0).logger, null, null, new DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0(displayMessageListSettings, 0), 3);
                DisplaySettings displaySettings = generalSettings.display;
                return GeneralSettings.copy$default(generalSettings, null, null, DisplaySettings.copy$default(displaySettings, null, null, DisplayVisualSettings.copy$default(displaySettings.visualSettings, null, false, false, null, false, displayMessageListSettings, false, false, false, false, false, 2015), null, 11), null, null, null, 119);
            case 1:
                GeneralSettings generalSettings2 = (GeneralSettings) this.L$0;
                DebuggingSettings debuggingSettings = (DebuggingSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                GeneralSettings copy$default = GeneralSettings.copy$default(generalSettings2, null, null, null, null, debuggingSettings, null, 95);
                DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.this$0;
                DebugLogConfigurator debugLogConfigurator = defaultGeneralSettingsManager.debugLogConfigurator;
                boolean z = debuggingSettings.isDebugLoggingEnabled;
                PlatformInitializer platformInitializer = debugLogConfigurator.platformInitializer;
                Timber.Forest forest = Timber.Forest;
                forest.getClass();
                ArrayList arrayList = Timber.trees;
                synchronized (arrayList) {
                    arrayList.clear();
                    Timber.treeArray = new Timber.Tree[0];
                }
                if (z) {
                    forest.plant(new Timber.DebugTree());
                }
                DebugLogConfigurator debugLogConfigurator2 = defaultGeneralSettingsManager.debugLogConfigurator;
                boolean z2 = debuggingSettings.isSyncLoggingEnabled;
                FileLogSink fileLogSink = debugLogConfigurator2.syncDebugFileLogSink;
                CompositeLogSink compositeLogSink = debugLogConfigurator2.syncDebugCompositeSink;
                if (z2) {
                    ArrayList arrayList2 = ((DefaultCompositeLogSink) compositeLogSink).manager.namesAndValues;
                    if (!arrayList2.contains(fileLogSink)) {
                        arrayList2.add(fileLogSink);
                    }
                } else {
                    ArrayList arrayList3 = ((DefaultCompositeLogSink) compositeLogSink).manager.namesAndValues;
                    if (arrayList3.contains(fileLogSink)) {
                        arrayList3.remove(fileLogSink);
                    }
                }
                return copy$default;
            default:
                DisplaySettings displaySettings2 = (DisplaySettings) this.L$0;
                InteractionSettings interactionSettings = (InteractionSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                DisplayInboxSettings displayInboxSettings = displaySettings2.inboxSettings;
                DisplayMessageListSettings displayMessageListSettings2 = displaySettings2.visualSettings.messageListSettings;
                UiDensity uiDensity = displayMessageListSettings2.uiDensity;
                boolean z3 = displayInboxSettings.isThreadedViewEnabled;
                boolean z4 = displayMessageListSettings2.isShowCorrespondentNames;
                boolean z5 = displayMessageListSettings2.isShowContactPicture;
                boolean z6 = displayInboxSettings.isShowMessageListStars;
                boolean z7 = displayInboxSettings.isMessageListSenderAboveSubject;
                int i = displayMessageListSettings2.previewLines;
                MessageListDateTimeFormat messageListDateTimeFormat = displayMessageListSettings2.dateTimeFormat;
                ((GetMessageListPreferences) this.this$0).getClass();
                SetBuilder setBuilder = new SetBuilder();
                if (interactionSettings.isConfirmDelete) {
                    setBuilder.add(ActionRequiringUserConfirmation.Delete);
                }
                if (interactionSettings.isConfirmDeleteStarred) {
                    setBuilder.add(ActionRequiringUserConfirmation.DeleteStarred);
                }
                if (interactionSettings.isConfirmDeleteFromNotification) {
                    setBuilder.add(ActionRequiringUserConfirmation.DeleteFromNotification);
                }
                if (interactionSettings.isConfirmSpam) {
                    setBuilder.add(ActionRequiringUserConfirmation.Spam);
                }
                if (interactionSettings.isConfirmDiscardMessage) {
                    setBuilder.add(ActionRequiringUserConfirmation.DiscardMessage);
                }
                if (interactionSettings.isConfirmMarkAllRead) {
                    setBuilder.add(ActionRequiringUserConfirmation.MarkAllRead);
                }
                Collection build = Validate.build(setBuilder);
                build.getClass();
                ImmutableSet immutableSet = build instanceof ImmutableSet ? (ImmutableSet) build : null;
                if (immutableSet == null) {
                    PersistentOrderedSet persistentOrderedSet = PersistentOrderedSet.EMPTY;
                    persistentOrderedSet.getClass();
                    if (build.isEmpty()) {
                        immutableSet = persistentOrderedSet;
                    } else {
                        PersistentOrderedSetBuilder persistentOrderedSetBuilder = new PersistentOrderedSetBuilder(persistentOrderedSet);
                        persistentOrderedSetBuilder.addAll(build);
                        immutableSet = persistentOrderedSetBuilder.build();
                    }
                }
                return new MessageListPreferences(uiDensity, z3, z4, z5, z6, z7, i, messageListDateTimeFormat, immutableSet, displayMessageListSettings2.isUseBackgroundAsUnreadIndicator);
        }
    }
}
