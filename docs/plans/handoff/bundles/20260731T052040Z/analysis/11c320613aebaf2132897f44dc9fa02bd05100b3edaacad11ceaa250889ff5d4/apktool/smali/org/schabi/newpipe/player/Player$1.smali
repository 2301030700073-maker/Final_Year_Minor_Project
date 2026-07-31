.class public final Lorg/schabi/newpipe/player/Player$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/target/Target;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lcoil3/Image;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Thumbnail - onError() called"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStart(Lcoil3/Image;)V
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public onSuccess(Lcoil3/Image;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-static {p1}, Lcoil3/UriKt;->toBitmap$default(Lcoil3/Image;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
