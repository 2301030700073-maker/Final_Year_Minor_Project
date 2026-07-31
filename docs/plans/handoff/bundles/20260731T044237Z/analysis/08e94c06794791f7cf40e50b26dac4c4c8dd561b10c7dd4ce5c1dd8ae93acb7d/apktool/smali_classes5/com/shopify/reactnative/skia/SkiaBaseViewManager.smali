.class public abstract Lcom/shopify/reactnative/skia/SkiaBaseViewManager;
.super Lcom/facebook/react/views/view/ReactViewManager;
.source "SkiaBaseViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shopify/reactnative/skia/SkiaBaseView;",
        ">",
        "Lcom/facebook/react/views/view/ReactViewManager;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;->onDropViewInstance(Lcom/facebook/react/views/view/ReactViewGroup;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 32
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaBaseView;

    invoke-virtual {p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;->dropInstance()V

    return-void
.end method

.method public setDebug(Lcom/shopify/reactnative/skia/SkiaBaseView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "debug"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseView;->setDebugMode(Z)V

    return-void
.end method

.method public bridge synthetic setNativeId(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;->setNativeId(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public setNativeId(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeId(Landroid/view/View;Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 16
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaBaseView;

    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseView;->registerView(I)V

    return-void
.end method

.method public setOpaque(Lcom/shopify/reactnative/skia/SkiaBaseView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "opaque"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 26
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseView;->setOpaque(Z)V

    return-void
.end method
