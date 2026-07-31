.class public final synthetic Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v9, 0x0

    .line 25
    const/16 v10, 0x20

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    const-wide/16 v5, -0x1

    .line 29
    .line 30
    iget-wide v7, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->f$1:J

    .line 31
    .line 32
    invoke-static/range {v1 .. v10}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    check-cast v0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 42
    .line 43
    iget-object p1, v0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;

    .line 65
    .line 66
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicViewModel;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    iget-wide v3, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;->f$1:J

    .line 73
    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x2

    .line 78
    invoke-static {p1, v0, v5, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string p0, "binding"

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v5

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
