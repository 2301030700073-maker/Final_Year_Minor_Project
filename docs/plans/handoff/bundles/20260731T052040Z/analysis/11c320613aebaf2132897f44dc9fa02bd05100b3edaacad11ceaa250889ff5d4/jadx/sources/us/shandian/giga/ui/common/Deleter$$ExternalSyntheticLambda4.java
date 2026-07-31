package us.shandian.giga.ui.common;

import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertDialog;
import androidx.core.widget.TintableCompoundDrawablesView;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.material.textfield.ClearTextEndIconDelegate;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.textfield.PasswordToggleEndIconDelegate;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.info_list.StreamSegmentItem;
import org.schabi.newpipe.local.dialog.PlaylistAppendDialog;
import org.schabi.newpipe.local.dialog.PlaylistCreationDialog;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.history.StatisticsPlaylistFragment;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialogViewModel;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.notification.NotificationConstants;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.settings.custom.NotificationSlot;
import org.schabi.newpipe.settings.tabs.AddTabDialog$ChooseTabListItem;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.FocusOverlayView;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.get.Mission;
import us.shandian.giga.ui.adapter.MissionAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Deleter$$ExternalSyntheticLambda4 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Deleter$$ExternalSyntheticLambda4(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        int i2 = 2;
        boolean z = false;
        int i3 = 1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Deleter deleter = (Deleter) obj;
                deleter.mIterator.hidden.remove((Mission) ((Pair) deleter.items.remove(0)).getFirst());
                deleter.mAdapter.applyChanges();
                deleter.show();
                return;
            case 1:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) obj;
                EditText editText = clearTextEndIconDelegate.editText;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                clearTextEndIconDelegate.refreshIconState();
                return;
            case 2:
                ((DropdownMenuEndIconDelegate) obj).showHideDropdown();
                return;
            case 3:
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = (PasswordToggleEndIconDelegate) obj;
                EditText editText2 = passwordToggleEndIconDelegate.editText;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = passwordToggleEndIconDelegate.editText;
                if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    z = true;
                }
                EditText editText4 = passwordToggleEndIconDelegate.editText;
                if (z) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    passwordToggleEndIconDelegate.editText.setSelection(selectionEnd);
                }
                passwordToggleEndIconDelegate.refreshIconState();
                return;
            case 4:
                StreamSegmentItem streamSegmentItem = (StreamSegmentItem) obj;
                MainPlayerUi.AnonymousClass3 anonymousClass3 = streamSegmentItem.onClick;
                int startTimeSeconds = streamSegmentItem.item.getStartTimeSeconds();
                MainPlayerUi mainPlayerUi = MainPlayerUi.this;
                mainPlayerUi.segmentAdapter.selectSegment(streamSegmentItem);
                Player player = mainPlayerUi.player;
                player.seekTo(startTimeSeconds * 1000);
                player.triggerProgressUpdate();
                return;
            case 5:
                PlaylistAppendDialog playlistAppendDialog = (PlaylistAppendDialog) obj;
                if (playlistAppendDialog.streamEntities == null || !playlistAppendDialog.isAdded()) {
                    return;
                }
                List list = playlistAppendDialog.streamEntities;
                PlaylistCreationDialog playlistCreationDialog = new PlaylistCreationDialog();
                playlistCreationDialog.streamEntities = list;
                playlistCreationDialog.show(playlistAppendDialog.getParentFragmentManager(), "org.schabi.newpipe.local.dialog.PlaylistAppendDialog");
                Dialog dialog = playlistAppendDialog.mDialog;
                if (dialog != null) {
                    dialog.dismiss();
                    return;
                } else {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$3(playlistAppendDialog, " does not have a Dialog.", "DialogFragment ");
                    return;
                }
            case 6:
                StatisticsPlaylistFragment statisticsPlaylistFragment = (StatisticsPlaylistFragment) obj;
                if (statisticsPlaylistFragment.sortMode == 1) {
                    statisticsPlaylistFragment.sortMode = 2;
                    statisticsPlaylistFragment.setTitle(statisticsPlaylistFragment.getString(R.string.title_most_played));
                    ((ImageView) statisticsPlaylistFragment.headerBinding.runningAsyncCalls).setImageResource(R.drawable.ic_history);
                    ((NewPipeTextView) statisticsPlaylistFragment.headerBinding.runningSyncCalls).setText(R.string.title_last_played);
                } else {
                    statisticsPlaylistFragment.sortMode = 1;
                    statisticsPlaylistFragment.setTitle(statisticsPlaylistFragment.getString(R.string.title_last_played));
                    ((ImageView) statisticsPlaylistFragment.headerBinding.runningAsyncCalls).setImageResource(R.drawable.ic_filter_list);
                    ((NewPipeTextView) statisticsPlaylistFragment.headerBinding.runningSyncCalls).setText(R.string.title_most_played);
                }
                statisticsPlaylistFragment.startLoading(true);
                return;
            case 7:
                FeedGroupReorderDialog feedGroupReorderDialog = (FeedGroupReorderDialog) obj;
                FeedGroupReorderDialogViewModel feedGroupReorderDialogViewModel = feedGroupReorderDialog.viewModel;
                if (feedGroupReorderDialogViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                ArrayList<Long> arrayList = feedGroupReorderDialog.groupOrderedIdList;
                arrayList.getClass();
                FeedDatabaseManager feedDatabaseManager = feedGroupReorderDialogViewModel.feedDatabaseManager;
                feedDatabaseManager.getClass();
                int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity >= 16 ? mapCapacity : 16);
                long j = 0;
                for (Number number : arrayList) {
                    Long valueOf = Long.valueOf(number.longValue());
                    number.longValue();
                    linkedHashMap.put(valueOf, Long.valueOf(j));
                    j = 1 + j;
                }
                CompletableFromAction completableFromAction = new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager, linkedHashMap, i2), i3);
                IoScheduler ioScheduler = Schedulers.IO;
                CompletableObserveOn observeOn = completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread());
                if (feedGroupReorderDialogViewModel.actionProcessingDisposable == null) {
                    feedGroupReorderDialogViewModel.mutableDialogEventLiveData.setValue(FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent.INSTANCE$1);
                    CompletableObserveOn subscribeOn = observeOn.subscribeOn(ioScheduler);
                    CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(Functions.ON_ERROR_MISSING, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(feedGroupReorderDialogViewModel, 20));
                    subscribeOn.subscribe(callbackCompletableObserver);
                    feedGroupReorderDialogViewModel.actionProcessingDisposable = callbackCompletableObserver;
                    return;
                }
                return;
            case 8:
                NotificationSlot notificationSlot = (NotificationSlot) obj;
                Context context = notificationSlot.context;
                LayoutInflater from = LayoutInflater.from(context);
                TokenData inflate$1 = TokenData.inflate$1(from);
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(NotificationSlot.SLOT_TITLES[notificationSlot.i]);
                AlertDialog.Builder view2 = builder.setView((ScrollView) inflate$1.value);
                view2.P.mCancelable = true;
                AlertDialog create = view2.create();
                VideoPlayerUi$$ExternalSyntheticLambda42 videoPlayerUi$$ExternalSyntheticLambda42 = new VideoPlayerUi$$ExternalSyntheticLambda42(notificationSlot, create, r1);
                int i4 = 0;
                while (true) {
                    int[] iArr = NotificationConstants.ALL_ACTIONS;
                    if (i4 >= 12) {
                        create.show();
                        if (DeviceUtils.isTv(context)) {
                            FocusOverlayView.setupFocusObserver(create);
                            return;
                        }
                        return;
                    }
                    int i5 = iArr[i4];
                    View inflate = from.inflate(R.layout.list_radio_icon_item, (ViewGroup) null, false);
                    if (inflate == null) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
                        return;
                    }
                    RadioButton radioButton = (RadioButton) inflate;
                    int i6 = NotificationConstants.ACTION_ICONS[i5];
                    if (i6 != 0) {
                        radioButton.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, i6, 0);
                        ColorStateList valueOf2 = ColorStateList.valueOf(Options.Companion.resolveColorFromAttr(context, android.R.attr.textColorPrimary));
                        if (Build.VERSION.SDK_INT >= 24) {
                            radioButton.setCompoundDrawableTintList(valueOf2);
                        } else if (radioButton instanceof TintableCompoundDrawablesView) {
                            ((TintableCompoundDrawablesView) radioButton).setSupportCompoundDrawablesTintList(valueOf2);
                        }
                    }
                    radioButton.setText(NotificationConstants.getActionName(context, i5));
                    radioButton.setChecked(i5 == notificationSlot.selectedAction);
                    radioButton.setId(i4);
                    radioButton.setLayoutParams(new RadioGroup.LayoutParams(-1, -2));
                    radioButton.setOnClickListener(videoPlayerUi$$ExternalSyntheticLambda42);
                    ((RadioGroup) inflate$1.builder).addView(radioButton);
                    i4++;
                }
            case 9:
                ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) obj;
                Context requireContext = chooseTabsFragment.requireContext();
                ArrayList arrayList2 = chooseTabsFragment.tabList;
                ArrayList arrayList3 = new ArrayList();
                for (Tab.Type type : Tab.Type.values()) {
                    Tab tab = type.getTab();
                    int ordinal = type.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            switch (ordinal) {
                                case 6:
                                    arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), R.drawable.ic_whatshot, chooseTabsFragment.getString(R.string.kiosk_page_summary)));
                                    break;
                                case 7:
                                    arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), tab.getTabIconRes(requireContext), chooseTabsFragment.getString(R.string.channel_page_summary)));
                                    break;
                                case 8:
                                    arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), tab.getTabIconRes(requireContext), chooseTabsFragment.getString(R.string.playlist_page_summary)));
                                    break;
                                case 9:
                                    arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), tab.getTabIconRes(requireContext), chooseTabsFragment.getString(R.string.feed_group_page_summary)));
                                    break;
                                default:
                                    if (arrayList2.contains(tab)) {
                                        break;
                                    } else {
                                        arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), tab.getTabIconRes(requireContext), tab.getTabName(requireContext)));
                                        break;
                                    }
                            }
                        } else if (!arrayList2.contains(tab)) {
                            arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), R.drawable.ic_whatshot, chooseTabsFragment.getString(R.string.default_kiosk_page_summary)));
                        }
                    } else if (!arrayList2.contains(tab)) {
                        arrayList3.add(new AddTabDialog$ChooseTabListItem(tab.getTabId(), tab.getTabIconRes(requireContext), chooseTabsFragment.getString(R.string.blank_page_summary)));
                    }
                }
                AddTabDialog$ChooseTabListItem[] addTabDialog$ChooseTabListItemArr = (AddTabDialog$ChooseTabListItem[]) arrayList3.toArray(new AddTabDialog$ChooseTabListItem[0]);
                if (addTabDialog$ChooseTabListItemArr.length == 0) {
                    return;
                }
                ((AlertDialog) new VideoPlayerUi.AnonymousClass1(chooseTabsFragment.requireContext(), addTabDialog$ChooseTabListItemArr, new FeedFragment$$ExternalSyntheticLambda9(chooseTabsFragment, addTabDialog$ChooseTabListItemArr, 11)).this$0).show();
                return;
            default:
                MissionAdapter missionAdapter = (MissionAdapter) obj;
                Iterator it = missionAdapter.mHidden.iterator();
                while (it.hasNext()) {
                    missionAdapter.mIterator.hidden.remove((Mission) it.next());
                    it.remove();
                }
                missionAdapter.applyChanges();
                missionAdapter.mHandler.removeCallbacksAndMessages("deleteFinishedDownloads");
                return;
        }
    }
}
