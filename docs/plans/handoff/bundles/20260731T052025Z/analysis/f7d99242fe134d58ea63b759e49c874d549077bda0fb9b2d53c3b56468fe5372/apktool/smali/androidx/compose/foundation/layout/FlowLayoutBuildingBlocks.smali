.class public final Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final constraints:J

.field public final crossAxisSpacing:I

.field public final mainAxisSpacing:I

.field public final maxLines:I

.field public final overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->constraints:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxLines:I

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->mainAxisSpacing:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->crossAxisSpacing:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/OffsetKt;
    .locals 0

    .line 1
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .locals 14

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    move/from16 v3, p8

    .line 8
    .line 9
    add-int v7, p7, v3

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 15
    .line 16
    invoke-direct {p0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-wide v4, v1, Landroidx/collection/IntIntPair;->packedValue:J

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxLines:I

    .line 28
    .line 29
    if-lt v2, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide v8, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long v12, p3, v8

    .line 38
    .line 39
    long-to-int v1, v12

    .line 40
    and-long v12, v4, v8

    .line 41
    .line 42
    long-to-int v6, v12

    .line 43
    sub-int/2addr v1, v6

    .line 44
    if-gez v1, :cond_2

    .line 45
    .line 46
    :goto_0
    new-instance p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 47
    .line 48
    invoke-direct {p0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const v1, 0x7fffffff

    .line 56
    .line 57
    .line 58
    const/16 v6, 0x20

    .line 59
    .line 60
    if-lt v0, v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    shr-long v0, p3, v6

    .line 64
    .line 65
    long-to-int v0, v0

    .line 66
    shr-long v12, v4, v6

    .line 67
    .line 68
    long-to-int v1, v12

    .line 69
    sub-int/2addr v0, v1

    .line 70
    if-gez v0, :cond_6

    .line 71
    .line 72
    :goto_1
    if-eqz p9, :cond_5

    .line 73
    .line 74
    new-instance p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 75
    .line 76
    invoke-direct {p0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_5
    iget-wide v0, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->constraints:J

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    and-long v12, p3, v8

    .line 87
    .line 88
    long-to-int v1, v12

    .line 89
    iget v10, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->crossAxisSpacing:I

    .line 90
    .line 91
    sub-int/2addr v1, v10

    .line 92
    sub-int/2addr v1, v3

    .line 93
    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    shr-long v12, v4, v6

    .line 98
    .line 99
    long-to-int v3, v12

    .line 100
    iget v6, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->mainAxisSpacing:I

    .line 101
    .line 102
    sub-int/2addr v3, v6

    .line 103
    and-long/2addr v4, v8

    .line 104
    long-to-int v4, v4

    .line 105
    invoke-static {v3, v4}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    new-instance v5, Landroidx/collection/IntIntPair;

    .line 110
    .line 111
    invoke-direct {v5, v3, v4}, Landroidx/collection/IntIntPair;-><init>(J)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v6, v2, 0x1

    .line 115
    .line 116
    const/4 v9, 0x1

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    move-wide v3, v0

    .line 121
    move-object v0, p0

    .line 122
    move v1, p1

    .line 123
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 128
    .line 129
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    .line 130
    .line 131
    invoke-direct {p1, v11, p0}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    .line 132
    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_6
    :goto_2
    and-long p0, v4, v8

    .line 136
    .line 137
    long-to-int p0, p0

    .line 138
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    new-instance p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    .line 142
    .line 143
    const/4 p1, 0x0

    .line 144
    invoke-direct {p0, p1, p1}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    .line 145
    .line 146
    .line 147
    return-object p0
.end method
