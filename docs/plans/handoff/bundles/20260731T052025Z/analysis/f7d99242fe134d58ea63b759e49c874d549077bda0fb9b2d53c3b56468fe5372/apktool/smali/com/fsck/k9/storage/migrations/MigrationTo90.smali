.class public final Lcom/fsck/k9/storage/migrations/MigrationTo90;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final clientInfoAppName$delegate:Lkotlin/Lazy;

.field public final clientInfoAppVersion$delegate:Lkotlin/Lazy;

.field public final oAuth2TokenProviderFactory$delegate:Lkotlin/Lazy;

.field public final trustedSocketFactory$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 8
    .line 9
    const/16 p2, 0x12

    .line 10
    .line 11
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->trustedSocketFactory$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p1, Lorg/koin/core/qualifier/StringQualifier;

    .line 23
    .line 24
    const-string v0, "ClientInfoAppName"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/StringQualifier;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->clientInfoAppName$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p1, Lorg/koin/core/qualifier/StringQualifier;

    .line 42
    .line 43
    const-string v0, "ClientInfoAppVersion"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/StringQualifier;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->clientInfoAppVersion$delegate:Lkotlin/Lazy;

    .line 59
    .line 60
    new-instance p1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 61
    .line 62
    const/16 v0, 0x13

    .line 63
    .line 64
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90;->oAuth2TokenProviderFactory$delegate:Lkotlin/Lazy;

    .line 72
    .line 73
    return-void
.end method

.method public static buildQuery$storage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "\n            |UPDATE folders\n            |    SET server_id = REPLACE(server_id, \'"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "\', \'\')\n            |WHERE\n            |    server_id IS NOT NULL\n            |    AND server_id LIKE \'"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "%\'\n            |    AND type <> \'outbox\'\n            |    AND local_only <> 1\n        "

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
