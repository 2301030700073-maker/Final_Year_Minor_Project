.class public final Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "DfpCustomFormatAdLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdFailedToLoad",
        "",
        "adError",
        "Lcom/google/android/gms/ads/LoadAdError;",
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
.field final synthetic this$0:Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;


# direct methods
.method constructor <init>(Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 55
    iget-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;

    invoke-static {p1}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->access$getCallback$p(Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;)Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;->onAdFailedToLoad()V

    :cond_0
    return-void
.end method
