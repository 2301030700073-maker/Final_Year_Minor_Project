package org.wikipedia.readinglist;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.glance.session.SessionWorker$doWork$2$2;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cookie;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.notifications.NotificationPresenter;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsReceiveHelper implements BaseActivity.Callback {
    public static List lists;
    public static final ReadingListsReceiveHelper INSTANCE$1 = new ReadingListsReceiveHelper();
    public static final ReadingListsReceiveHelper INSTANCE = new ReadingListsReceiveHelper();

    public static Object addTitlesToList(ReadingListsExportImportHelper$ExportableReadingList readingListsExportImportHelper$ExportableReadingList, ReadingList readingList, ReadingListsExportImportHelper$importLists$2 readingListsExportImportHelper$importLists$2) {
        Continuation continuation;
        List list = readingListsExportImportHelper$ExportableReadingList.pages;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (true) {
            continuation = null;
            if (!it.hasNext()) {
                break;
            }
            ReadingListsExportImportHelper$ExportablePage readingListsExportImportHelper$ExportablePage = (ReadingListsExportImportHelper$ExportablePage) it.next();
            String str = readingListsExportImportHelper$ExportablePage.title;
            int i = readingListsExportImportHelper$ExportablePage.ns;
            WikiSite.Companion companion = WikiSite.Companion;
            String str2 = readingListsExportImportHelper$ExportablePage.lang;
            companion.getClass();
            PageTitle pageTitle = new PageTitle(str, WikiSite.Companion.forLanguageCode(str2), (String) null);
            if (i != Namespace.MAIN.code()) {
                Namespace.Companion.getClass();
                pageTitle.setNamespace(Namespace.Companion.of(i).name());
            }
            arrayList.add(pageTitle);
        }
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        ReadingListPageDao_Impl readingListPageDao = Cookie.Companion.getInstance().readingListPageDao();
        Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(readingListPageDao.__db, readingListsExportImportHelper$importLists$2, new SessionWorker$doWork$2$2(readingListPageDao, readingList, arrayList, continuation, 4));
        return performInTransactionSuspending == CoroutineSingletons.COROUTINE_SUSPENDED ? performInTransactionSuspending : Unit.INSTANCE;
    }

    public static void extractListDataToExport(AppCompatActivity appCompatActivity, List list) {
        String str;
        try {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ReadingList readingList = (ReadingList) it.next();
                String title = readingList.getTitle();
                String str2 = readingList.description;
                ArrayList arrayList2 = readingList.pages;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ReadingListPage readingListPage = (ReadingListPage) it2.next();
                    arrayList3.add(new ReadingListsExportImportHelper$ExportablePage(readingListPage.apiTitle, readingListPage.wiki.languageCode, readingListPage.namespace.code()));
                }
                arrayList.add(new ReadingListsExportImportHelper$ExportableReadingList(title, str2, arrayList3));
            }
            String string = appCompatActivity.getString(list.size() == 1 ? R.string.single_list_json_file_name : R.string.multiple_lists_json_file_name, ((ReadingList) list.get(0)).getTitle());
            string.getClass();
            JsonImpl jsonImpl = JsonUtil.json;
            ReadingListsExportImportHelper$ExportableContents readingListsExportImportHelper$ExportableContents = new ReadingListsExportImportHelper$ExportableContents(arrayList);
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                str = jsonImpl2.encodeToString(ReadingListsExportImportHelper$ExportableContents.Companion.serializer(), readingListsExportImportHelper$ExportableContents);
            } catch (Exception e) {
                L.w(e);
                str = null;
            }
            FileUtil.createFileInDownloadsFolder(appCompatActivity, string, str);
            Intent intent = new Intent("android.intent.action.VIEW_DOWNLOADS");
            NotificationManager notificationManager = (NotificationManager) appCompatActivity.getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.notify(0, getNotificationBuilder(appCompatActivity, intent, list.size()).build());
            }
            String string2 = appCompatActivity.getString(R.string.reading_lists_export_completed_message);
            string2.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(appCompatActivity, string2, 0, 12);
            makeSnackbar$default.setAction(R.string.suggested_edits_article_cta_snackbar_action, new HomeFragment$$ExternalSyntheticLambda8(22, appCompatActivity, intent));
            makeSnackbar$default.show();
            int size = list.size();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(appCompatActivity, null), "ReadingList.ListItemCount:" + size + ".exported"));
        } catch (Exception unused) {
            String quantityString = appCompatActivity.getResources().getQuantityString(R.plurals.reading_list_export_failed_message, list.size());
            quantityString.getClass();
            ShareUtil.showMessage(appCompatActivity, quantityString, 0);
        }
    }

    public static NotificationCompat$Builder getNotificationBuilder(Context context, Intent intent, int i) {
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, NotificationCategory.MENTION.getId());
        notificationCompat$Builder.setDefaults(-1);
        notificationCompat$Builder.mPriority = 1;
        notificationCompat$Builder.setFlag(16, true);
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.reading_list_notification_title));
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.reading_list_notification_detailed_text));
        notificationCompat$Builder.mContentIntent = NavUtils.getActivity(context, 0, intent, 134217728);
        notificationCompat$Builder.setLargeIcon(NotificationPresenter.drawNotificationBitmap(context, R.color.blue600, R.drawable.ic_download_in_progress, ""));
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_wikipedia_w;
        notificationCompat$Builder.mColor = context.getColor(R.color.blue600);
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
        notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.reading_list_notification_text, Integer.valueOf(i)));
        notificationCompat$Builder.setStyle(notificationCompat$InboxStyle);
        return notificationCompat$Builder;
    }

    public void exportLists(BaseActivity baseActivity, List list) {
        lists = list;
        baseActivity.callback = this;
        if (Build.VERSION.SDK_INT >= 29 || FileUtil.checkSelfPermission(baseActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            extractListDataToExport(baseActivity, list);
        } else {
            baseActivity.requestPermissionLauncher.launch("android.permission.WRITE_EXTERNAL_STORAGE", null);
        }
    }

    @Override // org.wikipedia.activity.BaseActivity.Callback
    public void onPermissionResult(BaseActivity baseActivity, boolean z) {
        if (!z) {
            ShareUtil.showMessage(baseActivity, R.string.reading_list_export_write_permission_rationale);
            return;
        }
        List list = lists;
        if (list != null) {
            extractListDataToExport(baseActivity, list);
        }
        lists = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Type inference failed for: r15v29, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v26, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x03cf -> B:11:0x03da). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x03f4 -> B:17:0x03f2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0134 -> B:26:0x0165). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable receiveReadingLists(java.lang.String r32, java.lang.String r33, java.lang.String r34, boolean r35, kotlin.coroutines.jvm.internal.ContinuationImpl r36) {
        /*
            Method dump skipped, instructions count: 1164
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsReceiveHelper.receiveReadingLists(java.lang.String, java.lang.String, java.lang.String, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }
}
