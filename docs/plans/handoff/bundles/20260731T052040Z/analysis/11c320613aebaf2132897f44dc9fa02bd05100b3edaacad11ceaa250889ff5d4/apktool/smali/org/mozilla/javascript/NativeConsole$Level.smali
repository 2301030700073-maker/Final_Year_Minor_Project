.class public final enum Lorg/mozilla/javascript/NativeConsole$Level;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/NativeConsole$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum INFO:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum WARN:Lorg/mozilla/javascript/NativeConsole$Level;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lorg/mozilla/javascript/NativeConsole$Level;

    .line 3
    .line 4
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

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
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 2
    .line 3
    const-string v1, "TRACE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 10
    .line 11
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 12
    .line 13
    const-string v1, "DEBUG"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 20
    .line 21
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 22
    .line 23
    const-string v1, "INFO"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 30
    .line 31
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 32
    .line 33
    const-string v1, "WARN"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 40
    .line 41
    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 42
    .line 43
    const-string v1, "ERROR"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    .line 50
    .line 51
    invoke-static {}, Lorg/mozilla/javascript/NativeConsole$Level;->$values()[Lorg/mozilla/javascript/NativeConsole$Level;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->$VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

    .line 56
    .line 57
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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/NativeConsole$Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->$VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/mozilla/javascript/NativeConsole$Level;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/mozilla/javascript/NativeConsole$Level;

    .line 8
    .line 9
    return-object v0
.end method
