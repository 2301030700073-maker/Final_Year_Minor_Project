.class public final synthetic Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 5
    .line 6
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "android.speech.extra.RESULTS"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDescription(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 74
    .line 75
    if-ne p1, v1, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p1, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 100
    .line 101
    .line 102
    const p1, 0x7f120351

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
