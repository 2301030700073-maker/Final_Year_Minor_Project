.class public final Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;

.field public final data:Landroid/content/Intent;

.field public final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpApi;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->data:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->data:Landroid/content/Intent;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Ljava/io/ByteArrayOutputStream;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;->onReturn(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
