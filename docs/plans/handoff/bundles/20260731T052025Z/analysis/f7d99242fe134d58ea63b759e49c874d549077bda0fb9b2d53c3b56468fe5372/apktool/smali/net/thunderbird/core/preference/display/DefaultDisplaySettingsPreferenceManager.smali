.class public final Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final configState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final coreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

.field public final inboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final miscSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

.field public final visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->coreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->inboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->miscSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 13
    .line 14
    new-instance p1, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 15
    .line 16
    invoke-virtual {p2}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 21
    .line 22
    invoke-virtual {p3}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 27
    .line 28
    check-cast p4, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 29
    .line 30
    invoke-virtual {p4}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    check-cast p4, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 35
    .line 36
    iget-object p5, p5, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    .line 38
    invoke-virtual {p5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p5

    .line 42
    check-cast p5, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 43
    .line 44
    invoke-direct {p1, p2, p3, p4, p5}, Lnet/thunderbird/core/preference/display/DisplaySettings;-><init>(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final save(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1, p1}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v3, "DefaultDisplaySettingsPreferenceManager"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->coreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 21
    .line 22
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->save(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->inboxSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;

    .line 28
    .line 29
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->save(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 35
    .line 36
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->visualSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 37
    .line 38
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->save(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->miscSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;

    .line 44
    .line 45
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/preference/display/miscSettings/DefaultDisplayMiscSettingsPreferenceManager;->save(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 51
    .line 52
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v2, v1

    .line 57
    check-cast v2, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    return-void
.end method
