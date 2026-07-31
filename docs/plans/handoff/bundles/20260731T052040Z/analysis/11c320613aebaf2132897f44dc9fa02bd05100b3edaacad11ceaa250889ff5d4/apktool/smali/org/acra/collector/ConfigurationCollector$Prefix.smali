.class public final enum Lorg/acra/collector/ConfigurationCollector$Prefix;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collector/ConfigurationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/collector/ConfigurationCollector$Prefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

.field public static final enum UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 4
    .line 5
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lorg/acra/collector/ConfigurationCollector$Prefix;->HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "UI_MODE_"

    .line 5
    .line 6
    const-string v3, "UI_MODE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->UI_MODE:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 12
    .line 13
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "TOUCHSCREEN_"

    .line 17
    .line 18
    const-string v3, "TOUCHSCREEN"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->TOUCHSCREEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 24
    .line 25
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "SCREENLAYOUT_"

    .line 29
    .line 30
    const-string v3, "SCREENLAYOUT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->SCREENLAYOUT:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 36
    .line 37
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "ORIENTATION_"

    .line 41
    .line 42
    const-string v3, "ORIENTATION"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->ORIENTATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 48
    .line 49
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "NAVIGATIONHIDDEN_"

    .line 53
    .line 54
    const-string v3, "NAVIGATIONHIDDEN"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATIONHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 60
    .line 61
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "NAVIGATION_"

    .line 65
    .line 66
    const-string v3, "NAVIGATION"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->NAVIGATION:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 72
    .line 73
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "KEYBOARDHIDDEN_"

    .line 77
    .line 78
    const-string v3, "KEYBOARDHIDDEN"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 84
    .line 85
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "KEYBOARD_"

    .line 89
    .line 90
    const-string v3, "KEYBOARD"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->KEYBOARD:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 96
    .line 97
    new-instance v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "HARDKEYBOARDHIDDEN_"

    .line 102
    .line 103
    const-string v3, "HARDKEYBOARDHIDDEN"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lorg/acra/collector/ConfigurationCollector$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->HARDKEYBOARDHIDDEN:Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 109
    .line 110
    invoke-static {}, Lorg/acra/collector/ConfigurationCollector$Prefix;->$values()[Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 115
    .line 116
    invoke-static {v0}, Lokio/Okio;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 121
    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/acra/collector/ConfigurationCollector$Prefix;->text:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 1

    .line 1
    const-class v0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/acra/collector/ConfigurationCollector$Prefix;
    .locals 1

    .line 1
    sget-object v0, Lorg/acra/collector/ConfigurationCollector$Prefix;->$VALUES:[Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/acra/collector/ConfigurationCollector$Prefix;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/collector/ConfigurationCollector$Prefix;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
