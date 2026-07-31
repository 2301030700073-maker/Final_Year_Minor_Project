.class public abstract Lnet/thunderbird/core/preference/interaction/InteractionSettingsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

.field public static final INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION:Lnet/thunderbird/core/common/action/SwipeActions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;->ReturnToMessageList:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 2
    .line 3
    sput-object v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingsKt;->INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 4
    .line 5
    new-instance v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 6
    .line 7
    sget-object v1, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleRead:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 8
    .line 9
    sget-object v2, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/action/SwipeActions;-><init>(Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingsKt;->INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 15
    .line 16
    return-void
.end method
