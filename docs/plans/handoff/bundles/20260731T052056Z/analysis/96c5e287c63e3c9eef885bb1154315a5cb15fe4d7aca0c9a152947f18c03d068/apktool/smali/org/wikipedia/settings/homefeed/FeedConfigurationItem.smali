.class public final Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final description:I

.field public final icon:I

.field public final title:I

.field public final type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;


# direct methods
.method public constructor <init>(IIILorg/wikipedia/settings/homefeed/FeedConfigurationType;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 10
    .line 11
    iget v0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 12
    .line 13
    iget v1, p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 19
    .line 20
    iget v1, p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget v0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 26
    .line 27
    iget v1, p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 35
    .line 36
    if-eq p0, p1, :cond_5

    .line 37
    .line 38
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", description="

    .line 2
    .line 3
    const-string v1, ", icon="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->title:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->description:I

    .line 8
    .line 9
    const-string v4, "FeedConfigurationItem(title="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->icon:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", type="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;->type:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
