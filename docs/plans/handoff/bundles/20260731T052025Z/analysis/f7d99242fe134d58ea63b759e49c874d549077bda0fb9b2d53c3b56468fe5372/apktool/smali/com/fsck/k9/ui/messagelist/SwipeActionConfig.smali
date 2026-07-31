.class public final Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionName:Ljava/lang/String;

.field public final actionNameToggled:Ljava/lang/String;

.field public final backgroundColor:I

.field public final colorRoles:Lcom/google/android/material/color/ColorRoles;

.field public final foregroundColor:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final iconToggled:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/ColorRoles;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->colorRoles:Lcom/google/android/material/color/ColorRoles;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 13
    .line 14
    iget p2, p1, Lcom/google/android/material/color/ColorRoles;->accent:I

    .line 15
    .line 16
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->foregroundColor:I

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/material/color/ColorRoles;->onAccent:I

    .line 19
    .line 20
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->backgroundColor:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->colorRoles:Lcom/google/android/material/color/ColorRoles;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->colorRoles:Lcom/google/android/material/color/ColorRoles;

    .line 15
    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_6

    .line 61
    .line 62
    :goto_0
    return v1

    .line 63
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 64
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->colorRoles:Lcom/google/android/material/color/ColorRoles;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_1
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_2
    add-int/2addr v0, v2

    .line 51
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SwipeActionConfig(colorRoles="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->colorRoles:Lcom/google/android/material/color/ColorRoles;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", icon="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->icon:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", iconToggled="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->iconToggled:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", actionName="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", actionNameToggled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ")"

    .line 49
    .line 50
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/SwipeActionConfig;->actionNameToggled:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
