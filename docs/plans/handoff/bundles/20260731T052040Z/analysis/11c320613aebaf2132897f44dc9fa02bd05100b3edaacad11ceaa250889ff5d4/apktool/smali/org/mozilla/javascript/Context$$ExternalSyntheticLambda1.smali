.class public final synthetic Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Callable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Callable;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$2:Lorg/mozilla/javascript/Scriptable;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$3:[Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$2:Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$3:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Callable;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda1;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 8
    .line 9
    invoke-static {v2, p0, v0, v1, p1}, Lorg/mozilla/javascript/Context;->$r8$lambda$NVzMDoGuPMMp1k8cRcoUF7HXrRQ(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
