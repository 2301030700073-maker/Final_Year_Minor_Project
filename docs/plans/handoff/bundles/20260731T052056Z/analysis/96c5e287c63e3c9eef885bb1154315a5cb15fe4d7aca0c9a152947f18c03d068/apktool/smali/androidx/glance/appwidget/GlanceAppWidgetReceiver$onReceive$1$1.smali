.class public final Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $actionKey:Ljava/lang/Object;

.field public $context:Ljava/lang/Object;

.field public $id:I

.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/talk/template/TalkTemplatesViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    .line 18
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    .line 19
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;ILjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 20
    iput p6, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    iput p3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    iput-object p4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Ljava/util/List;Lorg/wikipedia/talk/template/TalkTemplatesViewModel;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 21
    .line 22
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 23
    .line 24
    invoke-direct {p0, v1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    new-instance v2, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 29
    .line 30
    iget v3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 31
    .line 32
    move-object v4, v1

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v5, p1

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v6, p1

    .line 43
    check-cast v6, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v7, p0

    .line 48
    check-cast v7, Landroid/content/Context;

    .line 49
    .line 50
    move-object v8, p2

    .line 51
    invoke-direct/range {v2 .. v8}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :pswitch_2
    move-object v8, p2

    .line 56
    new-instance v3, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 57
    .line 58
    iget-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v4, p2

    .line 61
    check-cast v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 62
    .line 63
    iget-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v5, p2

    .line 66
    check-cast v5, Landroid/content/Context;

    .line 67
    .line 68
    iget v6, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 69
    .line 70
    move-object v7, v1

    .line 71
    check-cast v7, Landroid/os/Bundle;

    .line 72
    .line 73
    const/4 v9, 0x1

    .line 74
    invoke-direct/range {v3 .. v9}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;ILjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v3, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    return-object v3

    .line 80
    :pswitch_3
    move-object v8, p2

    .line 81
    new-instance v3, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 82
    .line 83
    iget-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    move-object v4, p2

    .line 86
    check-cast v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 87
    .line 88
    iget-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v5, p2

    .line 91
    check-cast v5, Landroid/content/Context;

    .line 92
    .line 93
    iget v6, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 94
    .line 95
    move-object v7, v1

    .line 96
    check-cast v7, Ljava/lang/String;

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    invoke-direct/range {v3 .. v9}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;ILjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 100
    .line 101
    .line 102
    iput-object p1, v3, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    return-object v3

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    iget-object v3, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$actionKey:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    check-cast v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 23
    .line 24
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    .line 26
    iget v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 27
    .line 28
    if-eqz v9, :cond_1

    .line 29
    .line 30
    if-ne v9, v4, :cond_0

    .line 31
    .line 32
    iget v2, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 33
    .line 34
    iget-object v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v9, Ljava/util/Iterator;

    .line 37
    .line 38
    iget-object v10, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v10, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v8, v6

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v9, v2

    .line 59
    move-object v10, v3

    .line 60
    move v2, v7

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_5

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 72
    .line 73
    iget-object v12, v10, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 74
    .line 75
    iput-object v10, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput v2, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 80
    .line 81
    iput v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 82
    .line 83
    iget-object v12, v12, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v12, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 86
    .line 87
    iget-object v13, v12, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 88
    .line 89
    new-instance v14, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    invoke-direct {v14, v12, v11, v7}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;Lorg/wikipedia/talk/db/TalkTemplate;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v13, v7, v4, v14, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 99
    .line 100
    if-ne v11, v12, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v11, v8

    .line 104
    :goto_1
    if-ne v11, v12, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v11, v8

    .line 108
    :goto_2
    if-ne v11, v1, :cond_2

    .line 109
    .line 110
    move-object v8, v1

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    iget-object v1, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 118
    .line 119
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Added;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v6, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :goto_3
    return-object v8

    .line 131
    :pswitch_0
    move-object v9, v3

    .line 132
    check-cast v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 133
    .line 134
    iget-object v10, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 135
    .line 136
    iget-object v11, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 137
    .line 138
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 139
    .line 140
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 141
    .line 142
    const/4 v13, 0x3

    .line 143
    const/4 v14, 0x0

    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    if-eq v0, v4, :cond_8

    .line 147
    .line 148
    if-eq v0, v1, :cond_7

    .line 149
    .line 150
    if-ne v0, v13, :cond_6

    .line 151
    .line 152
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 155
    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object v4, v14

    .line 162
    goto/16 :goto_9

    .line 163
    .line 164
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object v8, v6

    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_7
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 171
    .line 172
    iget-object v1, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 175
    .line 176
    iget-object v2, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 179
    .line 180
    iget-object v3, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 183
    .line 184
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    move v15, v0

    .line 188
    move-object v6, v5

    .line 189
    move-object/from16 v0, p1

    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_8
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 194
    .line 195
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v2, p1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    move v0, v7

    .line 205
    :goto_4
    sget-object v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 206
    .line 207
    iput-object v14, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 210
    .line 211
    iput v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 212
    .line 213
    const-wide/16 v14, 0x5

    .line 214
    .line 215
    invoke-virtual {v2, v11, v14, v15, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithImageRecommendation(Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-ne v2, v12, :cond_a

    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_a
    :goto_5
    move-object v14, v2

    .line 224
    check-cast v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 225
    .line 226
    add-int/lit8 v15, v0, 0x1

    .line 227
    .line 228
    const/16 v2, 0xa

    .line 229
    .line 230
    if-ge v0, v2, :cond_c

    .line 231
    .line 232
    if-eqz v14, :cond_c

    .line 233
    .line 234
    iget-object v0, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    .line 235
    .line 236
    if-eqz v0, :cond_b

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    :cond_b
    move v0, v15

    .line 245
    const/4 v14, 0x0

    .line 246
    goto :goto_4

    .line 247
    :cond_c
    if-eqz v14, :cond_d

    .line 248
    .line 249
    iget-object v0, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_d
    const/4 v0, 0x0

    .line 253
    :goto_6
    if-eqz v0, :cond_e

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_f

    .line 260
    .line 261
    :cond_e
    const/4 v4, 0x0

    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :cond_f
    iget-object v0, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    .line 265
    .line 266
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iput-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->recommendation:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 276
    .line 277
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 287
    .line 288
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v3, v14, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 293
    .line 294
    iput-object v14, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 299
    .line 300
    iput v15, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 301
    .line 302
    iput v1, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 303
    .line 304
    move-object v1, v0

    .line 305
    move-object v0, v2

    .line 306
    const/4 v2, 0x0

    .line 307
    move-object v4, v1

    .line 308
    move-object v1, v3

    .line 309
    const/4 v3, 0x0

    .line 310
    move-object v6, v4

    .line 311
    const/4 v4, 0x0

    .line 312
    move-object/from16 v17, v6

    .line 313
    .line 314
    const/16 v6, 0x3e

    .line 315
    .line 316
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    move-object v6, v5

    .line 321
    if-ne v0, v12, :cond_10

    .line 322
    .line 323
    goto/16 :goto_8

    .line 324
    .line 325
    :cond_10
    move-object v1, v9

    .line 326
    move-object v3, v14

    .line 327
    move-object/from16 v2, v17

    .line 328
    .line 329
    :goto_7
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iput-object v0, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 338
    .line 339
    iget-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 340
    .line 341
    if-eqz v0, :cond_14

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iput-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 348
    .line 349
    sget-object v0, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 350
    .line 351
    invoke-virtual {v9}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 356
    .line 357
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 362
    .line 363
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->thumbUrl:Ljava/lang/String;

    .line 369
    .line 370
    const/16 v1, 0x3c0

    .line 371
    .line 372
    invoke-static {v1, v0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v1, "//"

    .line 377
    .line 378
    invoke-static {v0, v1, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_11

    .line 383
    .line 384
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 385
    .line 386
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const-string v4, ":"

    .line 399
    .line 400
    invoke-static {v1, v4, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    :cond_11
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 405
    .line 406
    invoke-static {v11}, Lorg/wikipedia/staticdata/FileAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v9}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    iget-object v5, v5, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    check-cast v5, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 421
    .line 422
    iget-object v5, v5, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 423
    .line 424
    sget-object v11, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 425
    .line 426
    invoke-direct {v1, v4, v5, v0, v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 427
    .line 428
    .line 429
    iput-object v1, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->recommendedImageTitle:Lorg/wikipedia/page/PageTitle;

    .line 430
    .line 431
    invoke-virtual {v9}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 436
    .line 437
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 442
    .line 443
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->description:Ljava/lang/String;

    .line 449
    .line 450
    iput-object v0, v1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 451
    .line 452
    sget-object v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->infoboxVarsByLang:Ljava/util/Map;

    .line 453
    .line 454
    iget-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 455
    .line 456
    iget-object v1, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 457
    .line 458
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 463
    .line 464
    const-string v3, "main"

    .line 465
    .line 466
    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v18

    .line 470
    invoke-virtual {v9}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    iget-object v1, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 475
    .line 476
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 481
    .line 482
    iget-object v1, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 483
    .line 484
    const/16 v26, 0x1

    .line 485
    .line 486
    const/16 v27, 0x1

    .line 487
    .line 488
    const-string v20, "caption"

    .line 489
    .line 490
    const-string v21, "alt"

    .line 491
    .line 492
    const-string v22, "200px"

    .line 493
    .line 494
    const-string v23, "thumb"

    .line 495
    .line 496
    const-string v24, "right"

    .line 497
    .line 498
    const/16 v25, 0x0

    .line 499
    .line 500
    move-object/from16 v17, v0

    .line 501
    .line 502
    move-object/from16 v19, v1

    .line 503
    .line 504
    invoke-static/range {v17 .. v27}, Lokio/Okio__JvmOkioKt;->insertImageIntoWikiText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lkotlin/Triple;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iget-object v0, v1, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v0, Ljava/lang/Boolean;

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_12

    .line 517
    .line 518
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 519
    .line 520
    sget-object v7, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 521
    .line 522
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 523
    .line 524
    const/16 v5, 0xa

    .line 525
    .line 526
    move-object v3, v9

    .line 527
    const/4 v4, 0x0

    .line 528
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 529
    .line 530
    .line 531
    iput-object v4, v6, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v4, v6, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v4, v6, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 536
    .line 537
    iput v15, v6, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 538
    .line 539
    iput v13, v6, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 540
    .line 541
    invoke-static {v7, v0, v6}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-ne v0, v12, :cond_13

    .line 546
    .line 547
    :goto_8
    move-object v8, v12

    .line 548
    goto :goto_b

    .line 549
    :cond_12
    const/4 v4, 0x0

    .line 550
    :cond_13
    :goto_9
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 551
    .line 552
    invoke-direct {v0, v8}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10, v4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_14
    const/4 v4, 0x0

    .line 563
    const-string v0, "summary"

    .line 564
    .line 565
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw v4

    .line 569
    :goto_a
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$Depleted;

    .line 570
    .line 571
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10, v4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    :goto_b
    return-object v8

    .line 581
    :pswitch_1
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 582
    .line 583
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 584
    .line 585
    iget v10, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 586
    .line 587
    if-eqz v10, :cond_17

    .line 588
    .line 589
    if-eq v10, v4, :cond_16

    .line 590
    .line 591
    if-ne v10, v1, :cond_15

    .line 592
    .line 593
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    goto :goto_f

    .line 597
    :cond_15
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    move-object v8, v6

    .line 601
    goto :goto_f

    .line 602
    :cond_16
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .line 604
    .line 605
    goto :goto_c

    .line 606
    :catch_0
    move-exception v0

    .line 607
    goto :goto_d

    .line 608
    :cond_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    :try_start_1
    invoke-static {}, Lj$/time/Year;->now()Lj$/time/Year;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lj$/time/Year;->getValue()I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-ne v0, v2, :cond_18

    .line 620
    .line 621
    add-int/lit8 v0, v0, -0x1

    .line 622
    .line 623
    :cond_18
    move v11, v0

    .line 624
    new-instance v10, Lorg/wikipedia/categories/db/Category;

    .line 625
    .line 626
    move-object v14, v3

    .line 627
    check-cast v14, Ljava/lang/String;

    .line 628
    .line 629
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 630
    .line 631
    move-object v15, v0

    .line 632
    check-cast v15, Ljava/lang/String;

    .line 633
    .line 634
    const/4 v13, 0x1

    .line 635
    const/4 v12, 0x1

    .line 636
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 640
    .line 641
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v10}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    iput v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 654
    .line 655
    invoke-virtual {v0, v2, v5}, Lorg/wikipedia/categories/db/CategoryDao_Impl;->upsertAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    if-ne v0, v9, :cond_19

    .line 660
    .line 661
    goto :goto_e

    .line 662
    :cond_19
    :goto_c
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 665
    .line 666
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 667
    .line 668
    .line 669
    goto :goto_f

    .line 670
    :goto_d
    const-string v2, "Error generating sample data"

    .line 671
    .line 672
    sget-object v3, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 673
    .line 674
    invoke-virtual {v3, v2, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 678
    .line 679
    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 680
    .line 681
    new-instance v3, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;

    .line 682
    .line 683
    iget-object v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v4, Landroid/content/Context;

    .line 686
    .line 687
    invoke-direct {v3, v4, v0, v6, v7}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;-><init>(Landroid/content/Context;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;I)V

    .line 688
    .line 689
    .line 690
    iput v1, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 691
    .line 692
    invoke-static {v2, v3, v5}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    if-ne v0, v9, :cond_1a

    .line 697
    .line 698
    :goto_e
    move-object v8, v9

    .line 699
    :cond_1a
    :goto_f
    return-object v8

    .line 700
    :pswitch_2
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 703
    .line 704
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 705
    .line 706
    iget v7, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 707
    .line 708
    if-eqz v7, :cond_1c

    .line 709
    .line 710
    if-ne v7, v4, :cond_1b

    .line 711
    .line 712
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    goto :goto_12

    .line 716
    :cond_1b
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    move-object v8, v6

    .line 720
    goto :goto_12

    .line 721
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    iget-object v2, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 727
    .line 728
    iget-object v7, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v7, Landroid/content/Context;

    .line 731
    .line 732
    sget v9, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->$r8$clinit:I

    .line 733
    .line 734
    invoke-virtual {v0, v2, v7}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->updateManager(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V

    .line 735
    .line 736
    .line 737
    new-instance v13, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 738
    .line 739
    invoke-direct {v13}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;-><init>()V

    .line 740
    .line 741
    .line 742
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 743
    .line 744
    move-object v11, v0

    .line 745
    check-cast v11, Landroid/content/Context;

    .line 746
    .line 747
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 748
    .line 749
    move-object v14, v3

    .line 750
    check-cast v14, Landroid/os/Bundle;

    .line 751
    .line 752
    iput v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 753
    .line 754
    new-instance v12, Landroidx/glance/appwidget/AppWidgetId;

    .line 755
    .line 756
    invoke-direct {v12, v0}, Landroidx/glance/appwidget/AppWidgetId;-><init>(I)V

    .line 757
    .line 758
    .line 759
    new-instance v15, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 760
    .line 761
    invoke-direct {v15, v4, v14, v6}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 762
    .line 763
    .line 764
    new-instance v10, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 765
    .line 766
    const/16 v16, 0x0

    .line 767
    .line 768
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/os/Bundle;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 769
    .line 770
    .line 771
    iget-object v0, v13, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->sessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 772
    .line 773
    invoke-virtual {v0, v10, v5}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    if-ne v0, v1, :cond_1d

    .line 778
    .line 779
    goto :goto_10

    .line 780
    :cond_1d
    move-object v0, v8

    .line 781
    :goto_10
    if-ne v0, v1, :cond_1e

    .line 782
    .line 783
    goto :goto_11

    .line 784
    :cond_1e
    move-object v0, v8

    .line 785
    :goto_11
    if-ne v0, v1, :cond_1f

    .line 786
    .line 787
    move-object v8, v1

    .line 788
    :cond_1f
    :goto_12
    return-object v8

    .line 789
    :pswitch_3
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->this$0:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 792
    .line 793
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 794
    .line 795
    iget v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 796
    .line 797
    if-eqz v9, :cond_21

    .line 798
    .line 799
    if-ne v9, v4, :cond_20

    .line 800
    .line 801
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    goto :goto_15

    .line 805
    :cond_20
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    move-object v8, v6

    .line 809
    goto :goto_15

    .line 810
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    iget-object v2, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->L$0:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 816
    .line 817
    iget-object v9, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v9, Landroid/content/Context;

    .line 820
    .line 821
    sget v10, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->$r8$clinit:I

    .line 822
    .line 823
    invoke-virtual {v0, v2, v9}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->updateManager(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V

    .line 824
    .line 825
    .line 826
    new-instance v14, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 827
    .line 828
    invoke-direct {v14}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;-><init>()V

    .line 829
    .line 830
    .line 831
    iget-object v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$context:Ljava/lang/Object;

    .line 832
    .line 833
    move-object v12, v0

    .line 834
    check-cast v12, Landroid/content/Context;

    .line 835
    .line 836
    iget v0, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->$id:I

    .line 837
    .line 838
    check-cast v3, Ljava/lang/String;

    .line 839
    .line 840
    iput v4, v5, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;->label:I

    .line 841
    .line 842
    new-instance v13, Landroidx/glance/appwidget/AppWidgetId;

    .line 843
    .line 844
    invoke-direct {v13, v0}, Landroidx/glance/appwidget/AppWidgetId;-><init>(I)V

    .line 845
    .line 846
    .line 847
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 848
    .line 849
    invoke-direct {v0, v1, v3, v6}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 850
    .line 851
    .line 852
    new-instance v11, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 853
    .line 854
    const/16 v17, 0x0

    .line 855
    .line 856
    const/4 v15, 0x0

    .line 857
    move-object/from16 v16, v0

    .line 858
    .line 859
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/os/Bundle;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 860
    .line 861
    .line 862
    iget-object v0, v14, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->sessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 863
    .line 864
    invoke-virtual {v0, v11, v5}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    if-ne v0, v7, :cond_22

    .line 869
    .line 870
    goto :goto_13

    .line 871
    :cond_22
    move-object v0, v8

    .line 872
    :goto_13
    if-ne v0, v7, :cond_23

    .line 873
    .line 874
    goto :goto_14

    .line 875
    :cond_23
    move-object v0, v8

    .line 876
    :goto_14
    if-ne v0, v7, :cond_24

    .line 877
    .line 878
    move-object v8, v7

    .line 879
    :cond_24
    :goto_15
    return-object v8

    .line 880
    nop

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
