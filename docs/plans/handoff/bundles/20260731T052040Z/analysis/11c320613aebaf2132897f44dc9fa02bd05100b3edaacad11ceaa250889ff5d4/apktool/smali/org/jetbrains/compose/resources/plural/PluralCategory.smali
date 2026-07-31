.class public final enum Lorg/jetbrains/compose/resources/plural/PluralCategory;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lorg/jetbrains/compose/resources/plural/PluralCategory;

.field public static final Companion:Lokio/Path$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 2
    .line 3
    const-string v1, "ZERO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 10
    .line 11
    const-string v3, "ONE"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 18
    .line 19
    const-string v5, "TWO"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 26
    .line 27
    const-string v7, "FEW"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 34
    .line 35
    const-string v9, "MANY"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 42
    .line 43
    const-string v11, "OTHER"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const/4 v11, 0x6

    .line 50
    new-array v11, v11, [Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 51
    .line 52
    aput-object v0, v11, v2

    .line 53
    .line 54
    aput-object v1, v11, v4

    .line 55
    .line 56
    aput-object v3, v11, v6

    .line 57
    .line 58
    aput-object v5, v11, v8

    .line 59
    .line 60
    aput-object v7, v11, v10

    .line 61
    .line 62
    aput-object v9, v11, v12

    .line 63
    .line 64
    sput-object v11, Lorg/jetbrains/compose/resources/plural/PluralCategory;->$VALUES:[Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 65
    .line 66
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 67
    .line 68
    invoke-direct {v0, v11}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lorg/jetbrains/compose/resources/plural/PluralCategory;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 72
    .line 73
    new-instance v0, Lokio/Path$Companion;

    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lorg/jetbrains/compose/resources/plural/PluralCategory;->Companion:Lokio/Path$Companion;

    .line 81
    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/compose/resources/plural/PluralCategory;
    .locals 1

    .line 1
    const-class v0, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jetbrains/compose/resources/plural/PluralCategory;
    .locals 1

    .line 1
    sget-object v0, Lorg/jetbrains/compose/resources/plural/PluralCategory;->$VALUES:[Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 8
    .line 9
    return-object v0
.end method
