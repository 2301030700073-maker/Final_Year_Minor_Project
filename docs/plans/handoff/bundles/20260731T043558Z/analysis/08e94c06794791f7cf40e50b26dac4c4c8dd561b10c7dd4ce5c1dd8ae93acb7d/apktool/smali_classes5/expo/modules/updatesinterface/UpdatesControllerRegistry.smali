.class public final Lexpo/modules/updatesinterface/UpdatesControllerRegistry;
.super Ljava/lang/Object;
.source "UpdatesControllerRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/updatesinterface/UpdatesControllerRegistry;",
        "",
        "<init>",
        "()V",
        "controller",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "getController",
        "()Ljava/lang/ref/WeakReference;",
        "setController",
        "(Ljava/lang/ref/WeakReference;)V",
        "expo-updates-interface_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/updatesinterface/UpdatesControllerRegistry;

.field private static controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;

    invoke-direct {v0}, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;-><init>()V

    sput-object v0, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;->INSTANCE:Lexpo/modules/updatesinterface/UpdatesControllerRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getController()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterface;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;->controller:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final setController(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterface;",
            ">;)V"
        }
    .end annotation

    .line 6
    sput-object p1, Lexpo/modules/updatesinterface/UpdatesControllerRegistry;->controller:Ljava/lang/ref/WeakReference;

    return-void
.end method
