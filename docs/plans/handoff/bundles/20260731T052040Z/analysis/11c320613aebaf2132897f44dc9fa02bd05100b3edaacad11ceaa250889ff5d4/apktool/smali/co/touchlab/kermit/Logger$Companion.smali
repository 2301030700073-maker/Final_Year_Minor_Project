.class public final Lco/touchlab/kermit/Logger$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lco/touchlab/kermit/Logger$Companion;


# instance fields
.field public final config:Lco/touchlab/kermit/JvmMutableLoggerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lco/touchlab/kermit/Logger$Companion;

    .line 2
    .line 3
    sget-object v1, Lco/touchlab/kermit/DefaultFormatter;->INSTANCE:Lco/touchlab/kermit/DefaultFormatter;

    .line 4
    .line 5
    new-instance v2, Lco/touchlab/kermit/LogcatWriter;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lco/touchlab/kermit/LogcatWriter;-><init>(Lco/touchlab/kermit/DefaultFormatter;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v3, Lco/touchlab/kermit/BaseLoggerKt;->DEFAULT_MIN_SEVERITY:Lco/touchlab/kermit/Severity;

    .line 20
    .line 21
    iput-object v3, v2, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_minSeverity:Lco/touchlab/kermit/Severity;

    .line 22
    .line 23
    iput-object v1, v2, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_loggerList:Ljava/util/List;

    .line 24
    .line 25
    invoke-direct {v0, v2}, Lco/touchlab/kermit/Logger$Companion;-><init>(Lco/touchlab/kermit/JvmMutableLoggerConfig;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lco/touchlab/kermit/Logger$Companion;->Companion:Lco/touchlab/kermit/Logger$Companion;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Lco/touchlab/kermit/JvmMutableLoggerConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final processLog(Lco/touchlab/kermit/Severity;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_loggerList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lco/touchlab/kermit/LogWriter;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p3, p2}, Lco/touchlab/kermit/LogWriter;->log(Lco/touchlab/kermit/Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
