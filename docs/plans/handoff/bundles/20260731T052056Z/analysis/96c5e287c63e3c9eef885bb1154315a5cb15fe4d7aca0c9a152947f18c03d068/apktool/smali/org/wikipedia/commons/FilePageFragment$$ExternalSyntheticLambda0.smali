.class public final synthetic Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/commons/FilePageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/commons/FilePageFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/commons/FilePageFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x38

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/commons/FilePageFragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 18
    .line 19
    if-ne p1, v3, :cond_0

    .line 20
    .line 21
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 28
    .line 29
    invoke-static {p1, v0, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageViewModel;->loadImageInfo()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 46
    .line 47
    if-ne p1, v3, :cond_1

    .line 48
    .line 49
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 56
    .line 57
    invoke-static {p1, v0, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageViewModel;->loadImageInfo()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->downloadImage()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const p1, 0x7f120257

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/commons/FilePageFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageViewModel;->loadImageInfo()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
