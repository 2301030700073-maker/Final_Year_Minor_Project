package com.braze.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.braze.Braze;
import com.braze.Constants;
import com.braze.IBrazeDeeplinkHandler;
import com.braze.models.push.BrazeNotificationPayload;
import com.braze.support.BrazeLogger;
import com.braze.support.IntentUtils;
import com.braze.ui.BrazeDeeplinkHandler;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BrazeNotificationActionUtils.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¨\u0006\u0015"}, d2 = {"Lcom/braze/push/BrazeNotificationActionUtils;", "", "<init>", "()V", "addNotificationActions", "", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "payload", "Lcom/braze/models/push/BrazeNotificationPayload;", "handleNotificationActionClicked", "context", "Landroid/content/Context;", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "addNotificationAction", "actionButton", "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;", "logNotificationActionClicked", SDKConstants.PARAM_GAME_REQUESTS_ACTION_TYPE, "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BrazeNotificationActionUtils {
    public static final BrazeNotificationActionUtils INSTANCE = new BrazeNotificationActionUtils();

    private BrazeNotificationActionUtils() {
    }

    @JvmStatic
    public static final void addNotificationActions(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload) {
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        if (payload.getContext() == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationActions$lambda$0;
                    addNotificationActions$lambda$0 = BrazeNotificationActionUtils.addNotificationActions$lambda$0();
                    return addNotificationActions$lambda$0;
                }
            }, 7, (Object) null);
            return;
        }
        List<BrazeNotificationPayload.ActionButton> actionButtons = payload.getActionButtons();
        if (actionButtons.isEmpty()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) INSTANCE, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationActions$lambda$1;
                    addNotificationActions$lambda$1 = BrazeNotificationActionUtils.addNotificationActions$lambda$1();
                    return addNotificationActions$lambda$1;
                }
            }, 7, (Object) null);
            return;
        }
        for (final BrazeNotificationPayload.ActionButton actionButton : actionButtons) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeNotificationActionUtils brazeNotificationActionUtils = INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) brazeNotificationActionUtils, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationActions$lambda$2;
                    addNotificationActions$lambda$2 = BrazeNotificationActionUtils.addNotificationActions$lambda$2(BrazeNotificationPayload.ActionButton.this);
                    return addNotificationActions$lambda$2;
                }
            }, 6, (Object) null);
            brazeNotificationActionUtils.addNotificationAction(notificationBuilder, payload, actionButton);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$0() {
        return "Context cannot be null when adding notification buttons.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$1() {
        return "No action buttons present. Not adding notification actions";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationActions$lambda$2(BrazeNotificationPayload.ActionButton actionButton) {
        return "Adding action button: " + actionButton;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad A[Catch: Exception -> 0x00e6, TryCatch #0 {Exception -> 0x00e6, blocks: (B:3:0x000e, B:5:0x0019, B:8:0x0021, B:10:0x0030, B:17:0x0047, B:20:0x0065, B:23:0x0071, B:25:0x0077, B:27:0x007e, B:29:0x008b, B:31:0x0091, B:32:0x009e, B:34:0x00ad, B:37:0x00b1, B:39:0x009b, B:40:0x0050, B:43:0x0059, B:45:0x005e, B:48:0x00c2, B:50:0x00d3), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b1 A[Catch: Exception -> 0x00e6, TryCatch #0 {Exception -> 0x00e6, blocks: (B:3:0x000e, B:5:0x0019, B:8:0x0021, B:10:0x0030, B:17:0x0047, B:20:0x0065, B:23:0x0071, B:25:0x0077, B:27:0x007e, B:29:0x008b, B:31:0x0091, B:32:0x009e, B:34:0x00ad, B:37:0x00b1, B:39:0x009b, B:40:0x0050, B:43:0x0059, B:45:0x005e, B:48:0x00c2, B:50:0x00d3), top: B:2:0x000e }] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void handleNotificationActionClicked(android.content.Context r12, android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.push.BrazeNotificationActionUtils.handleNotificationActionClicked(android.content.Context, android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$3() {
        return "Notification action button type was blank or null. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$4() {
        return "Not handling deep links automatically, skipping deep link handling";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$5() {
        return "Unknown notification action button clicked. Doing nothing.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String handleNotificationActionClicked$lambda$6() {
        return "Caught exception while handling notification action button click.";
    }

    public final void addNotificationAction(NotificationCompat.Builder notificationBuilder, BrazeNotificationPayload payload, BrazeNotificationPayload.ActionButton actionButton) {
        PendingIntent activity;
        Intrinsics.checkNotNullParameter(notificationBuilder, "notificationBuilder");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(actionButton, "actionButton");
        Context context = payload.getContext();
        if (context == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationAction$lambda$7;
                    addNotificationAction$lambda$7 = BrazeNotificationActionUtils.addNotificationAction$lambda$7();
                    return addNotificationAction$lambda$7;
                }
            }, 7, (Object) null);
            return;
        }
        final Bundle bundle = new Bundle(payload.getNotificationExtras());
        actionButton.putIntoBundle(bundle);
        final String type = actionButton.getType();
        int immutablePendingIntentFlags = 134217728 | IntentUtils.getImmutablePendingIntentFlags();
        if (Intrinsics.areEqual(Constants.BRAZE_PUSH_ACTION_TYPE_NONE, type)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationAction$lambda$8;
                    addNotificationAction$lambda$8 = BrazeNotificationActionUtils.addNotificationAction$lambda$8(type);
                    return addNotificationAction$lambda$8;
                }
            }, 6, (Object) null);
            Intent intent = new Intent(Constants.BRAZE_ACTION_CLICKED_ACTION).setClass(context, BrazeNotificationUtils.getNotificationReceiverClass());
            intent.putExtras(bundle);
            activity = PendingIntent.getBroadcast(context, IntentUtils.getRequestCode(), intent, immutablePendingIntentFlags);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addNotificationAction$lambda$9;
                    addNotificationAction$lambda$9 = BrazeNotificationActionUtils.addNotificationAction$lambda$9(type);
                    return addNotificationAction$lambda$9;
                }
            }, 6, (Object) null);
            Intent intent2 = new Intent(Constants.BRAZE_ACTION_CLICKED_ACTION).setClass(context, NotificationTrampolineActivity.class);
            intent2.setFlags(intent2.getFlags() | BrazeDeeplinkHandler.INSTANCE.getInstance().getIntentFlags(IBrazeDeeplinkHandler.IntentFlagPurpose.NOTIFICATION_ACTION_WITH_DEEPLINK));
            intent2.putExtras(bundle);
            activity = PendingIntent.getActivity(context, IntentUtils.getRequestCode(), intent2, immutablePendingIntentFlags);
        }
        NotificationCompat.Action.Builder builder = new NotificationCompat.Action.Builder(0, actionButton.getText(), activity);
        builder.addExtras(new Bundle(bundle));
        notificationBuilder.addAction(builder.build());
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.push.BrazeNotificationActionUtils$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String addNotificationAction$lambda$10;
                addNotificationAction$lambda$10 = BrazeNotificationActionUtils.addNotificationAction$lambda$10(bundle);
                return addNotificationAction$lambda$10;
            }
        }, 6, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$7() {
        return "Cannot add notification action with null context from payload";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$8(String str) {
        return "Adding notification action with type: " + str + "Setting intent class to notification receiver: " + BrazeNotificationUtils.getNotificationReceiverClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$9(String str) {
        return "Adding notification action with type: " + str + " Setting intent class to trampoline activity";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addNotificationAction$lambda$10(Bundle bundle) {
        return "Added action with bundle: " + bundle;
    }

    public final void logNotificationActionClicked(Context context, Intent intent, String actionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        Braze.INSTANCE.getInstance(context).logPushNotificationActionClicked(intent.getStringExtra("cid"), intent.getStringExtra(Constants.BRAZE_ACTION_ID_KEY), actionType);
    }
}
