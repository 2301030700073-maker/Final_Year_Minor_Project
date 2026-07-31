.class public final enum Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_MODULE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_PROPERTY:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum ERROR_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

.field public static final enum PARENT_OF_ERROR_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;


# instance fields
.field private final debugText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 2
    .line 3
    const-string v1, "<Error class: %s>"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ERROR_CLASS"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 12
    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 14
    .line 15
    const-string v3, "<Error function>"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "ERROR_FUNCTION"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 24
    .line 25
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 26
    .line 27
    const-string v5, "<Error scope>"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "ERROR_SCOPE"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 36
    .line 37
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 38
    .line 39
    const-string v7, "<Error module>"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "ERROR_MODULE"

    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_MODULE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 48
    .line 49
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 50
    .line 51
    const-string v9, "<Error property>"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "ERROR_PROPERTY"

    .line 55
    .line 56
    invoke-direct {v7, v10, v11, v9}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_PROPERTY:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 60
    .line 61
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 62
    .line 63
    const-string v11, "[Error type: %s]"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "ERROR_TYPE"

    .line 67
    .line 68
    invoke-direct {v9, v12, v13, v11}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->ERROR_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 72
    .line 73
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 74
    .line 75
    const-string v13, "<Fake parent for error lexical scope>"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "PARENT_OF_ERROR_SCOPE"

    .line 79
    .line 80
    invoke-direct {v11, v14, v15, v13}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->PARENT_OF_ERROR_SCOPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 84
    .line 85
    const/4 v13, 0x7

    .line 86
    new-array v13, v13, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 87
    .line 88
    aput-object v0, v13, v2

    .line 89
    .line 90
    aput-object v1, v13, v4

    .line 91
    .line 92
    aput-object v3, v13, v6

    .line 93
    .line 94
    aput-object v5, v13, v8

    .line 95
    .line 96
    aput-object v7, v13, v10

    .line 97
    .line 98
    aput-object v9, v13, v12

    .line 99
    .line 100
    aput-object v11, v13, v14

    .line 101
    .line 102
    sput-object v13, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->debugText:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
    .locals 1

    .line 1
    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDebugText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorEntity;->debugText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
