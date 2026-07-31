.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;

    .line 15
    .line 16
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iget-boolean v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    invoke-direct {v3, v4, v5, v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;ZI)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    const v5, -0x27aba595

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v4}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-direct {v0, v1, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    .line 42
    .line 43
    iget-object v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-direct {v4, v2, v5}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 49
    .line 50
    const v5, -0x3da4a96c

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    .line 66
    .line 67
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/AccountSettingListKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    invoke-direct {v1, v3, p0}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 73
    .line 74
    const v2, 0x72c326f3

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v2, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, p0}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method
