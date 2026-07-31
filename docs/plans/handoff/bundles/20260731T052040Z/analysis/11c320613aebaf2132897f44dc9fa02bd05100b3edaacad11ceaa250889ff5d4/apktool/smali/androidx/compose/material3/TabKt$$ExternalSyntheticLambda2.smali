.class public final synthetic Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-wide p6, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$6:J

    .line 15
    .line 16
    iput-wide p8, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$7:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x6001

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    iget-boolean v0, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-boolean v3, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$3:Z

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    iget-wide v5, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$6:J

    .line 26
    .line 27
    iget-wide v7, p0, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda2;->f$7:J

    .line 28
    .line 29
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TabKt;->Tab-wqdebIU(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;JJLandroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
