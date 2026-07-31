.class public final Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;->INSTANCE:Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;->INSTANCE$1:Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 p2, p0, 0x3

    .line 20
    .line 21
    if-eq p2, v2, :cond_0

    .line 22
    .line 23
    move v1, v3

    .line 24
    :cond_0
    and-int/2addr p0, v3

    .line 25
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {p1, p0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    and-int/lit8 p2, p0, 0x3

    .line 47
    .line 48
    if-eq p2, v2, :cond_2

    .line 49
    .line 50
    move v1, v3

    .line 51
    :cond_2
    and-int/2addr p0, v3

    .line 52
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {p1, p0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
