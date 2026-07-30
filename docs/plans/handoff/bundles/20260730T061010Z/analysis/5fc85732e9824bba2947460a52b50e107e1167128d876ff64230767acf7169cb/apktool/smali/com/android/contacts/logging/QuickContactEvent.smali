.class public final Lcom/android/contacts/logging/QuickContactEvent;
.super Ljava/lang/Object;
.source "QuickContactEvent.java"


# instance fields
.field public actionType:I

.field public cardType:I

.field public contactType:I

.field public referrer:Ljava/lang/String;

.field public thirdPartyAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/logging/QuickContactEvent;->referrer:Ljava/lang/String;

    const-string v2, "referrer"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/QuickContactEvent;->contactType:I

    const-string v2, "contactType"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/QuickContactEvent;->cardType:I

    const-string v2, "cardType"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget v1, p0, Lcom/android/contacts/logging/QuickContactEvent;->actionType:I

    const-string v2, "actionType"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/android/contacts/logging/QuickContactEvent;->thirdPartyAction:Ljava/lang/String;

    const-string v2, "thirdPartyAction"

    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 87
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
