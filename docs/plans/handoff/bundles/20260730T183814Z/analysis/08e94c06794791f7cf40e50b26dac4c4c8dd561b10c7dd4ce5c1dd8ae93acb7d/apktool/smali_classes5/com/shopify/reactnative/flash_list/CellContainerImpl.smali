.class public final Lcom/shopify/reactnative/flash_list/CellContainerImpl;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "CellContainerImpl.kt"

# interfaces
.implements Lcom/shopify/reactnative/flash_list/CellContainer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shopify/reactnative/flash_list/CellContainerImpl;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "Lcom/shopify/reactnative/flash_list/CellContainer;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "index",
        "",
        "setIndex",
        "",
        "value",
        "getIndex",
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


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/shopify/reactnative/flash_list/CellContainerImpl;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/shopify/reactnative/flash_list/CellContainerImpl;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/shopify/reactnative/flash_list/CellContainerImpl;->index:I

    return-void
.end method
