.class public Lcom/nozbe/watermelondb/WMDatabaseDriver;
.super Ljava/lang/Object;
.source "WMDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
    }
.end annotation


# instance fields
.field private final cachedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final database:Lcom/nozbe/watermelondb/WMDatabase;

.field private final log:Ljava/util/logging/Logger;


# direct methods
.method public static synthetic $r8$lambda$FzdLpuLj95iASgPJYaxaSwi0RVQ(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/MigrationSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->lambda$migrate$1(Lcom/nozbe/watermelondb/utils/MigrationSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajwZ0tzoSVtiogCWdHXuKN73LV0(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/Schema;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->lambda$unsafeResetDatabase$2(Lcom/nozbe/watermelondb/utils/Schema;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xy6DcJKbSqX7hFU21msYfEtxxIw(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->lambda$batch$0(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p4}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    invoke-direct {p0, p3}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->isCompatible(I)Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;

    move-result-object p1

    .line 35
    instance-of p2, p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;

    if-nez p2, :cond_1

    .line 37
    instance-of p2, p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;

    if-nez p2, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance p2, Lcom/nozbe/watermelondb/MigrationNeededError;

    check-cast p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;

    iget p1, p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;->fromVersion:I

    invoke-direct {p2, p1}, Lcom/nozbe/watermelondb/MigrationNeededError;-><init>(I)V

    throw p2

    .line 36
    :cond_1
    new-instance p1, Lcom/nozbe/watermelondb/SchemaNeededError;

    invoke-direct {p1}, Lcom/nozbe/watermelondb/SchemaNeededError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nozbe/watermelondb/utils/MigrationSet;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p4}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 53
    invoke-direct {p0, p3}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->migrate(Lcom/nozbe/watermelondb/utils/MigrationSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nozbe/watermelondb/utils/Schema;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p4}, Lcom/nozbe/watermelondb/WMDatabaseDriver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {p0, p3}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->unsafeResetDatabase(Lcom/nozbe/watermelondb/utils/Schema;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x30000000

    if-eqz p3, :cond_0

    .line 57
    invoke-static {p2, p1, v0}, Lcom/nozbe/watermelondb/WMDatabase;->getInstance(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p2, p1, v0}, Lcom/nozbe/watermelondb/WMDatabase;->buildDatabase(Ljava/lang/String;Landroid/content/Context;I)Lcom/nozbe/watermelondb/WMDatabase;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->log:Ljava/util/logging/Logger;

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    return-void
.end method

.method private isCached(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCompatible(I)Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0}, Lcom/nozbe/watermelondb/WMDatabase;->getUserVersion()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 252
    new-instance p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$Compatible;

    invoke-direct {p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$Compatible;-><init>()V

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 254
    new-instance p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;

    invoke-direct {p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;-><init>()V

    return-object p1

    :cond_1
    if-ge v0, p1, :cond_2

    .line 256
    new-instance p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;

    invoke-direct {p1, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;-><init>(I)V

    return-object p1

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.nozbe.watermelondb.Database has newer version ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") than what the app supports ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "). Will reset database."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 260
    new-instance p1, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;

    invoke-direct {p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;-><init>()V

    return-object p1
.end method

.method private synthetic lambda$batch$0(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 147
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 148
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    const/4 v6, 0x2

    .line 150
    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 151
    invoke-interface {v2, v7}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    move v7, v0

    .line 153
    :goto_2
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 154
    invoke-interface {v2, v7}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 155
    iget-object v9, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v9, v6, v8}, Lcom/nozbe/watermelondb/WMDatabase;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 157
    aget-object v8, v8, v0

    check-cast v8, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 159
    invoke-static {v5, v8}, Lcom/nozbe/watermelondb/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/nozbe/watermelondb/utils/Pair;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 161
    invoke-static {v5, v8}, Lcom/nozbe/watermelondb/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/nozbe/watermelondb/utils/Pair;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private synthetic lambda$migrate$1(Lcom/nozbe/watermelondb/utils/MigrationSet;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    iget-object v1, p1, Lcom/nozbe/watermelondb/utils/MigrationSet;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->unsafeExecuteStatements(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    iget p1, p1, Lcom/nozbe/watermelondb/utils/MigrationSet;->to:I

    invoke-virtual {v0, p1}, Lcom/nozbe/watermelondb/WMDatabase;->setUserVersion(I)V

    return-void
.end method

.method private synthetic lambda$unsafeResetDatabase$2(Lcom/nozbe/watermelondb/utils/Schema;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    iget-object v1, p1, Lcom/nozbe/watermelondb/utils/Schema;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->unsafeExecuteStatements(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    iget p1, p1, Lcom/nozbe/watermelondb/utils/Schema;->version:I

    invoke-virtual {v0, p1}, Lcom/nozbe/watermelondb/WMDatabase;->setUserVersion(I)V

    return-void
.end method

.method private markAsCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private migrate(Lcom/nozbe/watermelondb/utils/MigrationSet;)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0}, Lcom/nozbe/watermelondb/WMDatabase;->getUserVersion()I

    move-result v0

    .line 211
    iget v1, p1, Lcom/nozbe/watermelondb/utils/MigrationSet;->from:I

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    new-instance v1, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda0;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/MigrationSet;)V

    invoke-virtual {v0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V

    return-void

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incompatible migration set applied. DB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", migration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/nozbe/watermelondb/utils/MigrationSet;->from:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeFromCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object p2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public batch(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const-string v2, "Batch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    new-instance v3, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda1;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/facebook/react/bridge/ReadableArray;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/nozbe/watermelondb/WMDatabase;->transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    const-string p1, "updateCaches"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nozbe/watermelondb/utils/Pair;

    .line 173
    iget-object v2, v0, Lcom/nozbe/watermelondb/utils/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/nozbe/watermelondb/utils/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->markAsCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nozbe/watermelondb/utils/Pair;

    .line 176
    iget-object v1, v0, Lcom/nozbe/watermelondb/utils/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/nozbe/watermelondb/utils/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->removeFromCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 168
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 169
    throw p1
.end method

.method public cachedQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    .line 88
    const-string v0, "id"

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v2, p2, p3}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p2

    .line 90
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/nozbe/watermelondb/DatabaseUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 91
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 92
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->isCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->markAsCached(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p2}, Lcom/nozbe/watermelondb/DatabaseUtils;->cursorToMap(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 102
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_3

    .line 89
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public close()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0}, Lcom/nozbe/watermelondb/WMDatabase;->close()V

    return-void
.end method

.method public count(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->count(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->isCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 75
    :cond_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from `"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "` where id == ? limit 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2, v0}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_2

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/nozbe/watermelondb/WMDatabaseDriver;->markAsCached(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    invoke-static {v0}, Lcom/nozbe/watermelondb/DatabaseUtils;->cursorToMap(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 76
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
.end method

.method public getLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0, p1}, Lcom/nozbe/watermelondb/WMDatabase;->getFromLocalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryIds(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    .line 107
    const-string v0, "id"

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v2, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 109
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/nozbe/watermelondb/DatabaseUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 112
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 108
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public unsafeQueryRaw(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 120
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/nozbe/watermelondb/WMDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 122
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 123
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 124
    invoke-static {p1}, Lcom/nozbe/watermelondb/DatabaseUtils;->cursorToMap(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 121
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public unsafeResetDatabase(Lcom/nozbe/watermelondb/utils/Schema;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->log:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    .line 223
    const-string v1, "Unsafe reset database"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    invoke-virtual {v0}, Lcom/nozbe/watermelondb/WMDatabase;->unsafeDestroyEverything()V

    .line 226
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->cachedRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver;->database:Lcom/nozbe/watermelondb/WMDatabase;

    new-instance v1, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/nozbe/watermelondb/WMDatabaseDriver$$ExternalSyntheticLambda2;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;Lcom/nozbe/watermelondb/utils/Schema;)V

    invoke-virtual {v0, v1}, Lcom/nozbe/watermelondb/WMDatabase;->transaction(Lcom/nozbe/watermelondb/WMDatabase$TransactionFunction;)V

    return-void
.end method
