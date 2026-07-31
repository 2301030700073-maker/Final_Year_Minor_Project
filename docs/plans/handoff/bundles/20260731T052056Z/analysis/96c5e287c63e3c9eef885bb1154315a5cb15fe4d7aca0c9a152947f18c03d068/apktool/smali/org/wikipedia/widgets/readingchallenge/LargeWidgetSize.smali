.class public final enum Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public static final enum COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public static final Companion:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$Companion;

.field public static final enum EXTRA_COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public static final enum FULL:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public static final enum TINY:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 2
    .line 3
    const-string v1, "TINY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->TINY:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 12
    .line 13
    const-string v3, "EXTRA_COMPACT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->EXTRA_COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 20
    .line 21
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 22
    .line 23
    const-string v5, "COMPACT"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->COMPACT:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 30
    .line 31
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 32
    .line 33
    const-string v7, "FULL"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->FULL:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->$VALUES:[Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 53
    .line 54
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-direct {v0, v7}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$Companion;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->Companion:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$Companion;

    .line 67
    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->$VALUES:[Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getExpandedMascotSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/high16 p0, 0x42f00000    # 120.0f

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/high16 p0, 0x42be0000    # 95.0f

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const/high16 p0, 0x42800000    # 64.0f

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const/high16 p0, 0x42400000    # 48.0f

    .line 36
    .line 37
    return p0
.end method

.method public final getRightColumnExtraSpace-D9Ej5fM()F
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/high16 p0, 0x41900000    # 18.0f

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    const/high16 p0, 0x41000000    # 8.0f

    .line 31
    .line 32
    return p0
.end method

.method public final getSideMascotSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/high16 p0, 0x42c80000    # 100.0f

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/high16 p0, 0x42a00000    # 80.0f

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const/high16 p0, 0x42700000    # 60.0f

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const/high16 p0, 0x42200000    # 40.0f

    .line 36
    .line 37
    return p0
.end method

.method public final getStreakBadgeIconSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/high16 p0, 0x42200000    # 40.0f

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/high16 p0, 0x42100000    # 36.0f

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const/high16 p0, 0x41e00000    # 28.0f

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const/high16 p0, 0x41b00000    # 22.0f

    .line 36
    .line 37
    return p0
.end method

.method public final getStreakBadgeTextSize-XSAIIZE()J
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x20

    .line 22
    .line 23
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    return-wide v0

    .line 34
    :cond_1
    const/16 p0, 0x1a

    .line 35
    .line 36
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_2
    const/16 p0, 0x14

    .line 42
    .line 43
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_3
    const/16 p0, 0x12

    .line 49
    .line 50
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    return-wide v0
.end method

.method public final getSubtitleTextSize-XSAIIZE()J
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x10

    .line 22
    .line 23
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    return-wide v0

    .line 34
    :cond_1
    const/16 p0, 0xe

    .line 35
    .line 36
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_2
    const/16 p0, 0xc

    .line 42
    .line 43
    invoke-static {p0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0
.end method

.method public final getTitleBarIconSize-D9Ej5fM()F
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const/high16 p0, 0x42100000    # 36.0f

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    const/high16 p0, 0x42000000    # 32.0f

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const/high16 p0, 0x41c00000    # 24.0f

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const/high16 p0, 0x41b00000    # 22.0f

    .line 36
    .line 37
    return p0
.end method
