.class public final Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final connection:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;

.field public final flingAnimation:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

.field public final state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->flingAnimation:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 13
    .line 14
    new-instance p1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;-><init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->connection:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;

    .line 20
    .line 21
    return-void
.end method
