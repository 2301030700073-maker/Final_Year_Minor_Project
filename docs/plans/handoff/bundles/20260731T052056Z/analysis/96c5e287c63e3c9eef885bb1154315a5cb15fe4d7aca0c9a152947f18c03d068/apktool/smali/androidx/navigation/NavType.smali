.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final BoolArrayType:Landroidx/navigation/IntListNavType;

.field public static final BoolListType:Landroidx/navigation/IntListNavType;

.field public static final BoolType:Landroidx/navigation/IntNavType;

.field public static final FloatArrayType:Landroidx/navigation/IntListNavType;

.field public static final FloatListType:Landroidx/navigation/IntListNavType;

.field public static final FloatType:Landroidx/navigation/IntNavType;

.field public static final IntArrayType:Landroidx/navigation/IntListNavType;

.field public static final IntListType:Landroidx/navigation/IntListNavType;

.field public static final IntType:Landroidx/navigation/IntNavType;

.field public static final LongArrayType:Landroidx/navigation/IntListNavType;

.field public static final LongListType:Landroidx/navigation/IntListNavType;

.field public static final LongType:Landroidx/navigation/IntNavType;

.field public static final StringArrayType:Landroidx/navigation/IntListNavType;

.field public static final StringListType:Landroidx/navigation/IntListNavType;

.field public static final StringType:Landroidx/navigation/IntNavType;


# instance fields
.field public final isNullableAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/navigation/IntNavType;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/IntNavType;

    .line 9
    .line 10
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/IntListNavType;

    .line 18
    .line 19
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/navigation/NavType;->IntListType:Landroidx/navigation/IntListNavType;

    .line 26
    .line 27
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-direct {v0, v1, v2}, Landroidx/navigation/IntNavType;-><init>(IZ)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/IntNavType;

    .line 34
    .line 35
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/IntListNavType;

    .line 42
    .line 43
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 44
    .line 45
    const/4 v1, 0x7

    .line 46
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/navigation/NavType;->LongListType:Landroidx/navigation/IntListNavType;

    .line 50
    .line 51
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-direct {v0, v1, v2}, Landroidx/navigation/IntNavType;-><init>(IZ)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/IntNavType;

    .line 58
    .line 59
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/IntListNavType;

    .line 66
    .line 67
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Landroidx/navigation/NavType;->FloatListType:Landroidx/navigation/IntListNavType;

    .line 74
    .line 75
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, v1, v2}, Landroidx/navigation/IntNavType;-><init>(IZ)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/IntNavType;

    .line 82
    .line 83
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 84
    .line 85
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/IntListNavType;

    .line 89
    .line 90
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 91
    .line 92
    const/4 v1, 0x2

    .line 93
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Landroidx/navigation/NavType;->BoolListType:Landroidx/navigation/IntListNavType;

    .line 97
    .line 98
    new-instance v0, Landroidx/navigation/IntNavType;

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntNavType;-><init>(IZ)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/IntNavType;

    .line 105
    .line 106
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 107
    .line 108
    const/16 v1, 0x8

    .line 109
    .line 110
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/IntListNavType;

    .line 114
    .line 115
    new-instance v0, Landroidx/navigation/IntListNavType;

    .line 116
    .line 117
    const/16 v1, 0x9

    .line 118
    .line 119
    invoke-direct {v0, v1, v3}, Landroidx/navigation/IntListNavType;-><init>(IZ)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Landroidx/navigation/NavType;->StringListType:Landroidx/navigation/IntListNavType;

    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavType;->isNullableAllowed:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract parseValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public parseValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public serializeAsValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
