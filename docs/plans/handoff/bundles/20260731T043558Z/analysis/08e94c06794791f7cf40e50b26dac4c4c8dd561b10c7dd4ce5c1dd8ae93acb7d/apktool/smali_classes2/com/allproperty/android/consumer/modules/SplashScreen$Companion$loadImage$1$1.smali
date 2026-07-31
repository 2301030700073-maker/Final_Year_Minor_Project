.class public final Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
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
        "com/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1",
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
.field final synthetic $callback:Lcom/squareup/picasso/Callback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;->$callback:Lcom/squareup/picasso/Callback;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;->$callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onError()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion$loadImage$1$1;->$callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onSuccess()V

    :cond_0
    return-void
.end method
