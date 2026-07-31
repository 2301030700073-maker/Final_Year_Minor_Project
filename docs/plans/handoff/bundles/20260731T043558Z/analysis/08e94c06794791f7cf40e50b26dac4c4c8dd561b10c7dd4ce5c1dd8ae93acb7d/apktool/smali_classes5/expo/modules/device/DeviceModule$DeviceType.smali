.class public final enum Lexpo/modules/device/DeviceModule$DeviceType;
.super Ljava/lang/Enum;
.source "DeviceModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/device/DeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/device/DeviceModule$DeviceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/device/DeviceModule$DeviceType;",
        "",
        "JSValue",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getJSValue",
        "()I",
        "UNKNOWN",
        "PHONE",
        "TABLET",
        "DESKTOP",
        "TV",
        "expo-device_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/device/DeviceModule$DeviceType;

.field public static final enum DESKTOP:Lexpo/modules/device/DeviceModule$DeviceType;

.field public static final enum PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

.field public static final enum TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

.field public static final enum TV:Lexpo/modules/device/DeviceModule$DeviceType;

.field public static final enum UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;


# instance fields
.field private final JSValue:I


# direct methods
.method private static final synthetic $values()[Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 5

    sget-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    sget-object v2, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    sget-object v3, Lexpo/modules/device/DeviceModule$DeviceType;->DESKTOP:Lexpo/modules/device/DeviceModule$DeviceType;

    sget-object v4, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lexpo/modules/device/DeviceModule$DeviceType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/device/DeviceModule$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 25
    new-instance v0, Lexpo/modules/device/DeviceModule$DeviceType;

    const-string v1, "PHONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/device/DeviceModule$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 26
    new-instance v0, Lexpo/modules/device/DeviceModule$DeviceType;

    const-string v1, "TABLET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/device/DeviceModule$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 27
    new-instance v0, Lexpo/modules/device/DeviceModule$DeviceType;

    const-string v1, "DESKTOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/device/DeviceModule$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->DESKTOP:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 28
    new-instance v0, Lexpo/modules/device/DeviceModule$DeviceType;

    const-string v1, "TV"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lexpo/modules/device/DeviceModule$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    invoke-static {}, Lexpo/modules/device/DeviceModule$DeviceType;->$values()[Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v0

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->$VALUES:[Lexpo/modules/device/DeviceModule$DeviceType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lexpo/modules/device/DeviceModule$DeviceType;->JSValue:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/device/DeviceModule$DeviceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 1

    const-class v0, Lexpo/modules/device/DeviceModule$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 29
    check-cast p0, Lexpo/modules/device/DeviceModule$DeviceType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 1

    sget-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->$VALUES:[Lexpo/modules/device/DeviceModule$DeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, [Lexpo/modules/device/DeviceModule$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getJSValue()I
    .locals 1

    .line 23
    iget v0, p0, Lexpo/modules/device/DeviceModule$DeviceType;->JSValue:I

    return v0
.end method
