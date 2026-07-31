.class public final Lio/reactivex/rxjava3/exceptions/QueueOverflowException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x7633afeb6fd3471eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Queue overflow due to illegal concurrent onNext calls or a bug in an operator"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
