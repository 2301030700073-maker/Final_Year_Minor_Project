.class public final Lcom/shopify/reactnative/flash_list/CellContainerManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "CellContainerManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/CellContainerManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AutoLayoutView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shopify/reactnative/flash_list/CellContainerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
        ">;",
        "Lcom/facebook/react/viewmanagers/CellContainerManagerInterface<",
        "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0017R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/CellContainerManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
        "Lcom/facebook/react/viewmanagers/CellContainerManagerInterface;",
        "<init>",
        "()V",
        "mDelegate",
        "Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;",
        "getName",
        "",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "setIndex",
        "",
        "view",
        "index",
        "",
        "Companion",
        "shopify_flash-list_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/shopify/reactnative/flash_list/CellContainerManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "CellContainer"


# instance fields
.field private final mDelegate:Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate<",
            "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
            "Lcom/shopify/reactnative/flash_list/CellContainerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shopify/reactnative/flash_list/CellContainerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shopify/reactnative/flash_list/CellContainerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shopify/reactnative/flash_list/CellContainerManager;->Companion:Lcom/shopify/reactnative/flash_list/CellContainerManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 14
    new-instance v0, Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/shopify/reactnative/flash_list/CellContainerManager;->mDelegate:Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/flash_list/CellContainerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/flash_list/CellContainerImpl;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/flash_list/CellContainerImpl;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/shopify/reactnative/flash_list/CellContainerImpl;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/shopify/reactnative/flash_list/CellContainerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/shopify/reactnative/flash_list/CellContainerManager;->mDelegate:Lcom/facebook/react/viewmanagers/CellContainerManagerDelegate;

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "CellContainer"

    return-object v0
.end method

.method public bridge synthetic setIndex(Landroid/view/View;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/shopify/reactnative/flash_list/CellContainerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/flash_list/CellContainerManager;->setIndex(Lcom/shopify/reactnative/flash_list/CellContainerImpl;I)V

    return-void
.end method

.method public setIndex(Lcom/shopify/reactnative/flash_list/CellContainerImpl;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "index"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/flash_list/CellContainerImpl;->setIndex(I)V

    return-void
.end method
