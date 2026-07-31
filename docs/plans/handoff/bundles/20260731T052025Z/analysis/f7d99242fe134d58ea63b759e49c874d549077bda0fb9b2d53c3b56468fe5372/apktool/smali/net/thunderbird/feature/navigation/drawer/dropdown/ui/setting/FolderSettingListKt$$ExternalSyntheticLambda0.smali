.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-boolean p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 10
    .line 11
    iget-boolean v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    iget-object v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-direct {v5, v7, v3, v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;ZI)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 30
    .line 31
    const v6, 0x46ce5fc6

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    invoke-direct {v1, v2, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    .line 47
    .line 48
    const/4 v5, 0x4

    .line 49
    iget-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    invoke-direct {v3, v5, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 55
    .line 56
    const v6, 0xfce0aaf

    .line 57
    .line 58
    .line 59
    invoke-direct {v5, v6, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1, v5}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 67
    .line 68
    const/4 v5, 0x7

    .line 69
    invoke-direct {v1, v2, v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;

    .line 73
    .line 74
    const/4 v6, 0x3

    .line 75
    iget-object v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$5:Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    invoke-direct {v5, v7, v3, v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;ZI)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 81
    .line 82
    const v6, 0x2fb6e91d

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    new-instance v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;

    .line 92
    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    invoke-direct {v1, v2, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;-><init>(ZI)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    .line 99
    .line 100
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    invoke-direct {v2, v0, p0}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    const v0, 0x5b453f41

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1, p0}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 114
    .line 115
    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p0
.end method
