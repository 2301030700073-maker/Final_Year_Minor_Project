.class public final Landroidx/navigation/NavBackStackEntryState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final impl:Lkotlinx/coroutines/flow/SharingConfig;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-class v0, Landroidx/navigation/NavBackStackEntryState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 26
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 27
    iget-object v1, v1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 28
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 29
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/navigation/NavBackStackEntry;I)V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    return-void
.end method
