.class public final Landroidx/glance/appwidget/ContainerSelector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

.field public final numChildren:I

.field public final type:Landroidx/glance/appwidget/LayoutType;

.field public final verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/glance/appwidget/ContainerSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 18
    iput p2, p0, Landroidx/glance/appwidget/ContainerSelector;->numChildren:I

    .line 19
    iput-object p3, p0, Landroidx/glance/appwidget/ContainerSelector;->horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

    .line 20
    iput-object p4, p0, Landroidx/glance/appwidget/ContainerSelector;->verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p3, v1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v1

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/glance/appwidget/ContainerSelector;-><init>(Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)V

    .line 13
    .line 14
    .line 15
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
    instance-of v1, p1, Landroidx/glance/appwidget/ContainerSelector;

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
    check-cast p1, Landroidx/glance/appwidget/ContainerSelector;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/glance/appwidget/ContainerSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/glance/appwidget/ContainerSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/glance/appwidget/ContainerSelector;->numChildren:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/glance/appwidget/ContainerSelector;->numChildren:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Landroidx/glance/appwidget/ContainerSelector;->horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

    .line 28
    .line 29
    iget-object v3, p1, Landroidx/glance/appwidget/ContainerSelector;->horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object p0, p0, Landroidx/glance/appwidget/ContainerSelector;->verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;

    .line 39
    .line 40
    iget-object p1, p1, Landroidx/glance/appwidget/ContainerSelector;->verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;

    .line 41
    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/ContainerSelector;->type:Landroidx/glance/appwidget/LayoutType;

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
    iget v1, p0, Landroidx/glance/appwidget/ContainerSelector;->numChildren:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Landroidx/glance/appwidget/ContainerSelector;->horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, v2, Landroidx/glance/layout/Alignment$Horizontal;->value:I

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/glance/appwidget/ContainerSelector;->verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v1, p0, Landroidx/glance/layout/Alignment$Vertical;->value:I

    .line 32
    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ContainerSelector(type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/glance/appwidget/ContainerSelector;->type:Landroidx/glance/appwidget/LayoutType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", numChildren="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/glance/appwidget/ContainerSelector;->numChildren:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", horizontalAlignment="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/glance/appwidget/ContainerSelector;->horizontalAlignment:Landroidx/glance/layout/Alignment$Horizontal;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", verticalAlignment="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/glance/appwidget/ContainerSelector;->verticalAlignment:Landroidx/glance/layout/Alignment$Vertical;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 p0, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
