.class public final synthetic Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 14
    const/4 p3, 0x0

    iput p3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    sget-object p1, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->lambda$-1548712596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput p3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$0:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 15
    const/4 p2, 0x1

    iput p2, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$0:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->lambda$-1548712596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    or-int/lit8 p2, v3, 0x1

    .line 23
    .line 24
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/CardKt;->FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p2, v3, p1, p0}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->DefaultCursorHandle(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 49
    .line 50
    check-cast p2, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {v3, p2, p1, p0}, Landroidx/core/util/DebugUtils;->AppLogo(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
