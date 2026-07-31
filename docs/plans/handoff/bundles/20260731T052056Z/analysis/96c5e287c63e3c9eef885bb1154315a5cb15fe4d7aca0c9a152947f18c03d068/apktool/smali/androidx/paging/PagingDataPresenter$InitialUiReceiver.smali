.class public final Landroidx/paging/PagingDataPresenter$InitialUiReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/paging/UiReceiver;


# instance fields
.field public shouldRefresh:Z

.field public shouldRetry:Z


# virtual methods
.method public final refresh()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRefresh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final retry()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRetry:Z

    .line 3
    .line 4
    return-void
.end method
