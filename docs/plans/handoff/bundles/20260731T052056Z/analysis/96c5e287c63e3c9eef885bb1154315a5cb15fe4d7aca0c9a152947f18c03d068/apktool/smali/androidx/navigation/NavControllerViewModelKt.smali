.class public abstract Landroidx/navigation/NavControllerViewModelKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final FACTORY:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/16 v2, 0x12

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v2, Landroidx/navigation/NavControllerViewModel;

    .line 15
    .line 16
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2, v1}, Lcoil3/network/NetworkHeaders$Builder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders$Builder;->build()Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/navigation/NavControllerViewModelKt;->FACTORY:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 30
    .line 31
    return-void
.end method
