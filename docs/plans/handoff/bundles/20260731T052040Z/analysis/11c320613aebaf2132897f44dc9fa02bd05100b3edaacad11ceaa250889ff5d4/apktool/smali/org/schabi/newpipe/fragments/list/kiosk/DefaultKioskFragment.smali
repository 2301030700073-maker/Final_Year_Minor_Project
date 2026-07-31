.class public Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;
.super Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;->updateSelectedDefaultKiosk()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/kiosk/DefaultKioskFragment;->updateSelectedDefaultKiosk()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->startLoading(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final updateSelectedDefaultKiosk()V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 10
    .line 11
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/jsoup/parser/TokenData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    .line 34
    .line 35
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->getTranslatedKioskName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 65
    .line 66
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v2, v0

    .line 71
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/16 v6, 0x18

    .line 75
    .line 76
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    .line 77
    .line 78
    const-string v4, "Loading default kiosk for selected service"

    .line 79
    .line 80
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
