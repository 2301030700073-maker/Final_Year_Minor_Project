package org.wikipedia.notifications;

import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.widget.Toast;
import androidx.compose.runtime.RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;
import androidx.compose.ui.unit.DpKt;
import kotlin.Metadata;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Headers;
import okio.Okio__JvmOkioKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.NotificationDirectReplyHelper$handleReply$2;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NotificationPollBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        int i = 0;
        if (!(context.getApplicationContext() instanceof WikipediaApp)) {
            new Handler(context.getMainLooper()).post(new DeviceUtil$$ExternalSyntheticLambda1(i));
            return;
        }
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            L.d("channel=".concat(NodeTraversor.getChannel(context)));
            ReadingListFragment.MultiSelectCallback.startPollTask(context);
            return;
        }
        if ("action_notification_poll".equals(intent.getAction())) {
            if (Headers.Companion.isLoggedIn()) {
                Prefs prefs = Prefs.INSTANCE;
                if (PrefsIoUtil.getLong(0L, R.string.preference_key_last_description_edit_time) != 0) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    if (Jsoup.getInstance().activityLifecycleHandler.currentActivity == null) {
                        long currentTimeMillis = (System.currentTimeMillis() - PrefsIoUtil.getLong(0L, R.string.preference_key_last_description_edit_time)) / 86400000;
                        if (Prefs.isSuggestedEditsReactivationTestEnabled()) {
                            currentTimeMillis = (System.currentTimeMillis() - PrefsIoUtil.getLong(0L, R.string.preference_key_last_description_edit_time)) / 60000;
                        }
                        if (3 <= currentTimeMillis && currentTimeMillis < 7 && !Prefs.isSuggestedEditsReactivationPassStageOne()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_reactivation_pass_stage_one, true);
                            ReadingListFragment.MultiSelectCallback.showSuggestedEditsLocalNotification(context, R.string.suggested_edits_reactivation_notification_stage_one);
                        } else if (currentTimeMillis >= 7 && Prefs.isSuggestedEditsReactivationPassStageOne()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_reactivation_pass_stage_one, false);
                            ReadingListFragment.MultiSelectCallback.showSuggestedEditsLocalNotification(context, R.string.suggested_edits_reactivation_notification_stage_two);
                        }
                    }
                }
                Okio__JvmOkioKt.schedulePollNotificationJob(context);
                return;
            }
            return;
        }
        if (!"action_direct_reply".equals(intent.getAction())) {
            if ("action_daily_game".equals(intent.getAction())) {
                NodeUtils.showNotification(context);
                return;
            } else {
                if ("action_recommended_reading_list".equals(intent.getAction())) {
                    Prefs prefs2 = Prefs.INSTANCE;
                    if (Prefs.getRecommendedReadingListUpdateFrequency() == RecommendedReadingListUpdateFrequency.MONTHLY) {
                        RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(context);
                    }
                    RecommendedReadingListSourceScreenKt.showNotification(context, Prefs.getRecommendedReadingListUpdateFrequency());
                    return;
                }
                return;
            }
        }
        Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
        CharSequence charSequence = resultsFromIntent != null ? resultsFromIntent.getCharSequence("key_direct_reply") : null;
        WikiSite wikiSite = (WikiSite) ((Parcelable) DpKt.getParcelableExtra(intent, "wikiSite", WikiSite.class));
        PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class));
        if (wikiSite == null || pageTitle == null || charSequence == null || charSequence.length() == 0) {
            return;
        }
        String obj = charSequence.toString();
        String stringExtra = intent.getStringExtra("extra_reply_to");
        if (stringExtra == null) {
            stringExtra = "";
        }
        int intExtra = intent.getIntExtra("extra_id", 0);
        obj.getClass();
        Toast.makeText(context, context.getString(R.string.notifications_direct_reply_progress, stringExtra), 0).show();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        AwaitKt.launch$default(AwaitKt.CoroutineScope(DefaultIoScheduler.INSTANCE), new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(context, pageTitle), null, new NotificationDirectReplyHelper$handleReply$2(wikiSite, pageTitle, obj, context, intExtra, null), 2);
    }
}
