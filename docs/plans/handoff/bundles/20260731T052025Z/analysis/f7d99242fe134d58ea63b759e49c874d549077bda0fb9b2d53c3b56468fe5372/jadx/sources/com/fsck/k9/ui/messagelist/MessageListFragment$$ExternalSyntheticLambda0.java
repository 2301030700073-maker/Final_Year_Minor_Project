package com.fsck.k9.ui.messagelist;

import android.view.MenuItem;
import androidx.appcompat.view.ActionMode;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda6;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.google.zxing.BinaryBitmap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.reflect.KFunction;
import kotlin.uuid.UuidKt;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.component.ScrollEvent$ScrollToMessage;
import net.thunderbird.feature.mail.message.list.ui.effect.MessageListEffect;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListFragment f$0;

    public /* synthetic */ MessageListFragment$$ExternalSyntheticLambda0(MessageListFragment messageListFragment, int i) {
        this.$r8$classId = 6;
        this.f$0 = messageListFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        LegacyAccount legacyAccount;
        List list;
        int i = this.$r8$classId;
        int i2 = 2;
        MessageListFragment messageListFragment = this.f$0;
        Unit unit = Unit.INSTANCE;
        byte b = 0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    messageListFragment.SortCriteriaMenuList(gapComposer, 0);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                long longValue = ((Long) obj).longValue();
                List list2 = (List) obj2;
                list2.getClass();
                messageListFragment.copyOrMove(list2, longValue, MessageListFragment.FolderOperation.COPY);
                return unit;
            case 2:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    MessageListFragment messageListFragment2 = this.f$0;
                    MessageListScreenRenderer messageListScreenRenderer = (MessageListScreenRenderer) messageListFragment2.messageListScreenRenderer$delegate.getValue();
                    boolean changedInstance = gapComposer2.changedInstance(messageListFragment2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, messageListFragment2, MessageListFragment.class, "filterInAppNotificationEvents", "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z", 0, 13);
                        gapComposer2.updateRememberedValue(invalidationTracker$implementation$1);
                        rememberedValue = invalidationTracker$implementation$1;
                    }
                    KFunction kFunction = (KFunction) rememberedValue;
                    MessageListContract$ViewModel viewModel = messageListFragment2.getViewModel();
                    boolean changedInstance2 = gapComposer2.changedInstance(messageListFragment2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment2, 4, b);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    UuidKt.Render$default((Function2) rememberedValue2, null, viewModel, (Function1) kFunction, messageListScreenRenderer, gapComposer2, 0);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 3:
                long longValue2 = ((Long) obj).longValue();
                List list3 = (List) obj2;
                list3.getClass();
                messageListFragment.copyOrMove(list3, longValue2, MessageListFragment.FolderOperation.MOVE);
                return unit;
            case 4:
                BinaryBitmap binaryBitmap = messageListFragment.actionModeCallback;
                DefaultMessageListScope defaultMessageListScope = (DefaultMessageListScope) obj;
                MessageListEffect messageListEffect = (MessageListEffect) obj2;
                defaultMessageListScope.getClass();
                messageListEffect.getClass();
                if (messageListEffect instanceof MessageListEffect.ScrollToMessage) {
                    MessageItemUi messageItemUi = ((MessageListEffect.ScrollToMessage) messageListEffect).message;
                    messageItemUi.getClass();
                    defaultMessageListScope._scrollEvents.mo1016trySendJP2dKIU(new ScrollEvent$ScrollToMessage(messageItemUi, true));
                    return unit;
                }
                if (messageListEffect instanceof MessageListEffect.UpdateToolbarActionMode) {
                    MessageListEffect.UpdateToolbarActionMode updateToolbarActionMode = (MessageListEffect.UpdateToolbarActionMode) messageListEffect;
                    String str = updateToolbarActionMode.title;
                    System.out.println((Object) ("[MessageList] UpdateToolbarActionMode called with title: " + str + ", state = " + messageListFragment.getStateSnapshot()));
                    if (messageListFragment.actionMode == null) {
                        MessageHomeActivity messageHomeActivity = messageListFragment.fragmentListener;
                        if (messageHomeActivity == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                            throw null;
                        }
                        binaryBitmap.getClass();
                        MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
                        if (messageListFragmentBridgeContract != null) {
                            messageListFragmentBridgeContract.collapseSearchView$1();
                        }
                        ActionMode startSupportActionMode = messageHomeActivity.getDelegate().startSupportActionMode(binaryBitmap);
                        messageListFragment.actionMode = startSupportActionMode;
                        if (startSupportActionMode != null) {
                            startSupportActionMode.invalidate();
                        }
                    }
                    ActionMode actionMode = messageListFragment.actionMode;
                    if (actionMode == null) {
                        return unit;
                    }
                    actionMode.setTitle(str);
                    boolean z = !updateToolbarActionMode.isAllSelected;
                    MenuItem menuItem = (MenuItem) binaryBitmap.binarizer;
                    if (menuItem != null) {
                        menuItem.setVisible(z);
                    }
                    actionMode.invalidate();
                    return unit;
                }
                if (messageListEffect instanceof MessageListEffect.ResetToolbarActionMode) {
                    System.out.println((Object) ("[MessageList] ResetToolbarActionMode called with state = " + messageListFragment.getStateSnapshot()));
                    messageListFragment.resetActionMode$1();
                    return unit;
                }
                if (messageListEffect instanceof MessageListEffect.OpenMessage) {
                    MessageReference parse = MathKt.parse(((MessageListEffect.OpenMessage) messageListEffect).message.messageReference);
                    if (parse == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) messageListEffect, "The message reference should not be null when opening a message. Message: ");
                        return null;
                    }
                    MessageHomeActivity messageHomeActivity2 = messageListFragment.fragmentListener;
                    if (messageHomeActivity2 != null) {
                        messageHomeActivity2.openMessage(parse);
                        return unit;
                    }
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                    throw null;
                }
                if (!messageListEffect.equals(MessageListEffect.TriggerOnFooterClicked.INSTANCE) || (legacyAccount = messageListFragment.account) == null) {
                    return unit;
                }
                AccountId accountId = legacyAccount.id;
                FolderInfoHolder folderInfoHolder = messageListFragment.currentFolder;
                if (folderInfoHolder == null) {
                    return unit;
                }
                if (folderInfoHolder.moreMessages && !messageListFragment.getLocalSearch().isManualSearch) {
                    long j = folderInfoHolder.databaseId;
                    MessagingControllerWrapper messagingController$1 = messageListFragment.getMessagingController$1();
                    messagingController$1.getClass();
                    accountId.getClass();
                    LegacyAccountDto accountDtoOrThrow = messagingController$1.getAccountDtoOrThrow(accountId);
                    MessagingController messagingController = messagingController$1.messagingController;
                    messagingController.putBackground("loadMoreMessages", new MessagingController$$ExternalSyntheticLambda0(messagingController, accountDtoOrThrow, j, 0));
                    return unit;
                }
                if (!messageListFragment.isRemoteSearch || (list = messageListFragment.extraSearchResults) == null || list.isEmpty()) {
                    return unit;
                }
                int i3 = legacyAccount.remoteSearchNumResults;
                if (1 > i3 || i3 >= list.size()) {
                    messageListFragment.extraSearchResults = null;
                    messageListFragment.updateFooterText(null);
                } else {
                    messageListFragment.extraSearchResults = list.subList(i3, list.size());
                    list = list.subList(0, i3);
                }
                List list4 = list;
                MessagingControllerWrapper messagingController$12 = messageListFragment.getMessagingController$1();
                long j2 = folderInfoHolder.databaseId;
                MessageListFragment.MessageListActivityListener messageListActivityListener = messageListFragment.activityListener;
                messagingController$12.getClass();
                accountId.getClass();
                list4.getClass();
                messageListActivityListener.getClass();
                LegacyAccountDto accountDtoOrThrow2 = messagingController$12.getAccountDtoOrThrow(accountId);
                MessagingController messagingController2 = messagingController$12.messagingController;
                messagingController2.threadPool.execute(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController2, messageListActivityListener, accountDtoOrThrow2, j2, list4));
                return unit;
            case 5:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) messageListFragment.featureThemeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-1324096305, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, b, b), gapComposer3), gapComposer3, 6);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 6:
                ((Integer) obj2).getClass();
                messageListFragment.SortCriteriaMenuList((Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            default:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) messageListFragment.featureThemeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-1470144195, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, i2, b), gapComposer4), gapComposer4, 6);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ MessageListFragment$$ExternalSyntheticLambda0(MessageListFragment messageListFragment, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = messageListFragment;
    }
}
