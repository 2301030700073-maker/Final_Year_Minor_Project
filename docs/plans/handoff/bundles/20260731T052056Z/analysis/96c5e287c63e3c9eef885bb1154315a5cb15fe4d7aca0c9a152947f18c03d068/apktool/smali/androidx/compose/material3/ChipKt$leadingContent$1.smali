.class public final Landroidx/compose/material3/ChipKt$leadingContent$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $leadingIconColor:J

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$leadingIconColor:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iget-wide v3, p0, Landroidx/compose/material3/ChipKt$leadingContent$1;->$leadingIconColor:J

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, p0, :cond_0

    .line 26
    .line 27
    move p0, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v6

    .line 30
    :goto_0
    and-int/2addr p2, v5

    .line 31
    invoke-virtual {p1, p2, p0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-static {v3, v4, v2, p1, v6}, Landroidx/compose/material3/internal/LayoutUtilKt;->Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-object v1

    .line 45
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    and-int/lit8 v0, p2, 0x3

    .line 54
    .line 55
    if-eq v0, p0, :cond_2

    .line 56
    .line 57
    move v6, v5

    .line 58
    :cond_2
    and-int/lit8 p0, p2, 0x1

    .line 59
    .line 60
    invoke-virtual {p1, p0, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 67
    .line 68
    new-instance p2, Landroidx/compose/ui/graphics/Color;

    .line 69
    .line 70
    invoke-direct {p2, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/16 p2, 0x8

    .line 78
    .line 79
    invoke-static {p0, v2, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
