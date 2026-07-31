package com.skydoves.landscapist;

import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Build;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.Api34StartStylusHandwriting;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.platform.MotionDurationScaleImpl;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.core.Final;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.window.layout.FoldingFeature$State;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import app.k9mail.core.ui.compose.common.window.FoldableState;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.feature.settings.p000import.ui.AuthFlowState;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import app.k9mail.feature.settings.p000import.ui.OAuthFlowActivity;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.activity.AccountList;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.controller.push.AccountPushController;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.messagedetails.MessageDetailEvent;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import de.cketti.changelog.ChangeLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.changelog.internal.ChangelogViewModel;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import okio.Okio;
import org.openintents.openpgp.util.OpenPgpIntentStarter;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageLoadKt$ImageLoad$1$1$1 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state$delegate;

    public /* synthetic */ ImageLoadKt$ImageLoad$1$1$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$state$delegate = obj;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        FoldingFeature$State foldingFeature$State;
        Object value;
        String str;
        Object obj2;
        Object value2;
        DrawerContract$State drawerContract$State;
        DisplayFolder displayFolder;
        MailDisplayFolder mailDisplayFolder;
        ArrayList arrayList;
        int i = 6;
        int i2 = 10;
        Continuation continuation2 = null;
        switch (this.$r8$classId) {
            case 0:
                MutableState mutableState = (MutableState) this.$state$delegate;
                int i3 = ImageLoadKt.$r8$clinit;
                mutableState.setValue((ImageLoadState) obj);
                break;
            case 1:
                CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) this.$state$delegate;
                if (Build.VERSION.SDK_INT >= 34) {
                    Api34StartStylusHandwriting.startStylusHandwriting(anonymousClass1.getImm(), (View) anonymousClass1.mCardBackground);
                }
                break;
            case 2:
                Interaction interaction = (Interaction) obj;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) this.$state$delegate;
                if ((interaction instanceof PressInteraction.Press) || (interaction instanceof FocusInteraction$Focus)) {
                    parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                } else if ((interaction instanceof PressInteraction.Release) || (interaction instanceof FocusInteraction$Unfocus) || (interaction instanceof PressInteraction.Cancel)) {
                    parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() - 1);
                }
                break;
            case 3:
                ((MotionDurationScaleImpl) this.$state$delegate)._scaleFactor$delegate.setFloatValue(((Number) obj).floatValue());
                break;
            case 4:
                Unit unit = Unit.INSTANCE;
                DataStoreImpl dataStoreImpl = (DataStoreImpl) this.$state$delegate;
                if (!(dataStoreImpl.inMemoryCache.getCurrentState() instanceof Final) && (r0 = DataStoreImpl.access$readDataAndUpdateCache(dataStoreImpl, true, continuation)) == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    break;
                }
                break;
            case 5:
                FoldableState foldableState = FoldableState.UNFOLDED;
                FoldableState foldableState2 = FoldableState.UNKNOWN;
                FoldableStateObserver foldableStateObserver = (FoldableStateObserver) this.$state$delegate;
                List list = ((WindowLayoutInfo) obj).displayFeatures;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (obj3 instanceof HardwareFoldingFeature) {
                        arrayList2.add(obj3);
                    }
                }
                HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) CollectionsKt.firstOrNull((List) arrayList2);
                if (hardwareFoldingFeature == null || ((foldingFeature$State = hardwareFoldingFeature.state) != FoldingFeature$State.HALF_OPENED && foldingFeature$State != FoldingFeature$State.FLAT)) {
                    foldableState = foldableState2;
                }
                Sink$CC.verbose$default(foldableStateObserver.logger, "FoldableStateObserver", null, new Regex$$ExternalSyntheticLambda1(8, hardwareFoldingFeature, foldableState), 2);
                StandaloneCoroutine standaloneCoroutine = foldableStateObserver.debounceJob;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                foldableStateObserver.debounceJob = JobKt.launch$default(foldableStateObserver.scope, null, null, new BlockRunner$maybeRun$1(foldableStateObserver, foldableState, continuation2, 20), 3);
                break;
            case 6:
                AuthFlowState authFlowState = (AuthFlowState) obj;
                OAuthFlowActivity oAuthFlowActivity = (OAuthFlowActivity) this.$state$delegate;
                int i4 = OAuthFlowActivity.$r8$clinit;
                AuthFlowState.Idle idle = AuthFlowState.Idle.INSTANCE;
                if (!Intrinsics.areEqual(authFlowState, idle)) {
                    if (Intrinsics.areEqual(authFlowState, AuthFlowState.Idle.INSTANCE$4)) {
                        oAuthFlowActivity.setResult(-1);
                        oAuthFlowActivity.finish();
                    } else if (Intrinsics.areEqual(authFlowState, AuthFlowState.Idle.INSTANCE$2)) {
                        oAuthFlowActivity.displayErrorText(R.string.settings_import_oauth_error_oauth_flow_canceled, new Object[0]);
                    } else if (authFlowState instanceof AuthFlowState.Failed) {
                        oAuthFlowActivity.displayErrorText(R.string.settings_import_oauth_error_oauth_flow_failed, authFlowState);
                    } else if (Intrinsics.areEqual(authFlowState, AuthFlowState.Idle.INSTANCE$3)) {
                        oAuthFlowActivity.displayErrorText(R.string.settings_import_oauth_error_oauth_not_supported, new Object[0]);
                    } else if (!Intrinsics.areEqual(authFlowState, AuthFlowState.Idle.INSTANCE$1)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        oAuthFlowActivity.displayErrorText(R.string.settings_import_oauth_error_browser_not_found, new Object[0]);
                    }
                    StateFlowImpl stateFlowImpl = ((AuthViewModel) oAuthFlowActivity.authViewModel$delegate.getValue())._uiState;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, idle));
                }
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AccountList.AccountsAdapter accountsAdapter = (AccountList.AccountsAdapter) this.$state$delegate;
                accountsAdapter.clear();
                accountsAdapter.addAll((List) obj);
                accountsAdapter.notifyDataSetChanged();
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                FoldableState foldableState3 = (FoldableState) obj;
                MessageHomeActivity messageHomeActivity = (MessageHomeActivity) this.$state$delegate;
                Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                if (((DefaultGeneralSettingsManager) messageHomeActivity.getGeneralSettingsManager$1()).getConfig().display.coreSettings.splitViewMode == SplitViewMode.WHEN_UNFOLDED) {
                    Sink$CC.debug$default(messageHomeActivity.getLogger$1(), "MainActivity", null, new K9$$ExternalSyntheticLambda0(6, foldableState3), 2);
                    boolean z = foldableState3 == FoldableState.UNFOLDED;
                    boolean z2 = messageHomeActivity.displayMode == MessageHomeActivity.DisplayMode.SPLIT_VIEW;
                    if (z && !z2) {
                        Sink$CC.debug$default(messageHomeActivity.getLogger$1(), "MainActivity", null, new SyncDebugWorker$$ExternalSyntheticLambda0(8), 2);
                        messageHomeActivity.recreate();
                    } else if (!z && z2) {
                        Sink$CC.debug$default(messageHomeActivity.getLogger$1(), "MainActivity", null, new SyncDebugWorker$$ExternalSyntheticLambda0(9), 2);
                        messageHomeActivity.recreate();
                    }
                }
                break;
            case 9:
                List list2 = (List) obj;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList3.add(((RemoteFolder) it.next()).serverId);
                }
                AccountPushController accountPushController = (AccountPushController) this.$state$delegate;
                Sink$CC.verbose$default(accountPushController.logger, "AccountPushController", null, new Regex$$ExternalSyntheticLambda1(23, accountPushController, arrayList3), 2);
                ImapBackendPusher imapBackendPusher = accountPushController.backendPusher;
                if (imapBackendPusher != null) {
                    imapBackendPusher.updateFolders(imapBackendPusher.currentMaxPushFolders, arrayList3);
                }
                break;
            case 10:
                ((Boolean) obj).getClass();
                ((PushController) this.$state$delegate).updatePushers();
                break;
            case 11:
                MessageDetailEvent messageDetailEvent = (MessageDetailEvent) obj;
                MessageDetailsFragment messageDetailsFragment = (MessageDetailsFragment) this.$state$delegate;
                if (messageDetailEvent instanceof MessageDetailEvent.ShowCryptoKeys) {
                    PendingIntent pendingIntent = ((MessageDetailEvent.ShowCryptoKeys) messageDetailEvent).pendingIntent;
                    try {
                        AppCompatActivity requireActivity = messageDetailsFragment.requireActivity();
                        IntentSender intentSender = pendingIntent.getIntentSender();
                        intentSender.getClass();
                        requireActivity.startIntentSender(intentSender, null, 0, 0, 0, OpenPgpIntentStarter.buildOptionsBundle());
                    } catch (IntentSender.SendIntentException e) {
                        Log.e(e, "Error starting PendingIntent", new Object[0]);
                    }
                } else if (Intrinsics.areEqual(messageDetailEvent, MessageDetailEvent.SearchCryptoKeys.INSTANCE)) {
                    Util.setFragmentResult(messageDetailsFragment, "messageDetailsResult", Util.bundleOf(new Pair("action", "search_keys")));
                    messageDetailsFragment.dismissAllowingStateLoss();
                } else if (!Intrinsics.areEqual(messageDetailEvent, MessageDetailEvent.SearchCryptoKeys.INSTANCE$1)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    break;
                } else {
                    Util.setFragmentResult(messageDetailsFragment, "messageDetailsResult", Util.bundleOf(new Pair("action", "show_warning")));
                    messageDetailsFragment.dismissAllowingStateLoss();
                }
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                Pair pair = (Pair) obj;
                GeneralSettings generalSettings = (GeneralSettings) pair.first;
                ChangeLog changeLog = (ChangeLog) pair.second;
                ChangelogViewModel changelogViewModel = (ChangelogViewModel) this.$state$delegate;
                changelogViewModel.updateState(new SettingListKt$$ExternalSyntheticLambda0(generalSettings, changelogViewModel, changeLog, 4));
                break;
            default:
                List list3 = (List) obj;
                DrawerViewModel drawerViewModel = (DrawerViewModel) this.$state$delegate;
                GetDisplayTreeFolder getDisplayTreeFolder = drawerViewModel.getDisplayTreeFolder;
                int i5 = drawerViewModel.maxNestingLevel;
                getDisplayTreeFolder.getClass();
                list3.getClass();
                ArrayList arrayList4 = new ArrayList();
                for (Object obj4 : list3) {
                    if (obj4 instanceof UnifiedDisplayFolder) {
                        arrayList4.add(obj4);
                    }
                }
                ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList4, 10));
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    UnifiedDisplayFolder unifiedDisplayFolder = (UnifiedDisplayFolder) it2.next();
                    unifiedDisplayFolder.getClass();
                    arrayList5.add(new DisplayTreeFolder(unifiedDisplayFolder, "unified_inbox", unifiedDisplayFolder.unreadMessageCount, unifiedDisplayFolder.starredMessageCount, SmallPersistentVector.EMPTY));
                }
                DisplayFolder displayFolder2 = (DisplayFolder) CollectionsKt.firstOrNull(list3);
                if (displayFolder2 == null || (str = displayFolder2.getPathDelimiter()) == null) {
                    str = "/";
                }
                String str2 = str;
                ArrayList arrayList6 = new ArrayList();
                for (Object obj5 : list3) {
                    if (obj5 instanceof MailDisplayFolder) {
                        arrayList6.add(obj5);
                    }
                }
                ArrayList arrayList7 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList6, 10));
                Iterator it3 = arrayList6.iterator();
                while (it3.hasNext()) {
                    MailDisplayFolder mailDisplayFolder2 = (MailDisplayFolder) it3.next();
                    List<String> split$default = StringsKt.split$default(mailDisplayFolder2.folder.name, new String[]{str2}, i);
                    ArrayList arrayList8 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
                    for (String str3 : split$default) {
                        if (StringsKt.isBlank(str3)) {
                            str3 = null;
                        }
                        if (str3 == null) {
                            str3 = "(Unnamed)";
                        }
                        arrayList8.add(str3);
                    }
                    if (arrayList8.size() <= i5) {
                        arrayList = arrayList7;
                        mailDisplayFolder = mailDisplayFolder2;
                    } else {
                        mailDisplayFolder = mailDisplayFolder2;
                        arrayList = arrayList7;
                        arrayList8 = CollectionsKt.plus((Collection) CollectionsKt.take(arrayList8, i5), (Iterable) IntOffsetKt.listOf(CollectionsKt.joinToString$default(CollectionsKt.drop(i5, arrayList8), str2, null, null, null, 62)));
                    }
                    Sink$CC.debug$default(getDisplayTreeFolder.logger, null, null, new SealedClassSerializer$$ExternalSyntheticLambda0(i2, mailDisplayFolder, arrayList8), 3);
                    arrayList.add(new Pair(arrayList8, mailDisplayFolder));
                    arrayList7 = arrayList;
                    i = 6;
                }
                ArrayList buildAccountFolderTree = getDisplayTreeFolder.buildAccountFolderTree(arrayList7, str2, "");
                Iterator it4 = buildAccountFolderTree.iterator();
                int i6 = 0;
                while (it4.hasNext()) {
                    i6 += ((DisplayTreeFolder) it4.next()).totalUnreadCount;
                }
                Iterator it5 = buildAccountFolderTree.iterator();
                int i7 = 0;
                while (it5.hasNext()) {
                    i7 += ((DisplayTreeFolder) it5.next()).totalStarredCount;
                }
                DisplayTreeFolder displayTreeFolder = new DisplayTreeFolder(null, null, i6, i7, Okio.toImmutableList(CollectionsKt.plus((Collection) arrayList5, (Iterable) buildAccountFolderTree)));
                ReadonlyStateFlow readonlyStateFlow = drawerViewModel.state;
                Iterator it6 = list3.iterator();
                while (true) {
                    if (it6.hasNext()) {
                        obj2 = it6.next();
                        if (Intrinsics.areEqual(((DisplayFolder) obj2).getId(), ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).selectedFolderId)) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                if (obj2 == null) {
                    obj2 = DrawerViewModel.findFolderById(displayTreeFolder, ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).selectedFolderId);
                }
                if (obj2 == null) {
                    DisplayFolder displayFolder3 = (DisplayFolder) CollectionsKt.firstOrNull(list3);
                    if (displayFolder3 == null) {
                        DisplayTreeFolder displayTreeFolder2 = (DisplayTreeFolder) CollectionsKt.firstOrNull((List) displayTreeFolder.children);
                        if (displayTreeFolder2 != null) {
                            displayFolder3 = displayTreeFolder2.displayFolder;
                        } else {
                            obj2 = null;
                        }
                    }
                    obj2 = displayFolder3;
                }
                StateFlowImpl stateFlowImpl2 = drawerViewModel._state;
                do {
                    value2 = stateFlowImpl2.getValue();
                    drawerContract$State = (DrawerContract$State) value2;
                    drawerContract$State.getClass();
                    displayFolder = (DisplayFolder) obj2;
                } while (!stateFlowImpl2.compareAndSet(value2, DrawerContract$State.copy$default(drawerContract$State, null, false, null, null, displayTreeFolder, Okio.toImmutableList(list3), displayFolder != null ? displayFolder.getId() : null, displayFolder, false, false, 783)));
                break;
        }
        return Unit.INSTANCE;
    }
}
