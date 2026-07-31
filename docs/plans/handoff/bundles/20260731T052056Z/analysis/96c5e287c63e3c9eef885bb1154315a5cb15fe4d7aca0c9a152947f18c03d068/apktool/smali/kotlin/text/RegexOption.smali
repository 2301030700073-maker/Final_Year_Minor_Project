.class public final enum Lkotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/text/RegexOption;

.field public static final enum CANON_EQ:Lkotlin/text/RegexOption;

.field public static final enum COMMENTS:Lkotlin/text/RegexOption;

.field public static final enum DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

.field public static final enum IGNORE_CASE:Lkotlin/text/RegexOption;

.field public static final enum LITERAL:Lkotlin/text/RegexOption;

.field public static final enum MULTILINE:Lkotlin/text/RegexOption;

.field public static final enum UNIX_LINES:Lkotlin/text/RegexOption;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lkotlin/text/RegexOption;

    .line 2
    .line 3
    const-string v1, "IGNORE_CASE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 11
    .line 12
    new-instance v1, Lkotlin/text/RegexOption;

    .line 13
    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    const-string v5, "MULTILINE"

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    invoke-direct {v1, v5, v6, v4}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    .line 23
    .line 24
    new-instance v4, Lkotlin/text/RegexOption;

    .line 25
    .line 26
    const-string v5, "LITERAL"

    .line 27
    .line 28
    const/16 v7, 0x10

    .line 29
    .line 30
    invoke-direct {v4, v5, v3, v7}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    .line 34
    .line 35
    new-instance v5, Lkotlin/text/RegexOption;

    .line 36
    .line 37
    const-string v7, "UNIX_LINES"

    .line 38
    .line 39
    const/4 v8, 0x3

    .line 40
    invoke-direct {v5, v7, v8, v6}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v5, Lkotlin/text/RegexOption;->UNIX_LINES:Lkotlin/text/RegexOption;

    .line 44
    .line 45
    new-instance v7, Lkotlin/text/RegexOption;

    .line 46
    .line 47
    const-string v9, "COMMENTS"

    .line 48
    .line 49
    const/4 v10, 0x4

    .line 50
    invoke-direct {v7, v9, v10, v10}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v7, Lkotlin/text/RegexOption;->COMMENTS:Lkotlin/text/RegexOption;

    .line 54
    .line 55
    new-instance v9, Lkotlin/text/RegexOption;

    .line 56
    .line 57
    const/16 v11, 0x20

    .line 58
    .line 59
    const-string v12, "DOT_MATCHES_ALL"

    .line 60
    .line 61
    const/4 v13, 0x5

    .line 62
    invoke-direct {v9, v12, v13, v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v9, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    .line 66
    .line 67
    new-instance v11, Lkotlin/text/RegexOption;

    .line 68
    .line 69
    const/16 v12, 0x80

    .line 70
    .line 71
    const-string v14, "CANON_EQ"

    .line 72
    .line 73
    const/4 v15, 0x6

    .line 74
    invoke-direct {v11, v14, v15, v12}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v11, Lkotlin/text/RegexOption;->CANON_EQ:Lkotlin/text/RegexOption;

    .line 78
    .line 79
    const/4 v12, 0x7

    .line 80
    new-array v12, v12, [Lkotlin/text/RegexOption;

    .line 81
    .line 82
    aput-object v0, v12, v2

    .line 83
    .line 84
    aput-object v1, v12, v6

    .line 85
    .line 86
    aput-object v4, v12, v3

    .line 87
    .line 88
    aput-object v5, v12, v8

    .line 89
    .line 90
    aput-object v7, v12, v10

    .line 91
    .line 92
    aput-object v9, v12, v13

    .line 93
    .line 94
    aput-object v11, v12, v15

    .line 95
    .line 96
    sput-object v12, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    .line 97
    .line 98
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 99
    .line 100
    invoke-direct {v0, v12}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lkotlin/text/RegexOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lkotlin/text/RegexOption;->value:I

    .line 5
    .line 6
    iput p3, p0, Lkotlin/text/RegexOption;->mask:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/RegexOption;
    .locals 1

    .line 1
    const-class v0, Lkotlin/text/RegexOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/text/RegexOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/text/RegexOption;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/text/RegexOption;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/text/RegexOption;->value:I

    .line 2
    .line 3
    return p0
.end method
