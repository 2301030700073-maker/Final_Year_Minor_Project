.class public final Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $density:Landroidx/compose/ui/unit/Density;

.field public final synthetic $r8$classId:I

.field public final synthetic $resource:Lorg/jetbrains/compose/resources/DrawableResource;

.field public final synthetic $resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 14
    .line 15
    move-object v5, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v1, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    move-object v5, p2

    .line 23
    new-instance v2, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 24
    .line 25
    move-object v6, v5

    .line 26
    iget-object v5, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 30
    .line 31
    iget-object v4, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 32
    .line 33
    invoke-direct/range {v2 .. v7}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v2, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 17
    .line 18
    iget v6, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->label:I

    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    if-ne v6, v5, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v9, p1, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v7, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/16 p1, 0x11

    .line 44
    .line 45
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    invoke-direct {v7, p1, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    iput-object v10, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    iput v5, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->label:I

    .line 54
    .line 55
    sget-object p1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jsoup/internal/SoftPool;

    .line 56
    .line 57
    new-instance v6, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 58
    .line 59
    const/4 v11, 0x3

    .line 60
    iget-object v8, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 61
    .line 62
    invoke-direct/range {v6 .. v11}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lkotlin/coroutines/Continuation;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 69
    .line 70
    invoke-direct {v0, p1, v9, v6, v10}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jsoup/internal/SoftPool;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v4, :cond_2

    .line 78
    .line 79
    move-object v2, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    check-cast p1, Lorg/jetbrains/compose/resources/ImageCache$Vector;

    .line 85
    .line 86
    iget-object v2, p1, Lorg/jetbrains/compose/resources/ImageCache$Vector;->vector:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 87
    .line 88
    :goto_1
    return-object v2

    .line 89
    :pswitch_0
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 92
    .line 93
    iget v6, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->label:I

    .line 94
    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    if-eq v6, v5, :cond_3

    .line 98
    .line 99
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v9, p1, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v7, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/16 p1, 0x8

    .line 119
    .line 120
    invoke-direct {v7, p1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 121
    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    iput-object v10, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    iput v5, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->label:I

    .line 127
    .line 128
    sget-object p1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jsoup/internal/SoftPool;

    .line 129
    .line 130
    new-instance v6, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 131
    .line 132
    const/4 v11, 0x3

    .line 133
    iget-object v8, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 134
    .line 135
    invoke-direct/range {v6 .. v11}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lkotlin/coroutines/Continuation;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 142
    .line 143
    invoke-direct {v0, p1, v9, v6, v10}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jsoup/internal/SoftPool;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v4, :cond_5

    .line 151
    .line 152
    move-object v2, v4

    .line 153
    :goto_2
    return-object v2

    .line 154
    :cond_5
    :goto_3
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    throw p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
