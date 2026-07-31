.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $closeDrawer$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $openAccount$inlined:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

.field public final synthetic $openAddAccount$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final synthetic $openFolder$inlined:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

.field public final synthetic $openManageFolders$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final synthetic $openSettings$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final synthetic $openUnifiedFolder$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openAccount$inlined:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openFolder$inlined:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openUnifiedFolder$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openManageFolders$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openSettings$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openAddAccount$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$closeDrawer$inlined:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect;

    .line 2
    .line 3
    instance-of p2, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAccount;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAccount;

    .line 8
    .line 9
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAccount;->accountId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openAccount$inlined:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of p2, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;

    .line 22
    .line 23
    iget-object p2, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;->accountId:Ljava/lang/String;

    .line 24
    .line 25
    iget-wide v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenFolder;->folderId:J

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openFolder$inlined:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-virtual {p0, p2, p1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenUnifiedFolder;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenUnifiedFolder;

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openUnifiedFolder$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    instance-of p2, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenManageFolders;

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openManageFolders$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    instance-of p2, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenSettings;

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openSettings$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->invoke()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    sget-object p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAddAccount;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$OpenAddAccount;

    .line 73
    .line 74
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$openAddAccount$inlined:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->invoke()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    sget-object p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$CloseDrawer;->INSTANCE:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Effect$CloseDrawer;

    .line 87
    .line 88
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$$inlined$observe$2$1;->$closeDrawer$inlined:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method
