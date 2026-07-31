.class public final Lorg/schabi/newpipe/player/PlayerService$LocalBinder;
.super Landroid/os/Binder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final playerService:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method
