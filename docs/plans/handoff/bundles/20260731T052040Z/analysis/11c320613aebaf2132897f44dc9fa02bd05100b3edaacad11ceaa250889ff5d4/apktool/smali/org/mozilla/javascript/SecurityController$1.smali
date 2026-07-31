.class Lorg/mozilla/javascript/SecurityController$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Script;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/SecurityController;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$callable:Lorg/mozilla/javascript/Callable;

.field final synthetic val$thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/SecurityController;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/SecurityController$1;->this$0:Lorg/mozilla/javascript/SecurityController;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/javascript/SecurityController$1;->val$callable:Lorg/mozilla/javascript/Callable;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/mozilla/javascript/SecurityController$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/mozilla/javascript/SecurityController$1;->val$args:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/SecurityController$1;->val$callable:Lorg/mozilla/javascript/Callable;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/SecurityController$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/mozilla/javascript/SecurityController$1;->val$args:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, v1, p0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
