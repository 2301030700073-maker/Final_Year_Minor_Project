.class public final Lexpo/modules/video/VideoModuleKt;
.super Ljava/lang/Object;
.source "VideoModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n+ 2 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 3 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 5 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 6 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,415:1\n127#2,3:416\n130#2,3:431\n127#2,3:434\n130#2,3:449\n127#2,3:452\n130#2,3:467\n127#2,3:470\n130#2,3:485\n127#2,3:488\n130#2,3:503\n127#2,3:506\n130#2,3:521\n127#2,3:524\n130#2,3:539\n235#2,8:542\n243#2,2:595\n216#2:597\n217#2,2:600\n235#2,8:602\n243#2,2:655\n216#2:657\n217#2,2:660\n89#2,4:662\n107#2,4:666\n167#3,2:419\n158#3,8:423\n167#3,2:437\n158#3,8:441\n167#3,2:455\n158#3,8:459\n167#3,2:473\n158#3,8:477\n167#3,2:491\n158#3,8:495\n167#3,2:509\n158#3,8:513\n167#3,2:527\n158#3,8:531\n171#3,7:550\n168#3:557\n158#3,8:560\n176#3:568\n171#3,7:610\n168#3:617\n158#3,8:620\n176#3:628\n143#4,2:421\n143#4,2:439\n143#4,2:457\n143#4,2:475\n143#4,2:493\n143#4,2:511\n143#4,2:529\n143#4,2:558\n143#4,2:618\n13#5,6:569\n19#5,19:576\n13#5,2:598\n13#5,6:629\n19#5,19:636\n13#5,2:658\n11#6:575\n11#6:635\n*S KotlinDebug\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n*L\n369#1:416,3\n369#1:431,3\n372#1:434,3\n372#1:449,3\n375#1:452,3\n375#1:467,3\n378#1:470,3\n378#1:485,3\n381#1:488,3\n381#1:503,3\n384#1:506,3\n384#1:521,3\n389#1:524,3\n389#1:539,3\n392#1:542,8\n392#1:595,2\n395#1:597\n395#1:600,2\n398#1:602,8\n398#1:655,2\n403#1:657\n403#1:660,2\n406#1:662,4\n409#1:666,4\n369#1:419,2\n369#1:423,8\n372#1:437,2\n372#1:441,8\n375#1:455,2\n375#1:459,8\n378#1:473,2\n378#1:477,8\n381#1:491,2\n381#1:495,8\n384#1:509,2\n384#1:513,8\n389#1:527,2\n389#1:531,8\n392#1:550,7\n392#1:557\n392#1:560,8\n392#1:568\n398#1:610,7\n398#1:617\n398#1:620,8\n398#1:628\n369#1:421,2\n372#1:439,2\n375#1:457,2\n378#1:475,2\n381#1:493,2\n384#1:511,2\n389#1:529,2\n392#1:558,2\n398#1:618,2\n392#1:569,6\n392#1:576,19\n395#1:598,2\n398#1:629,6\n398#1:636,19\n403#1:658,2\n392#1:575\n398#1:635\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0083\u0008\u00a8\u0006\u0005"
    }
    d2 = {
        "VideoViewComponent",
        "",
        "T",
        "Lexpo/modules/video/VideoView;",
        "Lexpo/modules/kotlin/views/ViewDefinitionBuilder;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final synthetic VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/video/VideoView;",
            ">(",
            "Lexpo/modules/kotlin/views/ViewDefinitionBuilder<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 363
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "onPictureInPictureStart"

    const/4 v2, 0x0

    .line 421
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 363
    aput-object v1, v0, v2

    .line 364
    const-string v1, "onPictureInPictureStop"

    const/4 v4, 0x1

    .line 493
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 364
    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 365
    const-string v6, "onFullscreenEnter"

    aput-object v6, v0, v1

    .line 366
    const-string v1, "onFullscreenExit"

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 367
    const-string v1, "onFirstFrameRender"

    const/4 v7, 0x4

    aput-object v1, v0, v7

    .line 362
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$1;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 416
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 420
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 421
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 420
    sget-object v9, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$1;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$1;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 423
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 424
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v2, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 423
    invoke-direct {v11, v12, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 416
    :cond_0
    const-string v11, "player"

    invoke-direct {v8, v11, v9, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$2;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 434
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 438
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 439
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_1

    .line 438
    sget-object v9, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$2;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 441
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 442
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/Boolean;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v2, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 441
    invoke-direct {v11, v12, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 434
    :cond_1
    const-string v11, "nativeControls"

    invoke-direct {v8, v11, v9, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$3;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$3;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 452
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 456
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 457
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/video/enums/ContentFit;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_2

    .line 456
    sget-object v9, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$3;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$3;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 459
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 460
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/video/enums/ContentFit;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v2, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 459
    invoke-direct {v11, v12, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 452
    :cond_2
    const-string v11, "contentFit"

    invoke-direct {v8, v11, v9, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$4;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$4;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 470
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 474
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 475
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_3

    .line 474
    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$4;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 477
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 478
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v2, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 477
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v9

    .line 470
    :cond_3
    const-string v9, "startsPictureInPictureAutomatically"

    invoke-direct {v8, v9, v3, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$5;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 488
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 492
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 493
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_4

    .line 492
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$5;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 495
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 496
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 495
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 488
    :cond_4
    const-string v9, "allowsFullscreen"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 506
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 510
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 511
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_5

    .line 510
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$6;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$6;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 513
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 514
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 513
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 506
    :cond_5
    const-string v9, "requiresLinearPlayback"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 524
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 528
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 529
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_6

    .line 528
    sget-object v5, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$7;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$7;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 531
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 532
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v4, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 531
    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v5, v8

    .line 524
    :cond_6
    const-string v8, "useExoShutter"

    invoke-direct {v3, v8, v5, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v0, "T"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    const-class v3, Lexpo/modules/kotlin/Promise;

    const-string v5, "enterFullscreen"

    if-ne v1, v3, :cond_7

    .line 543
    new-instance v1, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 549
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$1;

    invoke-direct {v8}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$1;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 543
    invoke-direct {v1, v5, v3, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_1

    .line 552
    :cond_7
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 556
    new-array v1, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 557
    sget-object v3, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 558
    new-instance v8, Lkotlin/Pair;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 559
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_8

    .line 557
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 560
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 561
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 563
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 561
    invoke-direct {v9, v12, v11, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 560
    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v8

    .line 557
    :cond_8
    aput-object v3, v1, v2

    .line 545
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$3;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$3;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 572
    const-class v8, Lkotlin/Unit;

    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    .line 573
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 576
    new-instance v8, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_0
    move-object v1, v8

    goto :goto_1

    .line 578
    :cond_9
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 580
    new-instance v8, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 582
    :cond_a
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 584
    new-instance v8, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 586
    :cond_b
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 588
    new-instance v8, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 590
    :cond_c
    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 592
    new-instance v8, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 594
    :cond_d
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 549
    :goto_1
    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 595
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v3, Lexpo/modules/kotlin/functions/Queues;->MAIN:Lexpo/modules/kotlin/functions/Queues;

    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->runOnQueue(Lexpo/modules/kotlin/functions/Queues;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 597
    new-array v1, v2, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 599
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    const-string v8, "exitFullscreen"

    invoke-direct {v5, v8, v1, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 600
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    const-class v3, Lexpo/modules/kotlin/Promise;

    const-string v5, "startPictureInPicture"

    if-ne v1, v3, :cond_e

    .line 603
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v1, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 609
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 603
    invoke-direct {v0, v5, v1, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_3

    .line 612
    :cond_e
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 616
    new-array v1, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 617
    sget-object v3, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 618
    new-instance v4, Lkotlin/Pair;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v4, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_f

    .line 617
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 620
    new-instance v4, Lexpo/modules/kotlin/types/AnyType;

    .line 621
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 623
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 621
    invoke-direct {v8, v7, v9, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 620
    invoke-direct {v4, v8, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v4

    .line 617
    :cond_f
    aput-object v3, v1, v2

    .line 605
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$6;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$6;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 632
    const-class v3, Lkotlin/Unit;

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    .line 633
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 636
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_2
    move-object v0, v3

    goto :goto_3

    .line 638
    :cond_10
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 640
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 642
    :cond_11
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 644
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 646
    :cond_12
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 648
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 650
    :cond_13
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 652
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 654
    :cond_14
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 609
    :goto_3
    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 655
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-array v0, v2, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v1, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2;

    invoke-direct {v1}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 659
    new-instance v2, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    const-string v3, "stopPictureInPicture"

    invoke-direct {v2, v3, v0, v1}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 660
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDestroys$1;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDestroys$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDestroys(Lkotlin/jvm/functions/Function1;)V

    .line 666
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDidUpdateProps(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
