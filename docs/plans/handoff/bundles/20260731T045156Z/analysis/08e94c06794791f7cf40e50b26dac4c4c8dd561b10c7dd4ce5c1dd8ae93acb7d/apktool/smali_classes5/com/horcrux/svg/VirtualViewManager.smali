.class Lcom/horcrux/svg/VirtualViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/VirtualViewManager$SVGClass;,
        Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/horcrux/svg/VirtualView;",
        ">",
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/horcrux/svg/VirtualView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F = 5.0f

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final mTagToRenderableView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/horcrux/svg/RenderableView;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTagToRunnable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

.field private static final sTransformDecompositionArray:[D


# instance fields
.field protected final mClassName:Ljava/lang/String;

.field protected mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;


# direct methods
.method static bridge synthetic -$$Nest$minvalidateSvgView(Lcom/horcrux/svg/VirtualViewManager;Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    const/16 v0, 0x10

    .line 248
    new-array v0, v0, [D

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 559
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 560
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 159
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    return-void
.end method

.method static getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 576
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/RenderableView;

    return-object p0
.end method

.method private invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 424
    :cond_0
    instance-of v0, p1, Lcom/horcrux/svg/TextView;

    if-eqz v0, :cond_1

    .line 425
    check-cast p1, Lcom/horcrux/svg/TextView;

    invoke-virtual {p1}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/horcrux/svg/TextView;->clearChildCache()V

    :cond_1
    return-void
.end method

.method static runWhenViewIsAvailable(ILjava/lang/Runnable;)V
    .locals 1

    .line 572
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static sanitizeFloatPropertyValue(F)F
    .locals 3

    const v0, -0x800001

    cmpl-float v1, p0, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-ltz v1, :cond_0

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_0

    return p0

    :cond_0
    cmpg-float v1, p0, v0

    if-ltz v1, :cond_5

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v0, p0, v2

    if-gtz v0, :cond_4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 267
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid float property value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method static setRenderableView(ILcom/horcrux/svg/RenderableView;)V
    .locals 1

    .line 563
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    sget-object p1, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 567
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    check-cast p2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 432
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 433
    new-instance p1, Lcom/horcrux/svg/VirtualViewManager$1;

    invoke-direct {p1, p0}, Lcom/horcrux/svg/VirtualViewManager$1;-><init>(Lcom/horcrux/svg/VirtualViewManager;)V

    invoke-virtual {p2, p1}, Lcom/horcrux/svg/VirtualView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 238
    new-instance v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    invoke-direct {v0}, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;
    .locals 2
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 497
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager$2;->$SwitchMap$com$horcrux$svg$VirtualViewManager$SVGClass:[I

    iget-object v1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :pswitch_0
    new-instance v0, Lcom/horcrux/svg/ForeignObjectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ForeignObjectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 551
    :pswitch_1
    new-instance v0, Lcom/horcrux/svg/MarkerView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MarkerView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 549
    :pswitch_2
    new-instance v0, Lcom/horcrux/svg/FeOffsetView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeOffsetView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 547
    :pswitch_3
    new-instance v0, Lcom/horcrux/svg/FeMergeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeMergeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 545
    :pswitch_4
    new-instance v0, Lcom/horcrux/svg/FeGaussianBlurView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeGaussianBlurView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 543
    :pswitch_5
    new-instance v0, Lcom/horcrux/svg/FeFloodView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeFloodView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 541
    :pswitch_6
    new-instance v0, Lcom/horcrux/svg/FeCompositeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeCompositeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 539
    :pswitch_7
    new-instance v0, Lcom/horcrux/svg/FeColorMatrixView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeColorMatrixView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 537
    :pswitch_8
    new-instance v0, Lcom/horcrux/svg/FeBlendView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeBlendView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 535
    :pswitch_9
    new-instance v0, Lcom/horcrux/svg/FilterView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FilterView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 533
    :pswitch_a
    new-instance v0, Lcom/horcrux/svg/MaskView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MaskView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 531
    :pswitch_b
    new-instance v0, Lcom/horcrux/svg/PatternView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PatternView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 529
    :pswitch_c
    new-instance v0, Lcom/horcrux/svg/RadialGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RadialGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 527
    :pswitch_d
    new-instance v0, Lcom/horcrux/svg/LinearGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LinearGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 525
    :pswitch_e
    new-instance v0, Lcom/horcrux/svg/SymbolView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/SymbolView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 523
    :pswitch_f
    new-instance v0, Lcom/horcrux/svg/UseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/UseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 521
    :pswitch_10
    new-instance v0, Lcom/horcrux/svg/DefsView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/DefsView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 519
    :pswitch_11
    new-instance v0, Lcom/horcrux/svg/ClipPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ClipPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 517
    :pswitch_12
    new-instance v0, Lcom/horcrux/svg/ImageView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ImageView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 515
    :pswitch_13
    new-instance v0, Lcom/horcrux/svg/TextPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 513
    :pswitch_14
    new-instance v0, Lcom/horcrux/svg/TSpanView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TSpanView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 511
    :pswitch_15
    new-instance v0, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 509
    :pswitch_16
    new-instance v0, Lcom/horcrux/svg/RectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 507
    :pswitch_17
    new-instance v0, Lcom/horcrux/svg/LineView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LineView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 505
    :pswitch_18
    new-instance v0, Lcom/horcrux/svg/EllipseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/EllipseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 503
    :pswitch_19
    new-instance v0, Lcom/horcrux/svg/CircleView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/CircleView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 501
    :pswitch_1a
    new-instance v0, Lcom/horcrux/svg/PathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 499
    :pswitch_1b
    new-instance v0, Lcom/horcrux/svg/GroupView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 243
    const-class v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V
    .locals 0
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 459
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 152
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V
    .locals 1
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 581
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    .line 582
    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipPath(Ljava/lang/String;)V

    return-void
.end method

.method public setClipRule(Lcom/horcrux/svg/VirtualView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipRule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipRule(I)V

    return-void
.end method

.method public setDisplay(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "display"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerEnd(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerEnd"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 348
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerEnd(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerMid(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerMid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 343
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerMid(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerStart(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerStart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerStart(Ljava/lang/String;)V

    return-void
.end method

.method public setMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMask(Ljava/lang/String;)V

    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setName(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 384
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setOpacity(Lcom/horcrux/svg/VirtualView;F)V
    .locals 0
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;F)V"
        }
    .end annotation

    .line 363
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setOpacity(F)V

    return-void
.end method

.method public setPointerEvents(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 374
    sget-object p2, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    goto :goto_0

    .line 376
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 377
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/react/uimanager/PointerEvents;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object p2

    .line 378
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    :goto_0
    return-void
.end method

.method public setResponsible(Lcom/horcrux/svg/VirtualView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 368
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setResponsible(Z)V

    return-void
.end method

.method public bridge synthetic setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 152
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 412
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-eq v0, v1, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransformProperty(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 405
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 406
    iput-object p2, p1, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 407
    iget-object v0, p1, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    return-void
.end method

.method protected setTransformProperty(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 272
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setTranslationX(F)V

    .line 273
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setTranslationY(F)V

    .line 274
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotation(F)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotationX(F)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setRotationY(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 277
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setScaleX(F)V

    .line 278
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setScaleY(F)V

    .line 279
    invoke-virtual {p1, v0}, Lcom/horcrux/svg/VirtualView;->setCameraDistance(F)V

    return-void

    .line 283
    :cond_0
    sget-object v1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->reset()V

    .line 284
    sget-object v8, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 285
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, v8

    .line 284
    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V

    .line 286
    invoke-static {v8, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V

    .line 287
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v2, 0x0

    aget-wide v3, p2, v2

    double-to-float p2, v3

    .line 289
    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    .line 288
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    .line 287
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setTranslationX(F)V

    .line 290
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    double-to-float p2, v4

    .line 292
    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    .line 291
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    .line 290
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setTranslationY(F)V

    .line 293
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    const/4 v4, 0x2

    aget-wide v5, p2, v4

    double-to-float p2, v5

    .line 294
    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    .line 293
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setRotation(F)V

    .line 295
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, p2, v2

    double-to-float p2, v5

    .line 296
    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    .line 295
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setRotationX(F)V

    .line 297
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v5, p2, v3

    double-to-float p2, v5

    .line 298
    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    .line 297
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setRotationY(F)V

    .line 299
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v5, p2, v2

    double-to-float p2, v5

    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setScaleX(F)V

    .line 300
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    aget-wide v2, p2, v3

    double-to-float p2, v2

    invoke-static {p2}, Lcom/horcrux/svg/VirtualViewManager;->sanitizeFloatPropertyValue(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setScaleY(F)V

    .line 302
    iget-object p2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 304
    array-length v1, p2

    if-le v1, v4, :cond_2

    .line 305
    aget-wide v1, p2, v4

    double-to-float p2, v1

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const p2, 0x3a4ccccd

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, p2

    .line 312
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p2

    mul-float/2addr p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p2, v0

    .line 322
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setCameraDistance(F)V

    :cond_2
    return-void
.end method
