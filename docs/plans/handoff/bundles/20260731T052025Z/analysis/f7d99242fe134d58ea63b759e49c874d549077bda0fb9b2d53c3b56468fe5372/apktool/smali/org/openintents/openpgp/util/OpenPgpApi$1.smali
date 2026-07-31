.class public final Lorg/openintents/openpgp/util/OpenPgpApi$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$1;->val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$1;->val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;->onProgress(II)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method
