.class public interface abstract Landroidx/transition/Transition$TransitionNotification;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ON_CANCEL:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

.field public static final ON_END:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

.field public static final ON_PAUSE:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

.field public static final ON_RESUME:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

.field public static final ON_START:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 8
    .line 9
    new-instance v0, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 17
    .line 18
    new-instance v0, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 26
    .line 27
    new-instance v0, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_PAUSE:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 35
    .line 36
    new-instance v0, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 37
    .line 38
    const/16 v1, 0xb

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_RESUME:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public abstract notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
.end method
