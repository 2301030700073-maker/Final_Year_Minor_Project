.class public final Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onIdle:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$onIdle:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;->$onIdle:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    .line 7
    .line 8
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1$1;-><init>(Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
