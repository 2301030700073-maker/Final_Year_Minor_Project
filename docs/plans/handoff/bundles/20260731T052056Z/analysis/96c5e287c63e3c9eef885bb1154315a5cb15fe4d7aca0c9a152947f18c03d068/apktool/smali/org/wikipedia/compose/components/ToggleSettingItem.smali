.class public final Lorg/wikipedia/compose/components/ToggleSettingItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final key:Ljava/lang/String;

.field public final subtitle:I

.field public final title:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->title:I

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->subtitle:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 12
    .line 13
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
    instance-of v1, p1, Lorg/wikipedia/compose/components/ToggleSettingItem;

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
    check-cast p1, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->title:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/compose/components/ToggleSettingItem;->title:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->subtitle:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/compose/components/ToggleSettingItem;->subtitle:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->title:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->subtitle:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", subtitle="

    .line 2
    .line 3
    const-string v1, ", key="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->title:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->subtitle:I

    .line 8
    .line 9
    const-string v4, "ToggleSettingItem(title="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
