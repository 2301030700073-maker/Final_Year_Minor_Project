package org.schabi.newpipe.local.feed.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.core.app.NotificationManagerCompat;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.WorkForegroundUpdater;
import com.google.android.exoplayer2.C;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import okhttp3.Cookie;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.local.feed.service.FeedUpdateInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationWorker$createWork$1 implements Consumer, Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NotificationWorker this$0;

    public /* synthetic */ NotificationWorker$createWork$1(NotificationWorker notificationWorker, int i) {
        this.$r8$classId = i;
        this.this$0 = notificationWorker;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        NotificationWorker notificationWorker = this.this$0;
        switch (i) {
            case 0:
                ((Disposable) obj).getClass();
                Context context = notificationWorker.mAppContext;
                NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, context.getString(R.string.notification_channel_id));
                notificationCompat$Builder.setFlag(2, true);
                notificationCompat$Builder.setProgress(-1, -1, true);
                notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
                notificationCompat$Builder.mVisibility = 1;
                notificationCompat$Builder.mPriority = -1;
                notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.feed_notification_loading));
                Notification build = notificationCompat$Builder.build();
                build.getClass();
                ForegroundInfo foregroundInfo = new ForegroundInfo(7293450, build, Build.VERSION.SDK_INT < 29 ? 0 : 1);
                WorkerParameters workerParameters = notificationWorker.mWorkerParams;
                WorkForegroundUpdater workForegroundUpdater = workerParameters.mForegroundUpdater;
                UUID uuid = workerParameters.mId;
                TransactionExecutor transactionExecutor = (TransactionExecutor) workForegroundUpdater.mTaskExecutor.executorServiceOrNull;
                GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = new GapComposer$$ExternalSyntheticLambda0(workForegroundUpdater, uuid, foregroundInfo, context, 2);
                transactionExecutor.getClass();
                SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(transactionExecutor, gapComposer$$ExternalSyntheticLambda0, 2));
                break;
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                Log.e("NotificationWorker", "Error while displaying streams notifications", th);
                ErrorUtil.Companion companion = ErrorUtil.Companion;
                Context context2 = notificationWorker.mAppContext;
                context2.getClass();
                ErrorInfo errorInfo = new ErrorInfo(th, UserAction.NEW_STREAMS_NOTIFICATIONS, "main worker", (Integer) null, 24);
                companion.getClass();
                ErrorUtil.Companion.createNotification(context2, errorInfo);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            FeedUpdateInfo feedUpdateInfo = (FeedUpdateInfo) it.next();
            NotificationHelper notificationHelper = (NotificationHelper) this.this$0.notificationHelper$delegate.getValue();
            NotificationManagerCompat notificationManagerCompat = notificationHelper.manager;
            feedUpdateInfo.getClass();
            int i = feedUpdateInfo.serviceId;
            ArrayList arrayList = feedUpdateInfo.newStreams;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("newStreams");
                throw null;
            }
            Context context = notificationHelper.context;
            String quantityString = context.getResources().getQuantityString(R.plurals.new_streams, arrayList.size(), Integer.valueOf(arrayList.size()));
            quantityString.getClass();
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, context.getString(R.string.streams_notification_channel_id));
            String str = feedUpdateInfo.name;
            notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(str);
            notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(quantityString);
            notificationCompat$Builder.mNumber = arrayList.size();
            notificationCompat$Builder.mBadgeIcon = 2;
            notificationCompat$Builder.mPriority = 0;
            Notification notification = notificationCompat$Builder.mNotification;
            int i2 = R.drawable.ic_newpipe_triangle_white;
            notification.icon = R.drawable.ic_newpipe_triangle_white;
            notificationCompat$Builder.mColor = context.getColor(R.color.ic_launcher_background);
            notificationCompat$Builder.mColorized = true;
            notificationCompat$Builder.mColorizedSet = true;
            notificationCompat$Builder.setFlag(16, true);
            notificationCompat$Builder.mCategory = "social";
            notificationCompat$Builder.mGroupSummary = true;
            String str2 = feedUpdateInfo.url;
            notificationCompat$Builder.mGroupKey = str2;
            notificationCompat$Builder.mGroupAlertBehavior = 1;
            NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(0);
            notificationCompat$InboxStyle.mTexts = new ArrayList();
            notificationCompat$InboxStyle.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(str);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String name = ((StreamInfoItem) it2.next()).getName();
                if (name != null) {
                    ((ArrayList) notificationCompat$InboxStyle.mTexts).add(NotificationCompat$Builder.limitCharSequenceLength(name));
                }
            }
            notificationCompat$Builder.setStyle(notificationCompat$InboxStyle);
            Intent flags = SQLite.getOpenIntent(context, str2, i, StreamingService.LinkType.CHANNEL).setFlags(268435456);
            flags.getClass();
            notificationCompat$Builder.mContentIntent = NavUtils.getActivity(context, str2.hashCode(), flags, 0);
            Bitmap loadBitmapBlocking = Cookie.Companion.loadBitmapBlocking(context, R.drawable.ic_newpipe_triangle_white, feedUpdateInfo.avatarUrl);
            notificationCompat$Builder.setLargeIcon(loadBitmapBlocking);
            if (notificationManagerCompat.areNotificationsEnabled()) {
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    StreamInfoItem streamInfoItem = (StreamInfoItem) it3.next();
                    NotificationCompat$Builder notificationCompat$Builder2 = new NotificationCompat$Builder(context, context.getString(R.string.streams_notification_channel_id));
                    notificationCompat$Builder2.mNotification.icon = i2;
                    notificationCompat$Builder2.setLargeIcon(loadBitmapBlocking);
                    notificationCompat$Builder2.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(streamInfoItem.getName());
                    notificationCompat$Builder2.mContentText = NotificationCompat$Builder.limitCharSequenceLength(streamInfoItem.getUploaderName());
                    notificationCompat$Builder2.mGroupKey = streamInfoItem.getUploaderUrl();
                    notificationCompat$Builder2.mColor = context.getColor(R.color.ic_launcher_background);
                    notificationCompat$Builder2.mColorized = true;
                    notificationCompat$Builder2.mColorizedSet = true;
                    notificationCompat$Builder2.setFlag(16, true);
                    notificationCompat$Builder2.mCategory = "social";
                    Iterator it4 = it;
                    notificationCompat$Builder2.mContentIntent = NavUtils.getActivity(context, streamInfoItem.getUrl().hashCode(), SQLite.getOpenIntent(context, streamInfoItem.getUrl(), i, StreamingService.LinkType.STREAM).setFlags(268435456).putExtra("key_title", streamInfoItem.getName()), C.BUFFER_FLAG_FIRST_SAMPLE);
                    notificationCompat$Builder2.mSilent = true;
                    Notification build = notificationCompat$Builder2.build();
                    build.getClass();
                    notificationManagerCompat.notify(streamInfoItem.getUrl().hashCode(), build);
                    it = it4;
                    i2 = R.drawable.ic_newpipe_triangle_white;
                }
            }
            Iterator it5 = it;
            if (notificationManagerCompat.areNotificationsEnabled()) {
                notificationManagerCompat.notify(str2.hashCode(), notificationCompat$Builder.build());
            }
            it = it5;
        }
        return new ListenableWorker.Result.Success();
    }
}
