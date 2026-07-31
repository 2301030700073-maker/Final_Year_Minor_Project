.class public final Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $resource:Lorg/jetbrains/compose/resources/DrawableResource;

.field final synthetic $resourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

.field final synthetic $resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

.field I$0:I

.field I$1:I

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 4
    .line 5
    iget v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$3:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p1, Lorg/jetbrains/compose/resources/ResourceItem;->qualifiers:Ljava/util/Set;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/Iterable;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v4, v1

    .line 64
    check-cast v4, Lorg/jetbrains/compose/resources/Qualifier;

    .line 65
    .line 66
    instance-of v4, v4, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move-object v1, v3

    .line 72
    :goto_0
    instance-of v0, v1, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    check-cast v1, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move-object v1, v3

    .line 80
    :goto_1
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Lorg/jetbrains/compose/resources/DensityQualifier;->getDpi()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    sget-object v0, Lorg/jetbrains/compose/resources/DensityQualifier;->MDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/jetbrains/compose/resources/DensityQualifier;->getDpi()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_2
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 94
    .line 95
    iget-object v1, v1, Lorg/jetbrains/compose/resources/ResourceEnvironment;->density:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 96
    .line 97
    invoke-virtual {v1}, Lorg/jetbrains/compose/resources/DensityQualifier;->getDpi()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object p1, p1, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v5, "-"

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v5, "dpi"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget-object v5, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 129
    .line 130
    new-instance v6, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {v6, v0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1$$ExternalSyntheticLambda0;-><init>(II)V

    .line 133
    .line 134
    .line 135
    iput-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$2:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->L$3:Ljava/lang/Object;

    .line 142
    .line 143
    iput v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->I$0:I

    .line 144
    .line 145
    iput v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->I$1:I

    .line 146
    .line 147
    iput v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;->label:I

    .line 148
    .line 149
    sget-object v0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 150
    .line 151
    new-instance v1, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;

    .line 152
    .line 153
    invoke-direct {v1, v6, v5, p1, v3}, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    new-instance p1, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 160
    .line 161
    invoke-direct {p1, v0, v4, v1, v3}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jetbrains/compose/resources/AsyncCache;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 169
    .line 170
    if-ne p1, p0, :cond_6

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    check-cast p1, Lorg/jetbrains/compose/resources/ImageCache$Bitmap;

    .line 177
    .line 178
    iget-object p0, p1, Lorg/jetbrains/compose/resources/ImageCache$Bitmap;->bitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 179
    .line 180
    return-object p0
.end method
