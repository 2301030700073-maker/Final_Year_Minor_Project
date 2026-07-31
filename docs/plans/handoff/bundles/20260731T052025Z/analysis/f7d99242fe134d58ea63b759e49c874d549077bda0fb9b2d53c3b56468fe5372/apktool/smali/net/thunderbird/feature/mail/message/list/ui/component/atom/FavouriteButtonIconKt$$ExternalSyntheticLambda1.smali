.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$3:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 15
    .line 16
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt$$ExternalSyntheticLambda1;->f$3:F

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/component/atom/FavouriteButtonIconKt;->FavouriteButtonIcon--jt2gSs(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
