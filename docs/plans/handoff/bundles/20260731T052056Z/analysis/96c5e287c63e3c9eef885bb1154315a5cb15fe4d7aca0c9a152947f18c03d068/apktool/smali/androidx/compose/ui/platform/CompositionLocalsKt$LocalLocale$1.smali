.class public final Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

.field public static final INSTANCE$4:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->INSTANCE$1:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->INSTANCE$2:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->INSTANCE$3:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->INSTANCE:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->INSTANCE$4:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;

    .line 41
    .line 42
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalLocale$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/platform/TestTagKt;->canBeSavedToBundle(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 16
    .line 17
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 63
    .line 64
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 68
    .line 69
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableLocaleList:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 70
    .line 71
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Landroidx/compose/ui/text/intl/Locale;

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
