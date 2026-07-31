.class public final enum Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Internal$EnumLite;


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

.field public static final enum BACKGROUND_NODE:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

.field public static final BACKGROUND_NODE_VALUE:I = 0x1

.field public static final enum DEFAULT_IDENTITY:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

.field public static final DEFAULT_IDENTITY_VALUE:I

.field public static final enum UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

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
    .locals 8

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 2
    .line 3
    const-string v1, "DEFAULT_IDENTITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->DEFAULT_IDENTITY:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 10
    .line 11
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 12
    .line 13
    const-string v3, "BACKGROUND_NODE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->BACKGROUND_NODE:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 20
    .line 21
    new-instance v3, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 22
    .line 23
    const/4 v5, -0x1

    .line 24
    const-string v6, "UNRECOGNIZED"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    invoke-direct {v3, v6, v7, v5}, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 34
    .line 35
    aput-object v0, v5, v2

    .line 36
    .line 37
    aput-object v1, v5, v4

    .line 38
    .line 39
    aput-object v3, v5, v7

    .line 40
    .line 41
    sput-object v5, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 42
    .line 43
    new-instance v0, Landroidx/transition/Transition$1;

    .line 44
    .line 45
    const/16 v1, 0xc

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Landroidx/transition/Transition$1;-><init>(IZ)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;
    .locals 1

    .line 1
    const-class v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->value:I

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
