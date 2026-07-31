.class public final Lorg/wikipedia/activitytab/ActivityTabModules;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/activitytab/ActivityTabModules$Companion;


# instance fields
.field public final isDonationsEnabled:Z

.field public final isEditingInsightsEnabled:Z

.field public final isGamesEnabled:Z

.field public final isImpactEnabled:Z

.field public final isReadingInsightsEnabled:Z

.field public final isTimeSpentEnabled:Z

.field public final isTimelineEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabModules$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/activitytab/ActivityTabModules;->Companion:Lorg/wikipedia/activitytab/ActivityTabModules$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IZZZZZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-boolean p4, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-boolean p5, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    iput-boolean p6, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 49
    .line 50
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 51
    .line 52
    if-nez p2, :cond_5

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_5
    iput-boolean p7, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 59
    .line 60
    :goto_5
    and-int/lit8 p1, p1, 0x40

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    iput-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_6
    iput-boolean p8, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(ZZZZZZZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 72
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 73
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 74
    iput-boolean p4, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 75
    iput-boolean p5, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 76
    iput-boolean p6, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 77
    iput-boolean p7, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    return-void
.end method

.method public static copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;
    .locals 8

    .line 1
    and-int/lit8 v0, p8, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 6
    .line 7
    :cond_0
    move v1, p1

    .line 8
    and-int/lit8 p1, p8, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 13
    .line 14
    :cond_1
    move v2, p2

    .line 15
    and-int/lit8 p1, p8, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 20
    .line 21
    :cond_2
    move v3, p3

    .line 22
    and-int/lit8 p1, p8, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-boolean p4, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 27
    .line 28
    :cond_3
    move v4, p4

    .line 29
    and-int/lit8 p1, p8, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-boolean p5, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 34
    .line 35
    :cond_4
    move v5, p5

    .line 36
    and-int/lit8 p1, p8, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget-boolean p6, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 41
    .line 42
    :cond_5
    move v6, p6

    .line 43
    and-int/lit8 p1, p8, 0x40

    .line 44
    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    iget-boolean p7, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 48
    .line 49
    :cond_6
    move v7, p7

    .line 50
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 51
    .line 52
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/activitytab/ActivityTabModules;-><init>(ZZZZZZZ)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public static synthetic isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p2, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move p3, v1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible(Lorg/wikipedia/activitytab/ModuleType;ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
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
    instance-of v1, p1, Lorg/wikipedia/activitytab/ActivityTabModules;

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
    check-cast p1, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 56
    .line 57
    iget-boolean p1, p1, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 58
    .line 59
    if-eq p0, p1, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    add-int/2addr v0, v3

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    move v3, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v3, v1

    .line 31
    :goto_2
    add-int/2addr v0, v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    move v3, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move v3, v1

    .line 41
    :goto_3
    add-int/2addr v0, v3

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    move v3, v2

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move v3, v1

    .line 51
    :goto_4
    add-int/2addr v0, v3

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 55
    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move v3, v1

    .line 61
    :goto_5
    add-int/2addr v0, v3

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 65
    .line 66
    if-eqz p0, :cond_6

    .line 67
    .line 68
    move v1, v2

    .line 69
    :cond_6
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/activitytab/ActivityTabModules$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :pswitch_0
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_1
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 24
    .line 25
    return p0

    .line 26
    :pswitch_2
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_3
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_4
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_5
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 36
    .line 37
    return p0

    .line 38
    :pswitch_6
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 39
    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isModuleVisible(Lorg/wikipedia/activitytab/ModuleType;ZZ)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/activitytab/ActivityTabModules$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 p3, 0x6

    .line 18
    if-eq v0, p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    return v2

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    return v3

    .line 44
    :cond_3
    return v2
.end method

.method public final noModulesVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/wikipedia/activitytab/ModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/wikipedia/activitytab/ModuleType;

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible(Lorg/wikipedia/activitytab/ModuleType;ZZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public final setModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;Z)Lorg/wikipedia/activitytab/ActivityTabModules;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/activitytab/ActivityTabModules$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    const/4 v6, 0x0

    .line 21
    const/16 v8, 0x3f

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v0, p0

    .line 29
    move v7, p2

    .line 30
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_1
    move-object v0, p0

    .line 36
    move v1, p2

    .line 37
    const/4 v7, 0x0

    .line 38
    const/16 v8, 0x5f

    .line 39
    .line 40
    move v2, v1

    .line 41
    const/4 v1, 0x0

    .line 42
    move v3, v2

    .line 43
    const/4 v2, 0x0

    .line 44
    move v4, v3

    .line 45
    const/4 v3, 0x0

    .line 46
    move v5, v4

    .line 47
    const/4 v4, 0x0

    .line 48
    move v6, v5

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_2
    move-object v0, p0

    .line 56
    move v1, p2

    .line 57
    const/4 v7, 0x0

    .line 58
    const/16 v8, 0x6f

    .line 59
    .line 60
    move v2, v1

    .line 61
    const/4 v1, 0x0

    .line 62
    move v3, v2

    .line 63
    const/4 v2, 0x0

    .line 64
    move v4, v3

    .line 65
    const/4 v3, 0x0

    .line 66
    move v5, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_3
    move-object v0, p0

    .line 75
    move v1, p2

    .line 76
    const/4 v7, 0x0

    .line 77
    const/16 v8, 0x77

    .line 78
    .line 79
    move v2, v1

    .line 80
    const/4 v1, 0x0

    .line 81
    move v3, v2

    .line 82
    const/4 v2, 0x0

    .line 83
    move v4, v3

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :pswitch_4
    move-object v0, p0

    .line 93
    move v1, p2

    .line 94
    const/4 v7, 0x0

    .line 95
    const/16 v8, 0x7b

    .line 96
    .line 97
    move v2, v1

    .line 98
    const/4 v1, 0x0

    .line 99
    move v3, v2

    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_5
    move-object v0, p0

    .line 110
    move v1, p2

    .line 111
    const/4 v7, 0x0

    .line 112
    const/16 v8, 0x7d

    .line 113
    .line 114
    move v2, v1

    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_6
    move-object v0, p0

    .line 126
    move v1, p2

    .line 127
    const/4 v7, 0x0

    .line 128
    const/16 v8, 0x7e

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    const/4 v3, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ActivityTabModules;->copy$default(Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZZZZI)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ActivityTabModules(isTimeSpentEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isReadingInsightsEnabled="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isEditingInsightsEnabled="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isImpactEnabled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isGamesEnabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isDonationsEnabled="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", isTimelineEnabled="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean p0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
