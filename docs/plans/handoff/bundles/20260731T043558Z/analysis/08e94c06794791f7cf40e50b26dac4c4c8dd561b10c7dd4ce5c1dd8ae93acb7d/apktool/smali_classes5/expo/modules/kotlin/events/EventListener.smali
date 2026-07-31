.class public abstract Lexpo/modules/kotlin/events/EventListener;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0003\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/EventListener;",
        "",
        "eventName",
        "Lexpo/modules/kotlin/events/EventName;",
        "<init>",
        "(Lexpo/modules/kotlin/events/EventName;)V",
        "getEventName",
        "()Lexpo/modules/kotlin/events/EventName;",
        "Lexpo/modules/kotlin/events/BasicEventListener;",
        "Lexpo/modules/kotlin/events/EventListenerWithPayload;",
        "Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final eventName:Lexpo/modules/kotlin/events/EventName;


# direct methods
.method private constructor <init>(Lexpo/modules/kotlin/events/EventName;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/events/EventListener;->eventName:Lexpo/modules/kotlin/events/EventName;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/events/EventListener;-><init>(Lexpo/modules/kotlin/events/EventName;)V

    return-void
.end method


# virtual methods
.method public final getEventName()Lexpo/modules/kotlin/events/EventName;
    .locals 1

    .line 3
    iget-object v0, p0, Lexpo/modules/kotlin/events/EventListener;->eventName:Lexpo/modules/kotlin/events/EventName;

    return-object v0
.end method
