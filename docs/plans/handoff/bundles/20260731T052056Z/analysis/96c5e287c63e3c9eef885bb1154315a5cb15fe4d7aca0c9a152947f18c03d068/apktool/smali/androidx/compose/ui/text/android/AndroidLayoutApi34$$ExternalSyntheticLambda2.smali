.class public final synthetic Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/text/Layout$TextInclusionStrategy;


# instance fields
.field public final synthetic f$0:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda2;->f$0:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda2;->f$0:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
