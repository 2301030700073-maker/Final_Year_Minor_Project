.class public final enum Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

.field public static final enum NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;


# instance fields
.field private final directionAsBoolean:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NONE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->NONE:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 11
    .line 12
    new-instance v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 13
    .line 14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v4, "FORWARD"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v1, v4, v5, v2}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->FORWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 23
    .line 24
    new-instance v2, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 25
    .line 26
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string v6, "BACKWARD"

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    invoke-direct {v2, v6, v7, v4}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->BACKWARD:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    new-array v4, v4, [Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 38
    .line 39
    aput-object v0, v4, v3

    .line 40
    .line 41
    aput-object v1, v4, v5

    .line 42
    .line 43
    aput-object v2, v4, v7

    .line 44
    .line 45
    sput-object v4, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->directionAsBoolean:Ljava/lang/Boolean;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->$VALUES:[Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDirectionAsBoolean()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;->directionAsBoolean:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method
