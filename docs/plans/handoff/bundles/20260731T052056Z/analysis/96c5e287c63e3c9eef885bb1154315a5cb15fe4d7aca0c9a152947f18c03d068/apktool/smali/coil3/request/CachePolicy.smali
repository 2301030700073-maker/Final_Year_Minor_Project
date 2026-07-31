.class public final enum Lcoil3/request/CachePolicy;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcoil3/request/CachePolicy;

.field public static final enum DISABLED:Lcoil3/request/CachePolicy;

.field public static final enum ENABLED:Lcoil3/request/CachePolicy;

.field public static final enum READ_ONLY:Lcoil3/request/CachePolicy;

.field public static final enum WRITE_ONLY:Lcoil3/request/CachePolicy;


# instance fields
.field private final readEnabled:Z

.field private final writeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcoil3/request/CachePolicy;

    .line 2
    .line 3
    const-string v1, "ENABLED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcoil3/request/CachePolicy;-><init>(Ljava/lang/String;IZZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcoil3/request/CachePolicy;->ENABLED:Lcoil3/request/CachePolicy;

    .line 11
    .line 12
    new-instance v1, Lcoil3/request/CachePolicy;

    .line 13
    .line 14
    const-string v4, "READ_ONLY"

    .line 15
    .line 16
    invoke-direct {v1, v4, v3, v3, v2}, Lcoil3/request/CachePolicy;-><init>(Ljava/lang/String;IZZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcoil3/request/CachePolicy;->READ_ONLY:Lcoil3/request/CachePolicy;

    .line 20
    .line 21
    new-instance v4, Lcoil3/request/CachePolicy;

    .line 22
    .line 23
    const-string v5, "WRITE_ONLY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v5, v6, v2, v3}, Lcoil3/request/CachePolicy;-><init>(Ljava/lang/String;IZZ)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcoil3/request/CachePolicy;->WRITE_ONLY:Lcoil3/request/CachePolicy;

    .line 30
    .line 31
    new-instance v5, Lcoil3/request/CachePolicy;

    .line 32
    .line 33
    const-string v7, "DISABLED"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v2, v2}, Lcoil3/request/CachePolicy;-><init>(Ljava/lang/String;IZZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcoil3/request/CachePolicy;->DISABLED:Lcoil3/request/CachePolicy;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcoil3/request/CachePolicy;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v3

    .line 47
    .line 48
    aput-object v4, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lcoil3/request/CachePolicy;->$VALUES:[Lcoil3/request/CachePolicy;

    .line 53
    .line 54
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 55
    .line 56
    invoke-direct {v0, v7}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcoil3/request/CachePolicy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcoil3/request/CachePolicy;->readEnabled:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcoil3/request/CachePolicy;->writeEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil3/request/CachePolicy;
    .locals 1

    .line 1
    const-class v0, Lcoil3/request/CachePolicy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcoil3/request/CachePolicy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcoil3/request/CachePolicy;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/request/CachePolicy;->$VALUES:[Lcoil3/request/CachePolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcoil3/request/CachePolicy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getReadEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/request/CachePolicy;->readEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getWriteEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/request/CachePolicy;->writeEnabled:Z

    .line 2
    .line 3
    return p0
.end method
