.class public final synthetic Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(JJLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput-object p5, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$2:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 9
    .line 10
    iput-object p6, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    iput-object p7, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p8, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    iput p9, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$6:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-wide v0, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$0:J

    .line 18
    .line 19
    iget-wide v2, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$1:J

    .line 20
    .line 21
    iget-object v4, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$2:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 22
    .line 23
    iget-object v5, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-object v6, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget-object v7, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Lkotlin/uuid/UuidKt;->AvatarLayout-1Kfb2uI(JJLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
