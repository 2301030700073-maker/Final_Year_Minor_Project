package com.braze.push;

import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.braze.Braze;
import com.braze.BrazeInternal;
import com.braze.Constants;
import com.braze.IBrazeNotificationFactory;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.BrazePushEventType;
import com.braze.enums.BrazeViewBounds;
import com.braze.enums.Channel;
import com.braze.events.BrazePushEvent;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.push.BrazeNotificationUtils;
import com.braze.push.support.HtmlUtils;
import com.braze.support.BrazeLogger;
import com.braze.support.IntentUtils;
import com.braze.support.JsonUtils;
import com.braze.support.PermissionUtils;
import com.braze.ui.BrazeDeeplinkHandler;
import com.braze.ui.actions.UriAction;
import com.braze.ui.support.UriUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* compiled from: BrazeNotificationUtils.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001[B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J*\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\f\u0010\u001e\u001a\u00020\u001d*\u00020\u0014H\u0007J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J \u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J.\u0010'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010(\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*H\u0007J\u0010\u0010,\u001a\u00020*2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010-\u001a\u00020*2\u0006\u0010\"\u001a\u00020#H\u0007J\"\u0010.\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010/\u001a\u0002002\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u00101\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00105\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00106\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\"\u00107\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00103\u001a\u0002042\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\"\u00108\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00103\u001a\u0002042\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\u0018\u00109\u001a\u00020*2\u0006\u0010:\u001a\u0002002\u0006\u00103\u001a\u000204H\u0007J\u0018\u0010;\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010<\u001a\u00020\u001d2\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010=\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010>\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010?\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010@\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010A\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010B\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010C\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010D\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020*H\u0007J\u001c\u0010F\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010G\u001a\u0004\u0018\u00010\u0005H\u0007J\u0018\u0010H\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010I\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*H\u0007J\u0010\u0010J\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001aH\u0007J\u0010\u0010K\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010L\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010M\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010N\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010O\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001c\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010R\u001a\u00020S2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0007J\"\u0010T\u001a\u00020U2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002J.\u0010W\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010X\u001a\u00020Y2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\"\u0010W\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0015\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f8G¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\\"}, d2 = {"Lcom/braze/push/BrazeNotificationUtils;", "", "<init>", "()V", "TAG", "", "SOURCE_KEY", "activeNotificationFactory", "Lcom/braze/IBrazeNotificationFactory;", "getActiveNotificationFactory", "()Lcom/braze/IBrazeNotificationFactory;", "notificationReceiverClass", "Ljava/lang/Class;", "getNotificationReceiverClass", "()Ljava/lang/Class;", "handleNotificationOpened", "", "context", "Landroid/content/Context;", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "handleNotificationDeleted", "routeUserWithNotificationOpenedIntent", "brazePush", "Lcom/braze/events/BrazePushEvent;", "extras", "Landroid/os/Bundle;", SDKConstants.PARAM_DEEP_LINK, "useWebView", "", "isBrazePushMessage", "isNotificationMessage", "sendPushMessageReceivedBroadcast", "notificationExtras", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "requestGeofenceRefreshIfAppropriate", "refreshFeatureFlagsIfAppropriate", "refreshBannersIfAppropriate", "setNotificationDurationAlarm", "thisClass", "notificationId", "", "durationInMillis", "getNotificationId", "getNotificationPriority", "wakeScreenIfAppropriate", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "prefetchBitmapsIfNewlyReceivedStoryPush", "setTitleIfPresent", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "setContentIfPresent", "setTickerIfPresent", "setContentIntentIfPresent", "setDeleteIntent", "setSmallIcon", "appConfigurationProvider", "setSetShowWhen", "setLargeIconIfPresentAndSupported", "setSoundIfPresentAndSupported", "setSummaryTextIfPresentAndSupported", "setPriorityIfPresentAndSupported", "setAccentColorIfPresentAndSupported", "setCategoryIfPresentAndSupported", "setVisibilityIfPresentAndSupported", "setPublicVersionIfPresentAndSupported", "isValidNotificationVisibility", "visibility", "logBaiduNotificationClick", "customContentString", "handleCancelNotificationAction", "cancelNotification", "isUninstallTrackingPush", "getOrCreateNotificationChannelId", "setNotificationBadgeNumberIfPresent", "handlePushStoryPageClicked", "handleContentCardsSerializedCardIfPresent", "sendNotificationOpenedBroadcast", "getValidNotificationChannel", "Landroid/app/NotificationChannel;", "notificationManager", "Landroid/app/NotificationManager;", "getPushActionPendingIntent", "Landroid/app/PendingIntent;", "action", "sendPushActionIntent", "broadcastType", "Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;", "pushIntent", "BrazeNotificationBroadcastType", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BrazeNotificationUtils {
    private static final String SOURCE_KEY = "source";
    public static final BrazeNotificationUtils INSTANCE = new BrazeNotificationUtils();
    private static final String TAG = BrazeLogger.getBrazeLogTag((Class<?>) BrazeNotificationUtils.class);

    /* compiled from: BrazeNotificationUtils.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BrazeNotificationBroadcastType.values().length];
            try {
                iArr[BrazeNotificationBroadcastType.OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BrazeNotificationBroadcastType.RECEIVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BrazeNotificationBroadcastType.DELETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final boolean isValidNotificationVisibility(int visibility) {
        return visibility == -1 || visibility == 0 || visibility == 1;
    }

    private BrazeNotificationUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: BrazeNotificationUtils.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;", "", "brazePushEventType", "Lcom/braze/enums/BrazePushEventType;", "<init>", "(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V", "getBrazePushEventType", "()Lcom/braze/enums/BrazePushEventType;", "OPENED", "RECEIVED", "DELETED", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final class BrazeNotificationBroadcastType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ BrazeNotificationBroadcastType[] $VALUES;
        private final BrazePushEventType brazePushEventType;
        public static final BrazeNotificationBroadcastType OPENED = new BrazeNotificationBroadcastType("OPENED", 0, BrazePushEventType.NOTIFICATION_OPENED);
        public static final BrazeNotificationBroadcastType RECEIVED = new BrazeNotificationBroadcastType("RECEIVED", 1, BrazePushEventType.NOTIFICATION_RECEIVED);
        public static final BrazeNotificationBroadcastType DELETED = new BrazeNotificationBroadcastType("DELETED", 2, BrazePushEventType.NOTIFICATION_DELETED);

        private static final /* synthetic */ BrazeNotificationBroadcastType[] $values() {
            return new BrazeNotificationBroadcastType[]{OPENED, RECEIVED, DELETED};
        }

        public static EnumEntries<BrazeNotificationBroadcastType> getEntries() {
            return $ENTRIES;
        }

        private BrazeNotificationBroadcastType(String str, int i, BrazePushEventType brazePushEventType) {
            this.brazePushEventType = brazePushEventType;
        }

        public final BrazePushEventType getBrazePushEventType() {
            return this.brazePushEventType;
        }

        static {
            BrazeNotificationBroadcastType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static BrazeNotificationBroadcastType valueOf(String str) {
            return (BrazeNotificationBroadcastType) Enum.valueOf(BrazeNotificationBroadcastType.class, str);
        }

        public static BrazeNotificationBroadcastType[] values() {
            return (BrazeNotificationBroadcastType[]) $VALUES.clone();
        }
    }

    @JvmStatic
    public static final IBrazeNotificationFactory getActiveNotificationFactory() {
        IBrazeNotificationFactory customBrazeNotificationFactory = Braze.INSTANCE.getCustomBrazeNotificationFactory();
        return customBrazeNotificationFactory == null ? BrazeNotificationFactory.INSTANCE.getInstance() : customBrazeNotificationFactory;
    }

    @JvmStatic
    public static final Class<?> getNotificationReceiverClass() {
        if (Constants.isAmazonDevice()) {
            return BrazeAmazonDeviceMessagingReceiver.class;
        }
        return BrazePushReceiver.class;
    }

    @JvmStatic
    public static final void handleNotificationOpened(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            Braze.INSTANCE.getInstance(context).logPushNotificationOpened(intent);
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            sendNotificationOpenedBroadcast(context, intent);
            if (BrazeInternal.INSTANCE.getConfigurationProvider(context).getDoesHandlePushDeepLinksAutomatically()) {
                routeUserWithNotificationOpenedIntent(context, intent);
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda45
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String handleNotificationOpened$lambda$0;
                        handleNotificationOpened$lambda$0 = BrazeNotificationUtils.handleNotificationOpened$lambda$0();
                        return handleNotificationOpened$lambda$0;
                    }
                }, 6, (Object) null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda46
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String handleNotificationOpened$lambda$1;
                    handleNotificationOpened$lambda$1 = BrazeNotificationUtils.handleNotificationOpened$lambda$1();
                    return handleNotificationOpened$lambda$1;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationOpened$lambda$0() {
        return "Not handling deep links automatically, skipping deep link handling";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationOpened$lambda$1() {
        return "Exception occurred attempting to handle notification opened intent.";
    }

    @JvmStatic
    public static final void handleNotificationDeleted(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda40
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String handleNotificationDeleted$lambda$2;
                    handleNotificationDeleted$lambda$2 = BrazeNotificationUtils.handleNotificationDeleted$lambda$2();
                    return handleNotificationDeleted$lambda$2;
                }
            }, 7, (Object) null);
            Bundle extras = intent.getExtras();
            if (extras != null) {
                brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.DELETED, extras, new BrazeNotificationPayload(extras, null, context, null, 10, null));
            } else {
                sendPushActionIntent$default(brazeNotificationUtils, context, BrazeNotificationBroadcastType.DELETED, extras, null, 8, null);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda41
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String handleNotificationDeleted$lambda$3;
                    handleNotificationDeleted$lambda$3 = BrazeNotificationUtils.handleNotificationDeleted$lambda$3();
                    return handleNotificationDeleted$lambda$3;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationDeleted$lambda$2() {
        return "Sending notification deleted broadcast";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationDeleted$lambda$3() {
        return "Exception occurred attempting to handle notification delete intent.";
    }

    @JvmStatic
    public static final void routeUserWithNotificationOpenedIntent(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda56
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String routeUserWithNotificationOpenedIntent$lambda$4;
                routeUserWithNotificationOpenedIntent$lambda$4 = BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$4();
                return routeUserWithNotificationOpenedIntent$lambda$4;
            }
        }, 7, (Object) null);
        Bundle bundleExtra = intent.getBundleExtra("extra");
        if (bundleExtra == null) {
            bundleExtra = new Bundle();
        }
        bundleExtra.putString("cid", intent.getStringExtra("cid"));
        bundleExtra.putString("source", Constants.BRAZE);
        brazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, bundleExtra, intent.getStringExtra("uri"), StringsKt.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, intent.getStringExtra(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY), true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$4() {
        return "routeUserWithNotificationOpenedIntent called with Intent";
    }

    @JvmStatic
    public static final void routeUserWithNotificationOpenedIntent(Context context, BrazePushEvent brazePush) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(brazePush, "brazePush");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String routeUserWithNotificationOpenedIntent$lambda$5;
                routeUserWithNotificationOpenedIntent$lambda$5 = BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$5();
                return routeUserWithNotificationOpenedIntent$lambda$5;
            }
        }, 7, (Object) null);
        Bundle brazeExtras = brazePush.getNotificationPayload().getBrazeExtras();
        brazeExtras.putString("cid", brazePush.getNotificationPayload().getCampaignId());
        brazeExtras.putString("source", Constants.BRAZE);
        String deeplink = brazePush.getNotificationPayload().getDeeplink();
        Boolean useWebView = brazePush.getNotificationPayload().getUseWebView();
        brazeNotificationUtils.routeUserWithNotificationOpenedIntent(context, brazeExtras, deeplink, useWebView != null ? useWebView.booleanValue() : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$5() {
        return "routeUserWithNotificationOpenedIntent called with BrazePushEvent";
    }

    private final void routeUserWithNotificationOpenedIntent(Context context, Bundle extras, final String deepLink, final boolean useWebView) {
        String str = deepLink;
        if (str != null && !StringsKt.isBlank(str)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String routeUserWithNotificationOpenedIntent$lambda$6;
                    routeUserWithNotificationOpenedIntent$lambda$6 = BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$6(deepLink, useWebView);
                    return routeUserWithNotificationOpenedIntent$lambda$6;
                }
            }, 7, (Object) null);
            extras.putString("uri", deepLink);
            extras.putBoolean(Constants.BRAZE_PUSH_OPEN_URI_IN_WEBVIEW_KEY, useWebView);
            UriAction createUriActionFromUrlString = BrazeDeeplinkHandler.INSTANCE.getInstance().createUriActionFromUrlString(deepLink, extras, useWebView, Channel.PUSH);
            if (createUriActionFromUrlString != null) {
                BrazeDeeplinkHandler.INSTANCE.getInstance().gotoUri(context, createUriActionFromUrlString);
                return;
            }
            return;
        }
        final Intent mainActivityIntent = UriUtils.getMainActivityIntent(context, extras);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String routeUserWithNotificationOpenedIntent$lambda$8;
                routeUserWithNotificationOpenedIntent$lambda$8 = BrazeNotificationUtils.routeUserWithNotificationOpenedIntent$lambda$8(mainActivityIntent);
                return routeUserWithNotificationOpenedIntent$lambda$8;
            }
        }, 7, (Object) null);
        context.startActivity(mainActivityIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$6(String str, boolean z) {
        return "Found a deep link: " + str + ". Use webview set to: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String routeUserWithNotificationOpenedIntent$lambda$8(Intent intent) {
        return "Push notification had no deep link. Opening main activity: " + intent;
    }

    @JvmStatic
    public static final boolean isBrazePushMessage(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return false;
        }
        return StringsKt.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, extras.getString(Constants.BRAZE_PUSH_BRAZE_KEY), true);
    }

    @JvmStatic
    public static final boolean isNotificationMessage(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Bundle extras = intent.getExtras();
        return extras != null && extras.containsKey(Constants.BRAZE_PUSH_TITLE_KEY) && extras.containsKey("a");
    }

    @JvmStatic
    public static final void sendPushMessageReceivedBroadcast(Context context, Bundle notificationExtras, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String sendPushMessageReceivedBroadcast$lambda$9;
                sendPushMessageReceivedBroadcast$lambda$9 = BrazeNotificationUtils.sendPushMessageReceivedBroadcast$lambda$9();
                return sendPushMessageReceivedBroadcast$lambda$9;
            }
        }, 7, (Object) null);
        brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.RECEIVED, notificationExtras, payload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushMessageReceivedBroadcast$lambda$9() {
        return "Sending push message received broadcast";
    }

    @JvmStatic
    public static final boolean requestGeofenceRefreshIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldSyncGeofences() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String requestGeofenceRefreshIfAppropriate$lambda$10;
                    requestGeofenceRefreshIfAppropriate$lambda$10 = BrazeNotificationUtils.requestGeofenceRefreshIfAppropriate$lambda$10();
                    return requestGeofenceRefreshIfAppropriate$lambda$10;
                }
            }, 7, (Object) null);
            BrazeInternal.requestGeofenceRefresh(context, true);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String requestGeofenceRefreshIfAppropriate$lambda$11;
                requestGeofenceRefreshIfAppropriate$lambda$11 = BrazeNotificationUtils.requestGeofenceRefreshIfAppropriate$lambda$11();
                return requestGeofenceRefreshIfAppropriate$lambda$11;
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefreshIfAppropriate$lambda$10() {
        return "Geofence sync key was true. Syncing geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefreshIfAppropriate$lambda$11() {
        return "Geofence sync key not included in push payload or false. Not syncing geofences.";
    }

    @JvmStatic
    public static final boolean refreshFeatureFlagsIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldRefreshFeatureFlags() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String refreshFeatureFlagsIfAppropriate$lambda$12;
                    refreshFeatureFlagsIfAppropriate$lambda$12 = BrazeNotificationUtils.refreshFeatureFlagsIfAppropriate$lambda$12();
                    return refreshFeatureFlagsIfAppropriate$lambda$12;
                }
            }, 7, (Object) null);
            BrazeInternal.refreshFeatureFlags(context);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String refreshFeatureFlagsIfAppropriate$lambda$13;
                refreshFeatureFlagsIfAppropriate$lambda$13 = BrazeNotificationUtils.refreshFeatureFlagsIfAppropriate$lambda$13();
                return refreshFeatureFlagsIfAppropriate$lambda$13;
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlagsIfAppropriate$lambda$12() {
        return "Feature flag refresh key was true. Refreshing feature flags.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshFeatureFlagsIfAppropriate$lambda$13() {
        return "Feature flag refresh key not included in push payload or false. Not refreshing feature flags.";
    }

    @JvmStatic
    public static final boolean refreshBannersIfAppropriate(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (payload.getShouldRefreshBanners() && context != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String refreshBannersIfAppropriate$lambda$14;
                    refreshBannersIfAppropriate$lambda$14 = BrazeNotificationUtils.refreshBannersIfAppropriate$lambda$14();
                    return refreshBannersIfAppropriate$lambda$14;
                }
            }, 7, (Object) null);
            BrazeInternal.refreshBanners(context);
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String refreshBannersIfAppropriate$lambda$15;
                refreshBannersIfAppropriate$lambda$15 = BrazeNotificationUtils.refreshBannersIfAppropriate$lambda$15();
                return refreshBannersIfAppropriate$lambda$15;
            }
        }, 6, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshBannersIfAppropriate$lambda$14() {
        return "Banners refresh key was true. Refreshing Banners.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String refreshBannersIfAppropriate$lambda$15() {
        return "Banners refresh key not included in push payload or false. Not refreshing banners.";
    }

    @JvmStatic
    public static final void setNotificationDurationAlarm(Context context, Class<?> thisClass, int notificationId, final int durationInMillis) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent(context, thisClass);
        intent.setAction(Constants.BRAZE_CANCEL_NOTIFICATION_ACTION);
        intent.putExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, notificationId);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728 | IntentUtils.getImmutablePendingIntentFlags());
        Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        if (durationInMillis >= 1000) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String notificationDurationAlarm$lambda$16;
                    notificationDurationAlarm$lambda$16 = BrazeNotificationUtils.setNotificationDurationAlarm$lambda$16(durationInMillis);
                    return notificationDurationAlarm$lambda$16;
                }
            }, 7, (Object) null);
            alarmManager.set(3, SystemClock.elapsedRealtime() + durationInMillis, broadcast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setNotificationDurationAlarm$lambda$16(int i) {
        return "Setting Notification duration alarm for " + i + " ms";
    }

    @JvmStatic
    public static final int getNotificationId(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer customNotificationId = payload.getCustomNotificationId();
        if (customNotificationId != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String notificationId$lambda$17;
                    notificationId$lambda$17 = BrazeNotificationUtils.getNotificationId$lambda$17(customNotificationId);
                    return notificationId$lambda$17;
                }
            }, 7, (Object) null);
            return customNotificationId.intValue();
        }
        String titleText = payload.getTitleText();
        String str = titleText != null ? "" + titleText : "";
        String contentText = payload.getContentText();
        if (contentText != null) {
            str = str + contentText;
        }
        final int hashCode = str != null ? str.hashCode() : 0;
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String notificationId$lambda$20;
                notificationId$lambda$20 = BrazeNotificationUtils.getNotificationId$lambda$20(hashCode);
                return notificationId$lambda$20;
            }
        }, 7, (Object) null);
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationId$lambda$17(Integer num) {
        return "Using notification id provided in the message's extras bundle: " + num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationId$lambda$20(int i) {
        return "Message without notification id provided in the extras bundle received. Using a hash of the message: " + i;
    }

    @JvmStatic
    public static final int getNotificationPriority(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer notificationPriorityInt = payload.getNotificationPriorityInt();
        Integer notificationPriorityInt2 = payload.getNotificationPriorityInt();
        if (notificationPriorityInt2 == null) {
            return 0;
        }
        int intValue = notificationPriorityInt2.intValue();
        if (-2 <= intValue && intValue < 3) {
            return intValue;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String notificationPriority$lambda$22$lambda$21;
                notificationPriority$lambda$22$lambda$21 = BrazeNotificationUtils.getNotificationPriority$lambda$22$lambda$21(notificationPriorityInt);
                return notificationPriority$lambda$22$lambda$21;
            }
        }, 6, (Object) null);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getNotificationPriority$lambda$22$lambda$21(Integer num) {
        return "Received invalid notification priority " + num;
    }

    @JvmStatic
    public static final boolean wakeScreenIfAppropriate(Context context, BrazeConfigurationProvider configurationProvider, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        return wakeScreenIfAppropriate(new BrazeNotificationPayload(notificationExtras, null, context, configurationProvider, 2, null));
    }

    @JvmStatic
    public static final boolean wakeScreenIfAppropriate(BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (context == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return false;
        }
        Bundle notificationExtras = payload.getNotificationExtras();
        if (!PermissionUtils.hasPermission(context, "android.permission.WAKE_LOCK") || !configurationProvider.isPushWakeScreenForNotificationEnabled()) {
            return false;
        }
        try {
            Object systemService = context.getSystemService("uimode");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.UiModeManager");
            if (((UiModeManager) systemService).getCurrentModeType() == 4) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String wakeScreenIfAppropriate$lambda$23;
                        wakeScreenIfAppropriate$lambda$23 = BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$23();
                        return wakeScreenIfAppropriate$lambda$23;
                    }
                }, 7, (Object) null);
                return false;
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String wakeScreenIfAppropriate$lambda$24;
                    wakeScreenIfAppropriate$lambda$24 = BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$24();
                    return wakeScreenIfAppropriate$lambda$24;
                }
            }, 4, (Object) null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            Object systemService2 = context.getSystemService("notification");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.app.NotificationManager");
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            final NotificationChannel validNotificationChannel = getValidNotificationChannel((NotificationManager) systemService2, notificationExtras);
            if (validNotificationChannel == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda33
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String wakeScreenIfAppropriate$lambda$25;
                        wakeScreenIfAppropriate$lambda$25 = BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$25();
                        return wakeScreenIfAppropriate$lambda$25;
                    }
                }, 7, (Object) null);
                return false;
            }
            if (validNotificationChannel.getImportance() == 1) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda44
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String wakeScreenIfAppropriate$lambda$26;
                        wakeScreenIfAppropriate$lambda$26 = BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$26(validNotificationChannel);
                        return wakeScreenIfAppropriate$lambda$26;
                    }
                }, 7, (Object) null);
                return false;
            }
        } else if (getNotificationPriority(payload) == -2) {
            return false;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda55
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String wakeScreenIfAppropriate$lambda$27;
                wakeScreenIfAppropriate$lambda$27 = BrazeNotificationUtils.wakeScreenIfAppropriate$lambda$27();
                return wakeScreenIfAppropriate$lambda$27;
            }
        }, 7, (Object) null);
        Object systemService3 = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService3, "null cannot be cast to non-null type android.os.PowerManager");
        PowerManager.WakeLock newWakeLock = ((PowerManager) systemService3).newWakeLock(268435482, TAG);
        newWakeLock.acquire();
        newWakeLock.release();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$23() {
        return "Not waking this TV UI mode device";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$24() {
        return "Failed to check for TV status during screen wake. Continuing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$25() {
        return "Not waking screen on Android O+ device, could not find notification channel.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$26(NotificationChannel notificationChannel) {
        return "Not acquiring wake-lock for Android O+ notification with importance: " + notificationChannel.getImportance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String wakeScreenIfAppropriate$lambda$27() {
        return "Waking screen for notification";
    }

    @JvmStatic
    public static final void prefetchBitmapsIfNewlyReceivedStoryPush(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        if (context != null && payload.getIsPushStory() && payload.getIsNewlyReceivedPushStory()) {
            List<BrazeNotificationPayload.PushStoryPage> pushStoryPages = payload.getPushStoryPages();
            ArrayList<String> arrayList = new ArrayList();
            Iterator<T> it = pushStoryPages.iterator();
            while (it.hasNext()) {
                String bitmapUrl = ((BrazeNotificationPayload.PushStoryPage) it.next()).getBitmapUrl();
                if (bitmapUrl != null) {
                    arrayList.add(bitmapUrl);
                }
            }
            for (final String str : arrayList) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda35
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29;
                        prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29 = BrazeNotificationUtils.prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29(str);
                        return prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29;
                    }
                }, 6, (Object) null);
                Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, payload.getBrazeExtras(), str, BrazeViewBounds.NOTIFICATION_ONE_IMAGE_STORY);
            }
            payload.setNewlyReceivedPushStory(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String prefetchBitmapsIfNewlyReceivedStoryPush$lambda$30$lambda$29(String str) {
        return "Pre-fetching bitmap at URL: " + str;
    }

    @JvmStatic
    public static final void setTitleIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda54
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String titleIfPresent$lambda$31;
                titleIfPresent$lambda$31 = BrazeNotificationUtils.setTitleIfPresent$lambda$31();
                return titleIfPresent$lambda$31;
            }
        }, 7, (Object) null);
        String titleText = payload.getTitleText();
        if (titleText == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return;
        }
        notificationBuilder.setContentTitle(HtmlUtils.getHtmlSpannedTextIfEnabled(titleText, configurationProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setTitleIfPresent$lambda$31() {
        return "Setting title for notification";
    }

    @JvmStatic
    public static final void setContentIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda66
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String contentIfPresent$lambda$32;
                contentIfPresent$lambda$32 = BrazeNotificationUtils.setContentIfPresent$lambda$32();
                return contentIfPresent$lambda$32;
            }
        }, 7, (Object) null);
        String contentText = payload.getContentText();
        if (contentText == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return;
        }
        notificationBuilder.setContentText(HtmlUtils.getHtmlSpannedTextIfEnabled(contentText, configurationProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setContentIfPresent$lambda$32() {
        return "Setting content for notification";
    }

    @JvmStatic
    public static final void setTickerIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String tickerIfPresent$lambda$33;
                tickerIfPresent$lambda$33 = BrazeNotificationUtils.setTickerIfPresent$lambda$33();
                return tickerIfPresent$lambda$33;
            }
        }, 7, (Object) null);
        String titleText = payload.getTitleText();
        if (titleText == null) {
            return;
        }
        notificationBuilder.setTicker(titleText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setTickerIfPresent$lambda$33() {
        return "Setting ticker for notification";
    }

    @JvmStatic
    public static final void setContentIntentIfPresent(Context context, NotificationCompat.Builder notificationBuilder, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        try {
            notificationBuilder.setContentIntent(INSTANCE.getPushActionPendingIntent(context, Constants.BRAZE_PUSH_CLICKED_ACTION, notificationExtras));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda53
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String contentIntentIfPresent$lambda$34;
                    contentIntentIfPresent$lambda$34 = BrazeNotificationUtils.setContentIntentIfPresent$lambda$34();
                    return contentIntentIfPresent$lambda$34;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setContentIntentIfPresent$lambda$34() {
        return "Error setting content intent.";
    }

    @JvmStatic
    public static final void setDeleteIntent(Context context, NotificationCompat.Builder notificationBuilder, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        try {
            Intent intent = new Intent(Constants.BRAZE_PUSH_DELETED_ACTION).setClass(context, getNotificationReceiverClass());
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            if (notificationExtras != null) {
                intent.putExtras(notificationExtras);
            }
            notificationBuilder.setDeleteIntent(PendingIntent.getBroadcast(context, IntentUtils.getRequestCode(), intent, IntentUtils.getImmutablePendingIntentFlags() | 1073741824));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String deleteIntent$lambda$35;
                    deleteIntent$lambda$35 = BrazeNotificationUtils.setDeleteIntent$lambda$35();
                    return deleteIntent$lambda$35;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setDeleteIntent$lambda$35() {
        return "Error setting delete intent.";
    }

    @JvmStatic
    public static final int setSmallIcon(BrazeConfigurationProvider appConfigurationProvider, NotificationCompat.Builder notificationBuilder) {
        Intrinsics.checkNotNullParameter(appConfigurationProvider, "appConfigurationProvider");
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        int smallNotificationIconResourceId = appConfigurationProvider.getSmallNotificationIconResourceId();
        if (smallNotificationIconResourceId == 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda71
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String smallIcon$lambda$36;
                    smallIcon$lambda$36 = BrazeNotificationUtils.setSmallIcon$lambda$36();
                    return smallIcon$lambda$36;
                }
            }, 7, (Object) null);
            smallNotificationIconResourceId = appConfigurationProvider.getApplicationIconResourceId();
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda72
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String smallIcon$lambda$37;
                    smallIcon$lambda$37 = BrazeNotificationUtils.setSmallIcon$lambda$37();
                    return smallIcon$lambda$37;
                }
            }, 7, (Object) null);
        }
        notificationBuilder.setSmallIcon(smallNotificationIconResourceId);
        return smallNotificationIconResourceId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSmallIcon$lambda$36() {
        return "Small notification icon resource was not found. Will use the app icon when displaying notifications.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSmallIcon$lambda$37() {
        return "Setting small icon for notification via resource id";
    }

    @JvmStatic
    public static final void setSetShowWhen(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getIsPushStory()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String setShowWhen$lambda$38;
                    setShowWhen$lambda$38 = BrazeNotificationUtils.setSetShowWhen$lambda$38();
                    return setShowWhen$lambda$38;
                }
            }, 7, (Object) null);
            notificationBuilder.setShowWhen(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSetShowWhen$lambda$38() {
        return "Set show when not supported in story push.";
    }

    @JvmStatic
    public static final boolean setLargeIconIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        BrazeConfigurationProvider configurationProvider;
        BrazeNotificationUtils brazeNotificationUtils;
        String largeIcon;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getIsPushStory()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda58
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String largeIconIfPresentAndSupported$lambda$39;
                    largeIconIfPresentAndSupported$lambda$39 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$39();
                    return largeIconIfPresentAndSupported$lambda$39;
                }
            }, 7, (Object) null);
            return false;
        }
        Context context = payload.getContext();
        if (context == null || (configurationProvider = payload.getConfigurationProvider()) == null) {
            return false;
        }
        try {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            brazeNotificationUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda59
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String largeIconIfPresentAndSupported$lambda$40;
                    largeIconIfPresentAndSupported$lambda$40 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$40();
                    return largeIconIfPresentAndSupported$lambda$40;
                }
            }, 7, (Object) null);
            largeIcon = payload.getLargeIcon();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda62
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String largeIconIfPresentAndSupported$lambda$44;
                    largeIconIfPresentAndSupported$lambda$44 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$44();
                    return largeIconIfPresentAndSupported$lambda$44;
                }
            }, 4, (Object) null);
        }
        if (largeIcon != null) {
            notificationBuilder.setLargeIcon(Braze.INSTANCE.getInstance(context).getImageLoader().getPushBitmapFromUrl(context, null, largeIcon, BrazeViewBounds.NOTIFICATION_LARGE_ICON));
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda60
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String largeIconIfPresentAndSupported$lambda$42;
                largeIconIfPresentAndSupported$lambda$42 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$42();
                return largeIconIfPresentAndSupported$lambda$42;
            }
        }, 7, (Object) null);
        int largeNotificationIconResourceId = configurationProvider.getLargeNotificationIconResourceId();
        if (largeNotificationIconResourceId != 0) {
            notificationBuilder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), largeNotificationIconResourceId));
            return true;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda61
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String largeIconIfPresentAndSupported$lambda$43;
                largeIconIfPresentAndSupported$lambda$43 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$43();
                return largeIconIfPresentAndSupported$lambda$43;
            }
        }, 7, (Object) null);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda63
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String largeIconIfPresentAndSupported$lambda$45;
                largeIconIfPresentAndSupported$lambda$45 = BrazeNotificationUtils.setLargeIconIfPresentAndSupported$lambda$45();
                return largeIconIfPresentAndSupported$lambda$45;
            }
        }, 7, (Object) null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$39() {
        return "Large icon not supported in story push.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$40() {
        return "Setting large icon for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$42() {
        return "Large icon bitmap url not present in extras. Attempting to use resource id instead.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$43() {
        return "Large icon resource id not present for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$44() {
        return "Error setting large notification icon";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setLargeIconIfPresentAndSupported$lambda$45() {
        return "Large icon not set for notification";
    }

    @JvmStatic
    public static final void setSoundIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String notificationSound = payload.getNotificationSound();
        if (notificationSound == null) {
            return;
        }
        if (Intrinsics.areEqual(notificationSound, "d")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String soundIfPresentAndSupported$lambda$46;
                    soundIfPresentAndSupported$lambda$46 = BrazeNotificationUtils.setSoundIfPresentAndSupported$lambda$46();
                    return soundIfPresentAndSupported$lambda$46;
                }
            }, 7, (Object) null);
            notificationBuilder.setDefaults(1);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String soundIfPresentAndSupported$lambda$47;
                    soundIfPresentAndSupported$lambda$47 = BrazeNotificationUtils.setSoundIfPresentAndSupported$lambda$47();
                    return soundIfPresentAndSupported$lambda$47;
                }
            }, 7, (Object) null);
            notificationBuilder.setSound(Uri.parse(notificationSound));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSoundIfPresentAndSupported$lambda$46() {
        return "Setting default sound for notification.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSoundIfPresentAndSupported$lambda$47() {
        return "Setting sound for notification via uri.";
    }

    @JvmStatic
    public static final void setSummaryTextIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String summaryText = payload.getSummaryText();
        if (summaryText != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda47
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String summaryTextIfPresentAndSupported$lambda$48;
                    summaryTextIfPresentAndSupported$lambda$48 = BrazeNotificationUtils.setSummaryTextIfPresentAndSupported$lambda$48();
                    return summaryTextIfPresentAndSupported$lambda$48;
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNull(notificationBuilder.setSubText(summaryText));
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda48
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String summaryTextIfPresentAndSupported$lambda$49;
                    summaryTextIfPresentAndSupported$lambda$49 = BrazeNotificationUtils.setSummaryTextIfPresentAndSupported$lambda$49();
                    return summaryTextIfPresentAndSupported$lambda$49;
                }
            }, 7, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSummaryTextIfPresentAndSupported$lambda$48() {
        return "Setting summary text for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setSummaryTextIfPresentAndSupported$lambda$49() {
        return "Summary text not present. Not setting summary text for notification.";
    }

    @JvmStatic
    public static final void setPriorityIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String priorityIfPresentAndSupported$lambda$50;
                priorityIfPresentAndSupported$lambda$50 = BrazeNotificationUtils.setPriorityIfPresentAndSupported$lambda$50();
                return priorityIfPresentAndSupported$lambda$50;
            }
        }, 7, (Object) null);
        notificationBuilder.setPriority(getNotificationPriority(payload));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPriorityIfPresentAndSupported$lambda$50() {
        return "Setting priority for notification";
    }

    @JvmStatic
    public static final void setAccentColorIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Integer accentColor = payload.getAccentColor();
        if (accentColor != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda51
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String accentColorIfPresentAndSupported$lambda$51;
                    accentColorIfPresentAndSupported$lambda$51 = BrazeNotificationUtils.setAccentColorIfPresentAndSupported$lambda$51();
                    return accentColorIfPresentAndSupported$lambda$51;
                }
            }, 7, (Object) null);
            notificationBuilder.setColor(accentColor.intValue());
            return;
        }
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        if (configurationProvider != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda52
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String accentColorIfPresentAndSupported$lambda$53$lambda$52;
                    accentColorIfPresentAndSupported$lambda$53$lambda$52 = BrazeNotificationUtils.setAccentColorIfPresentAndSupported$lambda$53$lambda$52();
                    return accentColorIfPresentAndSupported$lambda$53$lambda$52;
                }
            }, 7, (Object) null);
            notificationBuilder.setColor(configurationProvider.getDefaultNotificationAccentColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setAccentColorIfPresentAndSupported$lambda$51() {
        return "Using accent color for notification from extras bundle";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setAccentColorIfPresentAndSupported$lambda$53$lambda$52() {
        return "Using default accent color for notification";
    }

    @JvmStatic
    public static final void setCategoryIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        String notificationCategory = payload.getNotificationCategory();
        if (notificationCategory != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda36
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String categoryIfPresentAndSupported$lambda$54;
                    categoryIfPresentAndSupported$lambda$54 = BrazeNotificationUtils.setCategoryIfPresentAndSupported$lambda$54();
                    return categoryIfPresentAndSupported$lambda$54;
                }
            }, 7, (Object) null);
            Intrinsics.checkNotNull(notificationBuilder.setCategory(notificationCategory));
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda37
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String categoryIfPresentAndSupported$lambda$55;
                    categoryIfPresentAndSupported$lambda$55 = BrazeNotificationUtils.setCategoryIfPresentAndSupported$lambda$55();
                    return categoryIfPresentAndSupported$lambda$55;
                }
            }, 7, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCategoryIfPresentAndSupported$lambda$54() {
        return "Setting category for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setCategoryIfPresentAndSupported$lambda$55() {
        return "Category not present in notification extras. Not setting category for notification.";
    }

    @JvmStatic
    public static final void setVisibilityIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        final Integer notificationVisibility = payload.getNotificationVisibility();
        if (notificationVisibility != null) {
            BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
            if (isValidNotificationVisibility(notificationVisibility.intValue())) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda38
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String visibilityIfPresentAndSupported$lambda$56;
                        visibilityIfPresentAndSupported$lambda$56 = BrazeNotificationUtils.setVisibilityIfPresentAndSupported$lambda$56();
                        return visibilityIfPresentAndSupported$lambda$56;
                    }
                }, 7, (Object) null);
                Intrinsics.checkNotNull(notificationBuilder.setVisibility(notificationVisibility.intValue()));
            } else {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String visibilityIfPresentAndSupported$lambda$57;
                        visibilityIfPresentAndSupported$lambda$57 = BrazeNotificationUtils.setVisibilityIfPresentAndSupported$lambda$57(notificationVisibility);
                        return visibilityIfPresentAndSupported$lambda$57;
                    }
                }, 6, (Object) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setVisibilityIfPresentAndSupported$lambda$56() {
        return "Setting visibility for notification";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setVisibilityIfPresentAndSupported$lambda$57(Integer num) {
        return "Received invalid notification visibility " + num;
    }

    @JvmStatic
    public static final void setPublicVersionIfPresentAndSupported(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Context context = payload.getContext();
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        if (context == null || payload.getPublicNotificationExtras() == null || configurationProvider == null) {
            return;
        }
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        String orCreateNotificationChannelId = getOrCreateNotificationChannelId(payload);
        Bundle parseJsonObjectIntoBundle = JsonUtils.parseJsonObjectIntoBundle(payload.getPublicNotificationExtras());
        if (parseJsonObjectIntoBundle.isEmpty()) {
            return;
        }
        final BrazeNotificationPayload brazeNotificationPayload = new BrazeNotificationPayload(parseJsonObjectIntoBundle, null, context, configurationProvider, 2, null);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, orCreateNotificationChannelId);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String publicVersionIfPresentAndSupported$lambda$58;
                publicVersionIfPresentAndSupported$lambda$58 = BrazeNotificationUtils.setPublicVersionIfPresentAndSupported$lambda$58(BrazeNotificationPayload.this);
                return publicVersionIfPresentAndSupported$lambda$58;
            }
        }, 7, (Object) null);
        setContentIfPresent(builder, brazeNotificationPayload);
        setTitleIfPresent(builder, brazeNotificationPayload);
        setSummaryTextIfPresentAndSupported(builder, brazeNotificationPayload);
        setSmallIcon(configurationProvider, builder);
        setAccentColorIfPresentAndSupported(builder, brazeNotificationPayload);
        notificationBuilder.setPublicVersion(builder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setPublicVersionIfPresentAndSupported$lambda$58(BrazeNotificationPayload brazeNotificationPayload) {
        return "Setting public version of notification with payload: " + brazeNotificationPayload;
    }

    @JvmStatic
    public static final void logBaiduNotificationClick(Context context, final String customContentString) {
        if (customContentString == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String logBaiduNotificationClick$lambda$59;
                    logBaiduNotificationClick$lambda$59 = BrazeNotificationUtils.logBaiduNotificationClick$lambda$59();
                    return logBaiduNotificationClick$lambda$59;
                }
            }, 6, (Object) null);
            return;
        }
        if (context == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String logBaiduNotificationClick$lambda$60;
                    logBaiduNotificationClick$lambda$60 = BrazeNotificationUtils.logBaiduNotificationClick$lambda$60();
                    return logBaiduNotificationClick$lambda$60;
                }
            }, 6, (Object) null);
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(customContentString);
            String optionalString = JsonUtils.getOptionalString(jSONObject, "source");
            String optionalString2 = JsonUtils.getOptionalString(jSONObject, "cid");
            if (optionalString == null || !Intrinsics.areEqual(optionalString, Constants.BRAZE) || optionalString2 == null) {
                return;
            }
            Braze.INSTANCE.getInstance(context).logPushNotificationOpened(optionalString2);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String logBaiduNotificationClick$lambda$61;
                    logBaiduNotificationClick$lambda$61 = BrazeNotificationUtils.logBaiduNotificationClick$lambda$61(customContentString);
                    return logBaiduNotificationClick$lambda$61;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$59() {
        return "customContentString was null. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$60() {
        return "Cannot log baidu click with null context. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String logBaiduNotificationClick$lambda$61(String str) {
        return "Caught an exception processing customContentString: " + str;
    }

    @JvmStatic
    public static final void handleCancelNotificationAction(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            if (intent.hasExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID)) {
                final int intExtra = intent.getIntExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, -1);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda64
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String handleCancelNotificationAction$lambda$62;
                        handleCancelNotificationAction$lambda$62 = BrazeNotificationUtils.handleCancelNotificationAction$lambda$62(intExtra);
                        return handleCancelNotificationAction$lambda$62;
                    }
                }, 7, (Object) null);
                Object systemService = context.getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                ((NotificationManager) systemService).cancel(Constants.BRAZE_PUSH_NOTIFICATION_TAG, intExtra);
            }
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda65
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String handleCancelNotificationAction$lambda$63;
                    handleCancelNotificationAction$lambda$63 = BrazeNotificationUtils.handleCancelNotificationAction$lambda$63();
                    return handleCancelNotificationAction$lambda$63;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCancelNotificationAction$lambda$62(int i) {
        return "Cancelling notification action with id: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleCancelNotificationAction$lambda$63() {
        return "Exception occurred handling cancel notification intent.";
    }

    @JvmStatic
    public static final void cancelNotification(Context context, final int notificationId) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda49
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String cancelNotification$lambda$64;
                    cancelNotification$lambda$64 = BrazeNotificationUtils.cancelNotification$lambda$64(notificationId);
                    return cancelNotification$lambda$64;
                }
            }, 7, (Object) null);
            Intent intent = new Intent(Constants.BRAZE_CANCEL_NOTIFICATION_ACTION).setClass(context, getNotificationReceiverClass());
            Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
            intent.setPackage(context.getPackageName());
            intent.putExtra(Constants.BRAZE_PUSH_NOTIFICATION_ID, notificationId);
            IntentUtils.addComponentAndSendBroadcast(context, intent);
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda50
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String cancelNotification$lambda$65;
                    cancelNotification$lambda$65 = BrazeNotificationUtils.cancelNotification$lambda$65();
                    return cancelNotification$lambda$65;
                }
            }, 4, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cancelNotification$lambda$64(int i) {
        return "Cancelling notification action with id: " + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cancelNotification$lambda$65() {
        return "Exception occurred attempting to cancel notification.";
    }

    @JvmStatic
    public static final boolean isUninstallTrackingPush(Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(notificationExtras, "notificationExtras");
        try {
            if (notificationExtras.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY)) {
                return true;
            }
            Bundle bundle = notificationExtras.getBundle("extra");
            if (bundle != null) {
                return bundle.containsKey(Constants.BRAZE_PUSH_UNINSTALL_TRACKING_KEY);
            }
            return false;
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isUninstallTrackingPush$lambda$66;
                    isUninstallTrackingPush$lambda$66 = BrazeNotificationUtils.isUninstallTrackingPush$lambda$66();
                    return isUninstallTrackingPush$lambda$66;
                }
            }, 4, (Object) null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isUninstallTrackingPush$lambda$66() {
        return "Failed to determine if push is uninstall tracking. Returning false.";
    }

    @JvmStatic
    public static final String getOrCreateNotificationChannelId(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final String notificationChannelId = payload.getNotificationChannelId();
        if (Build.VERSION.SDK_INT < 26) {
            return notificationChannelId == null ? Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID : notificationChannelId;
        }
        Context context = payload.getContext();
        BrazeConfigurationProvider configurationProvider = payload.getConfigurationProvider();
        Object systemService = context != null ? context.getSystemService("notification") : null;
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (notificationChannelId != null) {
            if (notificationManager.getNotificationChannel(notificationChannelId) != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda67
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String orCreateNotificationChannelId$lambda$67;
                        orCreateNotificationChannelId$lambda$67 = BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$67(notificationChannelId);
                        return orCreateNotificationChannelId$lambda$67;
                    }
                }, 7, (Object) null);
                return notificationChannelId;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda68
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String orCreateNotificationChannelId$lambda$68;
                    orCreateNotificationChannelId$lambda$68 = BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$68(notificationChannelId);
                    return orCreateNotificationChannelId$lambda$68;
                }
            }, 7, (Object) null);
        }
        if (notificationManager.getNotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID) == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda69
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String orCreateNotificationChannelId$lambda$69;
                    orCreateNotificationChannelId$lambda$69 = BrazeNotificationUtils.getOrCreateNotificationChannelId$lambda$69();
                    return orCreateNotificationChannelId$lambda$69;
                }
            }, 7, (Object) null);
            NotificationChannel notificationChannel = new NotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID, configurationProvider != null ? configurationProvider.getDefaultNotificationChannelName() : null, 3);
            notificationChannel.setDescription(configurationProvider != null ? configurationProvider.getDefaultNotificationChannelDescription() : null);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$67(String str) {
        return "Found notification channel in extras with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$68(String str) {
        return "Notification channel from extras is invalid. No channel found with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getOrCreateNotificationChannelId$lambda$69() {
        return "Braze default notification channel does not exist on device. Creating default channel.";
    }

    @JvmStatic
    public static final void setNotificationBadgeNumberIfPresent(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (Build.VERSION.SDK_INT < 26) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String notificationBadgeNumberIfPresent$lambda$70;
                    notificationBadgeNumberIfPresent$lambda$70 = BrazeNotificationUtils.setNotificationBadgeNumberIfPresent$lambda$70();
                    return notificationBadgeNumberIfPresent$lambda$70;
                }
            }, 7, (Object) null);
            return;
        }
        Integer notificationBadgeNumber = payload.getNotificationBadgeNumber();
        if (notificationBadgeNumber != null) {
            notificationBuilder.setNumber(notificationBadgeNumber.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setNotificationBadgeNumberIfPresent$lambda$70() {
        return "Notification badge number not supported on this android version. Not setting badge number for notification.";
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007a A[Catch: Exception -> 0x0092, TryCatch #0 {Exception -> 0x0092, blocks: (B:3:0x000c, B:6:0x0037, B:7:0x003a, B:10:0x0046, B:13:0x004d, B:15:0x005f, B:18:0x0066, B:19:0x006f, B:21:0x007a, B:24:0x007e, B:26:0x006c), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e A[Catch: Exception -> 0x0092, TRY_LEAVE, TryCatch #0 {Exception -> 0x0092, blocks: (B:3:0x000c, B:6:0x0037, B:7:0x003a, B:10:0x0046, B:13:0x004d, B:15:0x005f, B:18:0x0066, B:19:0x006f, B:21:0x007a, B:24:0x007e, B:26:0x006c), top: B:2:0x000c }] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void handlePushStoryPageClicked(android.content.Context r8, android.content.Intent r9) {
        /*
            java.lang.String r0 = "braze_action_uri"
            java.lang.String r1 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            java.lang.String r1 = "intent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r1)
            com.braze.Braze$Companion r1 = com.braze.Braze.INSTANCE     // Catch: java.lang.Exception -> L92
            com.braze.Braze r1 = r1.getInstance(r8)     // Catch: java.lang.Exception -> L92
            java.lang.String r2 = "braze_campaign_id"
            java.lang.String r2 = r9.getStringExtra(r2)     // Catch: java.lang.Exception -> L92
            java.lang.String r3 = "braze_story_page_id"
            java.lang.String r3 = r9.getStringExtra(r3)     // Catch: java.lang.Exception -> L92
            r1.logPushStoryPageClicked(r2, r3)     // Catch: java.lang.Exception -> L92
            com.braze.BrazeInternal r1 = com.braze.BrazeInternal.INSTANCE     // Catch: java.lang.Exception -> L92
            com.braze.configuration.BrazeConfigurationProvider r1 = r1.getConfigurationProvider(r8)     // Catch: java.lang.Exception -> L92
            java.lang.String r2 = "nid"
            r3 = 0
            int r2 = r9.getIntExtra(r2, r3)     // Catch: java.lang.Exception -> L92
            boolean r3 = r1.getDoesPushStoryDismissOnClick()     // Catch: java.lang.Exception -> L92
            if (r3 == 0) goto L3a
            if (r2 == 0) goto L3a
            cancelNotification(r8, r2)     // Catch: java.lang.Exception -> L92
        L3a:
            java.lang.String r2 = r9.getStringExtra(r0)     // Catch: java.lang.Exception -> L92
            r3 = r2
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "uri"
            if (r3 == 0) goto L6c
            boolean r3 = kotlin.text.StringsKt.isBlank(r3)     // Catch: java.lang.Exception -> L92
            if (r3 == 0) goto L4d
            goto L6c
        L4d:
            java.lang.String r0 = r9.getStringExtra(r0)     // Catch: java.lang.Exception -> L92
            r9.putExtra(r4, r0)     // Catch: java.lang.Exception -> L92
            java.lang.String r0 = "braze_action_use_webview"
            java.lang.String r0 = r9.getStringExtra(r0)     // Catch: java.lang.Exception -> L92
            r3 = r0
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L92
            if (r3 == 0) goto L6f
            boolean r3 = kotlin.text.StringsKt.isBlank(r3)     // Catch: java.lang.Exception -> L92
            if (r3 == 0) goto L66
            goto L6f
        L66:
            java.lang.String r3 = "ab_use_webview"
            r9.putExtra(r3, r0)     // Catch: java.lang.Exception -> L92
            goto L6f
        L6c:
            r9.removeExtra(r4)     // Catch: java.lang.Exception -> L92
        L6f:
            com.braze.push.BrazeNotificationUtils r3 = com.braze.push.BrazeNotificationUtils.INSTANCE     // Catch: java.lang.Exception -> L92
            sendNotificationOpenedBroadcast(r8, r9)     // Catch: java.lang.Exception -> L92
            boolean r0 = r1.getDoesHandlePushDeepLinksAutomatically()     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L7e
            routeUserWithNotificationOpenedIntent(r8, r9)     // Catch: java.lang.Exception -> L92
            goto La7
        L7e:
            com.braze.support.BrazeLogger r0 = com.braze.support.BrazeLogger.INSTANCE     // Catch: java.lang.Exception -> L92
            com.braze.support.BrazeLogger$Priority r8 = com.braze.support.BrazeLogger.Priority.I     // Catch: java.lang.Exception -> L92
            com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda19 r5 = new com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda19     // Catch: java.lang.Exception -> L92
            r5.<init>()     // Catch: java.lang.Exception -> L92
            r6 = 6
            r7 = 0
            r9 = 0
            r4 = 0
            r1 = r3
            r2 = r8
            r3 = r9
            com.braze.support.BrazeLogger.brazelog$default(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L92
            goto La7
        L92:
            r8 = move-exception
            com.braze.support.BrazeLogger r0 = com.braze.support.BrazeLogger.INSTANCE
            com.braze.push.BrazeNotificationUtils r1 = com.braze.push.BrazeNotificationUtils.INSTANCE
            com.braze.support.BrazeLogger$Priority r2 = com.braze.support.BrazeLogger.Priority.E
            r3 = r8
            java.lang.Throwable r3 = (java.lang.Throwable) r3
            com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda20 r5 = new com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda20
            r5.<init>()
            r6 = 4
            r7 = 0
            r4 = 0
            com.braze.support.BrazeLogger.brazelog$default(r0, r1, r2, r3, r4, r5, r6, r7)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.push.BrazeNotificationUtils.handlePushStoryPageClicked(android.content.Context, android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handlePushStoryPageClicked$lambda$71(String str) {
        return "Not handling deep links automatically, skipping deep link handling for '" + str + '\'';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handlePushStoryPageClicked$lambda$72() {
        return "Caught exception while handling story click.";
    }

    @JvmStatic
    public static final void handleContentCardsSerializedCardIfPresent(BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        final String contentCardSyncData = payload.getContentCardSyncData();
        final String contentCardSyncUserId = payload.getContentCardSyncUserId();
        Context context = payload.getContext();
        if (contentCardSyncData == null || context == null) {
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda57
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String handleContentCardsSerializedCardIfPresent$lambda$73;
                handleContentCardsSerializedCardIfPresent$lambda$73 = BrazeNotificationUtils.handleContentCardsSerializedCardIfPresent$lambda$73(contentCardSyncUserId, contentCardSyncData);
                return handleContentCardsSerializedCardIfPresent$lambda$73;
            }
        }, 7, (Object) null);
        BrazeInternal.addSerializedContentCardToStorage(context, contentCardSyncData, contentCardSyncUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleContentCardsSerializedCardIfPresent$lambda$73(String str, String str2) {
        return "Push contains associated Content Cards card. User id: " + str + " Card data: " + str2;
    }

    @JvmStatic
    public static final void sendNotificationOpenedBroadcast(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeNotificationUtils brazeNotificationUtils = INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationUtils, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda70
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String sendNotificationOpenedBroadcast$lambda$74;
                sendNotificationOpenedBroadcast$lambda$74 = BrazeNotificationUtils.sendNotificationOpenedBroadcast$lambda$74();
                return sendNotificationOpenedBroadcast$lambda$74;
            }
        }, 7, (Object) null);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            brazeNotificationUtils.sendPushActionIntent(context, BrazeNotificationBroadcastType.OPENED, extras, new BrazeNotificationPayload(extras, null, context, null, 10, null));
        } else {
            sendPushActionIntent$default(brazeNotificationUtils, context, BrazeNotificationBroadcastType.OPENED, extras, null, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendNotificationOpenedBroadcast$lambda$74() {
        return "Sending notification opened broadcast";
    }

    @JvmStatic
    public static final NotificationChannel getValidNotificationChannel(NotificationManager notificationManager, Bundle notificationExtras) {
        Intrinsics.checkNotNullParameter(notificationManager, "notificationManager");
        if (notificationExtras == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String validNotificationChannel$lambda$75;
                    validNotificationChannel$lambda$75 = BrazeNotificationUtils.getValidNotificationChannel$lambda$75();
                    return validNotificationChannel$lambda$75;
                }
            }, 7, (Object) null);
            return null;
        }
        final String string = notificationExtras.getString(Constants.BRAZE_PUSH_NOTIFICATION_CHANNEL_ID_KEY, null);
        String str = string;
        if (str != null && !StringsKt.isBlank(str)) {
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(string);
            if (notificationChannel != null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String validNotificationChannel$lambda$76;
                        validNotificationChannel$lambda$76 = BrazeNotificationUtils.getValidNotificationChannel$lambda$76(string);
                        return validNotificationChannel$lambda$76;
                    }
                }, 7, (Object) null);
                return notificationChannel;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String validNotificationChannel$lambda$77;
                    validNotificationChannel$lambda$77 = BrazeNotificationUtils.getValidNotificationChannel$lambda$77(string);
                    return validNotificationChannel$lambda$77;
                }
            }, 7, (Object) null);
        }
        NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel(Constants.BRAZE_PUSH_DEFAULT_NOTIFICATION_CHANNEL_ID);
        if (notificationChannel2 != null) {
            return notificationChannel2;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String validNotificationChannel$lambda$78;
                validNotificationChannel$lambda$78 = BrazeNotificationUtils.getValidNotificationChannel$lambda$78();
                return validNotificationChannel$lambda$78;
            }
        }, 7, (Object) null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$75() {
        return "Notification extras bundle was null. Could not find a valid notification channel";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$76(String str) {
        return "Found notification channel in extras with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$77(String str) {
        return "Notification channel from extras is invalid, no channel found with id: " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getValidNotificationChannel$lambda$78() {
        return "Braze default notification channel does not exist on device.";
    }

    private final PendingIntent getPushActionPendingIntent(Context context, String action, Bundle notificationExtras) {
        Intent intent = new Intent(action).setClass(context, NotificationTrampolineActivity.class);
        Intrinsics.checkNotNullExpressionValue(intent, "setClass(...)");
        if (notificationExtras != null) {
            intent.putExtras(notificationExtras);
        }
        PendingIntent activity = PendingIntent.getActivity(context, IntentUtils.getRequestCode(), intent, 1073741824 | IntentUtils.getImmutablePendingIntentFlags());
        Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
        return activity;
    }

    static /* synthetic */ void sendPushActionIntent$default(BrazeNotificationUtils brazeNotificationUtils, Context context, BrazeNotificationBroadcastType brazeNotificationBroadcastType, Bundle bundle, BrazeNotificationPayload brazeNotificationPayload, int i, Object obj) {
        if ((i & 8) != 0) {
            brazeNotificationPayload = null;
        }
        brazeNotificationUtils.sendPushActionIntent(context, brazeNotificationBroadcastType, bundle, brazeNotificationPayload);
    }

    private final void sendPushActionIntent(Context context, final BrazeNotificationBroadcastType broadcastType, Bundle notificationExtras, BrazeNotificationPayload payload) {
        Intent intent;
        int i = WhenMappings.$EnumSwitchMapping$0[broadcastType.ordinal()];
        if (i == 1) {
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_OPENED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        } else if (i == 2) {
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_RECEIVED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            intent = new Intent(Constants.BRAZE_PUSH_INTENT_NOTIFICATION_DELETED).setPackage(context.getPackageName());
            Intrinsics.checkNotNull(intent);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String sendPushActionIntent$lambda$79;
                sendPushActionIntent$lambda$79 = BrazeNotificationUtils.sendPushActionIntent$lambda$79(BrazeNotificationUtils.BrazeNotificationBroadcastType.this);
                return sendPushActionIntent$lambda$79;
            }
        }, 6, (Object) null);
        sendPushActionIntent(context, intent, notificationExtras);
        if (payload != null) {
            BrazeInternal.INSTANCE.publishBrazePushAction(context, broadcastType.getBrazePushEventType(), payload);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushActionIntent$lambda$79(BrazeNotificationBroadcastType brazeNotificationBroadcastType) {
        return "Sending Braze broadcast receiver intent for " + brazeNotificationBroadcastType;
    }

    private final void sendPushActionIntent(Context context, final Intent pushIntent, Bundle notificationExtras) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationUtils$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String sendPushActionIntent$lambda$80;
                sendPushActionIntent$lambda$80 = BrazeNotificationUtils.sendPushActionIntent$lambda$80(pushIntent);
                return sendPushActionIntent$lambda$80;
            }
        }, 6, (Object) null);
        if (notificationExtras != null) {
            pushIntent.putExtras(notificationExtras);
        }
        IntentUtils.addComponentAndSendBroadcast(context, pushIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String sendPushActionIntent$lambda$80(Intent intent) {
        return "Sending push action intent: " + intent;
    }
}
