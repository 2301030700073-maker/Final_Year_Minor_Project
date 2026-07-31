.class public final Lcom/braze/reactbridge/BannerContainer;
.super Landroid/widget/FrameLayout;
.source "BannerContainerView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/braze/reactbridge/BannerContainer;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "bannerView",
        "Lcom/braze/ui/banners/BannerView;",
        "getBannerView",
        "()Lcom/braze/ui/banners/BannerView;",
        "braze_react-native-sdk_release"
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
.field private final bannerView:Lcom/braze/ui/banners/BannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Lcom/braze/ui/banners/BannerView;

    invoke-direct {v0, p1}, Lcom/braze/ui/banners/BannerView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/braze/ui/banners/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iput-object v0, p0, Lcom/braze/reactbridge/BannerContainer;->bannerView:Lcom/braze/ui/banners/BannerView;

    .line 18
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/braze/reactbridge/BannerContainer;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getBannerView()Lcom/braze/ui/banners/BannerView;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/braze/reactbridge/BannerContainer;->bannerView:Lcom/braze/ui/banners/BannerView;

    return-object v0
.end method
