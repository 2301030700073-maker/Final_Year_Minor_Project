.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final pageTitle:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->pageTitle:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    iget p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 81
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 82
    const-string p1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :pswitch_0
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel;

    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->pageTitle:Ljava/lang/Object;

    check-cast p0, Lorg/wikipedia/page/PageTitle;

    invoke-static {p0}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;-><init>(Lorg/wikipedia/page/PageTitle;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->pageTitle:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 15
    .line 16
    array-length v0, p0

    .line 17
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    if-ge v1, v0, :cond_1

    .line 27
    .line 28
    aget-object v3, p0, v1

    .line 29
    .line 30
    iget-object v4, v3, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->clazz:Lkotlin/reflect/KClass;

    .line 31
    .line 32
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v3, v2

    .line 43
    :goto_1
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget-object p0, v3, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->initializer:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object p0, v2

    .line 57
    :goto_2
    if-eqz p0, :cond_3

    .line 58
    .line 59
    move-object v2, p0

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "No initializer set for given class "

    .line 66
    .line 67
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    return-object v2

    .line 75
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1

    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcoil3/size/ViewSizeResolver$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 85
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcoil3/size/ViewSizeResolver$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
