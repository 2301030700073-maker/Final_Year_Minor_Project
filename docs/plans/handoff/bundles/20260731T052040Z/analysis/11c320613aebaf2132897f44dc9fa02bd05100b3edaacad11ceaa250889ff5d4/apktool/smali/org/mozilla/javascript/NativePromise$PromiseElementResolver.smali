.class Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromiseElementResolver"
.end annotation


# instance fields
.field private alreadyCalled:Z

.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 6
    .line 7
    iput p1, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public reject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 10
    .line 11
    iget-object v1, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->errors:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget p0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    .line 14
    .line 15
    invoke-virtual {v1, p0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget p0, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    .line 19
    .line 20
    sub-int/2addr p0, v0

    .line 21
    iput p0, p4, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->remainingElements:I

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p4, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->finalRejection(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p0
.end method

.method public resolve(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->alreadyCalled:Z

    .line 10
    .line 11
    iget-object v1, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->values:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget p0, p0, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;->index:I

    .line 14
    .line 15
    invoke-virtual {v1, p0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget p0, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    .line 19
    .line 20
    sub-int/2addr p0, v0

    .line 21
    iput p0, p4, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->remainingElements:I

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p4, p1, p2}, Lorg/mozilla/javascript/NativePromise$PromiseAllResolver;->finalResolution(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p0
.end method
