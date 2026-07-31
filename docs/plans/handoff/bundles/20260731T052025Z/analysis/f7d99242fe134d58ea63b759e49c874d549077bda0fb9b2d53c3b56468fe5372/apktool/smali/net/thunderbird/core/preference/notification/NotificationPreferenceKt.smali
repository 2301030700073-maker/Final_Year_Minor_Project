.class public abstract Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

.field public static final NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER:Ljava/util/List;

.field public static final NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR:Lnet/thunderbird/core/preference/NotificationQuickDelete;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/core/common/notification/NotificationActionTokens;->DEFAULT_ORDER:Ljava/util/List;

    .line 4
    .line 5
    sput-object v0, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER:Ljava/util/List;

    .line 6
    .line 7
    sget-object v0, Lnet/thunderbird/core/preference/NotificationQuickDelete;->ALWAYS:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 10
    .line 11
    sget-object v0, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->MESSAGE_COUNT:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 12
    .line 13
    sput-object v0, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 14
    .line 15
    return-void
.end method
