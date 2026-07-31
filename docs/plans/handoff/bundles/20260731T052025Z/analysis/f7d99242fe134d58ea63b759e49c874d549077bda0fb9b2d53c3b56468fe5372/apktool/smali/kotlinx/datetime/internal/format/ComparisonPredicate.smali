.class public final Lkotlinx/datetime/internal/format/ComparisonPredicate;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/datetime/internal/format/Predicate;


# instance fields
.field public final expectedValue:Ljava/lang/Object;

.field public final getter:Landroidx/room/InvalidationTracker$implementation$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/room/InvalidationTracker$implementation$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/datetime/internal/format/ComparisonPredicate;->expectedValue:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/datetime/internal/format/ComparisonPredicate;->getter:Landroidx/room/InvalidationTracker$implementation$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/datetime/internal/format/ComparisonPredicate;->getter:Landroidx/room/InvalidationTracker$implementation$1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lkotlinx/datetime/internal/format/ComparisonPredicate;->expectedValue:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
