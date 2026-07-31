.class public abstract Lio/reactivex/rxjava3/internal/functions/Functions;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final EMPTY_ACTION:Landroidx/transition/Transition$1;

.field public static final EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

.field public static final EMPTY_RUNNABLE:Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

.field public static final EQUALS:Lokio/ByteString$Companion;

.field public static final IDENTITY:Lokio/Path$Companion;

.field public static final ON_ERROR_MISSING:Lokio/ByteString$Companion;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/Path$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->IDENTITY:Lokio/Path$Companion;

    .line 8
    .line 9
    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    .line 16
    .line 17
    new-instance v0, Landroidx/transition/Transition$1;

    .line 18
    .line 19
    const/16 v1, 0x1d

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 25
    .line 26
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 32
    .line 33
    new-instance v0, Lokio/ByteString$Companion;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 40
    .line 41
    new-instance v0, Lokio/ByteString$Companion;

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EQUALS:Lokio/ByteString$Companion;

    .line 48
    .line 49
    return-void
.end method

.method public static verifyPositive(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " > 0 required but it was "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
