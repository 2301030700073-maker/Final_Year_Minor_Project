.class public final Landroidx/compose/material3/ButtonKt$Button$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Lkotlin/Function;

.field public final synthetic $contentColor:J

.field public final synthetic $contentPadding:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lkotlin/Function;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Lkotlin/Function;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Lkotlin/Function;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v11, p1

    .line 16
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    and-int/lit8 p2, p1, 0x3

    .line 25
    .line 26
    if-eq p2, v4, :cond_0

    .line 27
    .line 28
    move v6, v5

    .line 29
    :cond_0
    and-int/2addr p1, v5

    .line 30
    invoke-virtual {v11, p1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    move-object v9, v3

    .line 37
    check-cast v9, Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    move-object v10, v2

    .line 40
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    iget-wide v7, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    .line 44
    .line 45
    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/internal/LayoutUtilKt;->Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object v1

    .line 53
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    check-cast p2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    and-int/lit8 v0, p2, 0x3

    .line 62
    .line 63
    if-eq v0, v4, :cond_2

    .line 64
    .line 65
    move v0, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v0, v6

    .line 68
    :goto_1
    and-int/2addr p2, v5

    .line 69
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    sget-object p2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroidx/compose/material3/Typography;

    .line 82
    .line 83
    iget-object v4, p2, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 84
    .line 85
    new-instance p2, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 86
    .line 87
    check-cast v3, Landroidx/compose/foundation/layout/PaddingValues;

    .line 88
    .line 89
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 90
    .line 91
    invoke-direct {p2, v6, v3, v2}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const v0, 0x18e49c83

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const/16 v7, 0x180

    .line 102
    .line 103
    iget-wide v2, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    .line 104
    .line 105
    move-object v6, p1

    .line 106
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move-object v6, p1

    .line 111
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-object v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
