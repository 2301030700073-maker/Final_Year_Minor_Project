.class public final Lkotlin/sequences/TakeSequence;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# instance fields
.field public final sequence:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final drop(I)Lkotlin/sequences/Sequence;
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Lkotlin/sequences/SubSequence;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlin/sequences/TakeSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, v0}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/collections/IndexingIterator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlin/collections/IndexingIterator;-><init>(Lkotlin/sequences/TakeSequence;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final take()Lkotlin/sequences/Sequence;
    .locals 0

    .line 1
    return-object p0
.end method
