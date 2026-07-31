.class public final Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;
.super Lleakcanary/FixedWindowCallback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final delegate:Landroid/view/Window$Callback;

.field public final onContentChangedCallbacks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lleakcanary/FixedWindowCallback;-><init>(Landroid/view/Window$Callback;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;->delegate:Landroid/view/Window$Callback;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;->onContentChangedCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onContentChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;->onContentChangedCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v1, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1;->INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;->delegate:Landroid/view/Window$Callback;

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
