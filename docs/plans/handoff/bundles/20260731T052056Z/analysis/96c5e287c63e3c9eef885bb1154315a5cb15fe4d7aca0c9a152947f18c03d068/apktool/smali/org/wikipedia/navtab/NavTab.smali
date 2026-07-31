.class public abstract enum Lorg/wikipedia/navtab/NavTab;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/navtab/NavTab;

.field public static final Companion:Lorg/wikipedia/navtab/NavTab$Companion;

.field public static final enum EDITS:Lorg/wikipedia/navtab/NavTab;

.field public static final enum HOME:Lorg/wikipedia/navtab/NavTab;

.field public static final enum MORE:Lorg/wikipedia/navtab/NavTab;

.field public static final enum READING_LISTS:Lorg/wikipedia/navtab/NavTab;

.field public static final enum SEARCH:Lorg/wikipedia/navtab/NavTab;


# instance fields
.field private final icon:I

.field private final id:I

.field private final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/navtab/NavTab$HOME;

    .line 2
    .line 3
    const v3, 0x7f09043f

    .line 4
    .line 5
    .line 6
    const v4, 0x7f08017a

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f12026f

    .line 11
    .line 12
    .line 13
    const-string v5, "HOME"

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/navtab/NavTab;-><init>(IIIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 19
    .line 20
    new-instance v1, Lorg/wikipedia/navtab/NavTab$READING_LISTS;

    .line 21
    .line 22
    const v4, 0x7f090442

    .line 23
    .line 24
    .line 25
    const v5, 0x7f0802f4

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const v3, 0x7f120463

    .line 30
    .line 31
    .line 32
    const-string v6, "READING_LISTS"

    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/navtab/NavTab;-><init>(IIIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 38
    .line 39
    new-instance v2, Lorg/wikipedia/navtab/NavTab$SEARCH;

    .line 40
    .line 41
    const v5, 0x7f090443

    .line 42
    .line 43
    .line 44
    const v6, 0x7f0802f5

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const v4, 0x7f120464

    .line 49
    .line 50
    .line 51
    const-string v7, "SEARCH"

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/navtab/NavTab;-><init>(IIIILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    .line 57
    .line 58
    new-instance v3, Lorg/wikipedia/navtab/NavTab$EDITS;

    .line 59
    .line 60
    const v6, 0x7f09043e

    .line 61
    .line 62
    .line 63
    const v7, 0x7f0802f1

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const v5, 0x7f12045c

    .line 68
    .line 69
    .line 70
    const-string v8, "EDITS"

    .line 71
    .line 72
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/navtab/NavTab;-><init>(IIIILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 76
    .line 77
    new-instance v4, Lorg/wikipedia/navtab/NavTab$MORE;

    .line 78
    .line 79
    const v7, 0x7f090440

    .line 80
    .line 81
    .line 82
    const v8, 0x7f0801a2

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const v6, 0x7f120462

    .line 87
    .line 88
    .line 89
    const-string v9, "MORE"

    .line 90
    .line 91
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/navtab/NavTab;-><init>(IIIILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v4, Lorg/wikipedia/navtab/NavTab;->MORE:Lorg/wikipedia/navtab/NavTab;

    .line 95
    .line 96
    const/4 v5, 0x5

    .line 97
    new-array v5, v5, [Lorg/wikipedia/navtab/NavTab;

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    aput-object v0, v5, v6

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    aput-object v1, v5, v0

    .line 104
    .line 105
    const/4 v0, 0x2

    .line 106
    aput-object v2, v5, v0

    .line 107
    .line 108
    const/4 v0, 0x3

    .line 109
    aput-object v3, v5, v0

    .line 110
    .line 111
    const/4 v0, 0x4

    .line 112
    aput-object v4, v5, v0

    .line 113
    .line 114
    sput-object v5, Lorg/wikipedia/navtab/NavTab;->$VALUES:[Lorg/wikipedia/navtab/NavTab;

    .line 115
    .line 116
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 117
    .line 118
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lorg/wikipedia/navtab/NavTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 122
    .line 123
    new-instance v0, Lorg/wikipedia/navtab/NavTab$Companion;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    .line 129
    .line 130
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/navtab/NavTab;->text:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/navtab/NavTab;->id:I

    .line 7
    .line 8
    iput p4, p0, Lorg/wikipedia/navtab/NavTab;->icon:I

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/navtab/NavTab;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/navtab/NavTab;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/navtab/NavTab;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/navtab/NavTab;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->$VALUES:[Lorg/wikipedia/navtab/NavTab;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/navtab/NavTab;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final code()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getIcon()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/navtab/NavTab;->icon:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/navtab/NavTab;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final getText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/navtab/NavTab;->text:I

    .line 2
    .line 3
    return p0
.end method

.method public abstract newInstance()Landroidx/fragment/app/Fragment;
.end method
