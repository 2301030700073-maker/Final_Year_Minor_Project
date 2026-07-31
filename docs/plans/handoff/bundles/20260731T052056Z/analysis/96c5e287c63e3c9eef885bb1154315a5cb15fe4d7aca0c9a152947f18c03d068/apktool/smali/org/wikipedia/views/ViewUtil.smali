.class public final Lorg/wikipedia/views/ViewUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/AutoFitRecyclerView$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V
    .locals 10

    .line 1
    const/high16 v0, 0x7f0f0000

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 v1, p3, 0x4

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    :goto_0
    and-int/lit8 v2, p3, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move-object v8, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v8, v0

    .line 22
    :goto_1
    and-int/lit8 p3, p3, 0x10

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    move-object v9, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object v9, p2

    .line 29
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    sget-object p2, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-object v5, p1

    .line 50
    invoke-static/range {v4 .. v9}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object p2, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 55
    .line 56
    new-instance p2, Lcoil3/target/ImageViewTarget;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcoil3/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p1, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v4}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    const-string p0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 76
    .line 77
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
