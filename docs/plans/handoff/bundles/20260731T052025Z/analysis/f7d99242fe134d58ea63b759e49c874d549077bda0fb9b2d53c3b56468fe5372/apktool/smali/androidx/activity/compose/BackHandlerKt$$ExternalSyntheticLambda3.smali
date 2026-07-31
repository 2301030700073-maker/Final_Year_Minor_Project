.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/Function;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/Function;III)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/Function;

    .line 6
    .line 7
    iput p3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$3:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/Function;

    .line 10
    .line 11
    iget-boolean p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    or-int/lit8 p2, v3, 0x1

    .line 26
    .line 27
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {p0, v4, p1, p2, v2}, Lokhttp3/CacheControl$Companion;->K9MailTheme2(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    check-cast p2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    or-int/lit8 p2, v3, 0x1

    .line 45
    .line 46
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p0, v4, p1, p2, v2}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
