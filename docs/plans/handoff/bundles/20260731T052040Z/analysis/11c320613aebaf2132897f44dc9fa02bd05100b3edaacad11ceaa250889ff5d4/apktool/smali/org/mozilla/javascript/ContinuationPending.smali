.class public Lorg/mozilla/javascript/ContinuationPending;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final serialVersionUID:J = 0x44c7471fc8185f08L


# instance fields
.field private applicationState:Ljava/lang/Object;

.field private continuationState:Lorg/mozilla/javascript/NativeContinuation;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeContinuation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getApplicationState()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContinuation()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getContinuationState()Lorg/mozilla/javascript/NativeContinuation;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    .line 2
    .line 3
    return-object p0
.end method

.method public setApplicationState(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setContinuation(Lorg/mozilla/javascript/NativeContinuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    .line 2
    .line 3
    return-void
.end method
