.class public Landroidx/fragment/app/FragmentManagerViewModel$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# static fields
.field public static _instance:Landroidx/fragment/app/FragmentManagerViewModel$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    .line 40
    new-instance p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-direct {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    return-object p0

    .line 41
    :pswitch_0
    invoke-static {p1}, Lcoil3/util/UtilsKt;->createViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 42
    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 43
    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :pswitch_2
    new-instance p0, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    iget p2, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 37
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel$1;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel$1;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel$1;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    const/4 p0, 0x0

    throw p0

    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel$1;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcoil3/size/ViewSizeResolver$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel$1;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroidx/lifecycle/SavedStateHandlesVM;

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesVM;-><init>()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcoil3/size/ViewSizeResolver$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
