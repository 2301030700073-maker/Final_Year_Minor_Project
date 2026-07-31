.class public final Lnet/newpipe/app/screen/settings/model/SettingsCategory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final icon:Lorg/jetbrains/compose/resources/DrawableResource;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final title:Lorg/jetbrains/compose/resources/StringResource;


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 16
    .line 17
    iput-object p3, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
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
    instance-of v1, p1, Lnet/newpipe/app/screen/settings/model/SettingsCategory;

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
    check-cast p1, Lnet/newpipe/app/screen/settings/model/SettingsCategory;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    iget-object p1, p1, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jetbrains/compose/resources/Resource;->id:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 13
    .line 14
    iget-object v2, v2, Lorg/jetbrains/compose/resources/Resource;->id:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/2addr p0, v0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SettingsCategory(title="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->title:Lorg/jetbrains/compose/resources/StringResource;

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
    iget-object v1, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->icon:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", onClick="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lnet/newpipe/app/screen/settings/model/SettingsCategory;->onClick:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
