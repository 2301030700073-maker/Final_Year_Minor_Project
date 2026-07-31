.class public final synthetic Lcom/skydoves/landscapist/coil3/LocalCoilProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# instance fields
.field public final synthetic f$0:Lcoil3/ImageLoader;


# direct methods
.method public synthetic constructor <init>(Lcoil3/ImageLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/LocalCoilProvider$$ExternalSyntheticLambda0;->f$0:Lcoil3/ImageLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final newImageLoader(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/LocalCoilProvider$$ExternalSyntheticLambda0;->f$0:Lcoil3/ImageLoader;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/skydoves/landscapist/coil3/LocalCoilProvider;->$r8$lambda$bJoIHGnHgQMz1hNfnqvOBgli_sY(Lcoil3/ImageLoader;Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
