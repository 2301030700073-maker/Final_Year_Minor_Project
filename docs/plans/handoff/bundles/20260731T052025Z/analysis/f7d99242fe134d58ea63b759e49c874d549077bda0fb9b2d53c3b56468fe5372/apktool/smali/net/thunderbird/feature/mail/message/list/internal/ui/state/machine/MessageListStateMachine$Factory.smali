.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clock:Lkotlin/time/Clock;

.field public final debuggingSettingsPreferenceManager:Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/time/Clock;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->clock:Lkotlin/time/Clock;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->debuggingSettingsPreferenceManager:Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 9
    .line 10
    return-void
.end method
