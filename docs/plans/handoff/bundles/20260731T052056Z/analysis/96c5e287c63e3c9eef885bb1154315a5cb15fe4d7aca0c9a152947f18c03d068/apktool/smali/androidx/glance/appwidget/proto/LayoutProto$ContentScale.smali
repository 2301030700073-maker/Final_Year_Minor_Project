.class public final enum Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Internal$EnumLite;


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final enum CROP:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final CROP_VALUE:I = 0x2

.field public static final enum FILL_BOUNDS:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final FILL_BOUNDS_VALUE:I = 0x3

.field public static final enum FIT:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final FIT_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final enum UNSPECIFIED_CONTENT_SCALE:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

.field public static final UNSPECIFIED_CONTENT_SCALE_VALUE:I

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
    .locals 12

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 2
    .line 3
    const-string v1, "UNSPECIFIED_CONTENT_SCALE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->UNSPECIFIED_CONTENT_SCALE:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 10
    .line 11
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 12
    .line 13
    const-string v3, "FIT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->FIT:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 20
    .line 21
    new-instance v3, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 22
    .line 23
    const-string v5, "CROP"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->CROP:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 30
    .line 31
    new-instance v5, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 32
    .line 33
    const-string v7, "FILL_BOUNDS"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->FILL_BOUNDS:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 40
    .line 41
    new-instance v7, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 42
    .line 43
    const/4 v9, -0x1

    .line 44
    const-string v10, "UNRECOGNIZED"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    invoke-direct {v7, v10, v11, v9}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 51
    .line 52
    const/4 v9, 0x5

    .line 53
    new-array v9, v9, [Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 54
    .line 55
    aput-object v0, v9, v2

    .line 56
    .line 57
    aput-object v1, v9, v4

    .line 58
    .line 59
    aput-object v3, v9, v6

    .line 60
    .line 61
    aput-object v5, v9, v8

    .line 62
    .line 63
    aput-object v7, v9, v11

    .line 64
    .line 65
    sput-object v9, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 66
    .line 67
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;
    .locals 1

    .line 1
    const-class v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->value:I

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
