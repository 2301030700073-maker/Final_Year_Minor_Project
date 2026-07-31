.class public final Lorg/wikipedia/language/LangLinksItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final articleName:Ljava/lang/String;

.field public final canonicalName:Ljava/lang/String;

.field public final headerText:Ljava/lang/String;

.field public final languageCode:Ljava/lang/String;

.field public final localizedName:Ljava/lang/String;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final subtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p7, 0x2

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object p2, v2

    .line 14
    :cond_1
    and-int/lit8 v0, p7, 0x4

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    move-object p3, v2

    .line 19
    :cond_2
    and-int/lit8 v0, p7, 0x8

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    move-object p4, v2

    .line 24
    :cond_3
    and-int/lit8 v0, p7, 0x10

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    move-object p5, v1

    .line 29
    :cond_4
    and-int/lit8 p7, p7, 0x40

    .line 30
    .line 31
    if-eqz p7, :cond_5

    .line 32
    .line 33
    move-object p6, v2

    .line 34
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p3, p0, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p4, p0, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p5, p0, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v2, p0, Lorg/wikipedia/language/LangLinksItem;->subtitle:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p6, p0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 56
    .line 57
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
    instance-of v0, p1, Lorg/wikipedia/language/LangLinksItem;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/language/LangLinksItem;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->subtitle:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p1, Lorg/wikipedia/language/LangLinksItem;->subtitle:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 78
    .line 79
    iget-object p1, p1, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_8

    .line 86
    .line 87
    :goto_0
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v1, v2

    .line 15
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    add-int/2addr v1, v0

    .line 43
    mul-int/2addr v1, v2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksItem;->subtitle:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    add-int/2addr p0, v0

    .line 57
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LangLinksItem(pageTitle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksItem;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", articleName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", languageCode="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", localizedName="

    .line 29
    .line 30
    const-string v2, ", canonicalName="

    .line 31
    .line 32
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->languageCode:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", subtitle="

    .line 40
    .line 41
    const-string v2, ", headerText="

    .line 42
    .line 43
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v4, p0, Lorg/wikipedia/language/LangLinksItem;->subtitle:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
