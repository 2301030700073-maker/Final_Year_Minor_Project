.class final enum Lorg/mozilla/javascript/TopLevel$NativeErrors;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/TopLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/TopLevel$NativeErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum AggregateError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 4
    .line 5
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->AggregateError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 2
    .line 3
    const-string v1, "AggregateError"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->AggregateError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 10
    .line 11
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 12
    .line 13
    const-string v1, "Error"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 20
    .line 21
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 22
    .line 23
    const-string v1, "EvalError"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 30
    .line 31
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 32
    .line 33
    const-string v1, "RangeError"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 40
    .line 41
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 42
    .line 43
    const-string v1, "ReferenceError"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 50
    .line 51
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 52
    .line 53
    const-string v1, "SyntaxError"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 60
    .line 61
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 62
    .line 63
    const-string v1, "TypeError"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 70
    .line 71
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 72
    .line 73
    const-string v1, "URIError"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 80
    .line 81
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 82
    .line 83
    const-string v1, "InternalError"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 91
    .line 92
    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 93
    .line 94
    const-string v1, "JavaException"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 102
    .line 103
    invoke-static {}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->$values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->$VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 108
    .line 109
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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/TopLevel$NativeErrors;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->$VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/mozilla/javascript/TopLevel$NativeErrors;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 8
    .line 9
    return-object v0
.end method
