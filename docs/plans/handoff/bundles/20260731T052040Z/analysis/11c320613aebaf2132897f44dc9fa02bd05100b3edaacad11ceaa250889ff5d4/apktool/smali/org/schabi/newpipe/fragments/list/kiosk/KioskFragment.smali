.class public Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field kioskId:Ljava/lang/String;

.field public kioskTranslatedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/jsoup/parser/TokenData;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    .line 23
    .line 24
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1, p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public final handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 6
    .line 7
    sget-object v2, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    .line 8
    .line 9
    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 10
    .line 11
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, v0, v2, p0}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-direct {v2, v1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-static {p1, v0, p0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->getTranslatedKioskName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 25
    .line 26
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p0, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p0}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d005f

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->contentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->startLoading(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->kioskTranslatedName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    move-object v2, v0

    .line 40
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v6, 0x18

    .line 44
    .line 45
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    .line 46
    .line 47
    const-string v4, "Setting kiosk title"

    .line 48
    .line 49
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final showEmptyState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->showEmptyState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 5
    .line 6
    check-cast v0, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "live"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 21
    .line 22
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 23
    .line 24
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 25
    .line 26
    check-cast v1, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const v0, 0x7f130367

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
