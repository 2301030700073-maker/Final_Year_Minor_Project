.class Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/TextLayoutAlgorithm;->layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharacterPositioningResolver"
.end annotation


# instance fields
.field private global:I

.field private horizontal:Z

.field private in_text_path:Z

.field private resolve_dx:[Ljava/lang/String;

.field private resolve_dy:[Ljava/lang/String;

.field private resolve_x:[Ljava/lang/String;

.field private resolve_y:[Ljava/lang/String;

.field private result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

.field final synthetic this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;


# direct methods
.method private constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 254
    iput p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    .line 256
    iput-boolean p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    .line 269
    iput-object p2, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    .line 270
    iput-object p3, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    .line 272
    iput-object p5, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    .line 273
    iput-object p6, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/horcrux/svg/TextLayoutAlgorithm-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TSpanView;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 467
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextPathView;

    if-ne v2, v3, :cond_d

    .line 468
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 475
    iget-object v3, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v3, v2

    iput-boolean v4, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 479
    iput-boolean v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    move v2, v5

    .line 485
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/TextView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 486
    invoke-virtual {v1, v2}, Lcom/horcrux/svg/TextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, v3}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    instance-of v1, v1, Lcom/horcrux/svg/TextPathView;

    if-eqz v1, :cond_d

    .line 495
    iput-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    goto/16 :goto_6

    .line 285
    :cond_2
    :goto_1
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 294
    new-array v3, v5, [Ljava/lang/String;

    .line 297
    new-array v6, v5, [Ljava/lang/String;

    .line 303
    new-array v7, v5, [Ljava/lang/String;

    .line 306
    new-array v8, v5, [Ljava/lang/String;

    .line 312
    new-array v9, v5, [D

    .line 320
    iget-boolean v10, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    if-nez v10, :cond_3

    .line 321
    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v5

    .line 349
    :goto_2
    check-cast v1, Lcom/horcrux/svg/TSpanView;

    iget-object v1, v1, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v5

    goto :goto_3

    .line 350
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_3
    move v11, v5

    move v12, v11

    :goto_4
    if-ge v11, v1, :cond_d

    .line 370
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v14, v2, v11

    aget-object v13, v13, v14

    iget-boolean v13, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v13, :cond_c

    .line 382
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v13, v13, v14

    if-ge v12, v10, :cond_5

    move v15, v4

    goto :goto_5

    :cond_5
    move v15, v5

    :goto_5
    iput-boolean v15, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-gez v12, :cond_6

    .line 390
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    aget-object v15, v3, v12

    aput-object v15, v13, v14

    .line 401
    :cond_6
    iget-boolean v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    const-string v15, ""

    if-eqz v13, :cond_7

    iget-boolean v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-nez v4, :cond_7

    .line 402
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    aput-object v15, v4, v2

    :cond_7
    if-gez v12, :cond_8

    .line 411
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    aget-object v16, v6, v12

    aput-object v16, v4, v14

    :cond_8
    if-eqz v13, :cond_9

    .line 421
    iget-boolean v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-eqz v4, :cond_9

    .line 422
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    aput-object v15, v4, v2

    :cond_9
    if-gez v12, :cond_a

    .line 430
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    aget-object v13, v7, v12

    aput-object v13, v4, v14

    :cond_a
    if-gez v12, :cond_b

    .line 438
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    aget-object v13, v8, v12

    aput-object v13, v4, v14

    :cond_b
    if-gez v12, :cond_c

    .line 449
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v4, v4, v14

    aget-wide v13, v9, v12

    iput-wide v13, v4, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    :cond_c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    return-void
.end method
