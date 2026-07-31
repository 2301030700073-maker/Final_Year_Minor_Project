.class public final synthetic Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lcom/skydoves/landscapist/components/ImageComponent;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lcom/skydoves/landscapist/ImageOptions;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function5;


# direct methods
.method public synthetic constructor <init>(Lcom/skydoves/landscapist/components/ImageComponent;Lkotlin/jvm/functions/Function1;Lcom/skydoves/landscapist/ImageOptions;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$0:Lcom/skydoves/landscapist/components/ImageComponent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$2:Lcom/skydoves/landscapist/ImageOptions;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function4;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function4;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$7:Lkotlin/jvm/functions/Function5;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 3
    .line 4
    move-object v9, p2

    .line 5
    check-cast v9, Lcom/skydoves/landscapist/ImageLoadState;

    .line 6
    .line 7
    move-object v10, p3

    .line 8
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    move-object/from16 p1, p4

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v11

    .line 18
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$0:Lcom/skydoves/landscapist/components/ImageComponent;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$2:Lcom/skydoves/landscapist/ImageOptions;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function4;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function4;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    iget-object v7, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda9;->f$7:Lkotlin/jvm/functions/Function5;

    .line 33
    .line 34
    invoke-static/range {v0 .. v11}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$SpLBu0Y2QUl7KwbeG8Edd2-t8t4(Lcom/skydoves/landscapist/components/ImageComponent;Lkotlin/jvm/functions/Function1;Lcom/skydoves/landscapist/ImageOptions;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function5;Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Lcom/skydoves/landscapist/ImageLoadState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
