.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
.implements Lorg/wikipedia/readinglist/LongPressMenu$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onTertiaryClick$org$wikipedia$page$linkpreview$LinkPreviewDialog$OverlayViewCallback()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public onAddRequest(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p1, v0, p2, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-wide v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v3, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/wikipedia/dataclient/Service$-CC;->$default$onOpenInPlaces(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPrimaryClick()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "share_click"

    .line 9
    .line 10
    const-string v1, "detail_toolbar"

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRemoveRequest()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSecondaryClick()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "save_click"

    .line 14
    .line 15
    const-string v3, "detail_toolbar"

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->getSecondaryButtonView()Landroid/widget/Button;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isInReadingList:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v4, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 33
    .line 34
    new-instance v8, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-direct {v8, p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 38
    .line 39
    .line 40
    const/16 v9, 0x1c

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    invoke-direct {v1, v0, p0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v2, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 73
    .line 74
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {v0, v2, v1, v3, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onShareRequest()V
    .locals 0

    .line 1
    return-void
.end method

.method public onTertiaryClick()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "read_click"

    .line 7
    .line 8
    const-string v1, "detail_toolbar"

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    .line 17
    .line 18
    .line 19
    :pswitch_0
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
