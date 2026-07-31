.class public final Landroidx/glance/appwidget/BoxChildSelector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final horizontalAlignment:I

.field public final type:Landroidx/glance/appwidget/LayoutType;

.field public final verticalAlignment:I


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/LayoutType;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/BoxChildSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 5
    .line 6
    iput p2, p0, Landroidx/glance/appwidget/BoxChildSelector;->horizontalAlignment:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/glance/appwidget/BoxChildSelector;->verticalAlignment:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/glance/appwidget/BoxChildSelector;

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
    check-cast p1, Landroidx/glance/appwidget/BoxChildSelector;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/glance/appwidget/BoxChildSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/glance/appwidget/BoxChildSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/glance/appwidget/BoxChildSelector;->horizontalAlignment:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/glance/appwidget/BoxChildSelector;->horizontalAlignment:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_3

    .line 25
    .line 26
    iget p0, p0, Landroidx/glance/appwidget/BoxChildSelector;->verticalAlignment:I

    .line 27
    .line 28
    iget p1, p1, Landroidx/glance/appwidget/BoxChildSelector;->verticalAlignment:I

    .line 29
    .line 30
    if-ne p0, p1, :cond_3

    .line 31
    .line 32
    return v0

    .line 33
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/BoxChildSelector;->type:Landroidx/glance/appwidget/LayoutType;

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
    iget v1, p0, Landroidx/glance/appwidget/BoxChildSelector;->horizontalAlignment:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget p0, p0, Landroidx/glance/appwidget/BoxChildSelector;->verticalAlignment:I

    .line 15
    .line 16
    add-int/2addr v0, p0

    .line 17
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoxChildSelector(type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/glance/appwidget/BoxChildSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", horizontalAlignment="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/glance/appwidget/BoxChildSelector;->horizontalAlignment:I

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/glance/layout/Alignment$Horizontal;->toString-impl(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", verticalAlignment="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Landroidx/glance/appwidget/BoxChildSelector;->verticalAlignment:I

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/glance/layout/Alignment$Vertical;->toString-impl(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x29

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
