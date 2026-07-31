.class public final enum Lorg/wikipedia/theme/Theme;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/theme/Theme;

.field public static final enum BLACK:Lorg/wikipedia/theme/Theme;

.field public static final Companion:Lorg/wikipedia/theme/Theme$Companion;

.field public static final enum DARK:Lorg/wikipedia/theme/Theme;

.field public static final enum LIGHT:Lorg/wikipedia/theme/Theme;

.field public static final enum SEPIA:Lorg/wikipedia/theme/Theme;


# instance fields
.field private final marshallingId:I

.field private final nameId:I

.field private final resourceId:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/theme/Theme;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const v6, 0x7f1200cb

    .line 5
    .line 6
    .line 7
    const-string v1, "LIGHT"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "light"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/theme/Theme;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 17
    .line 18
    new-instance v1, Lorg/wikipedia/theme/Theme;

    .line 19
    .line 20
    const v6, 0x7f130402

    .line 21
    .line 22
    .line 23
    const v7, 0x7f1200ca

    .line 24
    .line 25
    .line 26
    const-string v2, "DARK"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x1

    .line 30
    const-string v5, "dark"

    .line 31
    .line 32
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/theme/Theme;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 36
    .line 37
    new-instance v2, Lorg/wikipedia/theme/Theme;

    .line 38
    .line 39
    const v7, 0x7f130400

    .line 40
    .line 41
    .line 42
    const v8, 0x7f1200c9

    .line 43
    .line 44
    .line 45
    const-string v3, "BLACK"

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    const/4 v5, 0x2

    .line 49
    const-string v6, "black"

    .line 50
    .line 51
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/theme/Theme;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v2, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 55
    .line 56
    new-instance v3, Lorg/wikipedia/theme/Theme;

    .line 57
    .line 58
    const v8, 0x7f1304a6

    .line 59
    .line 60
    .line 61
    const v9, 0x7f1200cd

    .line 62
    .line 63
    .line 64
    const-string v4, "SEPIA"

    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    const/4 v6, 0x3

    .line 68
    const-string v7, "sepia"

    .line 69
    .line 70
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/theme/Theme;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    sput-object v3, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    new-array v4, v4, [Lorg/wikipedia/theme/Theme;

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    aput-object v0, v4, v5

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, v4, v0

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    aput-object v2, v4, v0

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    aput-object v3, v4, v0

    .line 89
    .line 90
    sput-object v4, Lorg/wikipedia/theme/Theme;->$VALUES:[Lorg/wikipedia/theme/Theme;

    .line 91
    .line 92
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 93
    .line 94
    invoke-direct {v0, v4}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lorg/wikipedia/theme/Theme;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 98
    .line 99
    new-instance v0, Lorg/wikipedia/theme/Theme$Companion;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lorg/wikipedia/theme/Theme;->Companion:Lorg/wikipedia/theme/Theme$Companion;

    .line 105
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/wikipedia/theme/Theme;->marshallingId:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/wikipedia/theme/Theme;->tag:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lorg/wikipedia/theme/Theme;->resourceId:I

    .line 9
    .line 10
    iput p6, p0, Lorg/wikipedia/theme/Theme;->nameId:I

    .line 11
    .line 12
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/theme/Theme;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/theme/Theme;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/theme/Theme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/theme/Theme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/theme/Theme;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/theme/Theme;->$VALUES:[Lorg/wikipedia/theme/Theme;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/theme/Theme;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final code()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/theme/Theme;->marshallingId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMarshallingId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/theme/Theme;->marshallingId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNameId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/theme/Theme;->nameId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/theme/Theme;->resourceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/theme/Theme;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isDark()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method
