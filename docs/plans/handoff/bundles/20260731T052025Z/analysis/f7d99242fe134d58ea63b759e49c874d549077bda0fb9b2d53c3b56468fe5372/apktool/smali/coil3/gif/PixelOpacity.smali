.class public final enum Lcoil3/gif/PixelOpacity;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil3/gif/PixelOpacity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcoil3/gif/PixelOpacity;

.field public static final enum OPAQUE:Lcoil3/gif/PixelOpacity;

.field public static final enum TRANSLUCENT:Lcoil3/gif/PixelOpacity;

.field public static final enum UNCHANGED:Lcoil3/gif/PixelOpacity;


# direct methods
.method private static final synthetic $values()[Lcoil3/gif/PixelOpacity;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcoil3/gif/PixelOpacity;

    .line 3
    .line 4
    sget-object v1, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcoil3/gif/PixelOpacity;->TRANSLUCENT:Lcoil3/gif/PixelOpacity;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcoil3/gif/PixelOpacity;->OPAQUE:Lcoil3/gif/PixelOpacity;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcoil3/gif/PixelOpacity;

    .line 2
    .line 3
    const-string v1, "UNCHANGED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcoil3/gif/PixelOpacity;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcoil3/gif/PixelOpacity;->UNCHANGED:Lcoil3/gif/PixelOpacity;

    .line 10
    .line 11
    new-instance v0, Lcoil3/gif/PixelOpacity;

    .line 12
    .line 13
    const-string v1, "TRANSLUCENT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcoil3/gif/PixelOpacity;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/gif/PixelOpacity;->TRANSLUCENT:Lcoil3/gif/PixelOpacity;

    .line 20
    .line 21
    new-instance v0, Lcoil3/gif/PixelOpacity;

    .line 22
    .line 23
    const-string v1, "OPAQUE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcoil3/gif/PixelOpacity;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcoil3/gif/PixelOpacity;->OPAQUE:Lcoil3/gif/PixelOpacity;

    .line 30
    .line 31
    invoke-static {}, Lcoil3/gif/PixelOpacity;->$values()[Lcoil3/gif/PixelOpacity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcoil3/gif/PixelOpacity;->$VALUES:[Lcoil3/gif/PixelOpacity;

    .line 36
    .line 37
    invoke-static {v0}, Lokio/Okio;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcoil3/gif/PixelOpacity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
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
    sget-object v0, Lcoil3/gif/PixelOpacity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil3/gif/PixelOpacity;
    .locals 1

    .line 1
    const-class v0, Lcoil3/gif/PixelOpacity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcoil3/gif/PixelOpacity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcoil3/gif/PixelOpacity;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/gif/PixelOpacity;->$VALUES:[Lcoil3/gif/PixelOpacity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcoil3/gif/PixelOpacity;

    .line 8
    .line 9
    return-object v0
.end method
