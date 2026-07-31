.class public final Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field private static final LocalCoilImageLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dsT-3H_sfWv18ZUUJcsPD8YvP9w()Lcoil3/ImageLoader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;->LocalCoilImageLoader$lambda$0()Lcoil3/ImageLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;->LocalCoilImageLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 13
    .line 14
    return-void
.end method

.method private static final LocalCoilImageLoader$lambda$0()Lcoil3/ImageLoader;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public static final getLocalCoilImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;->LocalCoilImageLoader:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method
