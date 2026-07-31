.class Lorg/mozilla/javascript/LazilyLoadedCtor$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/LazilyLoadedCtor;->buildValue()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/LazilyLoadedCtor;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/LazilyLoadedCtor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/LazilyLoadedCtor$1;->this$0:Lorg/mozilla/javascript/LazilyLoadedCtor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/LazilyLoadedCtor$1;->this$0:Lorg/mozilla/javascript/LazilyLoadedCtor;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/mozilla/javascript/LazilyLoadedCtor;->-$$Nest$mbuildValue0(Lorg/mozilla/javascript/LazilyLoadedCtor;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
