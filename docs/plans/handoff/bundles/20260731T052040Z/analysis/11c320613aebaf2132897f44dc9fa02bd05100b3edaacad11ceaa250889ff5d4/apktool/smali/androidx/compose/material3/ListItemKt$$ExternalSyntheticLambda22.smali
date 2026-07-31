.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/material3/tokens/TypographyKeyTokens;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->f$0:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/material3/tokens/TypographyKeyTokens;

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
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x31

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->f$1:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 8
    .line 9
    iget-wide v4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda22;->f$0:J

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {v4, v5, v3, p1, p0}, Landroidx/compose/material3/ListItemKt;->SupportingDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {v4, v5, v3, p1, p0}, Landroidx/compose/material3/ListItemKt;->OverlineDecorator-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
