.class public final Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 21
    .line 22
    check-cast v1, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 32
    .line 33
    check-cast v1, Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_2
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 43
    .line 44
    check-cast v1, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_3
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 54
    .line 55
    check-cast v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_4
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 65
    .line 66
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 76
    .line 77
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 78
    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x1

    .line 8
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v7, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    .line 23
    .line 24
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData;->slideName:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v0, 0xee

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const-string v2, "impression"

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v6

    .line 47
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 55
    .line 56
    iget-object p1, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-lez p1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1, v0, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_0

    .line 73
    .line 74
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 75
    .line 76
    iget-object p1, v7, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p0, p1, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    :cond_0
    move v3, v5

    .line 85
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :pswitch_1
    check-cast v7, Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    .line 91
    .line 92
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    instance-of p0, p0, Lorg/wikipedia/events/ChangeTextSizeEvent;

    .line 98
    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v7}, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->updateTextSize$1()V

    .line 102
    .line 103
    .line 104
    iget-object p0, v7, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance p1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 114
    .line 115
    invoke-direct {p1, v4}, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :cond_2
    return-object v6

    .line 122
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    instance-of p0, p0, Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 128
    .line 129
    if-eqz p0, :cond_3

    .line 130
    .line 131
    check-cast v7, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 132
    .line 133
    iput-boolean v3, v7, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    .line 134
    .line 135
    invoke-virtual {v7}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateComponents()V

    .line 136
    .line 137
    .line 138
    :cond_3
    return-object v6

    .line 139
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 142
    .line 143
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;

    .line 147
    .line 148
    check-cast v7, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 149
    .line 150
    invoke-direct {p1, v7, v2, v5}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 151
    .line 152
    .line 153
    invoke-static {p0, v2, v2, p1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 154
    .line 155
    .line 156
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;

    .line 157
    .line 158
    invoke-direct {p1, v7, v2, v1}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, v2, v2, p1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 162
    .line 163
    .line 164
    return-object v6

    .line 165
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 168
    .line 169
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 173
    .line 174
    check-cast v7, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 175
    .line 176
    invoke-direct {p1, v7, v2, v5}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v2, v2, p1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 180
    .line 181
    .line 182
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 183
    .line 184
    invoke-direct {p1, v7, v2, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    invoke-static {p0, v2, v2, p1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 188
    .line 189
    .line 190
    return-object v6

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
