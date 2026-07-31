package org.wikipedia.notifications;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.core.app.NotificationManagerCompat;
import java.util.Locale;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationPresenter {
    public static long lastPermissionRequestTime;

    public static void addAction(Context context, NotificationCompat$Builder notificationCompat$Builder, Notification.Link link, Notification notification) {
        String obj;
        String str = link.url;
        String str2 = link.tooltip;
        str.getClass();
        if (StringsKt.contains(str, "/index.php?", false) && StringsKt.contains(str, "diff=", false) && StringsKt.contains(str, "title=", false)) {
            try {
                addActionForDiffLink(context, notificationCompat$Builder, link, notification);
                return;
            } catch (Exception e) {
                L.e(e);
            }
        }
        Uri parse = Uri.parse(link.url);
        parse.getClass();
        PendingIntent activity = NavUtils.getActivity(context, 0, addIntentExtras(new Intent("android.intent.action.VIEW", parse), notification.id, notification.type), 134217728);
        if (str2.length() > 0) {
            StringUtil stringUtil = StringUtil.INSTANCE;
            obj = StringUtil.fromHtml(str2).toString();
        } else {
            StringUtil stringUtil2 = StringUtil.INSTANCE;
            obj = StringUtil.fromHtml(link.label).toString();
        }
        notificationCompat$Builder.addAction(obj, activity);
    }

    public static void addActionForDiffLink(Context context, NotificationCompat$Builder notificationCompat$Builder, Notification.Link link, Notification notification) {
        Uri parse = Uri.parse(link.url);
        parse.getClass();
        String queryParameter = parse.getQueryParameter("title");
        String queryParameter2 = parse.getQueryParameter("prev");
        if (queryParameter2 == null) {
            queryParameter2 = "";
        }
        Long longOrNull = StringsKt__StringsJVMKt.toLongOrNull(queryParameter2);
        long longValue = longOrNull != null ? longOrNull.longValue() : -1L;
        String queryParameter3 = parse.getQueryParameter("diff");
        Long longOrNull2 = StringsKt__StringsJVMKt.toLongOrNull(queryParameter3 != null ? queryParameter3 : "");
        PendingIntent activity = NavUtils.getActivity(context, 0, addIntentExtras(ByteString.Companion.newIntent$default(ArticleEditDetailsActivity.Companion, context, new PageTitle(queryParameter, new WikiSite(link.url), (String) null), -1, longValue, longOrNull2 != null ? longOrNull2.longValue() : -1L, null, 32), notification.id, notification.type), 134217728);
        StringUtil stringUtil = StringUtil.INSTANCE;
        notificationCompat$Builder.addAction(StringUtil.fromHtml(link.label).toString(), activity);
    }

    public static Intent addIntentExtras(Intent intent, long j, String str) {
        str.getClass();
        Intent putExtra = intent.putExtra("notificationId", j).putExtra("notificationType", str).putExtra("invokeSource", Constants.InvokeSource.NOTIFICATION);
        putExtra.getClass();
        return putExtra;
    }

    public static Bitmap drawNotificationBitmap(Context context, int i, int i2, String str) {
        context.getClass();
        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(24.0f);
        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(14.0f);
        int i3 = roundedDpToPx * 2;
        Bitmap createBitmap = Bitmap.createBitmap(i3, i3, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(context.getColor(i));
        if (str.length() > 0) {
            paint.setTypeface(Typeface.create("sans-serif-medium", 0));
            paint.setTextSize(Okio__OkioKt.dpToPx(12.0f));
            paint.setStrokeWidth(Okio__OkioKt.dpToPx(1.0f));
            paint.getTextBounds(str, 0, str.length(), new Rect());
            float dpToPx = Okio__OkioKt.dpToPx(4.0f);
            float f = roundedDpToPx - ((r7.right - r7.left) / 2);
            float strokeWidth = (i3 - dpToPx) - paint.getStrokeWidth();
            canvas.drawText(str, f, strokeWidth, paint);
            paint.setStyle(Paint.Style.STROKE);
            canvas.drawRoundRect(new RectF((r7.left + f) - dpToPx, (r7.top + strokeWidth) - dpToPx, f + r7.right + dpToPx, strokeWidth + r7.bottom + dpToPx), dpToPx, dpToPx, paint);
        }
        Drawable drawable = TuplesKt.getDrawable(context, i2);
        drawable.getClass();
        Drawable mutate = drawable.mutate();
        mutate.getClass();
        mutate.setTint(context.getColor(i));
        Bitmap bitmap$default = UnsignedKt.toBitmap$default(mutate);
        canvas.drawBitmap(bitmap$default, (Rect) null, new Rect(roundedDpToPx - roundedDpToPx2, 0, roundedDpToPx + roundedDpToPx2, roundedDpToPx2 * 2), (Paint) null);
        bitmap$default.recycle();
        return createBitmap;
    }

    public static NotificationCompat$Builder getDefaultBuilder(Context context, long j, String str, NotificationCategory notificationCategory) {
        context.getClass();
        notificationCategory.getClass();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, notificationCategory.getId());
        notificationCompat$Builder.setDefaults(-1);
        notificationCompat$Builder.mPriority = 1;
        notificationCompat$Builder.setFlag(16, true);
        int i = NotificationPollBroadcastReceiver.$r8$clinit;
        Intent putExtra = new Intent(context, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_notification_cancel").putExtra("notificationId", j).putExtra("notificationType", str);
        putExtra.getClass();
        notificationCompat$Builder.mNotification.deleteIntent = PendingIntent.getBroadcast(context, (int) j, putExtra, 67108864);
        return notificationCompat$Builder;
    }

    public static /* synthetic */ NotificationCompat$Builder getDefaultBuilder$default(Context context, long j, NotificationCategory notificationCategory, int i) {
        String str = (i & 4) != 0 ? "local" : "multiple";
        if ((i & 8) != 0) {
            notificationCategory = NotificationCategory.SYSTEM;
        }
        return getDefaultBuilder(context, j, str, notificationCategory);
    }

    public static void showNotification(Context context, NotificationCompat$Builder notificationCompat$Builder, int i, String str, String str2, String str3, String str4, Integer num, int i2, Intent intent) {
        Bitmap bitmap;
        context.getClass();
        str2.getClass();
        if (FileUtil.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") != 0) {
            return;
        }
        notificationCompat$Builder.mContentIntent = NavUtils.getActivity(context, 0, intent, 134217728);
        if (num != null) {
            int intValue = num.intValue();
            if (str4 == null) {
                str4 = "";
            }
            Locale locale = Locale.getDefault();
            locale.getClass();
            String upperCase = str4.toUpperCase(locale);
            upperCase.getClass();
            bitmap = drawNotificationBitmap(context, i2, intValue, upperCase);
        } else {
            bitmap = null;
        }
        notificationCompat$Builder.setLargeIcon(bitmap);
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_wikipedia_w;
        notificationCompat$Builder.mColor = context.getColor(i2);
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(str);
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(str2);
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
        notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(str3);
        notificationCompat$Builder.setStyle(notificationCompat$InboxStyle);
        new NotificationManagerCompat(context).notify(i, notificationCompat$Builder.build());
    }
}
