.class public final enum Lorg/wikipedia/settings/homefeed/CommunityModuleType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final Companion:Lorg/wikipedia/settings/homefeed/CommunityModuleType$Companion;

.field public static final enum DID_YOU_KNOW:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final enum FEATURED_ARTICLE:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final enum FEATURED_IMAGE:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final enum NEWS:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final enum ON_THIS_DAY:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

.field public static final enum TOP_READ:Lorg/wikipedia/settings/homefeed/CommunityModuleType;


# instance fields
.field private final subtitle:I

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 2
    .line 3
    const v1, 0x7f1209e5

    .line 4
    .line 5
    .line 6
    const v2, 0x7f1201f9

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "FEATURED_ARTICLE"

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2, v4}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->FEATURED_ARTICLE:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 16
    .line 17
    new-instance v1, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 18
    .line 19
    const v2, 0x7f1209f8

    .line 20
    .line 21
    .line 22
    const v4, 0x7f1209f4

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const-string v6, "TOP_READ"

    .line 27
    .line 28
    invoke-direct {v1, v5, v2, v4, v6}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->TOP_READ:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 32
    .line 33
    new-instance v2, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 34
    .line 35
    const v4, 0x7f120273

    .line 36
    .line 37
    .line 38
    const v6, 0x7f120272

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const-string v8, "DID_YOU_KNOW"

    .line 43
    .line 44
    invoke-direct {v2, v7, v4, v6, v8}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->DID_YOU_KNOW:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 48
    .line 49
    new-instance v4, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 50
    .line 51
    const v6, 0x7f1209e2

    .line 52
    .line 53
    .line 54
    const v8, 0x7f1201ff

    .line 55
    .line 56
    .line 57
    const/4 v9, 0x3

    .line 58
    const-string v10, "NEWS"

    .line 59
    .line 60
    invoke-direct {v4, v9, v6, v8, v10}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v4, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->NEWS:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 64
    .line 65
    new-instance v6, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 66
    .line 67
    const v8, 0x7f1204b2

    .line 68
    .line 69
    .line 70
    const v10, 0x7f12020d

    .line 71
    .line 72
    .line 73
    const/4 v11, 0x4

    .line 74
    const-string v12, "ON_THIS_DAY"

    .line 75
    .line 76
    invoke-direct {v6, v11, v8, v10, v12}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v6, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->ON_THIS_DAY:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 80
    .line 81
    new-instance v8, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 82
    .line 83
    const v10, 0x7f1209e8

    .line 84
    .line 85
    .line 86
    const v12, 0x7f120211

    .line 87
    .line 88
    .line 89
    const/4 v13, 0x5

    .line 90
    const-string v14, "FEATURED_IMAGE"

    .line 91
    .line 92
    invoke-direct {v8, v13, v10, v12, v14}, Lorg/wikipedia/settings/homefeed/CommunityModuleType;-><init>(IIILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v8, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->FEATURED_IMAGE:Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 96
    .line 97
    const/4 v10, 0x6

    .line 98
    new-array v10, v10, [Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 99
    .line 100
    aput-object v0, v10, v3

    .line 101
    .line 102
    aput-object v1, v10, v5

    .line 103
    .line 104
    aput-object v2, v10, v7

    .line 105
    .line 106
    aput-object v4, v10, v9

    .line 107
    .line 108
    aput-object v6, v10, v11

    .line 109
    .line 110
    aput-object v8, v10, v13

    .line 111
    .line 112
    sput-object v10, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->$VALUES:[Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 113
    .line 114
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 115
    .line 116
    invoke-direct {v0, v10}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 120
    .line 121
    new-instance v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType$Companion;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->Companion:Lorg/wikipedia/settings/homefeed/CommunityModuleType$Companion;

    .line 127
    .line 128
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->title:I

    .line 5
    .line 6
    iput p3, p0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->subtitle:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/homefeed/CommunityModuleType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/settings/homefeed/CommunityModuleType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->$VALUES:[Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/settings/homefeed/CommunityModuleType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toEntry()Lorg/wikipedia/compose/components/ToggleSettingItem;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->title:I

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->subtitle:I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, v2, p0}, Lorg/wikipedia/compose/components/ToggleSettingItem;-><init>(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
