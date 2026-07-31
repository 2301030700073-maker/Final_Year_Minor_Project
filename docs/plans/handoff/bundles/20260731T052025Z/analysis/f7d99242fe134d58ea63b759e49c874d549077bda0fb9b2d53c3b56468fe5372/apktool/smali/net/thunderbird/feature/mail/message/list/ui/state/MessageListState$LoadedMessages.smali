.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 16
    .line 17
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 18
    .line 19
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 32
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

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
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 36
    .line 37
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getMessages()Lkotlinx/collections/immutable/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferences()Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 10
    .line 11
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final mapMessages(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x3

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v1, v1, p1, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LoadedMessages(metadata="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

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
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

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
