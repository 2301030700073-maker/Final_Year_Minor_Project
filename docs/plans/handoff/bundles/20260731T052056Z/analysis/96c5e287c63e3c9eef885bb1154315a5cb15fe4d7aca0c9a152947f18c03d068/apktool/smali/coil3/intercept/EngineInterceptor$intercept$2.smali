.class public final Lcoil3/intercept/EngineInterceptor$intercept$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cacheKey:Ljava/lang/Object;

.field public final synthetic $chain:Ljava/lang/Object;

.field public final synthetic $eventListener:Ljava/lang/Object;

.field public $mappedData:Ljava/lang/Object;

.field public synthetic $options:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public $request:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 23
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 24
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    iput-object p7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 25
    iput p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 26
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 6
    .line 7
    iget-object v3, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v6, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 17
    .line 18
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v7, v1

    .line 21
    check-cast v7, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 22
    .line 23
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v8, v1

    .line 26
    check-cast v8, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v9, v0

    .line 31
    check-cast v9, Ljava/lang/String;

    .line 32
    .line 33
    move-object v10, v5

    .line 34
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 35
    .line 36
    move-object v11, v4

    .line 37
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    move-object v12, v3

    .line 40
    check-cast v12, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;

    .line 41
    .line 42
    move-object/from16 v13, p2

    .line 43
    .line 44
    invoke-direct/range {v6 .. v13}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    return-object v6

    .line 48
    :pswitch_0
    new-instance v7, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 49
    .line 50
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v8, v1

    .line 53
    check-cast v8, Lcoil3/intercept/EngineInterceptor;

    .line 54
    .line 55
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v9, v1

    .line 58
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    move-object v10, v4

    .line 61
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 62
    .line 63
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v11, v1

    .line 66
    check-cast v11, Lcoil3/request/ImageRequest;

    .line 67
    .line 68
    iget-object v12, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v13, v3

    .line 71
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    move-object v14, v5

    .line 74
    check-cast v14, Lcoil3/EventListener$Companion$NONE$1;

    .line 75
    .line 76
    move-object/from16 v15, p2

    .line 77
    .line 78
    invoke-direct/range {v7 .. v15}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    return-object v7

    .line 82
    :pswitch_1
    new-instance v7, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 83
    .line 84
    iget-object v2, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v8, v2

    .line 87
    check-cast v8, Landroid/content/ContentResolver;

    .line 88
    .line 89
    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v9, v0

    .line 92
    check-cast v9, Landroid/net/Uri;

    .line 93
    .line 94
    move-object v10, v5

    .line 95
    check-cast v10, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 96
    .line 97
    move-object v11, v4

    .line 98
    check-cast v11, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 99
    .line 100
    move-object v12, v3

    .line 101
    check-cast v12, Landroid/content/Context;

    .line 102
    .line 103
    move-object/from16 v13, p2

    .line 104
    .line 105
    invoke-direct/range {v7 .. v13}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v7, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 109
    .line 110
    return-object v7

    .line 111
    :pswitch_2
    new-instance v7, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 112
    .line 113
    move-object v8, v5

    .line 114
    check-cast v8, Landroidx/compose/foundation/MutatePriority;

    .line 115
    .line 116
    move-object v9, v4

    .line 117
    check-cast v9, Landroidx/compose/foundation/MutatorMutex;

    .line 118
    .line 119
    move-object v10, v3

    .line 120
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    const/4 v12, 0x2

    .line 123
    move-object/from16 v11, p2

    .line 124
    .line 125
    invoke-direct/range {v7 .. v12}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 126
    .line 127
    .line 128
    iput-object v1, v7, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 129
    .line 130
    return-object v7

    .line 131
    :pswitch_3
    new-instance v7, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 132
    .line 133
    move-object v8, v5

    .line 134
    check-cast v8, Landroidx/compose/animation/core/MutatePriority;

    .line 135
    .line 136
    move-object v9, v4

    .line 137
    check-cast v9, Landroidx/compose/animation/core/MutatorMutex;

    .line 138
    .line 139
    move-object v10, v3

    .line 140
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    const/4 v12, 0x1

    .line 143
    move-object/from16 v11, p2

    .line 144
    .line 145
    invoke-direct/range {v7 .. v12}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 146
    .line 147
    .line 148
    iput-object v1, v7, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 149
    .line 150
    return-object v7

    .line 151
    :pswitch_4
    new-instance v7, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 152
    .line 153
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v8, v1

    .line 156
    check-cast v8, Lcoil3/intercept/EngineInterceptor;

    .line 157
    .line 158
    iget-object v1, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 159
    .line 160
    move-object v9, v1

    .line 161
    check-cast v9, Lcoil3/request/ImageRequest;

    .line 162
    .line 163
    iget-object v10, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 164
    .line 165
    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v11, v0

    .line 168
    check-cast v11, Lcoil3/request/Options;

    .line 169
    .line 170
    move-object v12, v5

    .line 171
    check-cast v12, Lcoil3/EventListener$Companion$NONE$1;

    .line 172
    .line 173
    move-object v13, v4

    .line 174
    check-cast v13, Lcoil3/memory/MemoryCache$Key;

    .line 175
    .line 176
    move-object v14, v3

    .line 177
    check-cast v14, Lcoil3/intercept/RealInterceptorChain;

    .line 178
    .line 179
    move-object/from16 v15, p2

    .line 180
    .line 181
    invoke-direct/range {v7 .. v15}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/Continuation;)V

    .line 182
    .line 183
    .line 184
    return-object v7

    .line 185
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
    iget v0, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    nop

    .line 99
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
    .locals 31

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v11, v0

    .line 15
    check-cast v11, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v6, v0

    .line 20
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v9, v0

    .line 25
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v14, v0

    .line 30
    check-cast v14, Ljava/lang/String;

    .line 31
    .line 32
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    iget v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    packed-switch v0, :pswitch_data_1

    .line 38
    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_11

    .line 46
    .line 47
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v0, p1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object/from16 v20, v0

    .line 61
    .line 62
    move-object/from16 v0, p1

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v0, p1

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object/from16 v0, p1

    .line 77
    .line 78
    move-object v7, v9

    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v0, p1

    .line 85
    .line 86
    move-object v7, v9

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v0, p1

    .line 93
    .line 94
    goto/16 :goto_f

    .line 95
    .line 96
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 102
    .line 103
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel$findNextSuggestedEditsItem$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aget v0, v3, v0

    .line 110
    .line 111
    if-eq v0, v7, :cond_e

    .line 112
    .line 113
    const-wide/16 v3, 0x14

    .line 114
    .line 115
    if-eq v0, v1, :cond_8

    .line 116
    .line 117
    if-eq v0, v2, :cond_1

    .line 118
    .line 119
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 120
    .line 121
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const/4 v2, 0x6

    .line 131
    iput v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 132
    .line 133
    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-ne v0, v10, :cond_0

    .line 138
    .line 139
    goto/16 :goto_e

    .line 140
    .line 141
    :cond_0
    :goto_0
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 142
    .line 143
    new-instance v12, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 144
    .line 145
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v16

    .line 166
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    iget-object v2, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v0, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 175
    .line 176
    const/16 v21, 0x700

    .line 177
    .line 178
    move-object/from16 v20, v0

    .line 179
    .line 180
    move-object/from16 v17, v1

    .line 181
    .line 182
    move-object/from16 v19, v2

    .line 183
    .line 184
    invoke-direct/range {v12 .. v21}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    iput-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 188
    .line 189
    goto/16 :goto_10

    .line 190
    .line 191
    :cond_1
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 192
    .line 193
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Ljava/lang/String;

    .line 196
    .line 197
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v2, Ljava/lang/String;

    .line 200
    .line 201
    const/4 v3, 0x4

    .line 202
    iput v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 203
    .line 204
    const-wide/16 v3, 0x14

    .line 205
    .line 206
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-ne v0, v10, :cond_2

    .line 211
    .line 212
    goto/16 :goto_e

    .line 213
    .line 214
    :cond_2
    :goto_1
    check-cast v0, Lkotlin/Pair;

    .line 215
    .line 216
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Ljava/lang/String;

    .line 219
    .line 220
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 221
    .line 222
    sget-object v2, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 223
    .line 224
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Ljava/lang/String;

    .line 231
    .line 232
    iput-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 233
    .line 234
    const/4 v3, 0x5

    .line 235
    iput v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 236
    .line 237
    invoke-interface {v2, v0, v14, v5}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-ne v0, v10, :cond_3

    .line 242
    .line 243
    goto/16 :goto_e

    .line 244
    .line 245
    :cond_3
    move-object/from16 v20, v1

    .line 246
    .line 247
    :goto_2
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 248
    .line 249
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 250
    .line 251
    if-eqz v0, :cond_4

    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    goto :goto_3

    .line 258
    :cond_4
    move-object v0, v8

    .line 259
    :goto_3
    if-eqz v0, :cond_5

    .line 260
    .line 261
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_4

    .line 266
    :cond_5
    move-object v1, v8

    .line 267
    :goto_4
    if-eqz v1, :cond_10

    .line 268
    .line 269
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    iget-object v2, v1, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_6

    .line 283
    .line 284
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 285
    .line 286
    :goto_5
    move-object/from16 v16, v0

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    sget-object v0, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 290
    .line 291
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    sget-object v3, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v3}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_5

    .line 312
    :goto_6
    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 313
    .line 314
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 315
    .line 316
    move-object/from16 v17, v0

    .line 317
    .line 318
    check-cast v17, Ljava/lang/String;

    .line 319
    .line 320
    new-instance v18, Lorg/wikipedia/page/PageTitle;

    .line 321
    .line 322
    const-string v22, "FILE"

    .line 323
    .line 324
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 325
    .line 326
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v24

    .line 330
    iget-object v0, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 331
    .line 332
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 338
    .line 339
    .line 340
    move-result-object v23

    .line 341
    const/16 v28, 0x0

    .line 342
    .line 343
    const/16 v29, 0x0

    .line 344
    .line 345
    const/16 v25, 0x0

    .line 346
    .line 347
    const/16 v27, 0x0

    .line 348
    .line 349
    move-object/from16 v26, v0

    .line 350
    .line 351
    move-object/from16 v21, v18

    .line 352
    .line 353
    invoke-direct/range {v21 .. v29}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v19

    .line 360
    iget-object v0, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 361
    .line 362
    iget-object v2, v1, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v3, v1, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v4, v1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 367
    .line 368
    const/16 v22, 0x0

    .line 369
    .line 370
    const/16 v23, 0x0

    .line 371
    .line 372
    move-object/from16 v21, v0

    .line 373
    .line 374
    move-object/from16 v24, v2

    .line 375
    .line 376
    move-object/from16 v25, v3

    .line 377
    .line 378
    move-object/from16 v26, v4

    .line 379
    .line 380
    invoke-direct/range {v15 .. v26}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 381
    .line 382
    .line 383
    move-object v0, v15

    .line 384
    move-object/from16 v10, v16

    .line 385
    .line 386
    move-object/from16 v14, v20

    .line 387
    .line 388
    move-object/from16 v15, v21

    .line 389
    .line 390
    move-object/from16 v16, v22

    .line 391
    .line 392
    new-instance v20, Lorg/wikipedia/page/PageTitle;

    .line 393
    .line 394
    const-string v21, "FILE"

    .line 395
    .line 396
    const/16 v2, 0x3a

    .line 397
    .line 398
    invoke-static {v10, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v23

    .line 402
    iget-object v1, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 403
    .line 404
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 405
    .line 406
    .line 407
    move-result-object v22

    .line 408
    const/16 v24, 0x0

    .line 409
    .line 410
    const/16 v26, 0x0

    .line 411
    .line 412
    move-object/from16 v25, v1

    .line 413
    .line 414
    invoke-direct/range {v20 .. v28}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v2, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v3, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v4, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 424
    .line 425
    move-object v7, v9

    .line 426
    new-instance v9, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 427
    .line 428
    move-object/from16 v17, v1

    .line 429
    .line 430
    move-object/from16 v18, v2

    .line 431
    .line 432
    move-object/from16 v13, v19

    .line 433
    .line 434
    move-object/from16 v12, v20

    .line 435
    .line 436
    move-object/from16 v19, v3

    .line 437
    .line 438
    move-object/from16 v20, v4

    .line 439
    .line 440
    invoke-direct/range {v9 .. v20}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 441
    .line 442
    .line 443
    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 444
    .line 445
    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 446
    .line 447
    :cond_7
    :goto_7
    move-object v9, v7

    .line 448
    goto/16 :goto_10

    .line 449
    .line 450
    :cond_8
    move-object v7, v9

    .line 451
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 452
    .line 453
    iput v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 454
    .line 455
    invoke-virtual {v0, v14, v3, v4, v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-ne v0, v10, :cond_9

    .line 460
    .line 461
    goto/16 :goto_e

    .line 462
    .line 463
    :cond_9
    :goto_8
    check-cast v0, Ljava/lang/String;

    .line 464
    .line 465
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 466
    .line 467
    sget-object v1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 468
    .line 469
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 474
    .line 475
    invoke-interface {v1, v0, v14, v5}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-ne v0, v10, :cond_a

    .line 480
    .line 481
    goto/16 :goto_e

    .line 482
    .line 483
    :cond_a
    :goto_9
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 484
    .line 485
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 486
    .line 487
    if-eqz v0, :cond_b

    .line 488
    .line 489
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    goto :goto_a

    .line 494
    :cond_b
    move-object v0, v8

    .line 495
    :goto_a
    if-eqz v0, :cond_c

    .line 496
    .line 497
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    goto :goto_b

    .line 502
    :cond_c
    move-object v1, v8

    .line 503
    :goto_b
    if-eqz v1, :cond_7

    .line 504
    .line 505
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    iget-object v2, v1, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-nez v3, :cond_d

    .line 519
    .line 520
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 521
    .line 522
    :goto_c
    move-object/from16 v16, v0

    .line 523
    .line 524
    goto :goto_d

    .line 525
    :cond_d
    sget-object v0, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 526
    .line 527
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    sget-object v3, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    invoke-static {v2, v3}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    goto :goto_c

    .line 548
    :goto_d
    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 549
    .line 550
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 551
    .line 552
    move-object/from16 v17, v0

    .line 553
    .line 554
    check-cast v17, Ljava/lang/String;

    .line 555
    .line 556
    new-instance v18, Lorg/wikipedia/page/PageTitle;

    .line 557
    .line 558
    const-string v19, "FILE"

    .line 559
    .line 560
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 561
    .line 562
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v21

    .line 566
    iget-object v0, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 567
    .line 568
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 574
    .line 575
    .line 576
    move-result-object v20

    .line 577
    const/16 v25, 0x0

    .line 578
    .line 579
    const/16 v26, 0x0

    .line 580
    .line 581
    const/16 v22, 0x0

    .line 582
    .line 583
    const/16 v24, 0x0

    .line 584
    .line 585
    move-object/from16 v23, v0

    .line 586
    .line 587
    invoke-direct/range {v18 .. v26}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v19

    .line 594
    iget-object v0, v1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v20

    .line 603
    iget-object v0, v1, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 604
    .line 605
    iget-object v2, v1, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 606
    .line 607
    iget-object v3, v1, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 608
    .line 609
    iget-object v1, v1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 610
    .line 611
    const/16 v23, 0x0

    .line 612
    .line 613
    move-object/from16 v21, v0

    .line 614
    .line 615
    move-object/from16 v26, v1

    .line 616
    .line 617
    move-object/from16 v24, v2

    .line 618
    .line 619
    move-object/from16 v25, v3

    .line 620
    .line 621
    invoke-direct/range {v15 .. v26}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 622
    .line 623
    .line 624
    iput-object v15, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 625
    .line 626
    goto/16 :goto_7

    .line 627
    .line 628
    :cond_e
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 629
    .line 630
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 631
    .line 632
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast v2, Ljava/lang/String;

    .line 642
    .line 643
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 644
    .line 645
    const-wide/16 v3, 0x14

    .line 646
    .line 647
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    if-ne v0, v10, :cond_f

    .line 652
    .line 653
    :goto_e
    move-object v8, v10

    .line 654
    goto/16 :goto_11

    .line 655
    .line 656
    :cond_f
    :goto_f
    check-cast v0, Lkotlin/Pair;

    .line 657
    .line 658
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 661
    .line 662
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 665
    .line 666
    new-instance v15, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 667
    .line 668
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v16

    .line 672
    iget-object v2, v1, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    .line 673
    .line 674
    sget-object v3, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 675
    .line 676
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    invoke-static {v14}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 684
    .line 685
    .line 686
    move-result-object v18

    .line 687
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v19

    .line 691
    iget-object v3, v1, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 692
    .line 693
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v21

    .line 697
    iget-object v4, v1, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 698
    .line 699
    iget-object v1, v1, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 700
    .line 701
    const/16 v24, 0x700

    .line 702
    .line 703
    move-object/from16 v23, v1

    .line 704
    .line 705
    move-object/from16 v17, v2

    .line 706
    .line 707
    move-object/from16 v20, v3

    .line 708
    .line 709
    move-object/from16 v22, v4

    .line 710
    .line 711
    invoke-direct/range {v15 .. v24}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 712
    .line 713
    .line 714
    iput-object v15, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 715
    .line 716
    new-instance v16, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 717
    .line 718
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v17

    .line 722
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->lang:Ljava/lang/String;

    .line 723
    .line 724
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 729
    .line 730
    .line 731
    move-result-object v19

    .line 732
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v20

    .line 736
    iget-object v2, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 737
    .line 738
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v22

    .line 742
    iget-object v3, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 743
    .line 744
    iget-object v0, v0, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 745
    .line 746
    const/16 v25, 0x700

    .line 747
    .line 748
    move-object/from16 v24, v0

    .line 749
    .line 750
    move-object/from16 v18, v1

    .line 751
    .line 752
    move-object/from16 v21, v2

    .line 753
    .line 754
    move-object/from16 v23, v3

    .line 755
    .line 756
    invoke-direct/range {v16 .. v25}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 757
    .line 758
    .line 759
    move-object/from16 v0, v16

    .line 760
    .line 761
    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 762
    .line 763
    :cond_10
    :goto_10
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;

    .line 766
    .line 767
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 768
    .line 769
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 770
    .line 771
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 772
    .line 773
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 774
    .line 775
    new-instance v4, Lkotlin/Pair;

    .line 776
    .line 777
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    invoke-direct {v1, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0, v8, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 790
    .line 791
    :goto_11
    return-object v8

    .line 792
    :pswitch_7
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 793
    .line 794
    iget v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 795
    .line 796
    if-eqz v0, :cond_12

    .line 797
    .line 798
    if-ne v0, v7, :cond_11

    .line 799
    .line 800
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    move-object/from16 v0, p1

    .line 804
    .line 805
    goto :goto_12

    .line 806
    :cond_11
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 807
    .line 808
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    move-object v0, v8

    .line 812
    goto :goto_12

    .line 813
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v0, Lcoil3/intercept/EngineInterceptor;

    .line 819
    .line 820
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 823
    .line 824
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v1, Lcoil3/fetch/SourceFetchResult;

    .line 827
    .line 828
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 831
    .line 832
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v2, Lcoil3/ComponentRegistry;

    .line 835
    .line 836
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v3, Lcoil3/request/ImageRequest;

    .line 839
    .line 840
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 841
    .line 842
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 845
    .line 846
    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v6, Lcoil3/request/Options;

    .line 849
    .line 850
    iget-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 851
    .line 852
    check-cast v8, Lcoil3/EventListener$Companion$NONE$1;

    .line 853
    .line 854
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 855
    .line 856
    move-object v7, v5

    .line 857
    move-object v5, v6

    .line 858
    move-object v6, v8

    .line 859
    invoke-virtual/range {v0 .. v7}, Lcoil3/intercept/EngineInterceptor;->decode(Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    if-ne v0, v9, :cond_13

    .line 864
    .line 865
    move-object v0, v9

    .line 866
    :cond_13
    :goto_12
    return-object v0

    .line 867
    :pswitch_8
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 868
    .line 869
    move-object v2, v0

    .line 870
    check-cast v2, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 871
    .line 872
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 873
    .line 874
    move-object v3, v0

    .line 875
    check-cast v3, Landroid/content/ContentResolver;

    .line 876
    .line 877
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 878
    .line 879
    iget v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 880
    .line 881
    if-eqz v4, :cond_16

    .line 882
    .line 883
    if-eq v4, v7, :cond_15

    .line 884
    .line 885
    if-ne v4, v1, :cond_14

    .line 886
    .line 887
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 890
    .line 891
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    .line 894
    .line 895
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    .line 897
    .line 898
    move-object v8, v4

    .line 899
    move-object v4, v6

    .line 900
    goto :goto_13

    .line 901
    :catchall_0
    move-exception v0

    .line 902
    goto/16 :goto_17

    .line 903
    .line 904
    :cond_14
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 905
    .line 906
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    goto/16 :goto_16

    .line 910
    .line 911
    :cond_15
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 914
    .line 915
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    .line 918
    .line 919
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    .line 921
    .line 922
    move-object v8, v6

    .line 923
    move-object/from16 v6, p1

    .line 924
    .line 925
    goto :goto_14

    .line 926
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 927
    .line 928
    .line 929
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 932
    .line 933
    iget-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v8, Landroid/net/Uri;

    .line 936
    .line 937
    invoke-virtual {v3, v8, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 938
    .line 939
    .line 940
    :try_start_2
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v6, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 943
    .line 944
    new-instance v8, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 945
    .line 946
    invoke-direct {v8, v6}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 947
    .line 948
    .line 949
    :goto_13
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 950
    .line 951
    iput-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 952
    .line 953
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 954
    .line 955
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    if-ne v6, v0, :cond_17

    .line 960
    .line 961
    goto :goto_15

    .line 962
    :cond_17
    move-object/from16 v30, v8

    .line 963
    .line 964
    move-object v8, v4

    .line 965
    move-object/from16 v4, v30

    .line 966
    .line 967
    :goto_14
    check-cast v6, Ljava/lang/Boolean;

    .line 968
    .line 969
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 970
    .line 971
    .line 972
    move-result v6

    .line 973
    if-eqz v6, :cond_19

    .line 974
    .line 975
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v6, Landroid/content/Context;

    .line 981
    .line 982
    sget-object v9, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Landroidx/collection/MutableScatterMap;

    .line 983
    .line 984
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 985
    .line 986
    .line 987
    move-result-object v6

    .line 988
    const-string v9, "animator_duration_scale"

    .line 989
    .line 990
    const/high16 v10, 0x3f800000    # 1.0f

    .line 991
    .line 992
    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 993
    .line 994
    .line 995
    move-result v6

    .line 996
    new-instance v9, Ljava/lang/Float;

    .line 997
    .line 998
    invoke-direct {v9, v6}, Ljava/lang/Float;-><init>(F)V

    .line 999
    .line 1000
    .line 1001
    iput-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1002
    .line 1003
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1004
    .line 1005
    iput v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1006
    .line 1007
    invoke-interface {v8, v9, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    if-ne v6, v0, :cond_18

    .line 1012
    .line 1013
    :goto_15
    move-object v8, v0

    .line 1014
    goto :goto_16

    .line 1015
    :cond_18
    move-object/from16 v30, v8

    .line 1016
    .line 1017
    move-object v8, v4

    .line 1018
    move-object/from16 v4, v30

    .line 1019
    .line 1020
    goto :goto_13

    .line 1021
    :cond_19
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1025
    .line 1026
    :goto_16
    return-object v8

    .line 1027
    :goto_17
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1028
    .line 1029
    .line 1030
    throw v0

    .line 1031
    :pswitch_9
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 1032
    .line 1033
    check-cast v0, Landroidx/compose/foundation/MutatorMutex;

    .line 1034
    .line 1035
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1036
    .line 1037
    iget v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1038
    .line 1039
    if-eqz v3, :cond_1c

    .line 1040
    .line 1041
    if-eq v3, v7, :cond_1b

    .line 1042
    .line 1043
    if-ne v3, v1, :cond_1a

    .line 1044
    .line 1045
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1046
    .line 1047
    move-object v1, v0

    .line 1048
    check-cast v1, Landroidx/compose/foundation/MutatorMutex;

    .line 1049
    .line 1050
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1051
    .line 1052
    move-object v2, v0

    .line 1053
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 1054
    .line 1055
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1056
    .line 1057
    move-object v3, v0

    .line 1058
    check-cast v3, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1059
    .line 1060
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1061
    .line 1062
    .line 1063
    move-object/from16 v0, p1

    .line 1064
    .line 1065
    goto/16 :goto_1b

    .line 1066
    .line 1067
    :catchall_1
    move-exception v0

    .line 1068
    goto/16 :goto_1e

    .line 1069
    .line 1070
    :cond_1a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1071
    .line 1072
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_1d

    .line 1076
    .line 1077
    :cond_1b
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v0, Landroidx/compose/foundation/MutatorMutex;

    .line 1080
    .line 1081
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1084
    .line 1085
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 1088
    .line 1089
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v6, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1092
    .line 1093
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    move-object v7, v6

    .line 1097
    move-object v6, v3

    .line 1098
    :goto_18
    move-object v3, v0

    .line 1099
    goto :goto_19

    .line 1100
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1101
    .line 1102
    .line 1103
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1104
    .line 1105
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 1106
    .line 1107
    new-instance v4, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1108
    .line 1109
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 1110
    .line 1111
    check-cast v6, Landroidx/compose/foundation/MutatePriority;

    .line 1112
    .line 1113
    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    sget-object v9, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 1118
    .line 1119
    invoke-interface {v3, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v3

    .line 1123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 1127
    .line 1128
    invoke-direct {v4, v6, v3}, Landroidx/compose/foundation/MutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/MutatorMutex;->tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    .line 1132
    .line 1133
    .line 1134
    iget-object v3, v0, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1135
    .line 1136
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1139
    .line 1140
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1141
    .line 1142
    iput-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1143
    .line 1144
    iput-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1145
    .line 1146
    iput-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1147
    .line 1148
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1149
    .line 1150
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v7

    .line 1154
    if-ne v7, v2, :cond_1d

    .line 1155
    .line 1156
    goto :goto_1a

    .line 1157
    :cond_1d
    move-object v7, v4

    .line 1158
    move-object v4, v3

    .line 1159
    goto :goto_18

    .line 1160
    :goto_19
    :try_start_4
    iput-object v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1161
    .line 1162
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1163
    .line 1164
    iput-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1165
    .line 1166
    iput-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1167
    .line 1168
    iput v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1169
    .line 1170
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1174
    if-ne v0, v2, :cond_1e

    .line 1175
    .line 1176
    :goto_1a
    move-object v8, v2

    .line 1177
    goto :goto_1d

    .line 1178
    :cond_1e
    move-object v1, v3

    .line 1179
    move-object v2, v4

    .line 1180
    move-object v3, v7

    .line 1181
    :goto_1b
    :try_start_5
    iget-object v1, v1, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1182
    .line 1183
    :cond_1f
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    if-eqz v4, :cond_20

    .line 1188
    .line 1189
    goto :goto_1c

    .line 1190
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1194
    if-eq v4, v3, :cond_1f

    .line 1195
    .line 1196
    :goto_1c
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    move-object v8, v0

    .line 1200
    :goto_1d
    return-object v8

    .line 1201
    :catchall_2
    move-exception v0

    .line 1202
    goto :goto_20

    .line 1203
    :catchall_3
    move-exception v0

    .line 1204
    move-object v1, v3

    .line 1205
    move-object v2, v4

    .line 1206
    move-object v3, v7

    .line 1207
    :goto_1e
    :try_start_6
    iget-object v1, v1, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1208
    .line 1209
    :goto_1f
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v4

    .line 1213
    if-nez v4, :cond_21

    .line 1214
    .line 1215
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    if-ne v4, v3, :cond_21

    .line 1220
    .line 1221
    goto :goto_1f

    .line 1222
    :cond_21
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1223
    :goto_20
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    throw v0

    .line 1227
    :pswitch_a
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v0, Landroidx/compose/animation/core/MutatorMutex;

    .line 1230
    .line 1231
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1232
    .line 1233
    iget v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1234
    .line 1235
    if-eqz v3, :cond_24

    .line 1236
    .line 1237
    if-eq v3, v7, :cond_23

    .line 1238
    .line 1239
    if-ne v3, v1, :cond_22

    .line 1240
    .line 1241
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1242
    .line 1243
    move-object v1, v0

    .line 1244
    check-cast v1, Landroidx/compose/animation/core/MutatorMutex;

    .line 1245
    .line 1246
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1247
    .line 1248
    move-object v2, v0

    .line 1249
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 1250
    .line 1251
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1252
    .line 1253
    move-object v3, v0

    .line 1254
    check-cast v3, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 1255
    .line 1256
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1257
    .line 1258
    .line 1259
    move-object/from16 v0, p1

    .line 1260
    .line 1261
    goto/16 :goto_26

    .line 1262
    .line 1263
    :catchall_4
    move-exception v0

    .line 1264
    goto/16 :goto_29

    .line 1265
    .line 1266
    :cond_22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1267
    .line 1268
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    goto/16 :goto_28

    .line 1272
    .line 1273
    :cond_23
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1274
    .line 1275
    check-cast v0, Landroidx/compose/animation/core/MutatorMutex;

    .line 1276
    .line 1277
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1278
    .line 1279
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1280
    .line 1281
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1282
    .line 1283
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 1284
    .line 1285
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1286
    .line 1287
    check-cast v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 1288
    .line 1289
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1290
    .line 1291
    .line 1292
    move-object v7, v6

    .line 1293
    move-object v6, v3

    .line 1294
    :goto_21
    move-object v3, v0

    .line 1295
    goto :goto_24

    .line 1296
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1300
    .line 1301
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 1302
    .line 1303
    new-instance v4, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 1304
    .line 1305
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast v6, Landroidx/compose/animation/core/MutatePriority;

    .line 1308
    .line 1309
    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v3

    .line 1313
    sget-object v9, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 1314
    .line 1315
    invoke-interface {v3, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v3

    .line 1319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1320
    .line 1321
    .line 1322
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 1323
    .line 1324
    invoke-direct {v4, v6, v3}, Landroidx/compose/animation/core/MutatorMutex$Mutator;-><init>(Landroidx/compose/animation/core/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 1325
    .line 1326
    .line 1327
    iget-object v3, v0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1328
    .line 1329
    :goto_22
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v6

    .line 1333
    move-object v9, v6

    .line 1334
    check-cast v9, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 1335
    .line 1336
    if-eqz v9, :cond_26

    .line 1337
    .line 1338
    iget-object v6, v4, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    .line 1339
    .line 1340
    iget-object v10, v9, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    .line 1341
    .line 1342
    invoke-virtual {v6, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 1343
    .line 1344
    .line 1345
    move-result v6

    .line 1346
    if-ltz v6, :cond_25

    .line 1347
    .line 1348
    goto :goto_23

    .line 1349
    :cond_25
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 1350
    .line 1351
    const-string v1, "Current mutation had a higher priority"

    .line 1352
    .line 1353
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    throw v0

    .line 1357
    :cond_26
    :goto_23
    invoke-virtual {v3, v9, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v6

    .line 1361
    if-eqz v6, :cond_2d

    .line 1362
    .line 1363
    if-eqz v9, :cond_27

    .line 1364
    .line 1365
    iget-object v3, v9, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    .line 1366
    .line 1367
    new-instance v6, Landroidx/compose/animation/core/MutationInterruptedException;

    .line 1368
    .line 1369
    const-string v9, "Mutation interrupted"

    .line 1370
    .line 1371
    invoke-direct {v6, v9}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    invoke-interface {v3, v6}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1375
    .line 1376
    .line 1377
    :cond_27
    iget-object v3, v0, Landroidx/compose/animation/core/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1378
    .line 1379
    iget-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1382
    .line 1383
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1384
    .line 1385
    iput-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1386
    .line 1387
    iput-object v6, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1388
    .line 1389
    iput-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1390
    .line 1391
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1392
    .line 1393
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v7

    .line 1397
    if-ne v7, v2, :cond_28

    .line 1398
    .line 1399
    goto :goto_25

    .line 1400
    :cond_28
    move-object v7, v4

    .line 1401
    move-object v4, v3

    .line 1402
    goto :goto_21

    .line 1403
    :goto_24
    :try_start_8
    iput-object v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1404
    .line 1405
    iput-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1406
    .line 1407
    iput-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1408
    .line 1409
    iput-object v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1410
    .line 1411
    iput v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1412
    .line 1413
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1417
    if-ne v0, v2, :cond_29

    .line 1418
    .line 1419
    :goto_25
    move-object v8, v2

    .line 1420
    goto :goto_28

    .line 1421
    :cond_29
    move-object v1, v3

    .line 1422
    move-object v2, v4

    .line 1423
    move-object v3, v7

    .line 1424
    :goto_26
    :try_start_9
    iget-object v1, v1, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1425
    .line 1426
    :cond_2a
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    move-result v4

    .line 1430
    if-eqz v4, :cond_2b

    .line 1431
    .line 1432
    goto :goto_27

    .line 1433
    :cond_2b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1437
    if-eq v4, v3, :cond_2a

    .line 1438
    .line 1439
    :goto_27
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1440
    .line 1441
    .line 1442
    move-object v8, v0

    .line 1443
    :goto_28
    return-object v8

    .line 1444
    :catchall_5
    move-exception v0

    .line 1445
    goto :goto_2b

    .line 1446
    :catchall_6
    move-exception v0

    .line 1447
    move-object v1, v3

    .line 1448
    move-object v2, v4

    .line 1449
    move-object v3, v7

    .line 1450
    :goto_29
    :try_start_a
    iget-object v1, v1, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1451
    .line 1452
    :goto_2a
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v4

    .line 1456
    if-nez v4, :cond_2c

    .line 1457
    .line 1458
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v4

    .line 1462
    if-ne v4, v3, :cond_2c

    .line 1463
    .line 1464
    goto :goto_2a

    .line 1465
    :cond_2c
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1466
    :goto_2b
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1467
    .line 1468
    .line 1469
    throw v0

    .line 1470
    :cond_2d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v6

    .line 1474
    if-eq v6, v9, :cond_26

    .line 1475
    .line 1476
    goto/16 :goto_22

    .line 1477
    .line 1478
    :pswitch_b
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1479
    .line 1480
    iget v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1481
    .line 1482
    if-eqz v0, :cond_2f

    .line 1483
    .line 1484
    if-ne v0, v7, :cond_2e

    .line 1485
    .line 1486
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1487
    .line 1488
    .line 1489
    move-object/from16 v0, p1

    .line 1490
    .line 1491
    goto :goto_2d

    .line 1492
    :cond_2e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1493
    .line 1494
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_31

    .line 1498
    .line 1499
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1500
    .line 1501
    .line 1502
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1503
    .line 1504
    check-cast v0, Lcoil3/intercept/EngineInterceptor;

    .line 1505
    .line 1506
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1507
    .line 1508
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 1509
    .line 1510
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$mappedData:Ljava/lang/Object;

    .line 1511
    .line 1512
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$options:Ljava/lang/Object;

    .line 1513
    .line 1514
    check-cast v3, Lcoil3/request/Options;

    .line 1515
    .line 1516
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$eventListener:Ljava/lang/Object;

    .line 1517
    .line 1518
    check-cast v4, Lcoil3/EventListener$Companion$NONE$1;

    .line 1519
    .line 1520
    iput v7, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->label:I

    .line 1521
    .line 1522
    invoke-virtual/range {v0 .. v5}, Lcoil3/intercept/EngineInterceptor;->execute(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener$Companion$NONE$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    if-ne v0, v9, :cond_30

    .line 1527
    .line 1528
    :goto_2c
    move-object v8, v9

    .line 1529
    goto/16 :goto_31

    .line 1530
    .line 1531
    :cond_30
    :goto_2d
    check-cast v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 1532
    .line 1533
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v1, Lcoil3/intercept/EngineInterceptor;

    .line 1536
    .line 1537
    iget-object v1, v1, Lcoil3/intercept/EngineInterceptor;->systemCallbacks:Lokhttp3/Cache$RealCacheRequest;

    .line 1538
    .line 1539
    monitor-enter v1

    .line 1540
    :try_start_b
    iget-object v2, v1, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 1541
    .line 1542
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1543
    .line 1544
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    check-cast v2, Lcoil3/RealImageLoader;

    .line 1549
    .line 1550
    if-eqz v2, :cond_31

    .line 1551
    .line 1552
    iget-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1553
    .line 1554
    check-cast v3, Landroid/content/Context;

    .line 1555
    .line 1556
    if-nez v3, :cond_32

    .line 1557
    .line 1558
    iget-object v2, v2, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 1559
    .line 1560
    iget-object v2, v2, Lcoil3/RealImageLoader$Options;->application:Landroid/content/Context;

    .line 1561
    .line 1562
    iput-object v2, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1563
    .line 1564
    iget-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 1565
    .line 1566
    check-cast v3, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 1567
    .line 1568
    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_2e

    .line 1572
    :catchall_7
    move-exception v0

    .line 1573
    goto :goto_32

    .line 1574
    :cond_31
    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->shutdown()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1575
    .line 1576
    .line 1577
    :cond_32
    :goto_2e
    monitor-exit v1

    .line 1578
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->this$0:Ljava/lang/Object;

    .line 1579
    .line 1580
    check-cast v1, Lcoil3/intercept/EngineInterceptor;

    .line 1581
    .line 1582
    iget-object v1, v1, Lcoil3/intercept/EngineInterceptor;->memoryCacheService:Lcoil3/memory/MemoryCacheService;

    .line 1583
    .line 1584
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 1585
    .line 1586
    check-cast v2, Lcoil3/memory/MemoryCache$Key;

    .line 1587
    .line 1588
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1589
    .line 1590
    check-cast v3, Lcoil3/request/ImageRequest;

    .line 1591
    .line 1592
    invoke-virtual {v1, v2, v3, v0}, Lcoil3/memory/MemoryCacheService;->setCacheValue(Lcoil3/memory/MemoryCache$Key;Lcoil3/request/ImageRequest;Lcoil3/intercept/EngineInterceptor$ExecuteResult;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v1

    .line 1596
    iget-object v10, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->image:Lcoil3/Image;

    .line 1597
    .line 1598
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$request:Ljava/lang/Object;

    .line 1599
    .line 1600
    move-object v11, v2

    .line 1601
    check-cast v11, Lcoil3/request/ImageRequest;

    .line 1602
    .line 1603
    iget-object v12, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->dataSource:Lcoil3/decode/DataSource;

    .line 1604
    .line 1605
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$cacheKey:Ljava/lang/Object;

    .line 1606
    .line 1607
    check-cast v2, Lcoil3/memory/MemoryCache$Key;

    .line 1608
    .line 1609
    if-eqz v1, :cond_33

    .line 1610
    .line 1611
    move-object v13, v2

    .line 1612
    goto :goto_2f

    .line 1613
    :cond_33
    move-object v13, v8

    .line 1614
    :goto_2f
    iget-object v14, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->diskCacheKey:Ljava/lang/String;

    .line 1615
    .line 1616
    iget-boolean v15, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->isSampled:Z

    .line 1617
    .line 1618
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->$chain:Ljava/lang/Object;

    .line 1619
    .line 1620
    check-cast v0, Lcoil3/intercept/RealInterceptorChain;

    .line 1621
    .line 1622
    if-eqz v0, :cond_34

    .line 1623
    .line 1624
    iget-boolean v0, v0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 1625
    .line 1626
    if-eqz v0, :cond_34

    .line 1627
    .line 1628
    move/from16 v16, v7

    .line 1629
    .line 1630
    goto :goto_30

    .line 1631
    :cond_34
    move/from16 v16, v6

    .line 1632
    .line 1633
    :goto_30
    new-instance v9, Lcoil3/request/SuccessResult;

    .line 1634
    .line 1635
    invoke-direct/range {v9 .. v16}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 1636
    .line 1637
    .line 1638
    goto :goto_2c

    .line 1639
    :goto_31
    return-object v8

    .line 1640
    :goto_32
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1641
    throw v0

    .line 1642
    nop

    .line 1643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
