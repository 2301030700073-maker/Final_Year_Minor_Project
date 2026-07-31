.class public final Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountDataList:Ljava/util/ArrayList;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraUseCasesProvider:Landroidx/compose/ui/draw/DrawResult;

.field public final qrCodePayloadReader:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

.field public final qrCodeSettingsWriter:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

.field public scannedCount:I

.field public final supportedPayloadHashes:Ljava/util/LinkedHashSet;

.field public totalCount:I

.field public final unsupportedPayloadHashes:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;)V
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 6
    .line 7
    sget-object v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;->Unknown:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 8
    .line 9
    sget-object v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$HelpText;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$HelpText;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;-><init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->qrCodePayloadReader:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodePayloadReader;

    .line 21
    .line 22
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->qrCodeSettingsWriter:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 23
    .line 24
    iput-object v0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 25
    .line 26
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->supportedPayloadHashes:Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 34
    .line 35
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->unsupportedPayloadHashes:Lkotlin/collections/ArrayDeque;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->accountDataList:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/16 v7, 0x8

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    const-class v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 54
    .line 55
    const-string v4, "handleQrCodeScanned"

    .line 56
    .line 57
    const-string v5, "handleQrCodeScanned(Ljava/lang/String;)V"

    .line 58
    .line 59
    move-object v2, p0

    .line 60
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Landroidx/compose/ui/draw/DrawResult;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroidx/compose/ui/draw/DrawResult;->block:Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    iput-object p0, v2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->cameraUseCasesProvider:Landroidx/compose/ui/draw/DrawResult;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$StartScreen;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$StartScreen;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/16 v8, 0xe

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-class v4, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 21
    .line 22
    const-string v5, "handleStartScreen"

    .line 23
    .line 24
    const-string v6, "handleStartScreen()V"

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->handleOneTimeEvent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v3, p0

    .line 35
    instance-of p0, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$CameraPermissionResult;

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    iget-object v1, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$CameraPermissionResult;

    .line 44
    .line 45
    iget-boolean p0, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$CameraPermissionResult;->success:Z

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move-object v3, p1

    .line 52
    check-cast v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    sget-object v4, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;->Granted:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v4, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;->Denied:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 63
    .line 64
    :goto_0
    invoke-static {v3, v4, v2, v0}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->copy$default(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;I)Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, p1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$GoToSettingsClicked;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$GoToSettingsClicked;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$GoToAppInfoScreen;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$GoToAppInfoScreen;

    .line 84
    .line 85
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 93
    .line 94
    const/16 v0, 0xa

    .line 95
    .line 96
    invoke-direct {p1, v3, v2, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$ReturnedFromAppInfoScreen;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$ReturnedFromAppInfoScreen;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    move-object p1, p0

    .line 117
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    sget-object v4, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;->Unknown:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 123
    .line 124
    invoke-static {p1, v4, v2, v0}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->copy$default(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText$ProgressText;I)Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_5

    .line 133
    .line 134
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;

    .line 135
    .line 136
    invoke-virtual {v3, p0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$DoneClicked;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$DoneClicked;

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_7

    .line 147
    .line 148
    invoke-virtual {v3}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->startAccountImport()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final startAccountImport()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->accountDataList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData;

    .line 23
    .line 24
    iget-object v2, v2, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData;->accounts:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$Cancel;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$Cancel;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 47
    .line 48
    const/16 v3, 0x1a

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v2, p0, v0, v4, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    invoke-static {v1, v4, v4, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 56
    .line 57
    .line 58
    return-void
.end method
