.class public final Landroidx/glance/CompositionLocalsKt$LocalSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

.field public static final INSTANCE$1:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

.field public static final INSTANCE$2:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

.field public static final INSTANCE$3:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

.field public static final INSTANCE$4:Landroidx/glance/CompositionLocalsKt$LocalSize$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/glance/CompositionLocalsKt$LocalSize$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$1:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/glance/CompositionLocalsKt$LocalSize$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$2:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/glance/CompositionLocalsKt$LocalSize$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$3:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/glance/CompositionLocalsKt$LocalSize$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 33
    .line 34
    new-instance v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Landroidx/glance/CompositionLocalsKt$LocalSize$1;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$4:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "No default glance id"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "No default context"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :pswitch_2
    sget-object p0, Landroidx/glance/color/DynamicThemeColorProviders;->INSTANCE:Landroidx/glance/color/DynamicThemeColorProviders;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "No default size"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
