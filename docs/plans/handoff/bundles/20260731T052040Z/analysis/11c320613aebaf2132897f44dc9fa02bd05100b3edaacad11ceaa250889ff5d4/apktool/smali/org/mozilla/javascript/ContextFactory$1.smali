.class Lorg/mozilla/javascript/ContextFactory$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ContextFactory;->createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lorg/mozilla/javascript/DefiningClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/ContextFactory;

.field final synthetic val$parent:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory$1;->this$0:Lorg/mozilla/javascript/ContextFactory;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/javascript/ContextFactory$1;->val$parent:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory$1;->run()Lorg/mozilla/javascript/DefiningClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public run()Lorg/mozilla/javascript/DefiningClassLoader;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/DefiningClassLoader;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/ContextFactory$1;->val$parent:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/DefiningClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
