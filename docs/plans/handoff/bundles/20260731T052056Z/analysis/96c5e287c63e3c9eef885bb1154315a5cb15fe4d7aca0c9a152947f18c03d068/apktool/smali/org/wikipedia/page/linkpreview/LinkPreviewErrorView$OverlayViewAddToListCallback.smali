.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrimaryClick()V
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->getCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 10
    .line 11
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onSecondaryClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTertiaryClick()V
    .locals 0

    .line 1
    return-void
.end method
