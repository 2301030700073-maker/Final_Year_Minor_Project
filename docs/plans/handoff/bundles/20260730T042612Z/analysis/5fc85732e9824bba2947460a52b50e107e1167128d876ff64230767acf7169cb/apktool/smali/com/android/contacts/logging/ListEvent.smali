.class public final Lcom/android/contacts/logging/ListEvent;
.super Ljava/lang/Object;
.source "ListEvent.java"


# instance fields
.field public actionType:I

.field public clickedIndex:I

.field public count:I

.field public listType:I

.field public numSelected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/android/contacts/logging/ListEvent;->clickedIndex:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/logging/ListEvent;->actionType:I

    const-string v2, "actionType"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/ListEvent;->listType:I

    const-string v2, "listType"

    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/ListEvent;->count:I

    const-string v2, "count"

    .line 89
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/ListEvent;->clickedIndex:I

    const-string v2, "clickedIndex"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/ListEvent;->numSelected:I

    const-string v2, "numSelected"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 92
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
