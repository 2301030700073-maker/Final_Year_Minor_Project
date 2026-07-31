.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p3

    .line 45
    :pswitch_0
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 53
    .line 54
    iget-boolean p2, p2, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
