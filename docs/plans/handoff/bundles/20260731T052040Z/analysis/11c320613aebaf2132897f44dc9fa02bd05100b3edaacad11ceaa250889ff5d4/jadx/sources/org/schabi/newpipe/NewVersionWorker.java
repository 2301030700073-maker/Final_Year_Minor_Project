package org.schabi.newpipe;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ChildHelper;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.time.Instant;
import j$.time.ZonedDateTime;
import j$.time.format.DateTimeFormatter;
import java.io.IOException;
import kotlin.Pair;
import kotlin.ranges.RangesKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.acra.util.PackageManagerWrapperKt;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.util.ReleaseVersionUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NewVersionWorker extends Worker {
    public static final Companion Companion = new Companion();
    public static final String TAG;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        int i = MainActivity.$r8$clinit;
        TAG = "NewVersionWorker";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewVersionWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public static final void enqueueNewVersionCheckingWork(Context context, boolean z) {
        Companion.getClass();
        context.getClass();
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(0, NewVersionWorker.class);
        Pair[] pairArr = {new Pair("isManual", Boolean.valueOf(z))};
        Data.Builder builder2 = new Data.Builder(0);
        Pair pair = pairArr[0];
        builder2.put(pair.getSecond(), (String) pair.getFirst());
        builder.workSpec.input = builder2.m475build();
        WorkManagerImpl.getInstance$1(context).enqueue((OneTimeWorkRequest) builder.build());
    }

    public final void checkNewVersion() {
        if (ReleaseVersionUtil.isReleaseApk()) {
            Data data = this.mWorkerParams.mInputData;
            Object obj = Boolean.FALSE;
            Object obj2 = data.values.get("isManual");
            if (obj2 instanceof Boolean) {
                obj = obj2;
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            Context context = this.mAppContext;
            if (booleanValue || Instant.ofEpochSecond(PreferenceManager.getDefaultSharedPreferences(context).getLong(context.getString(R.string.update_expiry_key), 0L)).compareTo(Instant.now()) < 0) {
                ChildHelper childHelper = DownloaderImpl.instance.get("https://newpipe.net/api/data.json");
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                try {
                    String header = childHelper.getHeader("expires");
                    ZonedDateTime plusHours = ZonedDateTime.now().plusHours(6L);
                    if (header != null) {
                        plusHours = (ZonedDateTime) RangesKt.coerceIn(ZonedDateTime.from(DateTimeFormatter.RFC_1123_DATE_TIME.parse(header)), plusHours, plusHours.plusHours(66L));
                    }
                    long epochSecond = plusHours.toEpochSecond();
                    defaultSharedPreferences.getClass();
                    SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                    edit.getClass();
                    edit.putLong(context.getString(R.string.update_expiry_key), epochSecond);
                    edit.apply();
                } catch (Exception unused) {
                }
                try {
                    JsonObject object = ((JsonObject) JsonParser.object().from((String) childHelper.mHiddenViews)).getObject("flavors").getObject("newpipe");
                    String string = object.getString("version", null);
                    int i = object.getInt(0, "version_code");
                    String string2 = object.getString("apk", null);
                    string.getClass();
                    compareAppVersionAndShowNotification(string, i, string2);
                } catch (JsonParserException unused2) {
                }
            }
        }
    }

    public final void compareAppVersionAndShowNotification(String str, int i, String str2) {
        Uri uri;
        Context context = this.mAppContext;
        if (1014 >= i) {
            Data data = this.mWorkerParams.mInputData;
            Object obj = Boolean.FALSE;
            Object obj2 = data.values.get("isManual");
            if (obj2 instanceof Boolean) {
                obj = obj2;
            }
            if (((Boolean) obj).booleanValue()) {
                (Build.VERSION.SDK_INT >= 28 ? PackageManagerWrapperKt.getMainExecutor(context) : new ExecutorCompat$HandlerExecutor(new Handler(context.getMainLooper()), 0)).execute(new ReportExecutor$$ExternalSyntheticLambda0(this, 23));
                return;
            }
            return;
        }
        if (str2 != null) {
            uri = Uri.parse(str2);
            uri.getClass();
        } else {
            uri = null;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.addFlags(268435456);
        PendingIntent activity = NavUtils.getActivity(context, 0, intent, 0);
        String string = context.getString(R.string.app_update_notification_channel_id);
        string.getClass();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, string);
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_update;
        notificationCompat$Builder.mVisibility = 1;
        notificationCompat$Builder.setFlag(16, true);
        notificationCompat$Builder.mContentIntent = activity;
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.app_update_available_notification_title));
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.app_update_available_notification_text, str));
        NotificationManagerCompat notificationManagerCompat = new NotificationManagerCompat(context);
        if (notificationManagerCompat.areNotificationsEnabled()) {
            notificationManagerCompat.notify(2000, notificationCompat$Builder.build());
        }
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        String str = TAG;
        try {
            checkNewVersion();
            return new ListenableWorker.Result.Success();
        } catch (IOException e) {
            Log.w(str, "Could not fetch NewPipe API: probably network problem", e);
            return new ListenableWorker.Result.Failure();
        } catch (ReCaptchaException e2) {
            Log.e(str, "ReCaptchaException should never happen here.", e2);
            return new ListenableWorker.Result.Failure();
        }
    }
}
