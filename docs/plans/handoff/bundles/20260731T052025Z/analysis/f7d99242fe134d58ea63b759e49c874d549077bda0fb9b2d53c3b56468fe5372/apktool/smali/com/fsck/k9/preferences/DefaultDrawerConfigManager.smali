.class public final Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/DrawerConfigManager;


# instance fields
.field public final displayInboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

.field public final displayVisualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

.field public final drawerConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;->displayInboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;->displayVisualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 7
    .line 8
    new-instance p2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    const/4 v0, 0x6

    .line 12
    invoke-direct {p2, p0, p3, v0}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 13
    .line 14
    .line 15
    new-instance p3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p3, v0, p2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 22
    .line 23
    const-wide v1, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v1, v2}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(J)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 32
    .line 33
    invoke-direct {v1, v0, v0, v0}, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;-><init>(ZZZ)V

    .line 34
    .line 35
    .line 36
    invoke-static {p3, p1, p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/fsck/k9/preferences/DefaultDrawerConfigManager;->drawerConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 41
    .line 42
    return-void
.end method
