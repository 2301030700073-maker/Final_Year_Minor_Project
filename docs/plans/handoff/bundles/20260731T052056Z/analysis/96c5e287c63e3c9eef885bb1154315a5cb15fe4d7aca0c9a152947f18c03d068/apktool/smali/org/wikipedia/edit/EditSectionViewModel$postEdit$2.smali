.class public final Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $captchaId:Ljava/lang/Object;

.field public final synthetic $captchaWord:Ljava/lang/Object;

.field public final synthetic $editSectionText:Ljava/lang/Object;

.field public final synthetic $editTags:Ljava/lang/Object;

.field public final synthetic $isMinorEdit:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $summaryText:Ljava/lang/Object;

.field public final synthetic $watchThisPage:Ljava/lang/Object;

.field public label:I

.field public synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/glance/appwidget/AppWidgetSession;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 26
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$summaryText:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editSectionText:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaId:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaWord:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$watchThisPage:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editTags:Ljava/lang/Object;

    iput-object p7, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$isMinorEdit:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 25
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$summaryText:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editSectionText:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaId:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaWord:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$watchThisPage:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editTags:Ljava/lang/Object;

    iput-object p7, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    iput-object p8, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$isMinorEdit:Ljava/lang/Object;

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/edit/EditSectionViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$summaryText:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editSectionText:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaId:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaWord:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$isMinorEdit:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$watchThisPage:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editTags:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$isMinorEdit:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editTags:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$watchThisPage:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaWord:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaId:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editSectionText:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$summaryText:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 23
    .line 24
    move-object v10, v8

    .line 25
    check-cast v10, Ljava/lang/String;

    .line 26
    .line 27
    move-object v11, v7

    .line 28
    check-cast v11, Ljava/lang/String;

    .line 29
    .line 30
    move-object v12, v6

    .line 31
    check-cast v12, Ljava/lang/String;

    .line 32
    .line 33
    move-object v13, v5

    .line 34
    check-cast v13, Ljava/lang/String;

    .line 35
    .line 36
    move-object v14, v4

    .line 37
    check-cast v14, Ljava/lang/String;

    .line 38
    .line 39
    move-object v15, v3

    .line 40
    check-cast v15, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    move-object/from16 v16, v0

    .line 45
    .line 46
    check-cast v16, Ljava/lang/String;

    .line 47
    .line 48
    move-object/from16 v17, v2

    .line 49
    .line 50
    check-cast v17, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 51
    .line 52
    move-object/from16 v18, p2

    .line 53
    .line 54
    invoke-direct/range {v9 .. v18}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    return-object v9

    .line 58
    :pswitch_0
    new-instance v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 59
    .line 60
    move-object v1, v8

    .line 61
    check-cast v1, Landroidx/compose/runtime/Recomposer;

    .line 62
    .line 63
    check-cast v7, Landroidx/glance/appwidget/AppWidgetSession;

    .line 64
    .line 65
    check-cast v6, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    check-cast v5, Landroid/content/Context;

    .line 68
    .line 69
    check-cast v4, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 70
    .line 71
    check-cast v3, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 72
    .line 73
    check-cast v2, Landroidx/glance/session/TimeoutOptions;

    .line 74
    .line 75
    move-object v8, v7

    .line 76
    move-object v7, v2

    .line 77
    move-object v2, v8

    .line 78
    move-object v8, v6

    .line 79
    move-object v6, v3

    .line 80
    move-object v3, v8

    .line 81
    move-object v8, v5

    .line 82
    move-object v5, v4

    .line 83
    move-object v4, v8

    .line 84
    move-object/from16 v8, p2

    .line 85
    .line 86
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/glance/appwidget/AppWidgetSession;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    move-object v1, v0

    .line 90
    move-object/from16 v0, p1

    .line 91
    .line 92
    iput-object v0, v1, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_1
    new-instance v10, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 96
    .line 97
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v11, v0

    .line 100
    check-cast v11, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 101
    .line 102
    move-object v12, v8

    .line 103
    check-cast v12, Ljava/lang/String;

    .line 104
    .line 105
    move-object v13, v7

    .line 106
    check-cast v13, Ljava/lang/String;

    .line 107
    .line 108
    move-object v14, v6

    .line 109
    check-cast v14, Ljava/lang/String;

    .line 110
    .line 111
    move-object v15, v5

    .line 112
    check-cast v15, Ljava/lang/String;

    .line 113
    .line 114
    move-object/from16 v16, v2

    .line 115
    .line 116
    check-cast v16, Ljava/lang/Boolean;

    .line 117
    .line 118
    move-object/from16 v17, v4

    .line 119
    .line 120
    check-cast v17, Ljava/lang/String;

    .line 121
    .line 122
    move-object/from16 v18, v3

    .line 123
    .line 124
    check-cast v18, Ljava/lang/String;

    .line 125
    .line 126
    move-object/from16 v19, p2

    .line 127
    .line 128
    invoke-direct/range {v10 .. v19}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    return-object v10

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget v0, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v18, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v10, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$isMinorEdit:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editTags:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$watchThisPage:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v3, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaWord:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v4, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$captchaId:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v5, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$editSectionText:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v6, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->$summaryText:Ljava/lang/Object;

    .line 20
    .line 21
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    .line 30
    iget v0, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    if-ne v0, v8, :cond_0

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v0, p1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v18, v11

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 53
    .line 54
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 55
    .line 56
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v6, Ljava/lang/String;

    .line 69
    .line 70
    check-cast v5, Ljava/lang/String;

    .line 71
    .line 72
    check-cast v4, Ljava/lang/String;

    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    move-object v7, v1

    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    iput v8, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 86
    .line 87
    move-object v8, v1

    .line 88
    move-object v1, v6

    .line 89
    move-object v6, v2

    .line 90
    move-object v2, v5

    .line 91
    const-string v5, "https://wikipedia.org/"

    .line 92
    .line 93
    move-object/from16 v30, v4

    .line 94
    .line 95
    move-object v4, v3

    .line 96
    move-object/from16 v3, v30

    .line 97
    .line 98
    invoke-interface/range {v0 .. v9}, Lorg/wikipedia/dataclient/Service;->postCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-ne v0, v12, :cond_2

    .line 103
    .line 104
    move-object/from16 v18, v12

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_2
    :goto_0
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;

    .line 108
    .line 109
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->status:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move-object v1, v11

    .line 117
    :goto_1
    const-string v2, ""

    .line 118
    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    move-object v1, v2

    .line 122
    :cond_4
    const-string v3, "PASS"

    .line 123
    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    check-cast v10, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 131
    .line 132
    iget-object v1, v10, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_doCreateAccountState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 133
    .line 134
    new-instance v3, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Pass;

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->username:Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object v0, v11

    .line 142
    :goto_2
    if-nez v0, :cond_6

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    move-object v2, v0

    .line 146
    :goto_3
    invoke-direct {v3, v2}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Pass;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v11, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :goto_4
    return-object v18

    .line 156
    :cond_7
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountException;

    .line 157
    .line 158
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->message:Ljava/lang/String;

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_8
    move-object v3, v11

    .line 166
    :goto_5
    if-nez v3, :cond_9

    .line 167
    .line 168
    move-object v3, v2

    .line 169
    :cond_9
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->messageCode:Ljava/lang/String;

    .line 176
    .line 177
    :cond_a
    if-nez v11, :cond_b

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_b
    move-object v2, v11

    .line 181
    :goto_6
    invoke-direct {v1, v3, v2}, Lorg/wikipedia/createaccount/CreateAccountException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v1

    .line 185
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 186
    .line 187
    iget v12, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 188
    .line 189
    if-eqz v12, :cond_d

    .line 190
    .line 191
    if-ne v12, v8, :cond_c

    .line 192
    .line 193
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object/from16 v18, v11

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v7, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 207
    .line 208
    move-object/from16 v28, v7

    .line 209
    .line 210
    check-cast v28, Lkotlinx/coroutines/CoroutineScope;

    .line 211
    .line 212
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 213
    .line 214
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    check-cast v6, Landroidx/compose/runtime/Recomposer;

    .line 218
    .line 219
    iget-wide v11, v6, Landroidx/compose/runtime/Recomposer;->changeCount:J

    .line 220
    .line 221
    iput-wide v11, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 222
    .line 223
    iget-object v11, v6, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 224
    .line 225
    new-instance v19, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;

    .line 226
    .line 227
    move-object/from16 v20, v5

    .line 228
    .line 229
    check-cast v20, Landroidx/glance/appwidget/AppWidgetSession;

    .line 230
    .line 231
    move-object/from16 v23, v4

    .line 232
    .line 233
    check-cast v23, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 234
    .line 235
    move-object/from16 v24, v3

    .line 236
    .line 237
    check-cast v24, Landroid/content/Context;

    .line 238
    .line 239
    move-object/from16 v25, v2

    .line 240
    .line 241
    check-cast v25, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 242
    .line 243
    move-object/from16 v26, v1

    .line 244
    .line 245
    check-cast v26, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 246
    .line 247
    move-object/from16 v27, v10

    .line 248
    .line 249
    check-cast v27, Landroidx/glance/session/TimeoutOptions;

    .line 250
    .line 251
    const/16 v29, 0x0

    .line 252
    .line 253
    move-object/from16 v21, v6

    .line 254
    .line 255
    move-object/from16 v22, v7

    .line 256
    .line 257
    invoke-direct/range {v19 .. v29}, Landroidx/glance/session/SessionWorkerKt$runSession$4$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 258
    .line 259
    .line 260
    move-object/from16 v1, v19

    .line 261
    .line 262
    iput v8, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 263
    .line 264
    invoke-static {v11, v1, v9}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-ne v1, v0, :cond_e

    .line 269
    .line 270
    move-object/from16 v18, v0

    .line 271
    .line 272
    :cond_e
    :goto_7
    return-object v18

    .line 273
    :pswitch_1
    iget-object v0, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->this$0:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 276
    .line 277
    iget-object v12, v0, Lorg/wikipedia/edit/EditSectionViewModel;->_postEditState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 278
    .line 279
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 280
    .line 281
    iget v14, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 282
    .line 283
    const/4 v15, 0x2

    .line 284
    if-eqz v14, :cond_11

    .line 285
    .line 286
    if-eq v14, v8, :cond_10

    .line 287
    .line 288
    if-ne v14, v15, :cond_f

    .line 289
    .line 290
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    move-object/from16 p1, v12

    .line 296
    .line 297
    goto/16 :goto_b

    .line 298
    .line 299
    :cond_f
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v18, v11

    .line 303
    .line 304
    goto/16 :goto_c

    .line 305
    .line 306
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    move-object/from16 v7, p1

    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    new-instance v7, Lorg/wikipedia/util/Resource$Loading;

    .line 316
    .line 317
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12, v11, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    sget-object v7, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 327
    .line 328
    iget-object v7, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 329
    .line 330
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 331
    .line 332
    iput v8, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 333
    .line 334
    invoke-static {v7, v9}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    if-ne v7, v13, :cond_12

    .line 339
    .line 340
    move-object v0, v13

    .line 341
    goto :goto_a

    .line 342
    :cond_12
    :goto_8
    check-cast v7, Ljava/lang/String;

    .line 343
    .line 344
    sget-object v8, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 345
    .line 346
    iget-object v8, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 347
    .line 348
    iget-object v8, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 349
    .line 350
    invoke-static {v8}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    iget-object v14, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 355
    .line 356
    invoke-virtual {v14}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    iget v11, v0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionID:I

    .line 361
    .line 362
    if-ltz v11, :cond_13

    .line 363
    .line 364
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    goto :goto_9

    .line 369
    :cond_13
    const/4 v11, 0x0

    .line 370
    :goto_9
    check-cast v6, Ljava/lang/String;

    .line 371
    .line 372
    move-object/from16 v17, v5

    .line 373
    .line 374
    move-object v5, v6

    .line 375
    invoke-static {}, Lokhttp3/Headers$Companion;->getAssertUser()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    check-cast v17, Ljava/lang/String;

    .line 380
    .line 381
    move-object/from16 v19, v1

    .line 382
    .line 383
    iget-wide v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->currentRevision:J

    .line 384
    .line 385
    check-cast v4, Ljava/lang/String;

    .line 386
    .line 387
    check-cast v3, Ljava/lang/String;

    .line 388
    .line 389
    check-cast v10, Ljava/lang/Boolean;

    .line 390
    .line 391
    check-cast v2, Ljava/lang/String;

    .line 392
    .line 393
    check-cast v19, Ljava/lang/String;

    .line 394
    .line 395
    iput v15, v9, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;->label:I

    .line 396
    .line 397
    move-object v15, v12

    .line 398
    move-object v12, v4

    .line 399
    const/4 v4, 0x0

    .line 400
    move-object/from16 v30, v15

    .line 401
    .line 402
    move-object v15, v2

    .line 403
    move-object v2, v14

    .line 404
    move-object v14, v10

    .line 405
    move-wide v9, v0

    .line 406
    move-object/from16 v0, v30

    .line 407
    .line 408
    move-object v1, v8

    .line 409
    const/4 v8, 0x0

    .line 410
    move-object/from16 p1, v0

    .line 411
    .line 412
    move-object v0, v13

    .line 413
    move-object/from16 v16, v19

    .line 414
    .line 415
    move-object v13, v3

    .line 416
    move-object v3, v11

    .line 417
    move-object v11, v7

    .line 418
    move-object/from16 v7, v17

    .line 419
    .line 420
    move-object/from16 v17, p0

    .line 421
    .line 422
    invoke-interface/range {v1 .. v17}, Lorg/wikipedia/dataclient/Service;->postEditSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    if-ne v1, v0, :cond_14

    .line 427
    .line 428
    :goto_a
    move-object/from16 v18, v0

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_14
    :goto_b
    check-cast v1, Lorg/wikipedia/edit/Edit;

    .line 432
    .line 433
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 434
    .line 435
    invoke-direct {v0, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    move-object/from16 v15, p1

    .line 442
    .line 443
    const/4 v1, 0x0

    .line 444
    invoke-virtual {v15, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    :goto_c
    return-object v18

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
