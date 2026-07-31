.class public final Landroidx/compose/ui/draw/DrawResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public block:Lkotlin/jvm/functions/Function1;


# virtual methods
.method public getUseCases()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/draw/DrawResult;->block:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 9
    .line 10
    new-instance v1, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    .line 11
    .line 12
    new-instance v2, Landroid/util/Size;

    .line 13
    .line 14
    const/16 v3, 0x780

    .line 15
    .line 16
    const/16 v4, 0x438

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p0, v1, v4}, Landroidx/camera/core/resolutionselector/ResolutionSelector;-><init>(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;Landroidx/camera/core/resolutionselector/ResolutionStrategy;Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Landroidx/camera/core/Preview$Builder;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-direct {p0, v1}, Landroidx/camera/core/Preview$Builder;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 42
    .line 43
    sget-object v5, Landroidx/camera/core/impl/ImageAnalysisConfig;->OPTION_IMAGE_QUEUE_DEPTH:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 44
    .line 45
    invoke-virtual {v4, v5, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 49
    .line 50
    sget-object v5, Landroidx/camera/core/impl/ImageAnalysisConfig;->OPTION_OUTPUT_IMAGE_FORMAT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 51
    .line 52
    invoke-virtual {v4, v5, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 56
    .line 57
    sget-object v4, Landroidx/camera/core/impl/ImageAnalysisConfig;->OPTION_BACKPRESSURE_STRATEGY:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 68
    .line 69
    sget-object v4, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 70
    .line 71
    invoke-virtual {v3, v4, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 77
    .line 78
    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v2, p0}, Landroidx/camera/core/impl/ImageAnalysisConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->validateConfig(Landroidx/camera/core/impl/ImageOutputConfig;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/camera/core/ImageAnalysis;

    .line 89
    .line 90
    invoke-direct {p0, v2}, Landroidx/camera/core/ImageAnalysis;-><init>(Landroidx/camera/core/impl/ImageAnalysisConfig;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v4, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 101
    .line 102
    if-eqz v4, :cond_0

    .line 103
    .line 104
    new-instance v5, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v5, v1, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v2, v5}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setAnalyzer(Ljava/util/concurrent/ExecutorService;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;

    .line 116
    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    .line 120
    .line 121
    .line 122
    :cond_1
    iput-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 123
    .line 124
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;

    .line 125
    .line 126
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method
