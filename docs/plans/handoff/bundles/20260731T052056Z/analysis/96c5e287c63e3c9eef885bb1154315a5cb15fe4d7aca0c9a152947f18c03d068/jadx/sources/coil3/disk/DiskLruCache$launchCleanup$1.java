package coil3.disk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.textclassifier.TextClassifier;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.TextClassifierHelperMethods;
import androidx.compose.material3.TooltipStateImpl;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.MulticastedPagingData;
import androidx.room.Room;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import coil3.request.ViewTargetRequestDelegate;
import coil3.request.ViewTargetRequestManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.BlackholeSink;
import okio.RealBufferedSink;
import okio.internal.DefaultSocket;
import org.apache.commons.lang3.StringUtils;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.history.HistoryViewModel;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainActivity;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.Resource;
import org.wikipedia.util.log.L;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DiskLruCache$launchCleanup$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DiskLruCache$launchCleanup$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new DiskLruCache$launchCleanup$1(0, (DiskLruCache) obj2, continuation);
            case 1:
                return new DiskLruCache$launchCleanup$1(1, (Function0) obj2, continuation);
            case 2:
                return new DiskLruCache$launchCleanup$1(2, (PlatformSelectionBehaviorsImpl) obj2, continuation);
            case 3:
                return new DiskLruCache$launchCleanup$1(3, (TooltipStateImpl) obj2, continuation);
            case 4:
                return new DiskLruCache$launchCleanup$1(4, (MulticastedPagingData) obj2, continuation);
            case 5:
                return new DiskLruCache$launchCleanup$1(5, (WorkSpec) obj2, continuation);
            case 6:
                return new DiskLruCache$launchCleanup$1(6, (ViewTargetRequestManager) obj2, continuation);
            case 7:
                return new DiskLruCache$launchCleanup$1(7, (Context) obj2, continuation);
            case 8:
                return new DiskLruCache$launchCleanup$1(8, (DonationReminderViewModel) obj2, continuation);
            case 9:
                return new DiskLruCache$launchCleanup$1(9, (HistoryViewModel) obj2, continuation);
            case 10:
                return new DiskLruCache$launchCleanup$1(10, (EditHistoryListActivity) obj2, continuation);
            case 11:
                return new DiskLruCache$launchCleanup$1(11, (String) obj2, continuation);
            case 12:
                return new DiskLruCache$launchCleanup$1(12, (SuggestedEditsRecentEditsFragment) obj2, continuation);
            default:
                return new DiskLruCache$launchCleanup$1(13, (UserContribListActivity) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            case 1:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                break;
            case 3:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 4:
                ((DiskLruCache$launchCleanup$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 5:
                ((DiskLruCache$launchCleanup$1) create((ConstraintsState) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 6:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 7:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 8:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 9:
                ((DiskLruCache$launchCleanup$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 10:
                ((DiskLruCache$launchCleanup$1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 11:
                break;
            case 12:
                ((DiskLruCache$launchCleanup$1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((DiskLruCache$launchCleanup$1) create((CombinedLoadStates) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = 0;
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                ResultKt.throwOnFailure(obj);
                DiskLruCache diskLruCache = (DiskLruCache) this.this$0;
                synchronized (diskLruCache.lock) {
                    if (!diskLruCache.initialized || diskLruCache.closed) {
                        return Unit.INSTANCE;
                    }
                    try {
                        diskLruCache.trimToSize();
                    } catch (IOException unused) {
                        diskLruCache.mostRecentTrimFailed = true;
                    }
                    try {
                        if (diskLruCache.operationsSinceRewrite >= 2000) {
                            diskLruCache.writeJournal();
                        }
                    } catch (IOException unused2) {
                        diskLruCache.mostRecentRebuildFailed = true;
                        diskLruCache.journalWriter = new RealBufferedSink(new BlackholeSink(0));
                    }
                    return Unit.INSTANCE;
                }
            case 1:
                ResultKt.throwOnFailure(obj);
                ((Function0) this.this$0).invoke();
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.this$0;
                TextClassifier createTextClassificationSession = TextClassifierHelperMethods.createTextClassificationSession(platformSelectionBehaviorsImpl.context, platformSelectionBehaviorsImpl.selectedTextType);
                platformSelectionBehaviorsImpl.textClassificationSession = createTextClassificationSession;
                return createTextClassificationSession;
            case 3:
                ResultKt.throwOnFailure(obj);
                ((TooltipStateImpl) this.this$0).dismiss();
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 5:
                ResultKt.throwOnFailure(obj);
                String str = ConstraintTrackingWorkerKt.TAG;
                WorkSpec workSpec = (WorkSpec) this.this$0;
                Logger$LogcatLogger.get().debug(str, "Constraints changed for " + workSpec);
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj);
                ViewTargetRequestManager viewTargetRequestManager = (ViewTargetRequestManager) this.this$0;
                ViewTargetRequestDelegate viewTargetRequestDelegate = viewTargetRequestManager.currentRequest;
                if (viewTargetRequestDelegate != null) {
                    viewTargetRequestDelegate.dispose();
                }
                viewTargetRequestManager.currentRequest = null;
                return Unit.INSTANCE;
            case 7:
                ResultKt.throwOnFailure(obj);
                Context context = (Context) this.this$0;
                ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
                shortcutInfoCompat.mContext = context;
                shortcutInfoCompat.mId = "shortcutSearch";
                shortcutInfoCompat.mLabel = context.getString(R.string.app_shortcuts_search);
                shortcutInfoCompat.mLongLabel = context.getString(R.string.app_shortcuts_search);
                shortcutInfoCompat.mIcon = IconCompat.createWithResource(context, R.drawable.appshortcut_ic_search);
                Uri uri = Uri.EMPTY;
                shortcutInfoCompat.mIntents = new Intent[]{new Intent("ACTION_APP_SHORTCUT", uri, context, MainActivity.class).setFlags(268468224).putExtra("APP_SHORTCUT_ID", "shortcutSearch").putExtra("appShortcutSearch", true)};
                if (TextUtils.isEmpty(shortcutInfoCompat.mLabel)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have a non-empty label");
                } else {
                    Intent[] intentArr = shortcutInfoCompat.mIntents;
                    if (intentArr == null || intentArr.length == 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have an intent");
                    } else {
                        ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
                        shortcutInfoCompat2.mContext = context;
                        shortcutInfoCompat2.mId = "shortcutContinueReading";
                        shortcutInfoCompat2.mLabel = context.getString(R.string.app_shortcuts_continue_reading);
                        shortcutInfoCompat2.mLongLabel = context.getString(R.string.app_shortcuts_continue_reading);
                        shortcutInfoCompat2.mIcon = IconCompat.createWithResource(context, R.drawable.appshortcut_ic_continue_reading);
                        shortcutInfoCompat2.mIntents = new Intent[]{new Intent("ACTION_APP_SHORTCUT", uri, context, MainActivity.class).setFlags(268468224).putExtra("APP_SHORTCUT_ID", "shortcutContinueReading").putExtra("appShortcutContinueReading", true)};
                        if (TextUtils.isEmpty(shortcutInfoCompat2.mLabel)) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have a non-empty label");
                        } else {
                            Intent[] intentArr2 = shortcutInfoCompat2.mIntents;
                            if (intentArr2 == null || intentArr2.length == 0) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have an intent");
                            } else {
                                ShortcutInfoCompat shortcutInfoCompat3 = new ShortcutInfoCompat();
                                shortcutInfoCompat3.mContext = context;
                                shortcutInfoCompat3.mId = "shortcutRandom";
                                shortcutInfoCompat3.mLabel = context.getString(R.string.app_shortcuts_random);
                                shortcutInfoCompat3.mLongLabel = context.getString(R.string.app_shortcuts_random);
                                shortcutInfoCompat3.mIcon = IconCompat.createWithResource(context, R.drawable.appshortcut_ic_random);
                                shortcutInfoCompat3.mIntents = new Intent[]{new Intent("ACTION_APP_SHORTCUT", uri, context, MainActivity.class).setFlags(268468224).putExtra("APP_SHORTCUT_ID", "shortcutRandom").putExtra("appShortcutRandomizer", true)};
                                if (TextUtils.isEmpty(shortcutInfoCompat3.mLabel)) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have a non-empty label");
                                } else {
                                    Intent[] intentArr3 = shortcutInfoCompat3.mIntents;
                                    if (intentArr3 == null || intentArr3.length == 0) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have an intent");
                                    } else {
                                        ShortcutInfoCompat shortcutInfoCompat4 = new ShortcutInfoCompat();
                                        shortcutInfoCompat4.mContext = context;
                                        shortcutInfoCompat4.mId = "shortcutPlaces";
                                        shortcutInfoCompat4.mLabel = context.getString(R.string.app_shortcuts_places);
                                        shortcutInfoCompat4.mLongLabel = context.getString(R.string.app_shortcuts_places);
                                        shortcutInfoCompat4.mIcon = IconCompat.createWithResource(context, R.drawable.appshortcut_ic_places);
                                        shortcutInfoCompat4.mIntents = new Intent[]{new Intent("ACTION_APP_SHORTCUT", uri, context, MainActivity.class).setFlags(268468224).putExtra("APP_SHORTCUT_ID", "shortcutPlaces").putExtra("appShortcutPlaces", true)};
                                        if (TextUtils.isEmpty(shortcutInfoCompat4.mLabel)) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have a non-empty label");
                                        } else {
                                            Intent[] intentArr4 = shortcutInfoCompat4.mIntents;
                                            if (intentArr4 != null && intentArr4.length != 0) {
                                                List listOf = Room.listOf((Object[]) new ShortcutInfoCompat[]{shortcutInfoCompat, shortcutInfoCompat2, shortcutInfoCompat3, shortcutInfoCompat4});
                                                ArrayList dynamicShortcuts = ShortcutManagerCompat.getDynamicShortcuts(context);
                                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(dynamicShortcuts, 10));
                                                Iterator it = dynamicShortcuts.iterator();
                                                while (it.hasNext()) {
                                                    arrayList.add(((ShortcutInfoCompat) it.next()).mId);
                                                }
                                                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf, 10));
                                                Iterator it2 = listOf.iterator();
                                                while (it2.hasNext()) {
                                                    arrayList2.add(((ShortcutInfoCompat) it2.next()).mId);
                                                }
                                                if (arrayList.containsAll(arrayList2)) {
                                                    L.d("Create dynamic shortcuts skipped.");
                                                } else {
                                                    ShortcutManagerCompat.setDynamicShortcuts(context, listOf);
                                                }
                                                return Unit.INSTANCE;
                                            }
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Shortcut must have an intent");
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return null;
            case 8:
                ResultKt.throwOnFailure(obj);
                DonationReminderViewModel donationReminderViewModel = (DonationReminderViewModel) this.this$0;
                donationReminderViewModel.getClass();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(donationReminderViewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(donationReminderViewModel), null, new PageActivity$onCreate$1$1$1(7, donationReminderViewModel, continuation), 2);
                return Unit.INSTANCE;
            case 9:
                ResultKt.throwOnFailure(obj);
                ((HistoryViewModel) this.this$0).historyItems.postValue(new Resource.Success(EmptyList.INSTANCE));
                return Unit.INSTANCE;
            case 10:
                ResultKt.throwOnFailure(obj);
                ActivityLoginBinding activityLoginBinding = ((EditHistoryListActivity) this.this$0).binding;
                if (activityLoginBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) activityLoginBinding.viewProgressBar;
                if (wikiSwipeRefreshLayout.mRefreshing) {
                    wikiSwipeRefreshLayout.setRefreshing(false);
                }
                return Unit.INSTANCE;
            case 11:
                ResultKt.throwOnFailure(obj);
                List list = ReadingListBehaviorsUtil.allReadingLists;
                String str2 = (String) this.this$0;
                List<ReadingList> list2 = ReadingListBehaviorsUtil.allReadingLists;
                ArrayList arrayList3 = new ArrayList();
                if (str2 == null || str2.length() == 0) {
                    arrayList3.addAll(list2);
                } else {
                    String stripAccents = StringUtils.stripAccents(str2);
                    for (ReadingList readingList : list2) {
                        String stripAccents2 = StringUtils.stripAccents(readingList.getTitle());
                        stripAccents2.getClass();
                        stripAccents.getClass();
                        if (StringsKt.contains(stripAccents2, stripAccents, true)) {
                            arrayList3.add(i, readingList);
                            i++;
                        }
                        Iterator it3 = readingList.pages.iterator();
                        while (it3.hasNext()) {
                            ReadingListPage readingListPage = (ReadingListPage) it3.next();
                            if (StringsKt.contains(readingListPage.getAccentInvariantTitle(), stripAccents, true)) {
                                if (!arrayList3.isEmpty()) {
                                    Iterator it4 = arrayList3.iterator();
                                    while (it4.hasNext()) {
                                        Object next = it4.next();
                                        if (next instanceof ReadingListPage) {
                                            ReadingListPage readingListPage2 = (ReadingListPage) next;
                                            if (Intrinsics.areEqual(readingListPage2.lang, readingListPage.lang) && Intrinsics.areEqual(readingListPage2.apiTitle, readingListPage.apiTitle)) {
                                                break;
                                            }
                                        }
                                    }
                                }
                                arrayList3.add(readingListPage);
                            }
                        }
                    }
                }
                return arrayList3;
            case 12:
                ResultKt.throwOnFailure(obj);
                SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) this.this$0;
                DefaultSocket defaultSocket = suggestedEditsRecentEditsFragment._binding;
                defaultSocket.getClass();
                if (((WikiSwipeRefreshLayout) defaultSocket.source).mRefreshing) {
                    DefaultSocket defaultSocket2 = suggestedEditsRecentEditsFragment._binding;
                    defaultSocket2.getClass();
                    ((WikiSwipeRefreshLayout) defaultSocket2.source).setRefreshing(false);
                }
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                MultipartBody.Builder builder = ((UserContribListActivity) this.this$0).binding;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = (WikiSwipeRefreshLayout) builder.boundary;
                if (wikiSwipeRefreshLayout2.mRefreshing) {
                    wikiSwipeRefreshLayout2.setRefreshing(false);
                }
                return Unit.INSTANCE;
        }
    }
}
