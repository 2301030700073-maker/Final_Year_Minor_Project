.class public final Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event;


# instance fields
.field public final messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;

    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 14
    .line 15
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OnMessageDisplayCountChanged(messageDisplayCount="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Event$OnMessageDisplayCountChanged;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
