.class public abstract Landroidx/glance/CompositionLocalsKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalGlanceId:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Landroidx/glance/CompositionLocalsKt;->LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    sget-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$2:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Landroidx/glance/CompositionLocalsKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    .line 20
    sget-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$4:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 21
    .line 22
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Landroidx/glance/CompositionLocalsKt;->LocalState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    sget-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$3:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 31
    .line 32
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Landroidx/glance/CompositionLocalsKt;->LocalGlanceId:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 38
    .line 39
    sget-object v0, Landroidx/glance/CompositionLocalsKt$LocalSize$1;->INSTANCE$1:Landroidx/glance/CompositionLocalsKt$LocalSize$1;

    .line 40
    .line 41
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    sput-object v1, Landroidx/glance/CompositionLocalsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 47
    .line 48
    return-void
.end method
