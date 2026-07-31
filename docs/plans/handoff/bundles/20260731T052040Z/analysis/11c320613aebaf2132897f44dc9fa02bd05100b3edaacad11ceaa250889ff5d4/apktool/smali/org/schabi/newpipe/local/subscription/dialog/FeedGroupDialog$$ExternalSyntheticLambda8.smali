.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 13
    .line 14
    xor-int/2addr v0, v1

    .line 15
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showSearch()V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
