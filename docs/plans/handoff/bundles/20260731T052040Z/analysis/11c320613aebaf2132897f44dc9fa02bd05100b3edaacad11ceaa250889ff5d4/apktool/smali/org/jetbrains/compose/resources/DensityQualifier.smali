.class public final enum Lorg/jetbrains/compose/resources/DensityQualifier;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/jetbrains/compose/resources/Qualifier;


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

.field public static final enum HDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final enum LDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final enum MDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final enum XHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final enum XXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

.field public static final enum XXXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;


# instance fields
.field private final dpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 2
    .line 3
    const/16 v1, 0x78

    .line 4
    .line 5
    const-string v2, "LDPI"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/jetbrains/compose/resources/DensityQualifier;->LDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 12
    .line 13
    new-instance v1, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 14
    .line 15
    const/16 v2, 0xa0

    .line 16
    .line 17
    const-string v4, "MDPI"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->MDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 24
    .line 25
    new-instance v2, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 26
    .line 27
    const/16 v4, 0xf0

    .line 28
    .line 29
    const-string v6, "HDPI"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lorg/jetbrains/compose/resources/DensityQualifier;->HDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 36
    .line 37
    new-instance v4, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 38
    .line 39
    const/16 v6, 0x140

    .line 40
    .line 41
    const-string v8, "XHDPI"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lorg/jetbrains/compose/resources/DensityQualifier;->XHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 48
    .line 49
    new-instance v6, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 50
    .line 51
    const/16 v8, 0x1e0

    .line 52
    .line 53
    const-string v10, "XXHDPI"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lorg/jetbrains/compose/resources/DensityQualifier;->XXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 60
    .line 61
    new-instance v8, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 62
    .line 63
    const/16 v10, 0x280

    .line 64
    .line 65
    const-string v12, "XXXHDPI"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v10}, Lorg/jetbrains/compose/resources/DensityQualifier;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lorg/jetbrains/compose/resources/DensityQualifier;->XXXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 72
    .line 73
    const/4 v10, 0x6

    .line 74
    new-array v10, v10, [Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 75
    .line 76
    aput-object v0, v10, v3

    .line 77
    .line 78
    aput-object v1, v10, v5

    .line 79
    .line 80
    aput-object v2, v10, v7

    .line 81
    .line 82
    aput-object v4, v10, v9

    .line 83
    .line 84
    aput-object v6, v10, v11

    .line 85
    .line 86
    aput-object v8, v10, v13

    .line 87
    .line 88
    sput-object v10, Lorg/jetbrains/compose/resources/DensityQualifier;->$VALUES:[Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 89
    .line 90
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 91
    .line 92
    invoke-direct {v0, v10}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lorg/jetbrains/compose/resources/DensityQualifier;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 96
    .line 97
    new-instance v0, Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lorg/jetbrains/compose/resources/DensityQualifier;->Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/compose/resources/DensityQualifier;
    .locals 1

    .line 1
    const-class v0, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jetbrains/compose/resources/DensityQualifier;
    .locals 1

    .line 1
    sget-object v0, Lorg/jetbrains/compose/resources/DensityQualifier;->$VALUES:[Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDpi()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 2
    .line 3
    return p0
.end method
