.class final Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/EmbeddedSlotMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/mozilla/javascript/Slot;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lorg/mozilla/javascript/Slot;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/Slot;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/Slot;

    .line 2
    .line 3
    if-eqz p0, :cond_0

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next()Lorg/mozilla/javascript/Slot;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/mozilla/javascript/Slot;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/Slot;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 6
    .line 7
    iput-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/Slot;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method
