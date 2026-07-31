.class public final Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;
.super Ljava/lang/Object;
.source "ComposeViewHierarchyNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeViewHierarchyNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,215:1\n652#2:216\n*S KotlinDebug\n*F\n+ 1 ComposeViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode\n*L\n104#1:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0014\u001a\u00020\u0015*\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000eH\u0002J\u001c\u0010\u0017\u001a\u00020\u000e*\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J$\u0010\u0018\u001a\u00020\u0019*\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;",
        "",
        "()V",
        "_rootCoordinates",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "fromComposeNode",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "node",
        "Landroidx/compose/ui/node/LayoutNode;",
        "parent",
        "distance",
        "",
        "isComposeRoot",
        "",
        "options",
        "Lio/sentry/SentryOptions;",
        "fromView",
        "view",
        "Landroid/view/View;",
        "getProxyClassName",
        "",
        "isImage",
        "shouldMask",
        "traverse",
        "",
        "parentNode",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;

.field private static _rootCoordinates:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;

    invoke-direct {v0}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;-><init>()V

    sput-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->INSTANCE:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fromComposeNode(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IZLio/sentry/SentryOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v2, p5

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz p4, :cond_0

    .line 81
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->_rootCoordinates:Ljava/lang/ref/WeakReference;

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v3

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    sget-object v6, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->_rootCoordinates:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/LayoutCoordinates;

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    invoke-static {v5, v6}, Lio/sentry/android/replay/util/NodesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroid/graphics/Rect;

    move-result-object v15

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    .line 87
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    :cond_2
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_3

    move/from16 v16, v7

    goto :goto_1

    :cond_3
    move/from16 v16, v6

    :goto_1
    if-eqz v3, :cond_4

    .line 89
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    const/4 v8, 0x0

    if-eqz v3, :cond_5

    .line 91
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    if-ne v9, v7, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_e

    :goto_3
    if-eqz v16, :cond_6

    .line 92
    invoke-direct {v0, v1, v6, v2}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->shouldMask(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v13, v7

    goto :goto_4

    :cond_6
    move v13, v6

    :goto_4
    if-eqz v12, :cond_7

    .line 94
    invoke-virtual {v12, v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setImportantForCaptureToAncestors(Z)V

    .line 97
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-eqz v3, :cond_8

    .line 98
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsActions;->getGetTextLayoutResult()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v3, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_8

    .line 100
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 102
    :cond_8
    invoke-static/range {p1 .. p1}, Lio/sentry/android/replay/util/NodesKt;->findTextAttributes(Landroidx/compose/ui/node/LayoutNode;)Lio/sentry/android/replay/util/TextAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/replay/util/TextAttributes;->component1-QN2ZGVo()Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    invoke-virtual {v3}, Lio/sentry/android/replay/util/TextAttributes;->component2()Z

    move-result v3

    .line 103
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v7

    goto :goto_5

    :cond_9
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_a

    .line 104
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    .line 216
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v17

    cmp-long v9, v9, v17

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    move-object v6, v7

    .line 109
    :goto_6
    new-instance v19, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 110
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    if-nez v5, :cond_b

    new-instance v5, Lio/sentry/android/replay/util/ComposeTextLayout;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-direct {v5, v2, v3}, Lio/sentry/android/replay/util/ComposeTextLayout;-><init>(Landroidx/compose/ui/text/TextLayoutResult;Z)V

    goto :goto_7

    :cond_b
    move-object v5, v4

    :goto_7
    move-object v2, v5

    check-cast v2, Lio/sentry/android/replay/util/TextLayout;

    if-eqz v6, :cond_c

    .line 111
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v3

    invoke-static {v3}, Lio/sentry/android/replay/util/ViewsKt;->toOpaque(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_c
    move-object v3, v4

    .line 112
    :goto_8
    iget v4, v15, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    .line 113
    iget v4, v15, Landroid/graphics/Rect;->top:I

    int-to-float v7, v4

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    move-result v9

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    move-result v10

    if-eqz v12, :cond_d

    .line 116
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v1

    move v11, v1

    goto :goto_9

    :cond_d
    move v11, v8

    :goto_9
    const/16 v17, 0xc

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, v19

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, p3

    move-object/from16 v12, p2

    move-object/from16 p4, v15

    move/from16 v15, v16

    move-object/from16 v16, p4

    .line 109
    invoke-direct/range {v1 .. v18}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;-><init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v19, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    goto/16 :goto_e

    :cond_e
    move-object/from16 p4, v15

    .line 126
    invoke-static/range {p1 .. p1}, Lio/sentry/android/replay/util/NodesKt;->findPainter(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    if-eqz v3, :cond_13

    if-eqz v16, :cond_f

    .line 128
    invoke-direct {v0, v1, v7, v2}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->shouldMask(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v7

    goto :goto_a

    :cond_f
    move v2, v6

    :goto_a
    if-eqz v12, :cond_10

    .line 130
    invoke-virtual {v12, v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setImportantForCaptureToAncestors(Z)V

    :cond_10
    move-object/from16 v13, p4

    .line 132
    iget v4, v13, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 133
    iget v5, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    move-result v9

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    move-result v10

    if-eqz v12, :cond_11

    .line 136
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v1

    move v8, v1

    :cond_11
    if-eqz v2, :cond_12

    .line 141
    invoke-static {v3}, Lio/sentry/android/replay/util/NodesKt;->isMaskable(Landroidx/compose/ui/graphics/painter/Painter;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v11, v7

    goto :goto_b

    :cond_12
    move v11, v6

    .line 131
    :goto_b
    new-instance v14, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    const/4 v15, 0x1

    move-object v1, v14

    move v2, v4

    move v3, v5

    move v4, v9

    move v5, v10

    move v6, v8

    move/from16 v7, p3

    move-object/from16 v8, p2

    move v9, v11

    move v10, v15

    move/from16 v11, v16

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    move-object/from16 v19, v14

    check-cast v19, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    goto :goto_e

    :cond_13
    move-object/from16 v13, p4

    if-eqz v16, :cond_14

    .line 145
    invoke-direct {v0, v1, v6, v2}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->shouldMask(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v9, v7

    goto :goto_c

    :cond_14
    move v9, v6

    .line 150
    :goto_c
    new-instance v14, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;

    .line 151
    iget v2, v13, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 152
    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    move-result v4

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    move-result v5

    if-eqz v12, :cond_15

    .line 155
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v1

    move v6, v1

    goto :goto_d

    :cond_15
    move v6, v8

    :goto_d
    const/4 v10, 0x0

    move-object v1, v14

    move/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v11, v16

    move-object v12, v13

    .line 150
    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    move-object/from16 v19, v14

    check-cast v19, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    :goto_e
    return-object v19

    :cond_16
    return-object v4
.end method

.method private final getProxyClassName(Landroidx/compose/ui/node/LayoutNode;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 41
    const-string p1, "android.widget.ImageView"

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p1

    if-ne p1, v0, :cond_2

    :goto_0
    const-string p1, "android.widget.TextView"

    goto :goto_1

    .line 44
    :cond_2
    const-string p1, "android.view.View"

    :goto_1
    return-object p1
.end method

.method private final shouldMask(Landroidx/compose/ui/node/LayoutNode;ZLio/sentry/SentryOptions;)Z
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/sentry/android/replay/SentryReplayModifiers;->INSTANCE:Lio/sentry/android/replay/SentryReplayModifiers;

    invoke-virtual {v1}, Lio/sentry/android/replay/SentryReplayModifiers;->getSentryPrivacy()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    const-string v1, "unmask"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 54
    :cond_1
    const-string v1, "mask"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->getProxyClassName(Landroidx/compose/ui/node/LayoutNode;Z)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getUnmaskViewClasses()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    .line 63
    :cond_3
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final traverse(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryOptions;)V
    .locals 11

    .line 198
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v1, :cond_2

    .line 205
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    move-object v3, p0

    move-object v4, v10

    move-object v5, p2

    move v6, v9

    move v7, p3

    move-object v8, p4

    .line 206
    invoke-direct/range {v3 .. v8}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->fromComposeNode(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IZLio/sentry/SentryOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0, v10, v3, v2, p4}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->traverse(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryOptions;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 212
    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setChildren(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryOptions;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "AndroidComposeView"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-nez p2, :cond_1

    return v2

    .line 178
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_2

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/node/Owner;

    :cond_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 179
    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->traverse(Landroidx/compose/ui/node/LayoutNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZLio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_4
    :goto_0
    return v2

    :catchall_0
    move-exception p1

    .line 181
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    .line 182
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 189
    const-string v0, "Error traversing Compose tree. Most likely you\'re using an unsupported version of\nandroidx.compose.ui:ui. The minimum supported version is 1.5.0. If it\'s a newer\nversion, please open a github issue with the version you\'re using, so we can add\nsupport for it."

    new-array v1, v2, [Ljava/lang/Object;

    .line 181
    invoke-interface {p2, p3, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
