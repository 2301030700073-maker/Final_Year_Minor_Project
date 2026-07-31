.class public abstract Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DISPLAY_SETTINGS_DEFAULT_APP_THEME:Lnet/thunderbird/core/preference/AppTheme;

.field public static final DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME:Lnet/thunderbird/core/preference/SubTheme;

.field public static final DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME:Lnet/thunderbird/core/preference/SubTheme;

.field public static final DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE:Lnet/thunderbird/core/preference/SplitViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/AppTheme;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AppTheme;

    .line 2
    .line 3
    sput-object v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_APP_THEME:Lnet/thunderbird/core/preference/AppTheme;

    .line 4
    .line 5
    sget-object v0, Lnet/thunderbird/core/preference/SubTheme;->USE_GLOBAL:Lnet/thunderbird/core/preference/SubTheme;

    .line 6
    .line 7
    sput-object v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 8
    .line 9
    sget-object v1, Lnet/thunderbird/core/preference/SplitViewMode;->NEVER:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 10
    .line 11
    sput-object v1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 12
    .line 13
    sput-object v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 14
    .line 15
    return-void
.end method
