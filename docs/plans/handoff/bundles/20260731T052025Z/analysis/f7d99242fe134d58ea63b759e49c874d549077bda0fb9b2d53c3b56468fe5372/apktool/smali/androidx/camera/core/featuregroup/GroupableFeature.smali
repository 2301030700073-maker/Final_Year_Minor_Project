.class public abstract Landroidx/camera/core/featuregroup/GroupableFeature;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;-><init>()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;
.end method

.method public isSupportedIndividually(Landroidx/camera/core/LegacySessionConfig;Landroidx/camera/core/impl/CameraInfoInternal;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
