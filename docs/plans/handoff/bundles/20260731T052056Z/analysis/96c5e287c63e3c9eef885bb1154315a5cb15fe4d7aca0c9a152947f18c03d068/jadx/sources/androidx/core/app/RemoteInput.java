package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteInput {
    public final boolean mAllowFreeFormTextInput;
    public final HashSet mAllowedDataTypes;
    public final CharSequence[] mChoices;
    public final int mEditChoicesBeforeSending;
    public final Bundle mExtras;
    public final CharSequence mLabel;
    public final String mResultKey;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api29Impl {
        public static void canBubble(NotificationChannel notificationChannel) {
            notificationChannel.canBubble();
        }

        public static boolean getAllowSystemGeneratedContextualActions(Notification notification) {
            return notification.getAllowSystemGeneratedContextualActions();
        }

        public static Notification.BubbleMetadata getBubbleMetadata(Notification notification) {
            return notification.getBubbleMetadata();
        }

        public static int getEditChoicesBeforeSending(android.app.RemoteInput remoteInput) {
            return remoteInput.getEditChoicesBeforeSending();
        }

        public static LocusId getLocusId(Notification notification) {
            return notification.getLocusId();
        }

        public static String getOpPackageName(Context context) {
            return context.getOpPackageName();
        }

        public static void setAllowSystemGeneratedContextualActions(Notification.Builder builder, boolean z) {
            builder.setAllowSystemGeneratedContextualActions(z);
        }

        public static void setBubbleMetadata(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            builder.setBubbleMetadata(bubbleMetadata);
        }

        public static void setContextual(Notification.Action.Builder builder, boolean z) {
            builder.setContextual(z);
        }

        public static void setEditChoicesBeforeSending(RemoteInput.Builder builder, int i) {
            builder.setEditChoicesBeforeSending(i);
        }

        public static void setLocusId(Notification.Builder builder, Object obj) {
            builder.setLocusId((LocusId) obj);
        }
    }

    public RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, HashSet hashSet) {
        this.mResultKey = str;
        this.mLabel = charSequence;
        this.mChoices = charSequenceArr;
        this.mAllowFreeFormTextInput = z;
        this.mEditChoicesBeforeSending = i;
        this.mExtras = bundle;
        this.mAllowedDataTypes = hashSet;
        if (i != 2 || z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        throw null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api26Impl {
        public static void canBypassDnd(NotificationChannel notificationChannel) {
            notificationChannel.canBypassDnd();
        }

        public static boolean canShowBadge(NotificationChannel notificationChannel) {
            return notificationChannel.canShowBadge();
        }

        public static Notification.Builder createBuilder(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        public static void deleteNotificationChannel(NotificationManager notificationManager, String str) {
            notificationManager.deleteNotificationChannel(str);
        }

        public static AudioAttributes getAudioAttributes(NotificationChannel notificationChannel) {
            return notificationChannel.getAudioAttributes();
        }

        public static List getChannels(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getChannels();
        }

        public static String getDescription(NotificationChannel notificationChannel) {
            return notificationChannel.getDescription();
        }

        public static String getGroup(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }

        public static int getGroupAlertBehavior(Notification notification) {
            return notification.getGroupAlertBehavior();
        }

        public static String getId(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }

        public static int getImportance(NotificationChannel notificationChannel) {
            return notificationChannel.getImportance();
        }

        public static int getLightColor(NotificationChannel notificationChannel) {
            return notificationChannel.getLightColor();
        }

        public static void getLockscreenVisibility(NotificationChannel notificationChannel) {
            notificationChannel.getLockscreenVisibility();
        }

        public static CharSequence getName(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getName();
        }

        public static Uri getSound(NotificationChannel notificationChannel) {
            return notificationChannel.getSound();
        }

        public static long[] getVibrationPattern(NotificationChannel notificationChannel) {
            return notificationChannel.getVibrationPattern();
        }

        public static void setAllowDataType(RemoteInput.Builder builder, String str) {
            builder.setAllowDataType(str, true);
        }

        public static void setBadgeIconType(Notification.Builder builder, int i) {
            builder.setBadgeIconType(i);
        }

        public static void setColorized(Notification.Builder builder, boolean z) {
            builder.setColorized(z);
        }

        public static void setGroupAlertBehavior(Notification.Builder builder, int i) {
            builder.setGroupAlertBehavior(i);
        }

        public static void setSettingsText(Notification.Builder builder, CharSequence charSequence) {
            builder.setSettingsText(charSequence);
        }

        public static void setShortcutId(Notification.Builder builder, String str) {
            builder.setShortcutId(str);
        }

        public static void setTimeoutAfter(Notification.Builder builder, long j) {
            builder.setTimeoutAfter(j);
        }

        public static boolean shouldShowLights(NotificationChannel notificationChannel) {
            return notificationChannel.shouldShowLights();
        }

        public static boolean shouldVibrate(NotificationChannel notificationChannel) {
            return notificationChannel.shouldVibrate();
        }

        public static String getId(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        public static CharSequence getName(NotificationChannel notificationChannel) {
            return notificationChannel.getName();
        }
    }
}
