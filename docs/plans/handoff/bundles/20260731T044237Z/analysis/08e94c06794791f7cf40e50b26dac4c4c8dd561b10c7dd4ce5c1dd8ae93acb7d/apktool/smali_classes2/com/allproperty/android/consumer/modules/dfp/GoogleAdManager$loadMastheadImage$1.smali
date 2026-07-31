.class public final Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;
.super Ljava/lang/Object;
.source "GoogleAdManager.kt"

# interfaces
.implements Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->loadMastheadImage(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;",
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


# instance fields
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic this$0:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;


# direct methods
.method constructor <init>(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;

    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "MastheadShowcaseURL"

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "CTALogo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_3

    :sswitch_1
    const-string v0, "Image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_3

    :sswitch_2
    const-string v0, "Description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_3

    :sswitch_3
    const-string v0, "Headline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_3

    .line 66
    :cond_0
    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_4

    .line 59
    :sswitch_4
    const-string v0, "CalltoAction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 61
    :cond_1
    const-string p2, "CTAURL"

    invoke-interface {p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 62
    :goto_0
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p2

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_2
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_4

    .line 67
    :cond_6
    :goto_3
    const-string p1, ""

    check-cast p1, Ljava/lang/CharSequence;

    .line 69
    :goto_4
    sget-object p2, Lcom/allproperty/android/consumer/modules/EventEmitter;->Companion:Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;

    invoke-virtual {p2}, Lcom/allproperty/android/consumer/modules/EventEmitter$Companion;->getInstance()Lcom/allproperty/android/consumer/modules/EventEmitter;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v0, "masthead"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/allproperty/android/consumer/modules/EventEmitter;->sendNativeEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f8efef1 -> :sswitch_4
        -0x3e9c0e0c -> :sswitch_3
        -0x360d424 -> :sswitch_2
        0x437b93b -> :sswitch_1
        0x6b50c7bb -> :sswitch_0
    .end sparse-switch
.end method

.method public onAdFailedToLoad()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;

    invoke-static {v0}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->access$getIndex$p(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;

    invoke-static {v2}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->access$getCustomFormatAdList$p(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager$loadMastheadImage$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;

    invoke-static {v2, p1, v0}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;->access$toMap(Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;I)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
