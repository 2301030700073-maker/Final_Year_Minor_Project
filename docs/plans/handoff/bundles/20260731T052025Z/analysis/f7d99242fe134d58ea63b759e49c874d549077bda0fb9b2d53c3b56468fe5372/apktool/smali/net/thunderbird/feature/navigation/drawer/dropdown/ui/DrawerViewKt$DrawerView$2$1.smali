.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $dispatch:Lkotlin/jvm/functions/Function1;

.field public final synthetic $drawerState:Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$dispatch:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$drawerState:Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$drawerState:Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$dispatch:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$drawerState:Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;->$dispatch:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectFolder;

    .line 16
    .line 17
    iget-object v0, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedFolderId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectFolder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectAccount;

    .line 30
    .line 31
    iget-object v0, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedAccountUuid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$Event$SelectAccount;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
