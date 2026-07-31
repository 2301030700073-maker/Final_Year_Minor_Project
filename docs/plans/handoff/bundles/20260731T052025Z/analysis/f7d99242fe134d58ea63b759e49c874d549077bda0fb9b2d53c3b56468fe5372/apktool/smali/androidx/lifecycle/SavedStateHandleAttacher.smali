.class public final Landroidx/lifecycle/SavedStateHandleAttacher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final provider:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->provider:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandleAttacher;->provider:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast v1, [Landroidx/lifecycle/GeneratedAdapter;

    .line 14
    .line 15
    array-length p0, v1

    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 p2, 0x0

    .line 18
    if-gtz p0, :cond_1

    .line 19
    .line 20
    array-length p0, v1

    .line 21
    if-gtz p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    aget-object p0, v1, p2

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    aget-object p0, v1, p2

    .line 28
    .line 29
    throw p1

    .line 30
    :pswitch_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 31
    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, Landroidx/lifecycle/SavedStateHandlesProvider;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/lifecycle/SavedStateHandlesProvider;->performRestore()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p0, "Next event must be ON_CREATE, it was "

    .line 48
    .line 49
    invoke-static {p2, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
