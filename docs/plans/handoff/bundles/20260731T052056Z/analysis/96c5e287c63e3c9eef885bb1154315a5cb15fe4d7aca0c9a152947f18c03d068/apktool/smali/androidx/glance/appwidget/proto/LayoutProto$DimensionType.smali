.class public final enum Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Internal$EnumLite;


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final enum EXACT:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final EXACT_VALUE:I = 0x1

.field public static final enum EXPAND:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final EXPAND_VALUE:I = 0x4

.field public static final enum FILL:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final FILL_VALUE:I = 0x3

.field public static final enum UNKNOWN_DIMENSION_TYPE:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final UNKNOWN_DIMENSION_TYPE_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final enum WRAP:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

.field public static final WRAP_VALUE:I = 0x2

.field private static final internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_DIMENSION_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->UNKNOWN_DIMENSION_TYPE:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 10
    .line 11
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 12
    .line 13
    const-string v3, "EXACT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->EXACT:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 20
    .line 21
    new-instance v3, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 22
    .line 23
    const-string v5, "WRAP"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->WRAP:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 30
    .line 31
    new-instance v5, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 32
    .line 33
    const-string v7, "FILL"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->FILL:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 40
    .line 41
    new-instance v7, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 42
    .line 43
    const-string v9, "EXPAND"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->EXPAND:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 50
    .line 51
    new-instance v9, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 52
    .line 53
    const/4 v11, -0x1

    .line 54
    const-string v12, "UNRECOGNIZED"

    .line 55
    .line 56
    const/4 v13, 0x5

    .line 57
    invoke-direct {v9, v12, v13, v11}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 61
    .line 62
    const/4 v11, 0x6

    .line 63
    new-array v11, v11, [Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 64
    .line 65
    aput-object v0, v11, v2

    .line 66
    .line 67
    aput-object v1, v11, v4

    .line 68
    .line 69
    aput-object v3, v11, v6

    .line 70
    .line 71
    aput-object v5, v11, v8

    .line 72
    .line 73
    aput-object v7, v11, v10

    .line 74
    .line 75
    aput-object v9, v11, v13

    .line 76
    .line 77
    sput-object v11, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 78
    .line 79
    new-instance v0, Landroidx/transition/Transition$1;

    .line 80
    .line 81
    const/16 v1, 0xb

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Landroidx/transition/Transition$1;-><init>(IZ)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;
    .locals 1

    .line 1
    const-class v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->value:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p0, "Can\'t get the number of an unknown enum value."

    .line 9
    .line 10
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method
