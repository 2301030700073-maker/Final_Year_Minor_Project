.class public final Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadAlternateSplashImage(Landroid/widget/ImageView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1",
        "Lcom/squareup/picasso/Callback;",
        "onSuccess",
        "",
        "onError",
        "app_myPublicRelease"
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
.field final synthetic $imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;->$imageView:Landroid/widget/ImageView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 84
    const-string v0, "##Picasso"

    const-string v1, "Could not fetch image"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;->$imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadAlternateSplashImage$1;->$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
