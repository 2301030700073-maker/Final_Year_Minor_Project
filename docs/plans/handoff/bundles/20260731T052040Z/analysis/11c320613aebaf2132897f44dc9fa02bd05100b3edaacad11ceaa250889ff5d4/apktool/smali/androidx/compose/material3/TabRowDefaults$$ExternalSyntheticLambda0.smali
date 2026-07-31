.class public final synthetic Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/TabRowDefaults;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TabRowDefaults;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    iput p7, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$5:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xc01

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-object v0, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/TabRowDefaults;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget v2, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$2:F

    .line 20
    .line 21
    iget-wide v3, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$3:J

    .line 22
    .line 23
    iget v7, p0, Landroidx/compose/material3/TabRowDefaults$$ExternalSyntheticLambda0;->f$5:I

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/TabRowDefaults;->SecondaryIndicator-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
