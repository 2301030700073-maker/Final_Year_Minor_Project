.class public final Landroidx/compose/material3/ChipColors;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final containerColor:J

.field public final disabledContainerColor:J

.field public final disabledLabelColor:J

.field public final disabledLeadingIconContentColor:J

.field public final disabledTrailingIconContentColor:J

.field public final labelColor:J

.field public final leadingIconContentColor:J

.field public final trailingIconContentColor:J


# direct methods
.method public constructor <init>(JJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/ChipColors;->containerColor:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/compose/material3/ChipColors;->labelColor:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/compose/material3/ChipColors;->leadingIconContentColor:J

    .line 9
    .line 10
    iput-wide p7, p0, Landroidx/compose/material3/ChipColors;->trailingIconContentColor:J

    .line 11
    .line 12
    iput-wide p9, p0, Landroidx/compose/material3/ChipColors;->disabledContainerColor:J

    .line 13
    .line 14
    iput-wide p11, p0, Landroidx/compose/material3/ChipColors;->disabledLabelColor:J

    .line 15
    .line 16
    iput-wide p13, p0, Landroidx/compose/material3/ChipColors;->disabledLeadingIconContentColor:J

    .line 17
    .line 18
    move-wide p1, p15

    .line 19
    iput-wide p1, p0, Landroidx/compose/material3/ChipColors;->disabledTrailingIconContentColor:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_a

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/compose/material3/ChipColors;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    check-cast p1, Landroidx/compose/material3/ChipColors;

    .line 13
    .line 14
    iget-wide v0, p1, Landroidx/compose/material3/ChipColors;->containerColor:J

    .line 15
    .line 16
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 17
    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->containerColor:J

    .line 19
    .line 20
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->labelColor:J

    .line 28
    .line 29
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->labelColor:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->leadingIconContentColor:J

    .line 39
    .line 40
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->leadingIconContentColor:J

    .line 41
    .line 42
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->trailingIconContentColor:J

    .line 50
    .line 51
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->trailingIconContentColor:J

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->disabledContainerColor:J

    .line 61
    .line 62
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->disabledContainerColor:J

    .line 63
    .line 64
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->disabledLabelColor:J

    .line 72
    .line 73
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->disabledLabelColor:J

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_7
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->disabledLeadingIconContentColor:J

    .line 83
    .line 84
    iget-wide v2, p1, Landroidx/compose/material3/ChipColors;->disabledLeadingIconContentColor:J

    .line 85
    .line 86
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->disabledTrailingIconContentColor:J

    .line 94
    .line 95
    iget-wide p0, p1, Landroidx/compose/material3/ChipColors;->disabledTrailingIconContentColor:J

    .line 96
    .line 97
    invoke-static {v0, v1, p0, p1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_9

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    :goto_0
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :cond_a
    :goto_1
    const/4 p0, 0x0

    .line 107
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/compose/material3/ChipColors;->containerColor:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->labelColor:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->leadingIconContentColor:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->trailingIconContentColor:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->disabledContainerColor:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->disabledLabelColor:J

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-wide v2, p0, Landroidx/compose/material3/ChipColors;->disabledLeadingIconContentColor:J

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-wide v1, p0, Landroidx/compose/material3/ChipColors;->disabledTrailingIconContentColor:J

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/2addr p0, v0

    .line 55
    return p0
.end method
