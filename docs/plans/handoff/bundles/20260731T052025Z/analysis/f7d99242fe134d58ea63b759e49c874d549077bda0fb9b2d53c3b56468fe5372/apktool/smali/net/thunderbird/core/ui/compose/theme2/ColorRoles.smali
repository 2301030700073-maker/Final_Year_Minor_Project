.class public final Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accent:J

.field public final accentContainer:J

.field public final onAccent:J

.field public final onAccentContainer:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

    .line 5
    .line 6
    iput-wide p3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 7
    .line 8
    iput-wide p5, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accentContainer:J

    .line 9
    .line 10
    iput-wide p7, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccentContainer:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;

    .line 12
    .line 13
    iget-wide v3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

    .line 14
    .line 15
    iget-wide v5, p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

    .line 16
    .line 17
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 25
    .line 26
    iget-wide v5, p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accentContainer:J

    .line 36
    .line 37
    iget-wide v5, p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accentContainer:J

    .line 38
    .line 39
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccentContainer:J

    .line 47
    .line 48
    iget-wide p0, p1, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccentContainer:J

    .line 49
    .line 50
    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    iget-wide v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

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
    iget-wide v2, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accentContainer:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccentContainer:J

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

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accent:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccent:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->accentContainer:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Lnet/thunderbird/core/ui/compose/theme2/ColorRoles;->onAccentContainer:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v3, ", onAccent="

    .line 26
    .line 27
    const-string v4, ", accentContainer="

    .line 28
    .line 29
    const-string v5, "ColorRoles(accent="

    .line 30
    .line 31
    invoke-static {v5, v0, v3, v1, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", onAccentContainer="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, ")"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
