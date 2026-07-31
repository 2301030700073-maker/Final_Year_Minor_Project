.class public final Landroidx/glance/appwidget/TranslationContext;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final actionBroadcastReceiver:Landroid/content/ComponentName;

.field public final actionTargetId:Ljava/lang/Integer;

.field public final appWidgetId:I

.field public final canUseSelectableGroup:Z

.field public final context:Landroid/content/Context;

.field public final isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isLazyCollectionDescendant:Z

.field public final isRtl:Z

.field public final itemPosition:I

.field public final lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final layoutCollectionViewId:I

.field public final layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

.field public final layoutSize:J

.field public final parentContext:Landroidx/glance/appwidget/InsertedViewInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLandroidx/glance/appwidget/LayoutConfiguration;IZLjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 11
    .line 12
    iput p5, p0, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    iput-wide p10, p0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 23
    .line 24
    iput p12, p0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 25
    .line 26
    iput-boolean p13, p0, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 27
    .line 28
    iput-object p14, p0, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object p15, p0, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 31
    .line 32
    return-void
.end method

.method public static copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p9

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    iget v2, v0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 9
    .line 10
    move-object v4, v3

    .line 11
    iget-boolean v3, v0, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 12
    .line 13
    move-object v5, v4

    .line 14
    iget-object v4, v0, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 15
    .line 16
    and-int/lit8 v6, v1, 0x10

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    iget v6, v0, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move/from16 v6, p1

    .line 24
    .line 25
    :goto_0
    and-int/lit8 v7, v1, 0x20

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    iget-boolean v7, v0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v7, v8

    .line 34
    :goto_1
    and-int/lit8 v9, v1, 0x40

    .line 35
    .line 36
    if-eqz v9, :cond_2

    .line 37
    .line 38
    iget-object v9, v0, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object/from16 v9, p2

    .line 42
    .line 43
    :goto_2
    and-int/lit16 v10, v1, 0x80

    .line 44
    .line 45
    if-eqz v10, :cond_3

    .line 46
    .line 47
    iget-object v10, v0, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v10, p3

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v11, v1, 0x100

    .line 53
    .line 54
    if-eqz v11, :cond_4

    .line 55
    .line 56
    iget-object v11, v0, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move-object/from16 v11, p4

    .line 60
    .line 61
    :goto_4
    and-int/lit16 v12, v1, 0x200

    .line 62
    .line 63
    if-eqz v12, :cond_5

    .line 64
    .line 65
    iget-wide v12, v0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_5
    move-wide/from16 v12, p5

    .line 69
    .line 70
    :goto_5
    and-int/lit16 v14, v1, 0x400

    .line 71
    .line 72
    if-eqz v14, :cond_6

    .line 73
    .line 74
    iget v14, v0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_6
    move/from16 v14, p7

    .line 78
    .line 79
    :goto_6
    and-int/lit16 v15, v1, 0x1000

    .line 80
    .line 81
    if-eqz v15, :cond_7

    .line 82
    .line 83
    iget-boolean v8, v0, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 84
    .line 85
    :cond_7
    and-int/lit16 v1, v1, 0x2000

    .line 86
    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    iget-object v1, v0, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_8
    move-object/from16 v1, p8

    .line 93
    .line 94
    :goto_7
    iget-object v15, v0, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 95
    .line 96
    new-instance v0, Landroidx/glance/appwidget/TranslationContext;

    .line 97
    .line 98
    move/from16 v16, v14

    .line 99
    .line 100
    move-object v14, v1

    .line 101
    move-object v1, v5

    .line 102
    move v5, v6

    .line 103
    move v6, v7

    .line 104
    move-object v7, v9

    .line 105
    move-object v9, v11

    .line 106
    move-wide/from16 v17, v12

    .line 107
    .line 108
    move v13, v8

    .line 109
    move-object v8, v10

    .line 110
    move-wide/from16 v10, v17

    .line 111
    .line 112
    move/from16 v12, v16

    .line 113
    .line 114
    invoke-direct/range {v0 .. v15}, Landroidx/glance/appwidget/TranslationContext;-><init>(Landroid/content/Context;IZLandroidx/glance/appwidget/LayoutConfiguration;IZLjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;Landroid/content/ComponentName;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/glance/appwidget/TranslationContext;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/glance/appwidget/TranslationContext;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_2
    iget v0, p0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 27
    .line 28
    iget v2, p1, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 29
    .line 30
    if-eq v0, v2, :cond_3

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_3
    iget-boolean v0, p0, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 35
    .line 36
    iget-boolean v2, p1, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 37
    .line 38
    if-eq v0, v2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 42
    .line 43
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 44
    .line 45
    if-eq v0, v2, :cond_5

    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    iget v0, p0, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 49
    .line 50
    iget v2, p1, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 51
    .line 52
    if-eq v0, v2, :cond_6

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    iget-boolean v0, p0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 56
    .line 57
    iget-boolean v2, p1, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 58
    .line 59
    if-eq v0, v2, :cond_7

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_7
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_8
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 74
    .line 75
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 76
    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_9

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_9
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_a

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_a
    iget-wide v2, p0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 96
    .line 97
    iget-wide v4, p1, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 98
    .line 99
    cmp-long v0, v2, v4

    .line 100
    .line 101
    if-nez v0, :cond_f

    .line 102
    .line 103
    iget v0, p0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 104
    .line 105
    iget v2, p1, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 106
    .line 107
    if-eq v0, v2, :cond_b

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_b
    iget-boolean v0, p0, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 111
    .line 112
    iget-boolean v2, p1, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 113
    .line 114
    if-eq v0, v2, :cond_c

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_c
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 118
    .line 119
    iget-object v2, p1, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_d

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_d
    iget-object p0, p0, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 129
    .line 130
    iget-object p1, p1, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 131
    .line 132
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-nez p0, :cond_e

    .line 137
    .line 138
    :goto_0
    return v1

    .line 139
    :cond_e
    :goto_1
    const/4 p0, 0x1

    .line 140
    return p0

    .line 141
    :cond_f
    return v1
.end method

.method public final forChild(Landroidx/glance/appwidget/InsertedViewInfo;I)Landroidx/glance/appwidget/TranslationContext;
    .locals 10

    .line 1
    const/4 v8, 0x0

    .line 2
    const/16 v9, 0x7f6f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const-wide/16 v5, 0x0

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v3, p1

    .line 11
    move v1, p2

    .line 12
    invoke-static/range {v0 .. v9}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 15
    .line 16
    const/16 v2, 0x4d5

    .line 17
    .line 18
    const/16 v3, 0x4cf

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    mul-int/lit8 v1, v1, 0x1f

    .line 36
    .line 37
    iget v0, p0, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 38
    .line 39
    add-int/2addr v1, v0

    .line 40
    mul-int/lit8 v1, v1, 0x1f

    .line 41
    .line 42
    iget-boolean v0, p0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v0, v2

    .line 49
    :goto_1
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/glance/appwidget/InsertedViewInfo;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v1, v0

    .line 68
    mul-int/lit8 v1, v1, 0x1f

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v0, v1

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    const/16 v1, 0x20

    .line 80
    .line 81
    iget-wide v4, p0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 82
    .line 83
    ushr-long v6, v4, v1

    .line 84
    .line 85
    xor-long/2addr v4, v6

    .line 86
    long-to-int v1, v4

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x1f

    .line 89
    .line 90
    iget v0, p0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 91
    .line 92
    add-int/2addr v1, v0

    .line 93
    mul-int/lit8 v1, v1, 0x1f

    .line 94
    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x1f

    .line 98
    .line 99
    iget-boolean v0, p0, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_2
    add-int/2addr v1, v2

    .line 105
    mul-int/lit8 v1, v1, 0x1f

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 109
    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    move v2, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    :goto_2
    add-int/2addr v1, v2

    .line 119
    mul-int/lit8 v1, v1, 0x1f

    .line 120
    .line 121
    iget-object p0, p0, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 122
    .line 123
    if-nez p0, :cond_4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    :goto_3
    add-int/2addr v1, v0

    .line 131
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TranslationContext(context="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", appWidgetId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isRtl="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/glance/appwidget/TranslationContext;->isRtl:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", layoutConfiguration="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", itemPosition="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isLazyCollectionDescendant="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", lastViewId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", parentContext="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", isBackgroundSpecified="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", layoutSize="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 99
    .line 100
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", layoutCollectionViewId="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Landroidx/glance/appwidget/TranslationContext;->layoutCollectionViewId:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", layoutCollectionItemId=-1, canUseSelectableGroup="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-boolean v1, p0, Landroidx/glance/appwidget/TranslationContext;->canUseSelectableGroup:Z

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", actionTargetId="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Landroidx/glance/appwidget/TranslationContext;->actionTargetId:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", actionBroadcastReceiver="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Landroidx/glance/appwidget/TranslationContext;->actionBroadcastReceiver:Landroid/content/ComponentName;

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const/16 p0, 0x29

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0
.end method
