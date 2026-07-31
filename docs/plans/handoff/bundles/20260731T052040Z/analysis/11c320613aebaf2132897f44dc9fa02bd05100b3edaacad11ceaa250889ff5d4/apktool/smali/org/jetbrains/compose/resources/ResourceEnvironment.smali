.class public final Lorg/jetbrains/compose/resources/ResourceEnvironment;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final density:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public final language:Lorg/jetbrains/compose/resources/LanguageQualifier;

.field public final region:Lorg/jetbrains/compose/resources/RegionQualifier;

.field public final theme:Lorg/jetbrains/compose/resources/ThemeQualifier;


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/LanguageQualifier;Lorg/jetbrains/compose/resources/RegionQualifier;Lorg/jetbrains/compose/resources/ThemeQualifier;Lorg/jetbrains/compose/resources/DensityQualifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->language:Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->region:Lorg/jetbrains/compose/resources/RegionQualifier;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->theme:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->density:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 11
    .line 12
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
    if-eqz p1, :cond_6

    .line 5
    .line 6
    const-class v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

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
    check-cast p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->language:Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 18
    .line 19
    iget-object v1, p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;->language:Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/jetbrains/compose/resources/LanguageQualifier;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->region:Lorg/jetbrains/compose/resources/RegionQualifier;

    .line 29
    .line 30
    iget-object v1, p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;->region:Lorg/jetbrains/compose/resources/RegionQualifier;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/jetbrains/compose/resources/RegionQualifier;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->theme:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 40
    .line 41
    iget-object v1, p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;->theme:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 42
    .line 43
    if-eq v0, v1, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->density:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 47
    .line 48
    iget-object p1, p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;->density:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 49
    .line 50
    if-eq p0, p1, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->language:Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jetbrains/compose/resources/LanguageQualifier;->language:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->region:Lorg/jetbrains/compose/resources/RegionQualifier;

    .line 13
    .line 14
    iget-object v2, v2, Lorg/jetbrains/compose/resources/RegionQualifier;->region:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->theme:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v2, v0

    .line 27
    mul-int/2addr v2, v1

    .line 28
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ResourceEnvironment;->density:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v2

    .line 35
    return p0
.end method
