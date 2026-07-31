.class public final Lcom/appsflyer/AFLogger;
.super Lcom/appsflyer/internal/AFh1ySDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AFLogger$LogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001<B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ7\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J#\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0015J+\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0016J3\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0017J#\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J+\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0019\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u000bJ\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u0008J\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u0008J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u0008J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008!\u0010\u0008J\u001f\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008!\u0010\u000bJ\'\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008%\u0010&JG\u0010)\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010+\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\'\u0010-\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008-\u0010&J!\u00100\u001a\u00020\u00062\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010.\"\u00020\u0001\u00a2\u0006\u0004\u00080\u00101J!\u00102\u001a\u00020\u00062\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010.\"\u00020\u0001\u00a2\u0006\u0004\u00082\u00101J\'\u00103\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00083\u0010&J\'\u00104\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00084\u0010&R\u0015\u00108\u001a\u0002058BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001b\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u0001098BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008:\u00107"
    }
    d2 = {
        "Lcom/appsflyer/AFLogger;",
        "Lcom/appsflyer/internal/AFh1ySDK;",
        "<init>",
        "()V",
        "",
        "debugLogMessage",
        "",
        "afDebugLog",
        "(Ljava/lang/String;)V",
        "",
        "shouldRemoteDebug",
        "(Ljava/lang/String;Z)V",
        "message",
        "",
        "ex",
        "printMessage",
        "printThrowable",
        "shouldReportToExManager",
        "afErrorLog",
        "(Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V",
        "errorLogMessage",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "(Ljava/lang/String;Ljava/lang/Throwable;Z)V",
        "(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V",
        "afErrorLogForExcManagerOnly",
        "disableReporting",
        "logMessage",
        "afInfoLog",
        "afLogForce",
        "rdLogMessage",
        "afRDLog",
        "afVerboseLog",
        "warningLogMessage",
        "afWarnLog",
        "Lcom/appsflyer/internal/AFg1cSDK;",
        "tag",
        "msg",
        "d",
        "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V",
        "throwable",
        "printMsg",
        "e",
        "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V",
        "force",
        "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V",
        "i",
        "",
        "client",
        "registerClient",
        "([Lcom/appsflyer/internal/AFh1ySDK;)V",
        "unregisterClient",
        "v",
        "w",
        "Ljava/util/concurrent/ExecutorService;",
        "getCurrencyIso4217Code",
        "Lkotlin/Lazy;",
        "AFAdRevenueData",
        "",
        "getMediationNetwork",
        "getRevenue",
        "LogLevel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appsflyer/AFLogger;

.field private static final getCurrencyIso4217Code:Lkotlin/Lazy;

.field private static final getMediationNetwork:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$GQUnB5QeZU3cMGkjojSKbOwnXkw([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->getMonetizationNetwork([Lcom/appsflyer/internal/AFh1ySDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ps1QDkU6wmcgbGaxlp06508ocPE(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->getMediationNetwork(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAtxESg8fFjENZmcEo708PyPuAM([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFAdRevenueData([Lcom/appsflyer/internal/AFh1ySDK;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/AFLogger;

    invoke-direct {v0}, Lcom/appsflyer/AFLogger;-><init>()V

    sput-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 19
    sget-object v0, Lcom/appsflyer/AFLogger$6;->getRevenue:Lcom/appsflyer/AFLogger$6;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lkotlin/Lazy;

    .line 24
    sget-object v0, Lcom/appsflyer/AFLogger$1;->getRevenue:Lcom/appsflyer/AFLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1ySDK;-><init>()V

    return-void
.end method

.method private static final AFAdRevenueData([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24019
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 0
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final afDebugLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.d()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afDebugLog(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.d()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 175
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 176
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 279
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 178
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invoked with null Throwable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    move-object v4, p1

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 175
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 222
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 223
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 282
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 225
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invoked with null Throwable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    move-object v4, p1

    const/16 v9, 0x68

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, p2

    .line 222
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 241
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 242
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 283
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 244
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invoked with null Throwable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    move-object v4, p1

    const/16 v9, 0x48

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v6, p2

    move v7, p3

    .line 241
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 111
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 110
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 187
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 188
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 280
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 190
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invoked with null Throwable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    move-object v4, p1

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 187
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.e()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 206
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 207
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    .line 281
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 209
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invoked with null Throwable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_2
    move-object v4, p1

    xor-int/lit8 v7, p2, 0x1

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 206
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afInfoLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.i()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afInfoLog(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.i()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afLogForce(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.force()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/internal/AFh1ySDK;->force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void
.end method

.method public static final afRDLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.v()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afVerboseLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.v()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afWarnLog(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.w()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->w$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final afWarnLog(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Deprecated since v6.13.0"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AFLogger.w()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getRevenue:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final getMediationNetwork(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25019
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 0
    check-cast v0, Ljava/lang/Iterable;

    .line 284
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 36
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final getMonetizationNetwork([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23019
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 0
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/appsflyer/AFLogger$2;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$2;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 5034
    new-instance p1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 7024
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 9

    const-string v0, ""

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/appsflyer/AFLogger$3;

    move-object v1, v0

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/AFLogger$3;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 8034
    new-instance v1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 10024
    sget-object v0, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/appsflyer/AFLogger$5;

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/AFLogger$5;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 20034
    new-instance p1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22024
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/appsflyer/AFLogger$4;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$4;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 11034
    new-instance p1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 13024
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs registerClient([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda2;-><init>([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 2024
    sget-object p1, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs unregisterClient([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda1;-><init>([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 4024
    sget-object p1, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/appsflyer/AFLogger$7;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$7;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 17034
    new-instance p1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19024
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/appsflyer/AFLogger$9;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$9;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 14034
    new-instance p1, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/appsflyer/AFLogger$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 16024
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
