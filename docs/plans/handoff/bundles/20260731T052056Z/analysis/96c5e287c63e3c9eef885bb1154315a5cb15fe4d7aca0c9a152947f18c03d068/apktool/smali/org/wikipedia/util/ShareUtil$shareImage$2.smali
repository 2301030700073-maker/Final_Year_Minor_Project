.class public final Lorg/wikipedia/util/ShareUtil$shareImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $bmp:Ljava/lang/Object;

.field public $context:Ljava/lang/Object;

.field public synthetic $imageFileName:Ljava/lang/Object;

.field public final synthetic $onShared:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public $subject:Ljava/lang/Object;

.field public $text:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/os/Bundle;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 27
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 22
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;Landroidx/compose/runtime/Recomposer;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 23
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 24
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/ListenableWorker;Lokhttp3/Headers$Builder;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 25
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 26
    iput p6, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p6, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/gallery/GalleryViewModel;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 28
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, p1

    .line 15
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, p0

    .line 20
    check-cast v5, Landroid/app/Activity;

    .line 21
    .line 22
    move-object v6, v2

    .line 23
    check-cast v6, Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    move-object v7, v1

    .line 26
    check-cast v7, Landroid/content/DialogInterface$OnDismissListener;

    .line 27
    .line 28
    const/16 v9, 0xa

    .line 29
    .line 30
    move-object v8, p2

    .line 31
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :pswitch_0
    move-object v9, p2

    .line 36
    new-instance p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 37
    .line 38
    check-cast v2, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 39
    .line 40
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    invoke-direct {p0, v2, v1, v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Lorg/wikipedia/gallery/GalleryViewModel;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_1
    move-object v9, p2

    .line 49
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 50
    .line 51
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v5, p1

    .line 54
    check-cast v5, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 55
    .line 56
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v6, p1

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v7, p1

    .line 64
    check-cast v7, Ljava/lang/String;

    .line 65
    .line 66
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v8, p0

    .line 69
    check-cast v8, Ljava/lang/String;

    .line 70
    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    move-object v10, v1

    .line 74
    check-cast v10, Ljava/lang/String;

    .line 75
    .line 76
    move-object v11, v9

    .line 77
    move-object v9, v2

    .line 78
    invoke-direct/range {v4 .. v11}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :pswitch_2
    move-object v9, p2

    .line 83
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 84
    .line 85
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 86
    .line 87
    move-object v5, p2

    .line 88
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 91
    .line 92
    move-object v6, p0

    .line 93
    check-cast v6, Lcoil3/network/NetworkFetcher;

    .line 94
    .line 95
    move-object v7, v2

    .line 96
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    move-object v8, v1

    .line 99
    check-cast v8, Lcoil3/network/NetworkRequest;

    .line 100
    .line 101
    const/4 v10, 0x7

    .line 102
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    iput-object p1, v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 106
    .line 107
    return-object v4

    .line 108
    :pswitch_3
    move-object v9, p2

    .line 109
    new-instance p2, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 110
    .line 111
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Landroidx/work/ListenableWorker;

    .line 114
    .line 115
    check-cast v2, Lokhttp3/Headers$Builder;

    .line 116
    .line 117
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 118
    .line 119
    invoke-direct {p2, p0, v2, v1, v9}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroidx/work/ListenableWorker;Lokhttp3/Headers$Builder;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p2, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 123
    .line 124
    return-object p2

    .line 125
    :pswitch_4
    move-object v9, p2

    .line 126
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 127
    .line 128
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v5, p1

    .line 131
    check-cast v5, Landroidx/lifecycle/LifecycleRegistry;

    .line 132
    .line 133
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v6, p0

    .line 136
    check-cast v6, Landroidx/lifecycle/Lifecycle$State;

    .line 137
    .line 138
    move-object v7, v2

    .line 139
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 140
    .line 141
    move-object v8, v1

    .line 142
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 143
    .line 144
    const/4 v10, 0x5

    .line 145
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :pswitch_5
    move-object v9, p2

    .line 150
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 151
    .line 152
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v5, p1

    .line 155
    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    .line 156
    .line 157
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 158
    .line 159
    move-object v6, p1

    .line 160
    check-cast v6, Landroidx/glance/appwidget/AppWidgetSession;

    .line 161
    .line 162
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 163
    .line 164
    move-object v7, p0

    .line 165
    check-cast v7, Landroid/content/Context;

    .line 166
    .line 167
    move-object v8, v2

    .line 168
    check-cast v8, Landroidx/compose/runtime/Recomposer;

    .line 169
    .line 170
    check-cast v1, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 171
    .line 172
    move-object v10, v9

    .line 173
    move-object v9, v1

    .line 174
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;Landroidx/compose/runtime/Recomposer;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    return-object v4

    .line 178
    :pswitch_6
    move-object v9, p2

    .line 179
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 180
    .line 181
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 182
    .line 183
    move-object v5, p2

    .line 184
    check-cast v5, Landroid/content/Context;

    .line 185
    .line 186
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 187
    .line 188
    move-object v6, p2

    .line 189
    check-cast v6, Landroidx/glance/appwidget/AppWidgetId;

    .line 190
    .line 191
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 192
    .line 193
    move-object v7, p0

    .line 194
    check-cast v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 195
    .line 196
    move-object v8, v2

    .line 197
    check-cast v8, Landroid/os/Bundle;

    .line 198
    .line 199
    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 200
    .line 201
    move-object v10, v9

    .line 202
    move-object v9, v1

    .line 203
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/os/Bundle;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 207
    .line 208
    return-object v4

    .line 209
    :pswitch_7
    move-object v9, p2

    .line 210
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 211
    .line 212
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 213
    .line 214
    move-object v5, p2

    .line 215
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 216
    .line 217
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 218
    .line 219
    move-object v6, p2

    .line 220
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 221
    .line 222
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 223
    .line 224
    move-object v7, p0

    .line 225
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 226
    .line 227
    move-object v8, v2

    .line 228
    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 229
    .line 230
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 231
    .line 232
    move-object v10, v9

    .line 233
    move-object v9, v1

    .line 234
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 235
    .line 236
    .line 237
    iput-object p1, v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 238
    .line 239
    return-object v4

    .line 240
    :pswitch_8
    move-object v9, p2

    .line 241
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 242
    .line 243
    iget-object p2, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 244
    .line 245
    move-object v5, p2

    .line 246
    check-cast v5, Lkotlinx/coroutines/channels/Channel;

    .line 247
    .line 248
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 249
    .line 250
    move-object v6, p0

    .line 251
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    .line 252
    .line 253
    move-object v7, v2

    .line 254
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 255
    .line 256
    move-object v8, v1

    .line 257
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 258
    .line 259
    const/4 v10, 0x1

    .line 260
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 261
    .line 262
    .line 263
    iput-object p1, v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 264
    .line 265
    return-object v4

    .line 266
    :pswitch_9
    move-object v9, p2

    .line 267
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 268
    .line 269
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 270
    .line 271
    move-object v5, p1

    .line 272
    check-cast v5, Landroid/content/Context;

    .line 273
    .line 274
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 275
    .line 276
    move-object v6, p1

    .line 277
    check-cast v6, Ljava/lang/String;

    .line 278
    .line 279
    iget-object p1, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 280
    .line 281
    move-object v7, p1

    .line 282
    check-cast v7, Ljava/lang/String;

    .line 283
    .line 284
    move-object v8, v2

    .line 285
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 286
    .line 287
    check-cast v1, Landroid/graphics/Bitmap;

    .line 288
    .line 289
    iget-object p0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 290
    .line 291
    move-object v10, p0

    .line 292
    check-cast v10, Ljava/lang/String;

    .line 293
    .line 294
    move-object v11, v9

    .line 295
    move-object v9, v1

    .line 296
    invoke-direct/range {v4 .. v11}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 297
    .line 298
    .line 299
    return-object v4

    .line 300
    nop

    .line 301
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
    iget v0, p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lcoil3/network/NetworkResponse;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
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
    .locals 24

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$bmp:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$onShared:Ljava/lang/Object;

    .line 12
    .line 13
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v11, v0

    .line 23
    check-cast v11, Landroid/app/Activity;

    .line 24
    .line 25
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v12, v0

    .line 28
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    iget v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 33
    .line 34
    const/4 v14, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    if-eq v0, v9, :cond_2

    .line 38
    .line 39
    if-eq v0, v3, :cond_1

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 46
    .line 47
    iget-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v15, v0

    .line 55
    move-object/from16 v16, v1

    .line 56
    .line 57
    const/16 v22, 0x0

    .line 58
    .line 59
    move-object/from16 v0, p1

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v8, v10

    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_1
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v2, v0

    .line 77
    const/16 v22, 0x0

    .line 78
    .line 79
    move-object/from16 v0, p1

    .line 80
    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    move-object/from16 v0, p1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :try_start_1
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 95
    .line 96
    iget-object v0, v12, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 97
    .line 98
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 107
    .line 108
    invoke-interface {v0, v14, v7, v5}, Lorg/wikipedia/dataclient/Service;->getInfoByPageIdsOrTitles(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-ne v0, v13, :cond_4

    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_4
    :goto_0
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 117
    .line 118
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 123
    .line 124
    .line 125
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    goto :goto_2

    .line 127
    :goto_1
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    move-object v0, v14

    .line 131
    :goto_2
    if-eqz v0, :cond_6

    .line 132
    .line 133
    new-instance v15, Lorg/wikipedia/page/PageTitle;

    .line 134
    .line 135
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v10, v12, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    iget-object v14, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 144
    .line 145
    const/16 v22, 0x0

    .line 146
    .line 147
    iget-object v2, v12, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 148
    .line 149
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v20

    .line 155
    const/16 v21, 0x0

    .line 156
    .line 157
    move-object/from16 v16, v7

    .line 158
    .line 159
    move-object/from16 v17, v10

    .line 160
    .line 161
    move-object/from16 v19, v14

    .line 162
    .line 163
    invoke-direct/range {v15 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    const/16 v22, 0x0

    .line 168
    .line 169
    move-object v15, v12

    .line 170
    :goto_3
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 171
    .line 172
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v15, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 181
    .line 182
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v5}, Lorg/wikipedia/dataclient/Service$-CC;->getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-ne v0, v13, :cond_7

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    move-object v2, v15

    .line 195
    :goto_4
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 196
    .line 197
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 198
    .line 199
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v17

    .line 211
    iput-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 214
    .line 215
    iput v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 216
    .line 217
    iget-object v1, v15, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 218
    .line 219
    new-instance v14, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 220
    .line 221
    const/16 v19, 0x4

    .line 222
    .line 223
    move-object/from16 v16, v0

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    invoke-direct/range {v14 .. v19}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 228
    .line 229
    .line 230
    invoke-static {v1, v5, v14}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-ne v0, v13, :cond_8

    .line 235
    .line 236
    :goto_5
    move-object v8, v13

    .line 237
    goto :goto_7

    .line 238
    :cond_8
    move-object/from16 v15, v16

    .line 239
    .line 240
    move-object/from16 v16, v2

    .line 241
    .line 242
    :goto_6
    check-cast v0, Ljava/util/List;

    .line 243
    .line 244
    invoke-static {v11}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_9

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_a

    .line 256
    .line 257
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 258
    .line 259
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-array v1, v9, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v0, v1, v22

    .line 270
    .line 271
    const v0, 0x7f120755

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    const/16 v1, 0xc

    .line 282
    .line 283
    move/from16 v2, v22

    .line 284
    .line 285
    invoke-static {v11, v0, v2, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 290
    .line 291
    move-object v14, v1

    .line 292
    check-cast v14, Landroid/app/Activity;

    .line 293
    .line 294
    move-object/from16 v17, v6

    .line 295
    .line 296
    check-cast v17, Lorg/wikipedia/Constants$InvokeSource;

    .line 297
    .line 298
    move-object/from16 v18, v4

    .line 299
    .line 300
    check-cast v18, Landroid/content/DialogInterface$OnDismissListener;

    .line 301
    .line 302
    new-instance v13, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;

    .line 303
    .line 304
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 305
    .line 306
    .line 307
    const v1, 0x7f120752

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1, v13}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_a
    invoke-virtual {v15}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    new-array v2, v3, [Ljava/lang/Object;

    .line 326
    .line 327
    const/4 v3, 0x0

    .line 328
    aput-object v0, v2, v3

    .line 329
    .line 330
    aput-object v1, v2, v9

    .line 331
    .line 332
    const v0, 0x7f120757

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-static {v11, v0, v3}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 343
    .line 344
    .line 345
    :goto_7
    return-object v8

    .line 346
    :pswitch_0
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 347
    .line 348
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 351
    .line 352
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 353
    .line 354
    iget v11, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 355
    .line 356
    if-eqz v11, :cond_d

    .line 357
    .line 358
    if-eq v11, v9, :cond_c

    .line 359
    .line 360
    if-ne v11, v3, :cond_b

    .line 361
    .line 362
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v0, Ljava/lang/Boolean;

    .line 365
    .line 366
    iget-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 369
    .line 370
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v3, p1

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_b
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    move-object v8, v10

    .line 380
    goto :goto_c

    .line 381
    :cond_c
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 384
    .line 385
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move-object v7, v0

    .line 389
    move-object/from16 v0, p1

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    new-instance v7, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 396
    .line 397
    invoke-direct {v7, v4, v10, v9}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 398
    .line 399
    .line 400
    invoke-static {v0, v10, v7, v1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    new-instance v11, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 405
    .line 406
    invoke-direct {v11, v4, v10, v3}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 407
    .line 408
    .line 409
    invoke-static {v0, v10, v11, v1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    iput-object v10, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 414
    .line 415
    iput-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 416
    .line 417
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 418
    .line 419
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-ne v0, v2, :cond_e

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_e
    :goto_8
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 427
    .line 428
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 429
    .line 430
    if-eqz v0, :cond_f

    .line 431
    .line 432
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->isEditProtected()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-ne v0, v9, :cond_f

    .line 437
    .line 438
    move/from16 v22, v9

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_f
    const/16 v22, 0x0

    .line 442
    .line 443
    :goto_9
    check-cast v6, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 444
    .line 445
    iget-object v1, v6, Lorg/wikipedia/gallery/GalleryViewModel;->_descriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 446
    .line 447
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iput-object v10, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 452
    .line 453
    iput-object v10, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 454
    .line 455
    iput-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 456
    .line 457
    iput-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 458
    .line 459
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 460
    .line 461
    invoke-interface {v7, v5}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    if-ne v3, v2, :cond_10

    .line 466
    .line 467
    :goto_a
    move-object v8, v2

    .line 468
    goto :goto_c

    .line 469
    :cond_10
    :goto_b
    new-instance v2, Lkotlin/Pair;

    .line 470
    .line 471
    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 475
    .line 476
    invoke-direct {v0, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v10, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :goto_c
    return-object v8

    .line 486
    :pswitch_1
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 489
    .line 490
    iget-object v11, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_postDescriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 491
    .line 492
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 493
    .line 494
    iget v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 495
    .line 496
    if-eqz v2, :cond_14

    .line 497
    .line 498
    if-eq v2, v9, :cond_13

    .line 499
    .line 500
    if-eq v2, v3, :cond_12

    .line 501
    .line 502
    if-ne v2, v1, :cond_11

    .line 503
    .line 504
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    move-object/from16 v0, p1

    .line 508
    .line 509
    goto/16 :goto_12

    .line 510
    .line 511
    :cond_11
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    move-object v8, v10

    .line 515
    goto/16 :goto_14

    .line 516
    .line 517
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    move-object/from16 v0, p1

    .line 521
    .line 522
    goto/16 :goto_10

    .line 523
    .line 524
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    move-object/from16 v2, p1

    .line 528
    .line 529
    goto :goto_f

    .line 530
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    new-instance v2, Lorg/wikipedia/util/Resource$Loading;

    .line 534
    .line 535
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v11, v10, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 545
    .line 546
    sget-object v7, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 547
    .line 548
    if-eq v2, v7, :cond_17

    .line 549
    .line 550
    sget-object v7, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 551
    .line 552
    if-ne v2, v7, :cond_15

    .line 553
    .line 554
    goto :goto_d

    .line 555
    :cond_15
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->shouldWriteToLocalWiki()Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_16

    .line 560
    .line 561
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 562
    .line 563
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_16
    sget-object v2, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 567
    .line 568
    goto :goto_e

    .line 569
    :cond_17
    :goto_d
    sget-object v2, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 570
    .line 571
    :goto_e
    sget-object v7, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 572
    .line 573
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 574
    .line 575
    invoke-static {v2, v5}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    if-ne v2, v12, :cond_18

    .line 580
    .line 581
    goto :goto_11

    .line 582
    :cond_18
    :goto_f
    check-cast v2, Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->shouldWriteToLocalWiki()Z

    .line 585
    .line 586
    .line 587
    move-result v7

    .line 588
    iget-object v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v9, Ljava/lang/String;

    .line 591
    .line 592
    if-eqz v7, :cond_1a

    .line 593
    .line 594
    iget-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v1, Ljava/lang/String;

    .line 597
    .line 598
    iget-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v7, Ljava/lang/String;

    .line 601
    .line 602
    check-cast v6, Ljava/lang/String;

    .line 603
    .line 604
    check-cast v4, Ljava/lang/String;

    .line 605
    .line 606
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 607
    .line 608
    move-object v3, v6

    .line 609
    move-object v6, v4

    .line 610
    move-object v4, v7

    .line 611
    move-object v7, v5

    .line 612
    move-object v5, v3

    .line 613
    move-object v3, v1

    .line 614
    move-object v1, v2

    .line 615
    move-object v2, v9

    .line 616
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescriptionToArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-ne v0, v12, :cond_19

    .line 621
    .line 622
    goto :goto_11

    .line 623
    :cond_19
    :goto_10
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;

    .line 624
    .line 625
    goto :goto_13

    .line 626
    :cond_1a
    iget-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v3, Ljava/lang/String;

    .line 629
    .line 630
    iget-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v4, Ljava/lang/String;

    .line 633
    .line 634
    iput v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 635
    .line 636
    move-object v1, v2

    .line 637
    move-object v2, v9

    .line 638
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescriptionToWikidata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-ne v0, v12, :cond_1b

    .line 643
    .line 644
    :goto_11
    move-object v8, v12

    .line 645
    goto :goto_14

    .line 646
    :cond_1b
    :goto_12
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;

    .line 647
    .line 648
    :goto_13
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 649
    .line 650
    invoke-direct {v1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v11, v10, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    :goto_14
    return-object v8

    .line 660
    :pswitch_2
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 661
    .line 662
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 665
    .line 666
    iget-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v1, Lcoil3/network/NetworkFetcher;

    .line 669
    .line 670
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 671
    .line 672
    iget v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 673
    .line 674
    if-eqz v4, :cond_1e

    .line 675
    .line 676
    if-eq v4, v9, :cond_1d

    .line 677
    .line 678
    if-ne v4, v3, :cond_1c

    .line 679
    .line 680
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, Lcoil3/network/NetworkResponse;

    .line 683
    .line 684
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    move-object v4, v0

    .line 688
    move-object/from16 v0, p1

    .line 689
    .line 690
    goto/16 :goto_18

    .line 691
    .line 692
    :cond_1c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_19

    .line 696
    .line 697
    :cond_1d
    iget-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 700
    .line 701
    iget-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v7, Lcoil3/network/NetworkResponse;

    .line 704
    .line 705
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    move-object v8, v4

    .line 709
    move-object v4, v7

    .line 710
    move-object/from16 v7, p1

    .line 711
    .line 712
    goto :goto_15

    .line 713
    :cond_1e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    iget-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v4, Lcoil3/network/NetworkResponse;

    .line 719
    .line 720
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v7, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 723
    .line 724
    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v8, Lcoil3/network/NetworkResponse;

    .line 727
    .line 728
    iput-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 729
    .line 730
    iput-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 731
    .line 732
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 733
    .line 734
    invoke-virtual {v1, v7, v8, v4, v5}, Lcoil3/network/NetworkFetcher;->writeToDiskCache(Lcoil3/disk/RealDiskCache$RealSnapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    if-ne v7, v2, :cond_1f

    .line 739
    .line 740
    goto :goto_17

    .line 741
    :cond_1f
    move-object v8, v0

    .line 742
    :goto_15
    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 743
    .line 744
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    invoke-static {v4}, Lcoil3/network/NetworkFetcher;->throwIfFailureResponseCode(Lcoil3/network/NetworkResponse;)V

    .line 748
    .line 749
    .line 750
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 751
    .line 752
    if-eqz v7, :cond_21

    .line 753
    .line 754
    check-cast v7, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 755
    .line 756
    invoke-virtual {v1, v7}, Lcoil3/network/NetworkFetcher;->toNetworkResponseOrNull(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/network/NetworkResponse;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 761
    .line 762
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 763
    .line 764
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 765
    .line 766
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    check-cast v0, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 770
    .line 771
    invoke-virtual {v1, v0}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/disk/RealDiskCache$RealSnapshot;)Lcoil3/decode/FileImageSource;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    iget-object v1, v1, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 776
    .line 777
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v3, Lcoil3/network/NetworkResponse;

    .line 780
    .line 781
    if-eqz v3, :cond_20

    .line 782
    .line 783
    iget-object v3, v3, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 784
    .line 785
    if-eqz v3, :cond_20

    .line 786
    .line 787
    invoke-virtual {v3}, Lcoil3/network/NetworkHeaders;->get()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v10

    .line 791
    :cond_20
    invoke-static {v1, v10}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    sget-object v3, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    .line 796
    .line 797
    invoke-direct {v2, v0, v1, v3}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 798
    .line 799
    .line 800
    :goto_16
    move-object v10, v2

    .line 801
    goto :goto_19

    .line 802
    :cond_21
    iget-object v0, v4, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 803
    .line 804
    if-eqz v0, :cond_23

    .line 805
    .line 806
    iput-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 807
    .line 808
    iput-object v10, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 809
    .line 810
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 811
    .line 812
    invoke-static {v0, v5}, Landroidx/compose/ui/unit/DpKt;->readBuffer(Lcoil3/network/SourceResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    if-ne v0, v2, :cond_22

    .line 817
    .line 818
    :goto_17
    goto :goto_16

    .line 819
    :cond_22
    :goto_18
    check-cast v0, Lokio/Buffer;

    .line 820
    .line 821
    iget-wide v2, v0, Lokio/Buffer;->size:J

    .line 822
    .line 823
    const-wide/16 v5, 0x0

    .line 824
    .line 825
    cmp-long v2, v2, v5

    .line 826
    .line 827
    if-lez v2, :cond_24

    .line 828
    .line 829
    new-instance v10, Lcoil3/fetch/SourceFetchResult;

    .line 830
    .line 831
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->getFileSystem()Lokio/FileSystem;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    invoke-static {v0, v2}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;)Lcoil3/decode/SourceImageSource;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    iget-object v1, v1, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 840
    .line 841
    iget-object v2, v4, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 842
    .line 843
    invoke-virtual {v2}, Lcoil3/network/NetworkHeaders;->get()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    invoke-static {v1, v2}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    sget-object v2, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    .line 852
    .line 853
    invoke-direct {v10, v0, v1, v2}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 854
    .line 855
    .line 856
    goto :goto_19

    .line 857
    :cond_23
    const-string v0, "body == null"

    .line 858
    .line 859
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    :cond_24
    :goto_19
    return-object v10

    .line 863
    :pswitch_3
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 864
    .line 865
    move-object v2, v0

    .line 866
    check-cast v2, Landroidx/work/ListenableWorker;

    .line 867
    .line 868
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 869
    .line 870
    iget v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 871
    .line 872
    const/16 v8, -0x100

    .line 873
    .line 874
    const-string v11, "Delegated worker "

    .line 875
    .line 876
    if-eqz v3, :cond_26

    .line 877
    .line 878
    if-ne v3, v9, :cond_25

    .line 879
    .line 880
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 881
    .line 882
    move-object v1, v0

    .line 883
    check-cast v1, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 884
    .line 885
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 886
    .line 887
    move-object v3, v0

    .line 888
    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 889
    .line 890
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 891
    .line 892
    move-object v4, v0

    .line 893
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 894
    .line 895
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 896
    .line 897
    .line 898
    move-object v15, v4

    .line 899
    move-object v4, v3

    .line 900
    move-object/from16 v3, p1

    .line 901
    .line 902
    goto :goto_1a

    .line 903
    :catchall_0
    move-exception v0

    .line 904
    goto :goto_1c

    .line 905
    :catch_1
    move-exception v0

    .line 906
    goto :goto_1d

    .line 907
    :cond_25
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    goto :goto_1b

    .line 911
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    iget-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 917
    .line 918
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 919
    .line 920
    invoke-direct {v15, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 924
    .line 925
    .line 926
    move-result-object v16

    .line 927
    new-instance v12, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 928
    .line 929
    move-object v13, v6

    .line 930
    check-cast v13, Lokhttp3/Headers$Builder;

    .line 931
    .line 932
    move-object v14, v4

    .line 933
    check-cast v14, Landroidx/work/impl/model/WorkSpec;

    .line 934
    .line 935
    const/16 v18, 0x19

    .line 936
    .line 937
    const/16 v19, 0x0

    .line 938
    .line 939
    const/16 v17, 0x0

    .line 940
    .line 941
    invoke-direct/range {v12 .. v19}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 942
    .line 943
    .line 944
    move-object/from16 v4, v16

    .line 945
    .line 946
    invoke-static {v3, v10, v10, v12, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    :try_start_3
    iput-object v15, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 951
    .line 952
    iput-object v4, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 953
    .line 954
    iput-object v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 955
    .line 956
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 957
    .line 958
    invoke-static {v4, v5}, Lkotlin/text/UStringsKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    if-ne v3, v0, :cond_27

    .line 963
    .line 964
    move-object v10, v0

    .line 965
    goto :goto_1b

    .line 966
    :cond_27
    :goto_1a
    check-cast v3, Landroidx/work/ListenableWorker$Result;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 967
    .line 968
    invoke-interface {v1, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 969
    .line 970
    .line 971
    move-object v10, v3

    .line 972
    :goto_1b
    return-object v10

    .line 973
    :catch_2
    move-exception v0

    .line 974
    move-object v3, v4

    .line 975
    move-object v4, v15

    .line 976
    goto :goto_1d

    .line 977
    :goto_1c
    :try_start_4
    sget-object v3, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 978
    .line 979
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 980
    .line 981
    .line 982
    move-result-object v4

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    const-string v2, " threw exception in startWork."

    .line 996
    .line 997
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    invoke-virtual {v4, v3, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1005
    .line 1006
    .line 1007
    throw v0

    .line 1008
    :catchall_1
    move-exception v0

    .line 1009
    goto :goto_1f

    .line 1010
    :goto_1d
    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    const-string v2, " was cancelled"

    .line 1029
    .line 1030
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    invoke-virtual {v6, v5, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    if-eq v2, v8, :cond_28

    .line 1045
    .line 1046
    move v2, v9

    .line 1047
    goto :goto_1e

    .line 1048
    :cond_28
    const/4 v2, 0x0

    .line 1049
    :goto_1e
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    if-eqz v3, :cond_29

    .line 1054
    .line 1055
    if-eqz v2, :cond_29

    .line 1056
    .line 1057
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    .line 1058
    .line 1059
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1060
    .line 1061
    .line 1062
    move-result v2

    .line 1063
    invoke-direct {v0, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;-><init>(I)V

    .line 1064
    .line 1065
    .line 1066
    throw v0

    .line 1067
    :cond_29
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1068
    :goto_1f
    invoke-interface {v1, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1069
    .line 1070
    .line 1071
    throw v0

    .line 1072
    :pswitch_4
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1073
    .line 1074
    move-object v1, v0

    .line 1075
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 1076
    .line 1077
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1078
    .line 1079
    iget v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1080
    .line 1081
    if-eqz v2, :cond_2b

    .line 1082
    .line 1083
    if-ne v2, v9, :cond_2a

    .line 1084
    .line 1085
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1086
    .line 1087
    move-object v2, v0

    .line 1088
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1089
    .line 1090
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1091
    .line 1092
    move-object v3, v0

    .line 1093
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1094
    .line 1095
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1096
    .line 1097
    .line 1098
    goto :goto_20

    .line 1099
    :catchall_2
    move-exception v0

    .line 1100
    goto/16 :goto_22

    .line 1101
    .line 1102
    :cond_2a
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    move-object v8, v10

    .line 1106
    goto :goto_21

    .line 1107
    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 1111
    .line 1112
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 1113
    .line 1114
    if-ne v2, v3, :cond_2c

    .line 1115
    .line 1116
    goto :goto_21

    .line 1117
    :cond_2c
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1118
    .line 1119
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1120
    .line 1121
    .line 1122
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1123
    .line 1124
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    :try_start_6
    iget-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1128
    .line 1129
    check-cast v3, Landroidx/lifecycle/Lifecycle$State;

    .line 1130
    .line 1131
    move-object v14, v6

    .line 1132
    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    .line 1133
    .line 1134
    move-object/from16 v18, v4

    .line 1135
    .line 1136
    check-cast v18, Lkotlin/jvm/functions/Function2;

    .line 1137
    .line 1138
    iput-object v13, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1139
    .line 1140
    iput-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1141
    .line 1142
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1143
    .line 1144
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1145
    .line 1146
    invoke-static {v5}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v5

    .line 1150
    invoke-direct {v4, v9, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1154
    .line 1155
    .line 1156
    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 1157
    .line 1158
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event$Companion;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v12

    .line 1165
    invoke-static {v3}, Landroidx/lifecycle/Lifecycle$Event$Companion;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v15

    .line 1169
    new-instance v17, Lkotlinx/coroutines/sync/MutexImpl;

    .line 1170
    .line 1171
    invoke-direct/range {v17 .. v17}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    new-instance v11, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;

    .line 1175
    .line 1176
    move-object/from16 v16, v4

    .line 1177
    .line 1178
    invoke-direct/range {v11 .. v18}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Landroidx/lifecycle/Lifecycle$Event;Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlinx/coroutines/sync/MutexImpl;Lkotlin/jvm/functions/Function2;)V

    .line 1179
    .line 1180
    .line 1181
    iput-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1182
    .line 1183
    invoke-virtual {v1, v11}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1190
    if-ne v3, v0, :cond_2d

    .line 1191
    .line 1192
    move-object v8, v0

    .line 1193
    goto :goto_21

    .line 1194
    :cond_2d
    move-object v3, v13

    .line 1195
    :goto_20
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 1198
    .line 1199
    if-eqz v0, :cond_2e

    .line 1200
    .line 1201
    invoke-interface {v0, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1202
    .line 1203
    .line 1204
    :cond_2e
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1205
    .line 1206
    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    .line 1207
    .line 1208
    if-eqz v0, :cond_2f

    .line 1209
    .line 1210
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1211
    .line 1212
    .line 1213
    :cond_2f
    :goto_21
    return-object v8

    .line 1214
    :catchall_3
    move-exception v0

    .line 1215
    move-object v3, v13

    .line 1216
    :goto_22
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1217
    .line 1218
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 1219
    .line 1220
    if-eqz v3, :cond_30

    .line 1221
    .line 1222
    invoke-interface {v3, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1223
    .line 1224
    .line 1225
    :cond_30
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1226
    .line 1227
    check-cast v2, Landroidx/lifecycle/LifecycleEventObserver;

    .line 1228
    .line 1229
    if-eqz v2, :cond_31

    .line 1230
    .line 1231
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1232
    .line 1233
    .line 1234
    :cond_31
    throw v0

    .line 1235
    :pswitch_5
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1236
    .line 1237
    move-object v1, v0

    .line 1238
    check-cast v1, Landroid/content/Context;

    .line 1239
    .line 1240
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1241
    .line 1242
    move-object v2, v0

    .line 1243
    check-cast v2, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1244
    .line 1245
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1246
    .line 1247
    iget v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1248
    .line 1249
    if-eqz v0, :cond_34

    .line 1250
    .line 1251
    if-eq v0, v9, :cond_33

    .line 1252
    .line 1253
    if-ne v0, v3, :cond_32

    .line 1254
    .line 1255
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v0, Ljava/lang/Throwable;

    .line 1258
    .line 1259
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_25

    .line 1263
    :cond_32
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    move-object v8, v10

    .line 1267
    goto :goto_26

    .line 1268
    :cond_33
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1269
    .line 1270
    .line 1271
    goto :goto_26

    .line 1272
    :catchall_4
    move-exception v0

    .line 1273
    goto :goto_23

    .line 1274
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1275
    .line 1276
    .line 1277
    :try_start_8
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1278
    .line 1279
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 1280
    .line 1281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1282
    .line 1283
    .line 1284
    new-instance v7, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;

    .line 1285
    .line 1286
    invoke-direct {v7, v1, v2}, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;-><init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1290
    .line 1291
    const v12, -0x6a59fc91

    .line 1292
    .line 1293
    .line 1294
    invoke-direct {v10, v7, v9, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 1298
    .line 1299
    .line 1300
    check-cast v6, Landroidx/compose/runtime/Recomposer;

    .line 1301
    .line 1302
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1303
    .line 1304
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/Recomposer;->runRecomposeAndApplyChanges(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1308
    if-ne v0, v11, :cond_36

    .line 1309
    .line 1310
    goto :goto_24

    .line 1311
    :goto_23
    iput-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1312
    .line 1313
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1314
    .line 1315
    invoke-virtual {v2, v1, v0}, Landroidx/glance/appwidget/AppWidgetSession;->notifyWidgetOfError(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1316
    .line 1317
    .line 1318
    if-ne v8, v11, :cond_35

    .line 1319
    .line 1320
    :goto_24
    move-object v8, v11

    .line 1321
    goto :goto_26

    .line 1322
    :cond_35
    :goto_25
    check-cast v4, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 1323
    .line 1324
    const-string v1, "Error in recomposition coroutine"

    .line 1325
    .line 1326
    invoke-static {v1, v0}, Lkotlinx/coroutines/AwaitKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-static {v4, v0}, Lkotlinx/coroutines/AwaitKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 1331
    .line 1332
    .line 1333
    :catch_3
    :cond_36
    :goto_26
    return-object v8

    .line 1334
    :pswitch_6
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v0, Landroidx/glance/appwidget/AppWidgetId;

    .line 1337
    .line 1338
    iget v2, v0, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 1339
    .line 1340
    iget-object v11, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v11, Landroid/content/Context;

    .line 1343
    .line 1344
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1345
    .line 1346
    iget v13, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1347
    .line 1348
    if-eqz v13, :cond_3a

    .line 1349
    .line 1350
    if-eq v13, v9, :cond_39

    .line 1351
    .line 1352
    if-eq v13, v3, :cond_38

    .line 1353
    .line 1354
    if-ne v13, v1, :cond_37

    .line 1355
    .line 1356
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1357
    .line 1358
    .line 1359
    goto/16 :goto_2a

    .line 1360
    .line 1361
    :cond_37
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    move-object v8, v10

    .line 1365
    goto :goto_2a

    .line 1366
    :cond_38
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1367
    .line 1368
    check-cast v0, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1369
    .line 1370
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1371
    .line 1372
    .line 1373
    goto :goto_28

    .line 1374
    :cond_39
    iget-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1375
    .line 1376
    check-cast v7, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1377
    .line 1378
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1379
    .line 1380
    .line 1381
    move-object/from16 v9, p1

    .line 1382
    .line 1383
    goto :goto_27

    .line 1384
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    iget-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1388
    .line 1389
    check-cast v7, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1390
    .line 1391
    invoke-static {v2}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v13

    .line 1395
    iput-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1396
    .line 1397
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1398
    .line 1399
    invoke-virtual {v7, v11, v13, v5}, Landroidx/glance/session/SessionManagerImpl$scope$1;->isSessionRunning(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v9

    .line 1403
    if-ne v9, v12, :cond_3b

    .line 1404
    .line 1405
    goto :goto_29

    .line 1406
    :cond_3b
    :goto_27
    check-cast v9, Ljava/lang/Boolean;

    .line 1407
    .line 1408
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1409
    .line 1410
    .line 1411
    move-result v9

    .line 1412
    if-nez v9, :cond_3d

    .line 1413
    .line 1414
    new-instance v9, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1415
    .line 1416
    iget-object v13, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1417
    .line 1418
    check-cast v13, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 1419
    .line 1420
    check-cast v6, Landroid/os/Bundle;

    .line 1421
    .line 1422
    const/16 v14, 0xf8

    .line 1423
    .line 1424
    invoke-direct {v9, v13, v0, v6, v14}, Landroidx/glance/appwidget/AppWidgetSession;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroidx/glance/appwidget/AppWidgetId;Landroid/os/Bundle;I)V

    .line 1425
    .line 1426
    .line 1427
    iput-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1428
    .line 1429
    iput v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1430
    .line 1431
    invoke-virtual {v7, v11, v9, v5}, Landroidx/glance/session/SessionManagerImpl$scope$1;->startSession(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v0

    .line 1435
    if-ne v0, v12, :cond_3c

    .line 1436
    .line 1437
    goto :goto_29

    .line 1438
    :cond_3c
    move-object v0, v7

    .line 1439
    :goto_28
    move-object v7, v0

    .line 1440
    :cond_3d
    invoke-static {v2}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    iget-object v2, v7, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 1445
    .line 1446
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    check-cast v0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1451
    .line 1452
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1453
    .line 1454
    .line 1455
    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 1456
    .line 1457
    iput-object v10, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1458
    .line 1459
    iput v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1460
    .line 1461
    invoke-interface {v4, v7, v0, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    if-ne v0, v12, :cond_3e

    .line 1466
    .line 1467
    :goto_29
    move-object v8, v12

    .line 1468
    :cond_3e
    :goto_2a
    return-object v8

    .line 1469
    :pswitch_7
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1470
    .line 1471
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1472
    .line 1473
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1474
    .line 1475
    iget v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1476
    .line 1477
    if-eqz v2, :cond_40

    .line 1478
    .line 1479
    if-ne v2, v9, :cond_3f

    .line 1480
    .line 1481
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1482
    .line 1483
    .line 1484
    goto :goto_2b

    .line 1485
    :cond_3f
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1486
    .line 1487
    .line 1488
    move-object v8, v10

    .line 1489
    goto :goto_2b

    .line 1490
    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1494
    .line 1495
    move-object v11, v2

    .line 1496
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    .line 1497
    .line 1498
    new-instance v12, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 1499
    .line 1500
    invoke-direct {v12, v0}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 1501
    .line 1502
    .line 1503
    new-instance v10, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;

    .line 1504
    .line 1505
    iget-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1506
    .line 1507
    move-object v13, v2

    .line 1508
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1509
    .line 1510
    iget-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1511
    .line 1512
    move-object v14, v2

    .line 1513
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 1514
    .line 1515
    move-object v15, v6

    .line 1516
    check-cast v15, Lkotlin/jvm/functions/Function3;

    .line 1517
    .line 1518
    move-object/from16 v16, v4

    .line 1519
    .line 1520
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 1521
    .line 1522
    const/16 v17, 0x0

    .line 1523
    .line 1524
    invoke-direct/range {v10 .. v17}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 1525
    .line 1526
    .line 1527
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1528
    .line 1529
    invoke-static {v0, v10, v5}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v0

    .line 1533
    if-ne v0, v1, :cond_41

    .line 1534
    .line 1535
    move-object v8, v1

    .line 1536
    :cond_41
    :goto_2b
    return-object v8

    .line 1537
    :pswitch_8
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1538
    .line 1539
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 1540
    .line 1541
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1542
    .line 1543
    iget v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1544
    .line 1545
    if-eqz v3, :cond_43

    .line 1546
    .line 1547
    if-ne v3, v9, :cond_42

    .line 1548
    .line 1549
    iget-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1550
    .line 1551
    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 1552
    .line 1553
    iget-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1554
    .line 1555
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 1556
    .line 1557
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1558
    .line 1559
    .line 1560
    move-object/from16 v11, p1

    .line 1561
    .line 1562
    goto :goto_2d

    .line 1563
    :cond_42
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    move-object v8, v10

    .line 1567
    goto :goto_2f

    .line 1568
    :cond_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1569
    .line 1570
    .line 1571
    iget-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1572
    .line 1573
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 1574
    .line 1575
    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v7

    .line 1579
    move-object/from16 v23, v7

    .line 1580
    .line 1581
    move-object v7, v3

    .line 1582
    move-object/from16 v3, v23

    .line 1583
    .line 1584
    :goto_2c
    iput-object v7, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1585
    .line 1586
    iput-object v3, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1587
    .line 1588
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1589
    .line 1590
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v11

    .line 1594
    if-ne v11, v2, :cond_44

    .line 1595
    .line 1596
    move-object v8, v2

    .line 1597
    goto :goto_2f

    .line 1598
    :cond_44
    :goto_2d
    check-cast v11, Ljava/lang/Boolean;

    .line 1599
    .line 1600
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1601
    .line 1602
    .line 1603
    move-result v11

    .line 1604
    if-eqz v11, :cond_46

    .line 1605
    .line 1606
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v11

    .line 1610
    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v12

    .line 1614
    invoke-static {v12}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v12

    .line 1618
    if-nez v12, :cond_45

    .line 1619
    .line 1620
    move-object v14, v11

    .line 1621
    goto :goto_2e

    .line 1622
    :cond_45
    move-object v14, v12

    .line 1623
    :goto_2e
    new-instance v13, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 1624
    .line 1625
    iget-object v11, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1626
    .line 1627
    move-object v15, v11

    .line 1628
    check-cast v15, Landroidx/compose/animation/core/Animatable;

    .line 1629
    .line 1630
    move-object/from16 v16, v6

    .line 1631
    .line 1632
    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 1633
    .line 1634
    move-object/from16 v17, v4

    .line 1635
    .line 1636
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 1637
    .line 1638
    const/16 v18, 0x0

    .line 1639
    .line 1640
    const/16 v19, 0x1

    .line 1641
    .line 1642
    invoke-direct/range {v13 .. v19}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1643
    .line 1644
    .line 1645
    invoke-static {v7, v10, v10, v13, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1646
    .line 1647
    .line 1648
    goto :goto_2c

    .line 1649
    :cond_46
    :goto_2f
    return-object v8

    .line 1650
    :pswitch_9
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$context:Ljava/lang/Object;

    .line 1651
    .line 1652
    move-object v12, v0

    .line 1653
    check-cast v12, Landroid/content/Context;

    .line 1654
    .line 1655
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1656
    .line 1657
    iget v1, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1658
    .line 1659
    if-eqz v1, :cond_48

    .line 1660
    .line 1661
    if-ne v1, v9, :cond_47

    .line 1662
    .line 1663
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1664
    .line 1665
    .line 1666
    move-object/from16 v1, p1

    .line 1667
    .line 1668
    goto :goto_30

    .line 1669
    :cond_47
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1670
    .line 1671
    .line 1672
    move-object v8, v10

    .line 1673
    goto/16 :goto_32

    .line 1674
    .line 1675
    :cond_48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1676
    .line 1677
    .line 1678
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1679
    .line 1680
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 1681
    .line 1682
    new-instance v11, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 1683
    .line 1684
    move-object v13, v4

    .line 1685
    check-cast v13, Landroid/graphics/Bitmap;

    .line 1686
    .line 1687
    iget-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$imageFileName:Ljava/lang/Object;

    .line 1688
    .line 1689
    move-object v14, v2

    .line 1690
    check-cast v14, Ljava/lang/String;

    .line 1691
    .line 1692
    const/4 v15, 0x0

    .line 1693
    const/16 v16, 0x0

    .line 1694
    .line 1695
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1696
    .line 1697
    .line 1698
    iput v9, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->label:I

    .line 1699
    .line 1700
    invoke-static {v1, v11, v5}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v1

    .line 1704
    if-ne v1, v0, :cond_49

    .line 1705
    .line 1706
    move-object v8, v0

    .line 1707
    goto :goto_32

    .line 1708
    :cond_49
    :goto_30
    check-cast v1, Landroid/net/Uri;

    .line 1709
    .line 1710
    if-nez v1, :cond_4a

    .line 1711
    .line 1712
    const v0, 0x7f1201d4

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v0

    .line 1719
    new-array v1, v9, [Ljava/lang/Object;

    .line 1720
    .line 1721
    const/4 v2, 0x0

    .line 1722
    aput-object v0, v1, v2

    .line 1723
    .line 1724
    const v0, 0x7f12025a

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v12, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v0

    .line 1731
    invoke-static {v12, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_31

    .line 1739
    :cond_4a
    iget-object v0, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$subject:Ljava/lang/Object;

    .line 1740
    .line 1741
    check-cast v0, Ljava/lang/String;

    .line 1742
    .line 1743
    iget-object v2, v5, Lorg/wikipedia/util/ShareUtil$shareImage$2;->$text:Ljava/lang/Object;

    .line 1744
    .line 1745
    check-cast v2, Ljava/lang/String;

    .line 1746
    .line 1747
    new-instance v3, Landroid/content/Intent;

    .line 1748
    .line 1749
    const-string v4, "android.intent.action.SEND"

    .line 1750
    .line 1751
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    const-string v4, "android.intent.extra.SUBJECT"

    .line 1755
    .line 1756
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v0

    .line 1760
    const-string v3, "android.intent.extra.TEXT"

    .line 1761
    .line 1762
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    const-string v2, "android.intent.extra.STREAM"

    .line 1767
    .line 1768
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v0

    .line 1772
    const-string v1, "image/jpeg"

    .line 1773
    .line 1774
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v0

    .line 1778
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v1

    .line 1789
    const v2, 0x7f120308

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v1

    .line 1796
    invoke-static {v12, v0, v1}, Lorg/wikipedia/util/ShareUtil;->getIntentChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    invoke-virtual {v12, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1801
    .line 1802
    .line 1803
    :goto_31
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1804
    .line 1805
    if-eqz v6, :cond_4b

    .line 1806
    .line 1807
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    :cond_4b
    :goto_32
    return-object v8

    .line 1811
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
