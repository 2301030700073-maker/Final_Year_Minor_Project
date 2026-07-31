.class public final Landroidx/camera/view/PreviewView$DisplayRotationListener;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onDisplayAdded$androidx$camera$view$PreviewView$DisplayRotationListener(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onDisplayRemoved$androidx$camera$view$PreviewView$DisplayRotationListener(I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1

    .line 22
    throw p0

    .line 23
    :pswitch_0
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1

    .line 22
    throw p0

    .line 23
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/camera/view/PreviewView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getDefaultDisplay()Landroid/view/Display;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/view/PreviewView$DisplayRotationListener;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1

    .line 22
    throw p0

    .line 23
    :pswitch_0
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
