package org.wikipedia.readinglist;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.NodeChain;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import kotlin.ResultKt;
import kotlin.text.Charsets;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okio.Path;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListsFragment$$ExternalSyntheticLambda1 implements ReadingListBehaviorsUtil.SnackbarCallback, ReadingListBehaviorsUtil.Callback, SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListsFragment f$0;

    public /* synthetic */ ReadingListsFragment$$ExternalSyntheticLambda1(ReadingListsFragment readingListsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListsFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        Uri data;
        ContentResolver contentResolver;
        InputStream openInputStream;
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        if (activityResult.resultCode != -1 || (intent = activityResult.data) == null || (data = intent.getData()) == null) {
            return;
        }
        ReadingListsFragment readingListsFragment = this.f$0;
        NodeChain nodeChain = readingListsFragment._binding;
        nodeChain.getClass();
        ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
        AppCompatActivity activity = readingListsFragment.getActivity();
        if (activity == null || (contentResolver = activity.getContentResolver()) == null || (openInputStream = contentResolver.openInputStream(data)) == null) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openInputStream, Charsets.UTF_8), 8192);
            try {
                StringWriter stringWriter = new StringWriter();
                char[] cArr = new char[8192];
                for (int read = bufferedReader.read(cArr); read >= 0; read = bufferedReader.read(cArr)) {
                    stringWriter.write(cArr, 0, read);
                }
                String stringWriter2 = stringWriter.toString();
                stringWriter2.getClass();
                bufferedReader.close();
                AppCompatActivity activity2 = readingListsFragment.getActivity();
                activity2.getClass();
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(activity2, null), "ReadingList.import_started"));
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(activity2), new ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(activity2, 1), null, new ReadingListsExportImportHelper$importLists$2(stringWriter2, activity2, null), 2);
                readingListsFragment.importMode = true;
                openInputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ResultKt.closeFinally(openInputStream, th);
                throw th2;
            }
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.Callback
    public void onCompleted() {
        int i = this.$r8$classId;
        ReadingListsFragment readingListsFragment = this.f$0;
        switch (i) {
            case 2:
                readingListsFragment.updateLists();
                break;
            case 3:
                readingListsFragment.updateLists();
                break;
            case 4:
            case 5:
            case 6:
            default:
                readingListsFragment.adapter.notifyDataSetChanged();
                break;
            case 7:
                readingListsFragment.updateLists(readingListsFragment.currentSearchQuery, true);
                break;
            case 8:
                readingListsFragment.updateLists(readingListsFragment.currentSearchQuery, true);
                break;
            case 9:
                Path.Companion.manualSync$default();
                readingListsFragment.updateLists(readingListsFragment.currentSearchQuery, true);
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        ReadingListsFragment readingListsFragment = this.f$0;
        NodeChain nodeChain = readingListsFragment._binding;
        nodeChain.getClass();
        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain.cachedDiffer;
        wikiSwipeRefreshLayout.getClass();
        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
            Cache.Companion.promptLogInToSyncDialog(readingListsFragment.requireActivity());
            wikiSwipeRefreshLayout.setRefreshing(false);
        } else {
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setReadingListSyncEnabled(true);
            Path.Companion.manualSyncWithForce();
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.SnackbarCallback
    public void onUndoDeleteClicked() {
        int i = this.$r8$classId;
        ReadingListsFragment readingListsFragment = this.f$0;
        switch (i) {
            case 1:
                readingListsFragment.updateLists();
                break;
            case 4:
                readingListsFragment.updateLists();
                break;
            case 6:
                readingListsFragment.updateLists();
                break;
            default:
                readingListsFragment.updateLists();
                break;
        }
    }
}
