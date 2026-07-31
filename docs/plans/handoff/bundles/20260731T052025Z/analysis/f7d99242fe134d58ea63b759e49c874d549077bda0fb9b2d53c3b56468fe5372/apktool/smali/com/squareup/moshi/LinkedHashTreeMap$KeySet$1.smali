.class public final Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public expectedModCount:I

.field public lastReturned:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public final synthetic this$0:Lcom/squareup/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->this$0:Lcom/squareup/moshi/LinkedHashTreeMap;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->lastReturned:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 16
    .line 17
    iget p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 18
    .line 19
    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->expectedModCount:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->this$0:Lcom/squareup/moshi/LinkedHashTreeMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next$com$squareup$moshi$LinkedHashTreeMap$LinkedTreeMapIterator()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->nextNode()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final nextNode()Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->this$0:Lcom/squareup/moshi/LinkedHashTreeMap;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->header:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v2, :cond_1

    .line 9
    .line 10
    iget v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 11
    .line 12
    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->expectedModCount:I

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->next:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->lastReturned:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m()V

    .line 24
    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->lastReturned:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->this$0:Lcom/squareup/moshi/LinkedHashTreeMap;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternal(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->lastReturned:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    .line 13
    .line 14
    iget v0, v2, Lcom/squareup/moshi/LinkedHashTreeMap;->modCount:I

    .line 15
    .line 16
    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet$1;->expectedModCount:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method
