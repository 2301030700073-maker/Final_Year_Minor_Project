.class public interface abstract Landroidx/transition/Transition$TransitionNotification;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ON_CANCEL:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

.field public static final ON_END:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

.field public static final ON_PAUSE:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

.field public static final ON_RESUME:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

.field public static final ON_START:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 9
    .line 10
    new-instance v0, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 11
    .line 12
    const/16 v1, 0x15

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 18
    .line 19
    new-instance v0, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 20
    .line 21
    const/16 v1, 0x16

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 27
    .line 28
    new-instance v0, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 29
    .line 30
    const/16 v1, 0x17

    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_PAUSE:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 36
    .line 37
    new-instance v0, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 38
    .line 39
    const/16 v1, 0x18

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_RESUME:Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public abstract notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
.end method
