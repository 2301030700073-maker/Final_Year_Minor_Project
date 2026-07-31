.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;


# instance fields
.field public final messages:Lkotlinx/collections/immutable/ImmutableList;

.field public final metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

.field public final preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 12
    .line 13
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 34
    .line 35
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_4

    .line 42
    .line 43
    :goto_0
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public final getMessages()Lkotlinx/collections/immutable/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferences()Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 2
    .line 3
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 4
    .line 5
    check-cast v1, Lkotlin/collections/AbstractMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 14
    .line 15
    check-cast v1, Lkotlin/collections/AbstractMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlin/collections/AbstractMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WarmingUp(metadata="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", preferences="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", messages="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final bridge withMetadata(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$withMetadata(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge withPreferences(Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$withPreferences(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
