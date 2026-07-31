.class public final Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;
.super Ljava/lang/Object;
.source "DfpCustomFormatAd.kt"

# interfaces
.implements Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;",
        "ad",
        "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;",
        "<init>",
        "(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V",
        "getText",
        "",
        "key",
        "",
        "getImage",
        "performClick",
        "",
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
.field private final ad:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;->ad:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    return-void
.end method


# virtual methods
.method public getImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;->ad:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;->ad:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public performClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;->ad:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    return-void
.end method
