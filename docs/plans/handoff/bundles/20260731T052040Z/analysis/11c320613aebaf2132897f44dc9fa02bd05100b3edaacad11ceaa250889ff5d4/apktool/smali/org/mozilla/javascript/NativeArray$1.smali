.class Lorg/mozilla/javascript/NativeArray$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field cursor:I

.field modCount:I

.field final synthetic this$0:Lorg/mozilla/javascript/NativeArray;

.field final synthetic val$len:I

.field final synthetic val$start:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeArray;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iput p2, p0, Lorg/mozilla/javascript/NativeArray$1;->val$start:I

    .line 4
    .line 5
    iput p3, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 11
    .line 12
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$fgetmodCount(Lorg/mozilla/javascript/NativeArray;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 2
    .line 3
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    .line 4
    .line 5
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 9
    .line 10
    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iput v2, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public nextIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 2
    .line 3
    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public previousIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, -0x1

    .line 4
    .line 5
    return p0
.end method

.method public remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
