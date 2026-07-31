.class public interface abstract Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;
.super Ljava/lang/Object;
.source "CustomFormatAdLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;",
        "",
        "onAdLoaded",
        "",
        "ad",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;",
        "onAdFailedToLoad",
        "onAdClicked",
        "key",
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


# virtual methods
.method public abstract onAdClicked(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;Ljava/lang/String;)V
.end method

.method public abstract onAdFailedToLoad()V
.end method

.method public abstract onAdLoaded(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;)V
.end method
