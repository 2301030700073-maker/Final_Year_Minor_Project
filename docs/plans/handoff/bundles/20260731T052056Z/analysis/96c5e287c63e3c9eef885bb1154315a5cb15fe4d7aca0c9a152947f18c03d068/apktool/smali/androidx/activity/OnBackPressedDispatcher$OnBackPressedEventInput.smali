.class public final Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
.super Landroidx/navigationevent/NavigationEventInput;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final dispatcher:Lcoil3/ImageLoader$Builder;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcoil3/ImageLoader$Builder;

    .line 5
    .line 6
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcoil3/ImageLoader$Builder;-><init>(Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcoil3/ImageLoader$Builder;->addInput(Landroidx/navigationevent/NavigationEventInput;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onHasEnabledHandlersChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
