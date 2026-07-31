.class Lorg/mozilla/javascript/PolicySecurityController$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/PolicySecurityController;->createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
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
.field final synthetic this$0:Lorg/mozilla/javascript/PolicySecurityController;

.field final synthetic val$parent:Ljava/lang/ClassLoader;

.field final synthetic val$securityDomain:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/PolicySecurityController$1;->this$0:Lorg/mozilla/javascript/PolicySecurityController;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$1;->val$parent:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/mozilla/javascript/PolicySecurityController$1;->val$securityDomain:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$Loader;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/PolicySecurityController$1;->val$parent:Ljava/lang/ClassLoader;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/mozilla/javascript/PolicySecurityController$1;->val$securityDomain:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/security/CodeSource;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/PolicySecurityController$Loader;-><init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
