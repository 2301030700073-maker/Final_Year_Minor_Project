.class public Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenPgpDataResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final apiResult:Landroid/content/Intent;

.field public final sinkResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->apiResult:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->sinkResult:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
