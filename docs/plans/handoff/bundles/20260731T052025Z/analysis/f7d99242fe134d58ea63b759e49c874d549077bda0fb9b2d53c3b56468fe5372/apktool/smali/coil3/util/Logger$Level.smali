.class public final enum Lcoil3/util/Logger$Level;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil3/util/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcoil3/util/Logger$Level;

.field public static final enum Debug:Lcoil3/util/Logger$Level;

.field public static final enum Error:Lcoil3/util/Logger$Level;

.field public static final enum Info:Lcoil3/util/Logger$Level;

.field public static final enum Verbose:Lcoil3/util/Logger$Level;

.field public static final enum Warn:Lcoil3/util/Logger$Level;


# direct methods
.method private static final synthetic $values()[Lcoil3/util/Logger$Level;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcoil3/util/Logger$Level;

    .line 3
    .line 4
    sget-object v1, Lcoil3/util/Logger$Level;->Verbose:Lcoil3/util/Logger$Level;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcoil3/util/Logger$Level;->Warn:Lcoil3/util/Logger$Level;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcoil3/util/Logger$Level;->Error:Lcoil3/util/Logger$Level;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcoil3/util/Logger$Level;

    .line 2
    .line 3
    const-string v1, "Verbose"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcoil3/util/Logger$Level;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcoil3/util/Logger$Level;->Verbose:Lcoil3/util/Logger$Level;

    .line 10
    .line 11
    new-instance v0, Lcoil3/util/Logger$Level;

    .line 12
    .line 13
    const-string v1, "Debug"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcoil3/util/Logger$Level;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 20
    .line 21
    new-instance v0, Lcoil3/util/Logger$Level;

    .line 22
    .line 23
    const-string v1, "Info"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcoil3/util/Logger$Level;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcoil3/util/Logger$Level;->Info:Lcoil3/util/Logger$Level;

    .line 30
    .line 31
    new-instance v0, Lcoil3/util/Logger$Level;

    .line 32
    .line 33
    const-string v1, "Warn"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcoil3/util/Logger$Level;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcoil3/util/Logger$Level;->Warn:Lcoil3/util/Logger$Level;

    .line 40
    .line 41
    new-instance v0, Lcoil3/util/Logger$Level;

    .line 42
    .line 43
    const-string v1, "Error"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcoil3/util/Logger$Level;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcoil3/util/Logger$Level;->Error:Lcoil3/util/Logger$Level;

    .line 50
    .line 51
    invoke-static {}, Lcoil3/util/Logger$Level;->$values()[Lcoil3/util/Logger$Level;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcoil3/util/Logger$Level;->$VALUES:[Lcoil3/util/Logger$Level;

    .line 56
    .line 57
    invoke-static {v0}, Lokio/Okio;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcoil3/util/Logger$Level;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
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
    sget-object v0, Lcoil3/util/Logger$Level;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil3/util/Logger$Level;
    .locals 1

    .line 1
    const-class v0, Lcoil3/util/Logger$Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcoil3/util/Logger$Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcoil3/util/Logger$Level;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/util/Logger$Level;->$VALUES:[Lcoil3/util/Logger$Level;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcoil3/util/Logger$Level;

    .line 8
    .line 9
    return-object v0
.end method
