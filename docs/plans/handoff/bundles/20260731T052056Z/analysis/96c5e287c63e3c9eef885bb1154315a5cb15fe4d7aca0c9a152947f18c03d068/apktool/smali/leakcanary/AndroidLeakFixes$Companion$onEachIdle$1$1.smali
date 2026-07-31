.class public final Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;


# direct methods
.method public constructor <init>(Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;->this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;->this$0:Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    .line 2
    .line 3
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$onIdle:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0
.end method
