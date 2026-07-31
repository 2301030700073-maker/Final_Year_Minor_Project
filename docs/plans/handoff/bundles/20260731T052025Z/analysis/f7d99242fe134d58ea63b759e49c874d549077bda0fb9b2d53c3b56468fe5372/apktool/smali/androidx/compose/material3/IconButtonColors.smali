.class public final Landroidx/compose/material3/IconButtonColors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final containerColor:J

.field public final contentColor:J

.field public final disabledContainerColor:J

.field public final disabledContentColor:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 9
    .line 10
    iput-wide p7, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;
    .locals 9

    .line 1
    const-wide/16 v1, 0x10

    .line 2
    .line 3
    cmp-long v3, p1, v1

    .line 4
    .line 5
    if-eqz v3, :cond_0

    .line 6
    .line 7
    move-wide v3, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v3, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 10
    .line 11
    :goto_0
    cmp-long v5, p3, v1

    .line 12
    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    move-wide v5, p3

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-wide v5, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 18
    .line 19
    :goto_1
    cmp-long v7, p5, v1

    .line 20
    .line 21
    if-eqz v7, :cond_2

    .line 22
    .line 23
    move-wide v7, p5

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    iget-wide v7, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 26
    .line 27
    :goto_2
    cmp-long v1, p7, v1

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-wide/from16 v0, p7

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 35
    .line 36
    :goto_3
    new-instance v2, Landroidx/compose/material3/IconButtonColors;

    .line 37
    .line 38
    move-wide/from16 p7, v0

    .line 39
    .line 40
    move-object p0, v2

    .line 41
    move-wide p1, v3

    .line 42
    move-wide p3, v5

    .line 43
    move-wide p5, v7

    .line 44
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    .line 45
    .line 46
    .line 47
    move-object v0, p0

    .line 48
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    instance-of v2, p1, Landroidx/compose/material3/IconButtonColors;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    check-cast p1, Landroidx/compose/material3/IconButtonColors;

    .line 14
    .line 15
    iget-wide v2, p1, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 16
    .line 17
    iget-wide v4, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 18
    .line 19
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 27
    .line 28
    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 29
    .line 30
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 38
    .line 39
    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 40
    .line 41
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    return v1

    .line 48
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 49
    .line 50
    iget-wide p0, p1, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 51
    .line 52
    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_5

    .line 57
    .line 58
    return v1

    .line 59
    :cond_5
    return v0

    .line 60
    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

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
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/2addr p0, v0

    .line 31
    return p0
.end method
