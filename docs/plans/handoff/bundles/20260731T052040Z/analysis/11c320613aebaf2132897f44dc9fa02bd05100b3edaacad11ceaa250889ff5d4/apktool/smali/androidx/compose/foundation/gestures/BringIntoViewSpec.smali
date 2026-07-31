.class public interface abstract Landroidx/compose/foundation/gestures/BringIntoViewSpec;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->$$INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract calculateScrollDistance(FFF)F
.end method

.method public abstract getScrollAnimationSpec()Landroidx/compose/animation/core/SpringSpec;
.end method
