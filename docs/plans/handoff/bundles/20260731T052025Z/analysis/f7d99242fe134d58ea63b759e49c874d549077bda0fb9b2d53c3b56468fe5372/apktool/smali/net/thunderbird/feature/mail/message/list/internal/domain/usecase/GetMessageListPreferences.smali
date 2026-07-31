.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayPreferenceManager:Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

.field public final interactionPreferenceManager:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;->displayPreferenceManager:Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;->interactionPreferenceManager:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 7
    .line 8
    return-void
.end method
