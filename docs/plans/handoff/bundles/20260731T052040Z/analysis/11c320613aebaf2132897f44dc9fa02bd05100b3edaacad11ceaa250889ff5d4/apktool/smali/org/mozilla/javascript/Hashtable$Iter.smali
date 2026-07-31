.class final Lorg/mozilla/javascript/Hashtable$Iter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/mozilla/javascript/Hashtable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private pos:Lorg/mozilla/javascript/Hashtable$Entry;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Hashtable$Entry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->-$$Nest$smmakeDummy()Lorg/mozilla/javascript/Hashtable$Entry;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 11
    .line 12
    return-void
.end method

.method private skipDeleted()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->next()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method
