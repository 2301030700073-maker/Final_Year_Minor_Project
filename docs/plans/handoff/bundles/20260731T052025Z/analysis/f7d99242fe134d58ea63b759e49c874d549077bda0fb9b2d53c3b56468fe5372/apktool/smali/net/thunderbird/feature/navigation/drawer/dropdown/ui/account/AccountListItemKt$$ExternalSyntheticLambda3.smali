.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v2

    .line 19
    move-object v6, p1

    .line 20
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {v6, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 29
    .line 30
    invoke-interface {p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getHasError()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;

    .line 39
    .line 40
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 41
    .line 42
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 43
    .line 44
    invoke-direct {p2, p1, v0, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;ZZ)V

    .line 45
    .line 46
    .line 47
    const p0, -0x37144019

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p2, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/16 v7, 0x6000

    .line 55
    .line 56
    const/16 v8, 0xe

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
