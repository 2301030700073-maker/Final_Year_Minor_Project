.class public final Landroidx/navigation3/scene/SinglePaneScene;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/navigation3/scene/Scene;


# instance fields
.field public final content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final entries:Ljava/util/List;

.field public final entry:Landroidx/navigation3/runtime/NavEntry;

.field public final key:Ljava/lang/Object;

.field public final previousEntries:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/navigation3/runtime/NavEntry;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/16 p2, 0xd

    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 24
    .line 25
    const p3, -0x133f1fe3

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-direct {p2, p3, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Landroidx/navigation3/scene/SinglePaneScene;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    const-class v0, Landroidx/navigation3/scene/SinglePaneScene;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Landroidx/navigation3/scene/SinglePaneScene;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 28
    .line 29
    iget-object v1, p1, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 38
    .line 39
    iget-object v1, p1, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    :goto_0
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final getContent()Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEntries()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/navigation3/scene/SinglePaneScene;->getEntries()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/navigation3/runtime/NavEntry;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/navigation3/runtime/NavEntry;->metadata:Ljava/util/Map;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0

    .line 19
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getPreviousEntries()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

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
    iget-object v1, p0, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/navigation3/runtime/NavEntry;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    add-int/2addr v1, v0

    .line 18
    iget-object v0, p0, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    mul-int/lit8 p0, p0, 0x1f

    .line 34
    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SinglePaneScene(key="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/navigation3/scene/SinglePaneScene;->key:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", entry="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", previousEntries="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/navigation3/scene/SinglePaneScene;->previousEntries:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", entries="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/navigation3/scene/SinglePaneScene;->entries:Ljava/util/List;

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
