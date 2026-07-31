package org.wikipedia.readinglist;

import android.app.Activity;
import android.content.DialogInterface;
import android.icu.text.ListFormatter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.RealImageLoader$execute$result$1;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda4;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.ShareUtil$shareImage$2;
import org.wikipedia.util.log.L;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda5;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListBehaviorsUtil {
    public static List allReadingLists = EmptyList.INSTANCE;
    public static final UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1 exceptionHandler = new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 2);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onCompleted();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SearchCallback {
        void onCompleted(List list);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SnackbarCallback {
        void onUndoDeleteClicked();
    }

    public static void addToDefaultList(Activity activity, PageTitle pageTitle, boolean z, Constants.InvokeSource invokeSource, RandomActivity$$ExternalSyntheticLambda4 randomActivity$$ExternalSyntheticLambda4) {
        activity.getClass();
        pageTitle.getClass();
        invokeSource.getClass();
        if (z) {
            AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new ShareUtil$shareImage$2(pageTitle, activity, invokeSource, randomActivity$$ExternalSyntheticLambda4, (Continuation) null, 10), 2);
            return;
        }
        FragmentManagerImpl supportFragmentManager = ((AppCompatActivity) activity).getSupportFragmentManager();
        List listOf = Room.listOf(pageTitle);
        AddToReadingListDialog addToReadingListDialog = new AddToReadingListDialog();
        addToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("showDefaultList", Boolean.TRUE)));
        addToReadingListDialog.dismissListener = randomActivity$$ExternalSyntheticLambda4;
        Okio__OkioKt.show(supportFragmentManager, addToReadingListDialog);
    }

    public static void deletePages(AppCompatActivity appCompatActivity, List list, ReadingListPage readingListPage, SnackbarCallback snackbarCallback, Callback callback) {
        readingListPage.getClass();
        AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new RealImageLoader$execute$result$1(list, readingListPage, appCompatActivity, snackbarCallback, callback, null, 16), 2);
    }

    public static void deleteReadingList(AppCompatActivity appCompatActivity, ReadingList readingList, boolean z, Callback callback) {
        if (readingList == null) {
            return;
        }
        Continuation continuation = null;
        if (!z) {
            AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new ReadingListBehaviorsUtil$deleteReadingList$2(readingList, appCompatActivity, callback, continuation, 0), 2);
            return;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = appCompatActivity.getString(R.string.reading_list_delete_confirm, readingList.getTitle());
        materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_delete_dialog_ok_button_text, new SurveyDialog$$ExternalSyntheticLambda8(readingList, appCompatActivity, callback, 3));
        materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_delete_dialog_cancel_button_text, (DialogInterface.OnClickListener) null);
        materialAlertDialogBuilder.show();
    }

    public static ArrayList getListsContainPage(ReadingListPage readingListPage) {
        List list = allReadingLists;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            ArrayList arrayList2 = ((ReadingList) obj).pages;
            if (arrayList2 == null || !arrayList2.isEmpty()) {
                Iterator it = arrayList2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual(((ReadingListPage) it.next()).apiTitle, readingListPage.apiTitle)) {
                        arrayList.add(obj);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public static void moveToList(Activity activity, long j, PageTitle pageTitle, Constants.InvokeSource invokeSource, boolean z, DialogInterface.OnDismissListener onDismissListener) {
        activity.getClass();
        pageTitle.getClass();
        invokeSource.getClass();
        FragmentManagerImpl supportFragmentManager = ((AppCompatActivity) activity).getSupportFragmentManager();
        List listOf = Room.listOf(pageTitle);
        MoveToReadingListDialog moveToReadingListDialog = new MoveToReadingListDialog();
        moveToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("sourceReadingListId", Long.valueOf(j)), new Pair("showDefaultList", Boolean.valueOf(z))));
        moveToReadingListDialog.dismissListener = onDismissListener;
        Okio__OkioKt.show(supportFragmentManager, moveToReadingListDialog);
    }

    public static void removePagesFromOffline(AppCompatActivity appCompatActivity, List list, Callback callback) {
        list.getClass();
        if (list.isEmpty()) {
            return;
        }
        AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new RealImageLoader$execute$2(list, appCompatActivity, callback, null, 21), 2);
    }

    public static void renameReadingList(AppCompatActivity appCompatActivity, ReadingList readingList, Callback callback) {
        if (readingList == null) {
            return;
        }
        if (readingList.isDefault()) {
            L.LEVEL_W.log("Attempted to rename default list.", null);
            return;
        }
        AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new ReadingListBehaviorsUtil$deleteReadingList$2(appCompatActivity, readingList, callback, null), 2);
    }

    public static void savePagesForOffline(AppCompatActivity appCompatActivity, List list, Callback callback) {
        list.getClass();
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.isDownloadOnlyOverWiFiEnabled()) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Object systemService = Jsoup.getInstance().getSystemService("connectivity");
            systemService.getClass();
            NetworkInfo networkInfo = ((ConnectivityManager) systemService).getNetworkInfo(1);
            if (networkInfo == null || !networkInfo.isConnected()) {
                showMobileDataWarningDialog(appCompatActivity, new SurveyDialog$$ExternalSyntheticLambda8(appCompatActivity, list, callback));
                return;
            }
        }
        boolean z = !Prefs.isDownloadingReadingListArticlesEnabled();
        if (!list.isEmpty()) {
            AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new TalkTopicsViewModel$subscribeTopic$1(list, z, appCompatActivity, null, 6), 2);
        }
        callback.onCompleted();
    }

    public static void showDeleteListUndoSnackbar(AppCompatActivity appCompatActivity, ReadingList readingList, SnackbarCallback snackbarCallback) {
        if (readingList == null) {
            return;
        }
        String string = appCompatActivity.getString(R.string.reading_list_deleted, readingList.getTitle());
        string.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(appCompatActivity, string, 0, 12);
        makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new SurveyDialog$$ExternalSyntheticLambda1(readingList, appCompatActivity, snackbarCallback, 2));
        makeSnackbar$default.show();
    }

    public static void showDeletePageFromListsUndoSnackbar(AppCompatActivity appCompatActivity, List list, ReadingListPage readingListPage, SnackbarCallback snackbarCallback) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        String string = appCompatActivity.getString(R.string.reading_list_item_deleted_from_list, readingListPage.displayTitle, Build.VERSION.SDK_INT >= 26 ? ListFormatter.getInstance().format(arrayList) : CollectionsKt.joinToString$default(arrayList, ", ", null, null, null, 62));
        string.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(appCompatActivity, string, 0, 12);
        makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new SurveyDialog$$ExternalSyntheticLambda5(list, readingListPage, appCompatActivity, snackbarCallback, 2));
        makeSnackbar$default.show();
    }

    public static void showDeletePagesUndoSnackbar(AppCompatActivity appCompatActivity, ReadingList readingList, List list, SnackbarCallback snackbarCallback) {
        list.getClass();
        if (readingList == null) {
            return;
        }
        String string = list.size() == 1 ? appCompatActivity.getString(R.string.reading_list_item_deleted_from_list, ((ReadingListPage) list.get(0)).displayTitle, readingList.getTitle()) : appCompatActivity.getResources().getQuantityString(R.plurals.reading_list_articles_deleted_from_list, list.size(), Integer.valueOf(list.size()), readingList.getTitle());
        string.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(appCompatActivity, string, 0, 12);
        makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new SurveyDialog$$ExternalSyntheticLambda5(list, readingList, appCompatActivity, snackbarCallback, 1));
        makeSnackbar$default.show();
    }

    public static void showMobileDataWarningDialog(AppCompatActivity appCompatActivity, DialogInterface.OnClickListener onClickListener) {
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
        materialAlertDialogBuilder.setTitle(R.string.dialog_title_download_only_over_wifi);
        materialAlertDialogBuilder.setMessage(R.string.dialog_text_download_only_over_wifi);
        materialAlertDialogBuilder.setPositiveButton(R.string.dialog_title_download_only_over_wifi_allow, onClickListener);
        materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_download_using_mobile_data_cancel_button_text, (DialogInterface.OnClickListener) null);
        materialAlertDialogBuilder.show();
    }

    public static void toggleOffline(AppCompatActivity appCompatActivity, ReadingListPage readingListPage, Callback callback) {
        if (!readingListPage.offline) {
            readingListPage.downloadProgress = 5;
        }
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.isDownloadOnlyOverWiFiEnabled()) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Object systemService = Jsoup.getInstance().getSystemService("connectivity");
            systemService.getClass();
            NetworkInfo networkInfo = ((ConnectivityManager) systemService).getNetworkInfo(1);
            if ((networkInfo == null || !networkInfo.isConnected()) && !readingListPage.offline) {
                showMobileDataWarningDialog(appCompatActivity, new ReadingListBehaviorsUtil$$ExternalSyntheticLambda3(appCompatActivity, readingListPage, callback, 0));
                return;
            }
        }
        AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new TalkTopicsViewModel$subscribeTopic$1(readingListPage, !Prefs.isDownloadingReadingListArticlesEnabled(), appCompatActivity, null, 7), 2);
        callback.onCompleted();
    }

    public static void togglePageOffline(AppCompatActivity appCompatActivity, ReadingListPage readingListPage, Callback callback) {
        if (!readingListPage.offline) {
            toggleOffline(appCompatActivity, readingListPage, callback);
            return;
        }
        AwaitKt.launch$default(AwaitKt.MainScope(), exceptionHandler, null, new RealImageLoader$execute$2(readingListPage, appCompatActivity, callback, null, 23), 2);
    }
}
