.class public abstract Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/outlined/OutlinedRocketIconKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final OutlinedRocketIcon$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/outlined/OutlinedRocketIconKt;->OutlinedRocketIcon$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    return-void
.end method

.method public static final getOutlinedRocketIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/outlined/OutlinedRocketIconKt;->OutlinedRocketIcon$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 8
    .line 9
    return-object v0
.end method
