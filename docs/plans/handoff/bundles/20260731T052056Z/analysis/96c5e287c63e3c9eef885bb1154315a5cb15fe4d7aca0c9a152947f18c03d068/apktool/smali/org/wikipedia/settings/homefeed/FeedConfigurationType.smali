.class public final enum Lorg/wikipedia/settings/homefeed/FeedConfigurationType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

.field public static final enum INTERESTS:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

.field public static final enum LANGUAGES:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

.field public static final enum LOCATION:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

.field public static final enum READING_HISTORY:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 2
    .line 3
    const-string v1, "INTERESTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->INTERESTS:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 12
    .line 13
    const-string v3, "LOCATION"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->LOCATION:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 20
    .line 21
    new-instance v3, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 22
    .line 23
    const-string v5, "READING_HISTORY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->READING_HISTORY:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 30
    .line 31
    new-instance v5, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 32
    .line 33
    const-string v7, "LANGUAGES"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->LANGUAGES:Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

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
    sput-object v7, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->$VALUES:[Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 53
    .line 54
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-direct {v0, v7}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/homefeed/FeedConfigurationType;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/settings/homefeed/FeedConfigurationType;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationType;->$VALUES:[Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/settings/homefeed/FeedConfigurationType;

    .line 8
    .line 9
    return-object v0
.end method
