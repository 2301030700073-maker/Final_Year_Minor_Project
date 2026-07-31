.class public abstract Lorg/jetbrains/compose/resources/StringResourcesKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static final access$loadString(Lorg/jetbrains/compose/resources/StringResource;Ljava/util/List;Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;

    .line 7
    .line 8
    iget v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$3:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 38
    .line 39
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceReader;

    .line 42
    .line 43
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    move-object p1, p0

    .line 46
    check-cast p1, Ljava/util/List;

    .line 47
    .line 48
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lorg/jetbrains/compose/resources/StringResource;

    .line 51
    .line 52
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object p1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$1:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$2:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->L$3:Ljava/lang/Object;

    .line 72
    .line 73
    iput v2, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$2;->label:I

    .line 74
    .line 75
    invoke-static {p0, p2, p3, v0}, Lorg/jetbrains/compose/resources/StringResourcesKt;->loadString(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 80
    .line 81
    if-ne p4, p0, :cond_3

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_3
    :goto_1
    check-cast p4, Ljava/lang/String;

    .line 85
    .line 86
    sget-object p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 87
    .line 88
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 95
    .line 96
    new-instance p2, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/16 p3, 0x9

    .line 99
    .line 100
    invoke-direct {p2, p1, p3}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p4, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/String;Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static final getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceReader;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lorg/jetbrains/compose/resources/AndroidContextProviderKt;->PreviewContextConfigurationEffect(Landroidx/compose/runtime/Composer;I)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceReader;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final loadString(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$3:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 38
    .line 39
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 42
    .line 43
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceReader;

    .line 46
    .line 47
    iget-object p0, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lorg/jetbrains/compose/resources/StringResource;

    .line 50
    .line 51
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p2}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v3, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->L$3:Ljava/lang/Object;

    .line 75
    .line 76
    iput v2, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$loadString$1;->label:I

    .line 77
    .line 78
    sget-object p2, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->stringItemsCache:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 79
    .line 80
    iget-object p3, p0, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 81
    .line 82
    iget-wide v1, p0, Lorg/jetbrains/compose/resources/ResourceItem;->offset:J

    .line 83
    .line 84
    iget-wide v4, p0, Lorg/jetbrains/compose/resources/ResourceItem;->size:J

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p3, "/"

    .line 95
    .line 96
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, "-"

    .line 103
    .line 104
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    new-instance v1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;

    .line 115
    .line 116
    invoke-direct {v1, p1, p0, v3}, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;-><init>(Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceItem;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance p0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 123
    .line 124
    invoke-direct {p0, p2, p3, v1, v3}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jetbrains/compose/resources/AsyncCache;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 132
    .line 133
    if-ne p3, p0, :cond_3

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    check-cast p3, Lorg/jetbrains/compose/resources/StringItem$Value;

    .line 140
    .line 141
    iget-object p0, p3, Lorg/jetbrains/compose/resources/StringItem$Value;->text:Ljava/lang/String;

    .line 142
    .line 143
    return-object p0
.end method

.method public static final rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p3, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 17
    .line 18
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    or-int/2addr p0, p1

    .line 42
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    or-int/2addr p0, p1

    .line 47
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    or-int/2addr p0, p1

    .line 52
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 59
    .line 60
    if-ne p1, p0, :cond_1

    .line 61
    .line 62
    :cond_0
    new-instance p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$3$1;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p4, p3, p1}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$3$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 69
    .line 70
    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 82
    .line 83
    return-object p1
.end method

.method public static final stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lorg/jetbrains/compose/resources/StringResourcesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceReader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    new-instance v1, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-direct {v1, v3}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    or-int/2addr v3, v4

    .line 40
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    if-ne v4, v2, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v4, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 50
    .line 51
    invoke-direct {v4, p0, v0, v5}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object v0, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    or-int/2addr p0, v1

    .line 89
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-nez p0, :cond_3

    .line 94
    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    :cond_3
    new-instance p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;

    .line 98
    .line 99
    invoke-direct {p0, v4, v0, v5}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 103
    .line 104
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 116
    .line 117
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/lang/String;

    .line 122
    .line 123
    return-object p0
.end method
