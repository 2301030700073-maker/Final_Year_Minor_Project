.class public final Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/SessionStateCallback;


# instance fields
.field public final captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onSessionDisconnected()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionDisconnected()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSessionFinalized()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
