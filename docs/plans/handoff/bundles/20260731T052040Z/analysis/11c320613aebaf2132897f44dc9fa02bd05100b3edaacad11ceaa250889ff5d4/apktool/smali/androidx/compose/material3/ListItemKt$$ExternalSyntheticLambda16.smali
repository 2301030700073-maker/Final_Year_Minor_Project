.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/State;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

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
    iget v0, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x30

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/State;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda16;->f$0:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, p2, 0x3

    .line 26
    .line 27
    if-eq v0, v4, :cond_0

    .line 28
    .line 29
    move v3, v5

    .line 30
    :cond_0
    and-int/2addr p2, v5

    .line 31
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroidx/compose/ui/graphics/Color;

    .line 44
    .line 45
    iget-wide v3, p2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 46
    .line 47
    invoke-static {v3, v4, p0, p1, v2}, Landroidx/compose/material3/ListItemKt;->SupportingDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v1

    .line 55
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 56
    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    move v3, v5

    .line 60
    :cond_2
    and-int/2addr p2, v5

    .line 61
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Landroidx/compose/ui/graphics/Color;

    .line 74
    .line 75
    iget-wide v3, p2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 76
    .line 77
    invoke-static {v3, v4, p0, p1, v2}, Landroidx/compose/material3/ListItemKt;->OverlineDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-object v1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
