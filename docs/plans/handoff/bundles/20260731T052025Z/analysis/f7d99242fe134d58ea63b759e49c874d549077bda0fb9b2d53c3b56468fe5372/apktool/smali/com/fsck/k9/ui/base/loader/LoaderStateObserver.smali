.class public final Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final allViews:Ljava/util/Set;

.field public final dataView:Landroid/view/View;

.field public final displayData:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

.field public final errorView:Landroid/view/View;

.field public final loadingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->loadingView:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->errorView:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->dataView:Landroid/view/View;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->displayData:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 p4, 0x3

    .line 13
    new-array p4, p4, [Landroid/view/View;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aput-object p1, p4, v0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    aput-object p2, p4, p1

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    aput-object p3, p4, p1

    .line 23
    .line 24
    invoke-static {p4}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->allViews:Ljava/util/Set;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/fsck/k9/ui/base/loader/LoaderState;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/fsck/k9/ui/base/loader/LoaderState$Loading;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->loadingView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->show(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/ui/base/loader/LoaderState$Error;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->errorView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->show(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    instance-of v0, p1, Lcom/fsck/k9/ui/base/loader/LoaderState$Data;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->dataView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->show(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/fsck/k9/ui/base/loader/LoaderState$Data;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/fsck/k9/ui/base/loader/LoaderState$Data;->data:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->displayData:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/base/loader/LoaderStateObserver;->allViews:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 v1, 0x8

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
