.class public final Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $bmp:Ljava/lang/Object;

.field public synthetic $context:Ljava/lang/Object;

.field public final synthetic $imageFileName:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    .line 19
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 17
    iput p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    .line 18
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/random/RandomViewModel;Lorg/wikipedia/page/PageTitle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, p0

    .line 15
    check-cast v4, Lkotlin/Triple;

    .line 16
    .line 17
    move-object v5, v2

    .line 18
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    move-object v6, v1

    .line 21
    check-cast v6, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    move-object v7, p2

    .line 26
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :pswitch_0
    move-object v8, p2

    .line 31
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v5, p0

    .line 36
    check-cast v5, Lokio/ByteString$Companion;

    .line 37
    .line 38
    move-object v6, v2

    .line 39
    check-cast v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    move-object v7, v1

    .line 42
    check-cast v7, Ljava/lang/String;

    .line 43
    .line 44
    const/16 v9, 0x9

    .line 45
    .line 46
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :pswitch_1
    move-object v8, p2

    .line 51
    new-instance p1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 52
    .line 53
    check-cast v2, Lorg/wikipedia/random/RandomViewModel;

    .line 54
    .line 55
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {p1, v2, v1, p0, v8}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Lorg/wikipedia/random/RandomViewModel;Lorg/wikipedia/page/PageTitle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_2
    move-object v8, p2

    .line 66
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 67
    .line 68
    check-cast v2, Lorg/wikipedia/edit/EditSectionActivity;

    .line 69
    .line 70
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 71
    .line 72
    const/4 p2, 0x7

    .line 73
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_3
    move-object v8, p2

    .line 80
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 81
    .line 82
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 83
    .line 84
    check-cast v1, Landroid/os/Bundle;

    .line 85
    .line 86
    const/4 p2, 0x6

    .line 87
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_4
    move-object v8, p2

    .line 94
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 95
    .line 96
    check-cast v2, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 97
    .line 98
    check-cast v1, Landroidx/paging/PagingData;

    .line 99
    .line 100
    const/4 p2, 0x5

    .line 101
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_5
    move-object v8, p2

    .line 108
    new-instance p1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 109
    .line 110
    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    .line 111
    .line 112
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Landroid/content/Context;

    .line 115
    .line 116
    check-cast v1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {p1, v2, p0, v1, v8}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_6
    move-object v8, p2

    .line 123
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 124
    .line 125
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 126
    .line 127
    move-object v5, p0

    .line 128
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    move-object v6, v2

    .line 131
    check-cast v6, Landroidx/navigation/compose/DialogNavigator;

    .line 132
    .line 133
    move-object v7, v1

    .line 134
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 135
    .line 136
    const/4 v9, 0x3

    .line 137
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 138
    .line 139
    .line 140
    return-object v4

    .line 141
    :pswitch_7
    move-object v8, p2

    .line 142
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 143
    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    check-cast v2, Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {p0, v1, v2, v8}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 152
    .line 153
    return-object p0

    .line 154
    :pswitch_8
    move-object v8, p2

    .line 155
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 156
    .line 157
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 158
    .line 159
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 160
    .line 161
    const/4 p2, 0x1

    .line 162
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_9
    move-object v8, p2

    .line 169
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 170
    .line 171
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 172
    .line 173
    move-object v5, p0

    .line 174
    check-cast v5, Landroid/content/Context;

    .line 175
    .line 176
    move-object v6, v2

    .line 177
    check-cast v6, Landroid/graphics/Bitmap;

    .line 178
    .line 179
    move-object v7, v1

    .line 180
    check-cast v7, Ljava/lang/String;

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 184
    .line 185
    .line 186
    return-object v4

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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
    iget v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_2
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 66
    .line 67
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .line 81
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 94
    .line 95
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 108
    .line 109
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_7
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 122
    .line 123
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 137
    .line 138
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 139
    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 152
    .line 153
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 154
    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v8, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$imageFileName:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v9, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$bmp:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v8, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v11, "wikitext"

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lkotlin/Triple;

    .line 41
    .line 42
    iget-object v1, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v14, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/16 v19, 0x5b

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    invoke-static/range {v11 .. v19}, Lokhttp3/internal/url/_UrlKt;->canonicalizeWithCharset$default(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const-string v15, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x5b

    .line 74
    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    move-object v12, v1

    .line 84
    invoke-static/range {v12 .. v20}, Lokhttp3/internal/url/_UrlKt;->canonicalizeWithCharset$default(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v1, Lokhttp3/FormBody;

    .line 92
    .line 93
    invoke-direct {v1, v0, v2}, Lokhttp3/FormBody;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "Requesting preview with image inserted into infobox..."

    .line 97
    .line 98
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lokhttp3/Request$Builder;

    .line 102
    .line 103
    invoke-direct {v0, v6}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 104
    .line 105
    .line 106
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 107
    .line 108
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 109
    .line 110
    invoke-static {v9}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    const-string v4, "UTF-8"

    .line 123
    .line 124
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string v4, "+"

    .line 132
    .line 133
    const-string v7, "%20"

    .line 134
    .line 135
    invoke-static {v3, v4, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string/jumbo v2, "transform/wikitext/to/mobile-html/"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v2, "POST"

    .line 164
    .line 165
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lokhttp3/Request;

    .line 169
    .line 170
    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v2, Lokhttp3/internal/connection/RealCall;

    .line 179
    .line 180
    invoke-direct {v2, v0, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    .line 184
    .line 185
    .line 186
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :try_start_3
    iget-object v0, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 188
    .line 189
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-boolean v10, v8, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->attemptInsertInfobox:Z

    .line 194
    .line 195
    const-string/jumbo v2, "with unknown parameter"

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v2, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    .line 204
    const-string v0, "Preview contains error, so no longer inserting into infobox."

    .line 205
    .line 206
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iput-boolean v6, v8, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->attemptInsertInfobox:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    move-object v2, v0

    .line 214
    goto :goto_1

    .line 215
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_0
    move-exception v0

    .line 220
    goto :goto_2

    .line 221
    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    :try_start_6
    invoke-static {v1, v2}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    .line 229
    .line 230
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 234
    :goto_2
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    :goto_3
    return-object v5

    .line 238
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 242
    .line 243
    check-cast v8, Ljava/lang/String;

    .line 244
    .line 245
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 246
    .line 247
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_2

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 268
    .line 269
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_1

    .line 274
    .line 275
    iget-object v2, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 276
    .line 277
    invoke-virtual {v9, v2}, Lorg/wikipedia/dataclient/WikiSite;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_1

    .line 282
    .line 283
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 284
    .line 285
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v2, v8, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_1

    .line 298
    .line 299
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    .line 300
    .line 301
    new-instance v2, Lorg/wikipedia/search/SearchResult;

    .line 302
    .line 303
    sget-object v4, Lorg/wikipedia/search/SearchResult$SearchResultType;->TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 304
    .line 305
    invoke-direct {v2, v1, v4, v6}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/search/SearchResult$SearchResultType;I)V

    .line 306
    .line 307
    .line 308
    new-array v1, v10, [Lorg/wikipedia/search/SearchResult;

    .line 309
    .line 310
    aput-object v2, v1, v6

    .line 311
    .line 312
    invoke-static {v1}, Landroidx/room/Room;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {v0, v3, v1}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_2
    new-instance v0, Lorg/wikipedia/search/SearchResults;

    .line 321
    .line 322
    invoke-direct {v0, v4, v7}, Lorg/wikipedia/search/SearchResults;-><init>(ILjava/util/ArrayList;)V

    .line 323
    .line 324
    .line 325
    :goto_4
    return-object v0

    .line 326
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    check-cast v9, Lorg/wikipedia/random/RandomViewModel;

    .line 330
    .line 331
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 332
    .line 333
    iput-object v8, v9, Lorg/wikipedia/random/RandomViewModel;->currentTitle:Lorg/wikipedia/page/PageTitle;

    .line 334
    .line 335
    invoke-virtual {v9}, Lorg/wikipedia/random/RandomViewModel;->refreshSaveState()V

    .line 336
    .line 337
    .line 338
    if-eqz v8, :cond_3

    .line 339
    .line 340
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroid/content/Context;

    .line 343
    .line 344
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    if-eqz v9, :cond_3

    .line 349
    .line 350
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 351
    .line 352
    invoke-static {v8}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    const/4 v15, 0x0

    .line 357
    const/16 v16, 0xde

    .line 358
    .line 359
    const-string v10, "impression"

    .line 360
    .line 361
    const/4 v11, 0x0

    .line 362
    const/4 v12, 0x0

    .line 363
    const/4 v13, 0x0

    .line 364
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 365
    .line 366
    .line 367
    :cond_3
    return-object v5

    .line 368
    :pswitch_2
    check-cast v9, Lorg/wikipedia/edit/EditSectionActivity;

    .line 369
    .line 370
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 373
    .line 374
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 378
    .line 379
    if-eqz v1, :cond_8

    .line 380
    .line 381
    invoke-virtual {v9, v10}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v9, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 385
    .line 386
    if-eqz v0, :cond_7

    .line 387
    .line 388
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v0, Landroid/widget/ScrollView;

    .line 391
    .line 392
    const/16 v1, 0x8

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    iget-object v0, v9, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 398
    .line 399
    if-eqz v0, :cond_6

    .line 400
    .line 401
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->hideCaptcha()V

    .line 402
    .line 403
    .line 404
    iget-object v0, v9, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 405
    .line 406
    if-eqz v0, :cond_5

    .line 407
    .line 408
    iget-object v1, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 416
    .line 417
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-lez v1, :cond_12

    .line 422
    .line 423
    iget-object v0, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->editSummaryHandler:Lokhttp3/MultipartBody$Builder;

    .line 424
    .line 425
    if-eqz v0, :cond_4

    .line 426
    .line 427
    iget-object v1, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 430
    .line 431
    new-instance v2, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 432
    .line 433
    invoke-direct {v2, v0, v7, v10}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 434
    .line 435
    .line 436
    invoke-static {v1, v7, v7, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 437
    .line 438
    .line 439
    goto/16 :goto_5

    .line 440
    .line 441
    :cond_4
    const-string v0, "editSummaryHandler"

    .line 442
    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v7

    .line 447
    :cond_5
    const-string v0, "editSummaryFragment"

    .line 448
    .line 449
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v7

    .line 453
    :cond_6
    const-string v0, "captchaHandler"

    .line 454
    .line 455
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v7

    .line 459
    :cond_7
    const-string v0, "binding"

    .line 460
    .line 461
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v7

    .line 465
    :cond_8
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 466
    .line 467
    if-eqz v1, :cond_11

    .line 468
    .line 469
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 470
    .line 471
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 474
    .line 475
    iget-object v0, v0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 476
    .line 477
    if-eqz v0, :cond_10

    .line 478
    .line 479
    const-string v1, "Success"

    .line 480
    .line 481
    iget-object v2, v0, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_a

    .line 488
    .line 489
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-nez v1, :cond_9

    .line 494
    .line 495
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 496
    .line 497
    new-instance v1, Ljava/util/Date;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 503
    .line 504
    .line 505
    move-result-wide v1

    .line 506
    const v4, 0x7f12061d

    .line 507
    .line 508
    .line 509
    invoke-static {v1, v2, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 510
    .line 511
    .line 512
    :cond_9
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 513
    .line 514
    invoke-virtual {v9}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    iget-wide v8, v0, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 519
    .line 520
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    new-instance v2, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;

    .line 525
    .line 526
    invoke-direct {v2, v1, v8, v9}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;J)V

    .line 527
    .line 528
    .line 529
    new-instance v4, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 530
    .line 531
    invoke-direct {v4, v8, v9, v1, v7}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;-><init>(JLorg/wikipedia/edit/EditSectionViewModel;Lkotlin/coroutines/Continuation;)V

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v2, v7, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 535
    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_a
    iget-object v1, v0, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    .line 539
    .line 540
    if-eqz v1, :cond_d

    .line 541
    .line 542
    new-instance v0, Lorg/wikipedia/captcha/CaptchaResult;

    .line 543
    .line 544
    if-eqz v1, :cond_b

    .line 545
    .line 546
    iget-object v7, v1, Lorg/wikipedia/edit/Edit$Captcha;->id:Ljava/lang/String;

    .line 547
    .line 548
    :cond_b
    if-nez v7, :cond_c

    .line 549
    .line 550
    const-string v7, ""

    .line 551
    .line 552
    :cond_c
    invoke-direct {v0, v7}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 556
    .line 557
    invoke-virtual {v9, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lokhttp3/HttpUrl$Companion;)V

    .line 558
    .line 559
    .line 560
    goto :goto_5

    .line 561
    :cond_d
    iget-object v1, v0, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    .line 562
    .line 563
    iget-object v2, v0, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    .line 564
    .line 565
    if-eqz v1, :cond_e

    .line 566
    .line 567
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 568
    .line 569
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 570
    .line 571
    invoke-direct {v3, v2, v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-direct {v0, v3}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 575
    .line 576
    .line 577
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 578
    .line 579
    invoke-virtual {v9, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 580
    .line 581
    .line 582
    goto :goto_5

    .line 583
    :cond_e
    if-eqz v2, :cond_f

    .line 584
    .line 585
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 586
    .line 587
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 588
    .line 589
    iget-object v0, v0, Lorg/wikipedia/edit/Edit$Result;->info:Ljava/lang/String;

    .line 590
    .line 591
    invoke-direct {v3, v2, v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-direct {v1, v3}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 595
    .line 596
    .line 597
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 598
    .line 599
    invoke-virtual {v9, v1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    goto :goto_5

    .line 603
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 604
    .line 605
    const-string v1, "Received unrecognized edit response"

    .line 606
    .line 607
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 611
    .line 612
    invoke-virtual {v9, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 613
    .line 614
    .line 615
    goto :goto_5

    .line 616
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 617
    .line 618
    const-string v1, "An unknown error occurred."

    .line 619
    .line 620
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 624
    .line 625
    invoke-virtual {v9, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    goto :goto_5

    .line 629
    :cond_11
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 630
    .line 631
    if-eqz v1, :cond_12

    .line 632
    .line 633
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 634
    .line 635
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 636
    .line 637
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 638
    .line 639
    invoke-virtual {v9, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    .line 640
    .line 641
    .line 642
    :cond_12
    :goto_5
    return-object v5

    .line 643
    :pswitch_3
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 646
    .line 647
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1;

    .line 651
    .line 652
    check-cast v9, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 653
    .line 654
    check-cast v8, Landroid/os/Bundle;

    .line 655
    .line 656
    invoke-direct {v1, v9, v8, v7, v10}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;I)V

    .line 657
    .line 658
    .line 659
    invoke-static {v0, v7, v7, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 660
    .line 661
    .line 662
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 663
    .line 664
    invoke-direct {v1, v9, v7, v6}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlin/coroutines/Continuation;I)V

    .line 665
    .line 666
    .line 667
    invoke-static {v0, v7, v7, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 668
    .line 669
    .line 670
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 671
    .line 672
    invoke-direct {v1, v2, v9, v7}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 673
    .line 674
    .line 675
    invoke-static {v0, v7, v7, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 676
    .line 677
    .line 678
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 679
    .line 680
    invoke-direct {v1, v9, v7, v10}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlin/coroutines/Continuation;I)V

    .line 681
    .line 682
    .line 683
    invoke-static {v0, v7, v7, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 684
    .line 685
    .line 686
    return-object v5

    .line 687
    :pswitch_4
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 690
    .line 691
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    check-cast v9, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 695
    .line 696
    iget-boolean v1, v9, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitCompleted:Z

    .line 697
    .line 698
    if-nez v1, :cond_13

    .line 699
    .line 700
    goto :goto_6

    .line 701
    :cond_13
    new-instance v1, Landroidx/paging/PageFetcher$flow$1;

    .line 702
    .line 703
    check-cast v8, Landroidx/paging/PagingData;

    .line 704
    .line 705
    const/16 v2, 0x1c

    .line 706
    .line 707
    invoke-direct {v1, v9, v8, v7, v2}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 708
    .line 709
    .line 710
    invoke-static {v0, v7, v1, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 711
    .line 712
    .line 713
    :goto_6
    return-object v5

    .line 714
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    check-cast v9, Lcom/airbnb/lottie/LottieComposition;

    .line 718
    .line 719
    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    check-cast v0, Ljava/util/HashMap;

    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    :cond_14
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    if-eqz v0, :cond_18

    .line 738
    .line 739
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    move-object v4, v0

    .line 744
    check-cast v4, Lcom/airbnb/lottie/LottieImageAsset;

    .line 745
    .line 746
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    iget-object v9, v4, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    .line 750
    .line 751
    iget-object v0, v4, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 752
    .line 753
    const/16 v11, 0xa0

    .line 754
    .line 755
    if-eqz v0, :cond_15

    .line 756
    .line 757
    goto :goto_8

    .line 758
    :cond_15
    const-string v0, "data:"

    .line 759
    .line 760
    invoke-static {v9, v0, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    if-eqz v0, :cond_16

    .line 765
    .line 766
    const-string v0, "base64,"

    .line 767
    .line 768
    invoke-static {v9, v0, v6, v6, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-lez v0, :cond_16

    .line 773
    .line 774
    const/16 v0, 0x2c

    .line 775
    .line 776
    :try_start_7
    invoke-static {v9, v0, v6, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    add-int/2addr v0, v10

    .line 781
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    .line 790
    .line 791
    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 792
    .line 793
    .line 794
    iput-boolean v10, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 795
    .line 796
    iput v11, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 797
    .line 798
    array-length v13, v0

    .line 799
    invoke-static {v0, v6, v13, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    iput-object v0, v4, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 804
    .line 805
    goto :goto_8

    .line 806
    :catch_2
    move-exception v0

    .line 807
    const-string v12, "data URL did not have correct base64 format."

    .line 808
    .line 809
    invoke-static {v12, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    .line 811
    .line 812
    :cond_16
    :goto_8
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v0, Landroid/content/Context;

    .line 815
    .line 816
    move-object v12, v8

    .line 817
    check-cast v12, Ljava/lang/String;

    .line 818
    .line 819
    iget-object v13, v4, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 820
    .line 821
    if-nez v13, :cond_14

    .line 822
    .line 823
    if-nez v12, :cond_17

    .line 824
    .line 825
    goto :goto_7

    .line 826
    :cond_17
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    new-instance v13, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v9

    .line 845
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 846
    .line 847
    .line 848
    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 849
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    :try_start_9
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 853
    .line 854
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 855
    .line 856
    .line 857
    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 858
    .line 859
    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 860
    .line 861
    invoke-static {v0, v7, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 862
    .line 863
    .line 864
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3

    .line 865
    goto :goto_9

    .line 866
    :catch_3
    move-exception v0

    .line 867
    const-string v9, "Unable to decode image."

    .line 868
    .line 869
    invoke-static {v9, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    .line 871
    .line 872
    move-object v0, v7

    .line 873
    :goto_9
    if-eqz v0, :cond_14

    .line 874
    .line 875
    iget v9, v4, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    .line 876
    .line 877
    iget v11, v4, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    .line 878
    .line 879
    invoke-static {v0, v9, v11}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iput-object v0, v4, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 884
    .line 885
    goto/16 :goto_7

    .line 886
    .line 887
    :catch_4
    move-exception v0

    .line 888
    const-string v4, "Unable to open asset."

    .line 889
    .line 890
    invoke-static {v4, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 891
    .line 892
    .line 893
    goto/16 :goto_7

    .line 894
    .line 895
    :cond_18
    return-object v5

    .line 896
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 902
    .line 903
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    check-cast v0, Ljava/util/Set;

    .line 908
    .line 909
    check-cast v0, Ljava/lang/Iterable;

    .line 910
    .line 911
    check-cast v9, Landroidx/navigation/compose/DialogNavigator;

    .line 912
    .line 913
    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 914
    .line 915
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    :cond_19
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    if-eqz v1, :cond_1a

    .line 924
    .line 925
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 930
    .line 931
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    iget-object v2, v2, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 936
    .line 937
    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 938
    .line 939
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    check-cast v2, Ljava/util/List;

    .line 944
    .line 945
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v2

    .line 949
    if-nez v2, :cond_19

    .line 950
    .line 951
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v2

    .line 955
    if-nez v2, :cond_19

    .line 956
    .line 957
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v2, v1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 962
    .line 963
    .line 964
    goto :goto_a

    .line 965
    :cond_1a
    return-object v5

    .line 966
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 972
    .line 973
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/MutablePreferences;->toMutablePreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    check-cast v8, Ljava/lang/String;

    .line 978
    .line 979
    check-cast v9, Ljava/lang/String;

    .line 980
    .line 981
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 982
    .line 983
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    check-cast v0, Ljava/util/Set;

    .line 988
    .line 989
    if-nez v0, :cond_1b

    .line 990
    .line 991
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 992
    .line 993
    :cond_1b
    invoke-static {v0, v8}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v1, v2, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 998
    .line 999
    .line 1000
    sget-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 1001
    .line 1002
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v8}, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->providerKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-virtual {v1, v0, v9}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->toPreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    return-object v0

    .line 1019
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1025
    .line 1026
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 1027
    .line 1028
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;

    .line 1029
    .line 1030
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1031
    .line 1032
    check-cast v8, Landroidx/compose/foundation/text/TextDragObserver;

    .line 1033
    .line 1034
    invoke-direct {v2, v9, v8, v7, v10}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;I)V

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v0, v7, v1, v2, v10}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1038
    .line 1039
    .line 1040
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;

    .line 1041
    .line 1042
    invoke-direct {v2, v9, v8, v7, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;I)V

    .line 1043
    .line 1044
    .line 1045
    invoke-static {v0, v7, v1, v2, v10}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    return-object v0

    .line 1050
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1051
    .line 1052
    .line 1053
    iget-object v0, v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;->$context:Ljava/lang/Object;

    .line 1054
    .line 1055
    move-object v1, v0

    .line 1056
    check-cast v1, Landroid/content/Context;

    .line 1057
    .line 1058
    check-cast v9, Landroid/graphics/Bitmap;

    .line 1059
    .line 1060
    check-cast v8, Ljava/lang/String;

    .line 1061
    .line 1062
    :try_start_a
    new-instance v0, Ljava/io/File;

    .line 1063
    .line 1064
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    const-string v3, "share"

    .line 1072
    .line 1073
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    sget-object v2, Lkotlin/io/FileWalkDirection;->BOTTOM_UP:Lkotlin/io/FileWalkDirection;

    .line 1077
    .line 1078
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    .line 1080
    .line 1081
    new-instance v3, Lkotlin/io/FileTreeWalk;

    .line 1082
    .line 1083
    invoke-direct {v3, v6, v0, v2}, Lkotlin/io/FileTreeWalk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1084
    .line 1085
    .line 1086
    new-instance v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    .line 1087
    .line 1088
    invoke-direct {v2, v3}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 1089
    .line 1090
    .line 1091
    :goto_b
    move v3, v10

    .line 1092
    :goto_c
    invoke-virtual {v2}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v4

    .line 1096
    if-eqz v4, :cond_1e

    .line 1097
    .line 1098
    invoke-virtual {v2}, Lkotlin/collections/AbstractIterator;->next()Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v4

    .line 1102
    check-cast v4, Ljava/io/File;

    .line 1103
    .line 1104
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v5

    .line 1108
    if-nez v5, :cond_1c

    .line 1109
    .line 1110
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1114
    if-nez v4, :cond_1d

    .line 1115
    .line 1116
    :cond_1c
    if-eqz v3, :cond_1d

    .line 1117
    .line 1118
    goto :goto_b

    .line 1119
    :cond_1d
    move v3, v6

    .line 1120
    goto :goto_c

    .line 1121
    :catchall_2
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    const-string v3, "Caught "

    .line 1127
    .line 1128
    invoke-static {v3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    sget-object v3, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 1133
    .line 1134
    invoke-virtual {v3, v2, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    .line 1136
    .line 1137
    move-object v0, v7

    .line 1138
    :cond_1e
    if-nez v0, :cond_1f

    .line 1139
    .line 1140
    move-object v3, v7

    .line 1141
    goto :goto_d

    .line 1142
    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1146
    .line 1147
    .line 1148
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 1149
    .line 1150
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1151
    .line 1152
    .line 1153
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1154
    .line 1155
    const/16 v4, 0x55

    .line 1156
    .line 1157
    invoke-virtual {v9, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1158
    .line 1159
    .line 1160
    new-instance v3, Ljava/io/File;

    .line 1161
    .line 1162
    const-string v4, "%2[0-9A-F]"

    .line 1163
    .line 1164
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v4

    .line 1175
    const-string v5, "_"

    .line 1176
    .line 1177
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v4

    .line 1181
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    .line 1183
    .line 1184
    const-string v8, "[^0-9a-zA-Z-_.]"

    .line 1185
    .line 1186
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v8

    .line 1190
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    const-string v8, "_+"

    .line 1205
    .line 1206
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v8

    .line 1210
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v4

    .line 1217
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v4

    .line 1221
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    const-string v5, ".jpg"

    .line 1225
    .line 1226
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1227
    .line 1228
    .line 1229
    move-result v8

    .line 1230
    if-nez v8, :cond_20

    .line 1231
    .line 1232
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v4

    .line 1236
    :cond_20
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    new-instance v4, Ljava/io/FileOutputStream;

    .line 1240
    .line 1241
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1242
    .line 1243
    .line 1244
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1255
    .line 1256
    .line 1257
    :goto_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    if-nez v3, :cond_21

    .line 1261
    .line 1262
    goto/16 :goto_10

    .line 1263
    .line 1264
    :cond_21
    const-string v0, "org.wikipedia.fileprovider"

    .line 1265
    .line 1266
    invoke-static {v6, v1, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(ILandroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1274
    iget-object v2, v0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    .line 1275
    .line 1276
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v2

    .line 1280
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    move-object v3, v7

    .line 1285
    :cond_22
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v4

    .line 1289
    const-string v5, "/"

    .line 1290
    .line 1291
    if-eqz v4, :cond_24

    .line 1292
    .line 1293
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v4

    .line 1297
    check-cast v4, Ljava/util/Map$Entry;

    .line 1298
    .line 1299
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v6

    .line 1303
    check-cast v6, Ljava/io/File;

    .line 1304
    .line 1305
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v6

    .line 1309
    invoke-static {v1}, Landroidx/core/content/FileProvider;->removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v8

    .line 1313
    invoke-static {v6}, Landroidx/core/content/FileProvider;->removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v9

    .line 1317
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v5

    .line 1321
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v5

    .line 1325
    if-eqz v5, :cond_22

    .line 1326
    .line 1327
    if-eqz v3, :cond_23

    .line 1328
    .line 1329
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1330
    .line 1331
    .line 1332
    move-result v5

    .line 1333
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6

    .line 1337
    check-cast v6, Ljava/io/File;

    .line 1338
    .line 1339
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v6

    .line 1343
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1344
    .line 1345
    .line 1346
    move-result v6

    .line 1347
    if-le v5, v6, :cond_22

    .line 1348
    .line 1349
    :cond_23
    move-object v3, v4

    .line 1350
    goto :goto_e

    .line 1351
    :cond_24
    if-eqz v3, :cond_26

    .line 1352
    .line 1353
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    check-cast v2, Ljava/io/File;

    .line 1358
    .line 1359
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    if-eqz v4, :cond_25

    .line 1368
    .line 1369
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1370
    .line 1371
    .line 1372
    move-result v2

    .line 1373
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v1

    .line 1377
    goto :goto_f

    .line 1378
    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1379
    .line 1380
    .line 1381
    move-result v2

    .line 1382
    add-int/2addr v2, v10

    .line 1383
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v1

    .line 1387
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1390
    .line 1391
    .line 1392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v3

    .line 1396
    check-cast v3, Ljava/lang/String;

    .line 1397
    .line 1398
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    const/16 v3, 0x2f

    .line 1406
    .line 1407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    .line 1410
    invoke-static {v1, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v1

    .line 1414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v1

    .line 1421
    new-instance v2, Landroid/net/Uri$Builder;

    .line 1422
    .line 1423
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 1424
    .line 1425
    .line 1426
    const-string v3, "content"

    .line 1427
    .line 1428
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v2

    .line 1432
    iget-object v0, v0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    .line 1433
    .line 1434
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v7

    .line 1446
    goto :goto_10

    .line 1447
    :cond_26
    const-string v0, "Failed to find configured root that contains "

    .line 1448
    .line 1449
    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v0

    .line 1453
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_10

    .line 1457
    :catch_5
    const-string v0, "Failed to resolve canonical path for "

    .line 1458
    .line 1459
    invoke-static {v0, v3}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1460
    .line 1461
    .line 1462
    :goto_10
    return-object v7

    .line 1463
    :catchall_3
    move-exception v0

    .line 1464
    move-object v1, v0

    .line 1465
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1466
    :catchall_4
    move-exception v0

    .line 1467
    invoke-static {v4, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1468
    .line 1469
    .line 1470
    throw v0

    .line 1471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
