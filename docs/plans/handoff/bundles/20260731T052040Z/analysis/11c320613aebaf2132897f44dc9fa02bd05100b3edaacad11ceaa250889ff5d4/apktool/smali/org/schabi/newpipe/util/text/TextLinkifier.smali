.class public abstract Lorg/schabi/newpipe/util/text/TextLinkifier;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SET_LINK_MOVEMENT_METHOD:Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "(#[\\p{L}0-9_]+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/util/text/TextLinkifier;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    return-void
.end method

.method public static changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-direct {p0, v0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-direct {p2, v1, p5, p3}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {p3, v1, v2, p5}, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance p4, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 39
    .line 40
    invoke-direct {p4, p2, p3}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 44
    .line 45
    invoke-direct {p2, p4, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    const-string/jumbo p1, "subscribeActual failed"

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object p0, v0

    .line 67
    throw p0
.end method

.method public static fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 4
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 10
    new-instance v7, Lio/noties/markwon/core/CorePlugin;

    invoke-direct {v7}, Lio/noties/markwon/core/CorePlugin;-><init>()V

    .line 11
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v7, Lio/noties/markwon/linkify/LinkifyPlugin;

    .line 13
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    .line 16
    new-instance v7, Lorg/acra/util/ProcessFinisher;

    invoke-direct {v7, v5}, Lorg/acra/util/ProcessFinisher;-><init>(Ljava/util/ArrayList;)V

    .line 17
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/noties/markwon/AbstractMarkwonPlugin;

    .line 18
    invoke-virtual {v7, v8}, Lorg/acra/util/ProcessFinisher;->configure(Lio/noties/markwon/AbstractMarkwonPlugin;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v5, v7, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sget-object v10, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/LinkedHashSet;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 25
    new-instance v11, Lio/noties/markwon/core/MarkwonTheme;

    .line 26
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 27
    iput v12, v11, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    const/high16 v12, 0x41c00000    # 24.0f

    mul-float/2addr v12, v1

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 28
    iput v12, v11, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v1

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 29
    iput v12, v11, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v14, v1

    add-float/2addr v14, v13

    float-to-int v1, v14

    .line 30
    iput v1, v11, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 31
    iput v1, v11, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 32
    iput v12, v11, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    .line 33
    new-instance v1, Lorg/koin/core/Koin;

    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v12, Lio/noties/markwon/RenderPropsImpl;

    invoke-direct {v12, v6}, Lio/noties/markwon/RenderPropsImpl;-><init>(I)V

    .line 36
    new-instance v6, Lio/noties/markwon/RenderPropsImpl;

    invoke-direct {v6, v4}, Lio/noties/markwon/RenderPropsImpl;-><init>(I)V

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/noties/markwon/AbstractMarkwonPlugin;

    .line 38
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {v13, v12}, Lio/noties/markwon/AbstractMarkwonPlugin;->configureVisitor(Lio/noties/markwon/RenderPropsImpl;)V

    .line 40
    invoke-virtual {v13, v6}, Lio/noties/markwon/AbstractMarkwonPlugin;->configureSpansFactory(Lio/noties/markwon/RenderPropsImpl;)V

    goto :goto_1

    .line 41
    :cond_2
    new-instance v4, Lio/noties/markwon/core/MarkwonTheme;

    .line 42
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 43
    iget v13, v11, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 44
    iput v13, v4, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 45
    iget v13, v11, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 46
    iput v13, v4, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 47
    iget v13, v11, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 48
    iput v13, v4, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 49
    iget v13, v11, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    .line 50
    iput v13, v4, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    .line 51
    iget v13, v11, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 52
    iput v13, v4, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 53
    iget v11, v11, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    .line 54
    iput v11, v4, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    .line 55
    new-instance v11, Lokhttp3/ConnectionPool;

    iget-object v6, v6, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/HashMap;

    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    const/16 v13, 0xd

    invoke-direct {v11, v6, v13}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 56
    iput-object v4, v1, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 57
    iput-object v11, v1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 58
    iget-object v4, v1, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    check-cast v4, Lio/noties/markwon/BlockHandlerDef;

    const/16 v6, 0x1a

    if-nez v4, :cond_3

    .line 59
    new-instance v4, Lio/noties/markwon/BlockHandlerDef;

    .line 60
    invoke-direct {v4, v6}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 61
    iput-object v4, v1, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 62
    :cond_3
    iget-object v4, v1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    check-cast v4, Landroidx/transition/Transition$1;

    if-nez v4, :cond_4

    .line 63
    new-instance v4, Landroidx/transition/Transition$1;

    const/16 v11, 0x1c

    .line 64
    invoke-direct {v4, v11}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 65
    iput-object v4, v1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 66
    :cond_4
    iget-object v4, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    check-cast v4, Landroidx/transition/Transition$1;

    if-nez v4, :cond_5

    .line 67
    new-instance v4, Landroidx/transition/Transition$1;

    .line 68
    invoke-direct {v4, v6}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 69
    iput-object v4, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 70
    :cond_5
    iget-object v4, v1, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    check-cast v4, Lio/noties/markwon/BlockHandlerDef;

    const/16 v6, 0x1b

    if-nez v4, :cond_6

    .line 71
    new-instance v4, Lio/noties/markwon/BlockHandlerDef;

    .line 72
    invoke-direct {v4, v6}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 73
    iput-object v4, v1, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 74
    :cond_6
    iget-object v4, v1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    check-cast v4, Landroidx/transition/Transition$1;

    if-nez v4, :cond_7

    .line 75
    new-instance v4, Landroidx/transition/Transition$1;

    .line 76
    invoke-direct {v4, v6}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 77
    iput-object v4, v1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 78
    :cond_7
    new-instance v15, Lcoil3/ComponentRegistry$Builder;

    invoke-direct {v15, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/koin/core/Koin;)V

    .line 79
    sget-object v1, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/LinkedHashSet;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 83
    sget-object v7, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_8
    new-instance v4, Lokio/ByteString$Companion;

    const/16 v6, 0x8

    .line 85
    invoke-direct {v4, v6}, Lokio/ByteString$Companion;-><init>(I)V

    .line 86
    new-instance v6, Lorg/jsoup/parser/TokenData;

    .line 87
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v6, v8, v7, v3}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    new-instance v7, Lorg/commonmark/internal/InlineParserImpl;

    invoke-direct {v7, v6}, Lorg/commonmark/internal/InlineParserImpl;-><init>(Lorg/jsoup/parser/TokenData;)V

    .line 89
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 90
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/noties/markwon/AbstractMarkwonPlugin;

    .line 91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_16

    .line 92
    new-instance v6, Lorg/commonmark/internal/DocumentParser;

    invoke-direct {v6, v1, v4, v8}, Lorg/commonmark/internal/DocumentParser;-><init>(Ljava/util/ArrayList;Lokio/ByteString$Companion;Ljava/util/ArrayList;)V

    move v1, v2

    .line 93
    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v7, v1

    :goto_5
    const/4 v8, -0x1

    const/16 v10, 0xa

    if-ge v7, v4, :cond_b

    .line 94
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_c

    if-eq v11, v13, :cond_c

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    move v7, v8

    :cond_c
    if-eq v7, v8, :cond_d

    .line 95
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v6, v1}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/String;)V

    add-int/lit8 v1, v7, 0x1

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_a

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v13, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_a

    add-int/lit8 v7, v7, 0x2

    move v1, v7

    goto :goto_4

    .line 98
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 99
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v6, v1}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/String;)V

    .line 101
    :cond_f
    iget-object v1, v6, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 102
    new-instance v1, Lorg/jsoup/parser/TokenData;

    iget-object v4, v6, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    iget-object v7, v6, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v4, v7, v3}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 103
    iget-object v3, v6, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lokio/ByteString$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    new-instance v3, Lorg/commonmark/internal/InlineParserImpl;

    invoke-direct {v3, v1}, Lorg/commonmark/internal/InlineParserImpl;-><init>(Lorg/jsoup/parser/TokenData;)V

    .line 105
    iget-object v1, v6, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 106
    invoke-virtual {v4, v3}, Lorg/commonmark/parser/block/AbstractBlockParser;->parseInlines(Lorg/commonmark/internal/InlineParserImpl;)V

    goto :goto_6

    .line 107
    :cond_10
    iget-object v1, v6, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    .line 108
    iget-object v1, v1, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Block;

    check-cast v1, Lorg/commonmark/node/Document;

    .line 109
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 110
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/noties/markwon/AbstractMarkwonPlugin;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    .line 112
    :cond_11
    new-instance v3, Lio/noties/markwon/RenderPropsImpl;

    invoke-direct {v3, v2}, Lio/noties/markwon/RenderPropsImpl;-><init>(I)V

    .line 113
    new-instance v4, Lio/noties/markwon/BlockHandlerDef;

    .line 114
    invoke-direct {v4, v2}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 115
    new-instance v14, Lokhttp3/Dispatcher;

    new-instance v17, Lio/noties/markwon/SpannableBuilder;

    invoke-direct/range {v17 .. v17}, Lio/noties/markwon/SpannableBuilder;-><init>()V

    iget-object v2, v12, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/HashMap;

    .line 116
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v19}, Lokhttp3/Dispatcher;-><init>(Lcoil3/ComponentRegistry$Builder;Lio/noties/markwon/RenderPropsImpl;Lio/noties/markwon/SpannableBuilder;Ljava/util/Map;Lio/noties/markwon/BlockHandlerDef;)V

    .line 117
    invoke-virtual {v14, v1}, Lokhttp3/Dispatcher;->visit(Lorg/commonmark/node/Node;)V

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/AbstractMarkwonPlugin;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    .line 120
    :cond_12
    iget-object v1, v14, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    check-cast v1, Lio/noties/markwon/SpannableBuilder;

    .line 121
    new-instance v2, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    iget-object v3, v1, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, v1, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/noties/markwon/SpannableBuilder$Span;

    .line 124
    iget-object v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v5, v3, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    iget v6, v3, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    iget v3, v3, Lio/noties/markwon/SpannableBuilder$Span;->flags:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    .line 125
    :cond_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 127
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v2

    move-object/from16 v2, p2

    .line 128
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void

    .line 129
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    return-void

    .line 132
    :cond_16
    const-string v0, "input must not be null"

    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_17
    const-string v0, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_19

    .line 136
    invoke-static {v2, v0}, Lus/shandian/giga/util/Utility;->fromHtml(ILjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_a
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_b

    .line 137
    :cond_19
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_a

    .line 138
    :goto_b
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method
